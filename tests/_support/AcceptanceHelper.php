<?php
namespace Codeception\Module;

require_once(__DIR__ . '/../../vendor/autoload.php');
use Predis\Client;

class AcceptanceHelper extends \Codeception\Module
{
    private $proc = null;
    private $redisClient;
    private $lastRequest = null;

    public function __construct()
    {
        $this->redisClient = new \Predis\Client();
    }

    public function _before(\Codeception\TestCase $test)
    {
        $this->indicateTestMode();
        $this->startDoubleServer();
        $this->installMdlWebPay();
    }

    public function _after(\Codeception\TestCase $test)
    {
        $this->disableTestMode();
        $this->shutdownDoubleServer();
    }

    public function loadRequest()
    {
        $data = $this->redisClient->lpop('mdl_webpay_test_requests');
        if ($data === null) {
            throw new \Exception('Tried to load a request but no more request is recorded');
        }
        $this->lastRequest = unserialize($data);
    }

    public function seeRequestTo($method, $path)
    {
        $this->assertEquals($method, $this->lastRequest['method']);
        $this->assertEquals($path, $this->lastRequest['request_uri']);
    }

    public function seeInData($key, $value = null)
    {
        $data = json_decode($this->lastRequest['body'], true);
        if ($value === null) {
            $this->assertNotEmpty($data[$key]);
        } else {
            $this->assertEquals($value, $data[$key]);
        }
    }

    public function dontSeeInData($key)
    {
        $data = json_decode($this->lastRequest['body'], true);
        $this->assertEmpty($data[$key]);
    }

    public function pushMockResponse($statusCode, $body)
    {
        $data = array('status_code' => $statusCode, 'body' => $body);
        $this->redisClient->rpush('mdl_webpay_test_responses', serialize($data));
    }

    public function pushMockChargeResponse($options = null)
    {
        if ($options === null) {
            $options = array();
        }
        $default = [
            'id'              => 'ch_' . $this->generateRandomId(),
            'object'          => 'charge',
            'livemode'        => false,
            'currency'        => 'jpy',
            'description'     => '',
            'amount'          => 1200,
            'amount_refunded' => 0,
            'customer'        => null,
            'recursion'       => null,
            'created'         => time(),
            'paid'            => true,
            'refunded'        => false,
            'failure_message' => null,
            'card'            => [
                'object'      => 'card',
                'exp_year'    => 2014,
                'exp_month'   => 11,
                'fingerprint' => '215b5b2fe460809b8bb90bae6eeac0e0e0987bd7',
                'name'        => 'KEI KUBO',
                'country'     => 'JP',
                'type'        => 'Visa',
                'cvc_check'   => 'pass',
                'last4'       => '4242'
            ],
            'captured'        => true,
            'expire_time'     => null,
            'fees'            => []
        ];
        $this->pushMockResponse(200, json_encode(array_merge($default, $options)));
    }

    public function pushMockCustomerResponse($options = null)
    {
        if ($options === null) {
            $options = array();
        }
        $default = [
            'id'          => 'cus_05u0uscIO8ZC1kX',
            'object'      => 'customer',
            'livemode'    => false,
            'created'     => time(),
            'email'       => null,
            'description' => null,
            'active_card' => [
                'object'      => 'card',
                'exp_year'    => 2019,
                'exp_month'   => 12,
                'fingerprint' => '2jj15b5b2fe460809b8bb90bae6eeac0e0e0987bd7',
                'name'        => 'TEST TEST',
                'country'     => 'JP',
                'type'        => 'Visa',
                'cvc_check'   => 'pass',
                'last4'       => '4242'
            ],
            'recursions'  => []
        ];
        $this->pushMockResponse(200, json_encode(array_merge($default, $options)));
    }

    private function generateRandomId($length = 15)
    {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, strlen($characters) - 1)];
        }
        return $randomString;
    }

    private function indicateTestMode()
    {
        touch(MDL_WEBPAY_TESTMODE_INDICATOR_REALFILE);
    }

    private function disableTestMode()
    {
        unlink(MDL_WEBPAY_TESTMODE_INDICATOR_REALFILE);
    }

    private function startDoubleServer()
    {
        $this->clearPending();
        $descriptorspec = array(
            0 => array('pipe', 'r'),
            1 => array('file', '/tmp/debug.out', 'a'),
            2 => array('file', '/tmp/debug.err', 'a'),
        );
        $this->proc = proc_open('php -S 127.0.0.1:8012 tests/_data/double_server.php', $descriptorspec, $pipes);
        if (!is_resource($this->proc)) {
            throw new \Exception('Failed to start double server process');
        }
        fclose($pipes[0]);
    }

    private function clearPending()
    {
        $this->redisClient->del('mdl_webpay_test_requests');
        $this->redisClient->del('mdl_webpay_test_responses');
    }

    private function shutdownDoubleServer()
    {
        if ($this->proc !== null && is_resource($this->proc)) {
            proc_terminate($this->proc);
            proc_close($this->proc);
            $this->proc = null;
        }
    }

    private function installMdlWebPay()
    {
        include('install_webpay.php');
    }
}
