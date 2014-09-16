<?php
namespace AcceptanceTester;

use GuzzleHttp\Client;

class AdminSteps extends \AcceptanceTester
{
    public function __construct($tester)
    {
        if (is_a($tester, '\AcceptanceTester')) {
            parent::__construct($tester->scenario);
        } else {
            parent::__construct($tester);
        }
    }

    public function login()
    {
        $I = $this;
        $I->amOnPage('/admin/');
        $I->fillField('login_id', ADMIN_NAME);
        $I->fillField('password', ADMIN_PASSWORD);
        $I->click('LOGIN');
    }

    public function registerWebPayModule($payment = 'capture')
    {
        $I = $this;
        $I->login();

        $I->amOnPage('/admin/load_module_config.php?module_id=' . MDL_WEBPAY_ID);
        $I->fillField('secret_key', WEBPAY_SECRET_KEY);
        $I->fillField('publishable_key', WEBPAY_PUBLISHABLE_KEY);
        $I->selectOption('input[name=payment]', $payment);
        $I->click('この内容で登録する');

        $I->amOnPage('/admin/ownersstore/');
        $uri = 'http://localhost:9999/admin/ownersstore/';
        $transactionId = $I->grabAttributeFrom('input[name=transactionid]', 'value');
        $sessionId = $I->grabCookie('ECSESSID');
        // posting file and handling confirm window are impossible for ghostdriver
        $client = new Client();
        $I->expectTo('install plugin');
        $client->post($uri, [
            'body' => [
                'transactionid' => $transactionId,
                'mode' => 'install',
                'plugin_file' => fopen('WebPayExt.tar.gz', 'r'),
            ],
            'cookies' => ['ECSESSID' => $sessionId],
        ]);
        $client->post($uri, [
            'body' => [
                'transactionid' => $transactionId,
                'mode' => 'enable',
                'plugin_id' => 1,
                'enable' => 1,
            ],
            'cookies' => ['ECSESSID' => $sessionId],
        ]);
        $I->amOnPage('/admin/ownersstore/');
        $I->see('WebPay決済モジュール拡張プラグイン');
        $I->seeCheckboxIsChecked('input#plugin_enable');

        $I->seeInDatabase('dtb_payment',  array('payment_id' => 5, 'memo03' => MDL_WEBPAY_CODE));
        $I->haveInDatabase('dtb_payment_options', array('deliv_id' => 1, 'payment_id' => 5, 'rank' => 5));
        $I->haveInDatabase('dtb_payment_options', array('deliv_id' => 2, 'payment_id' => 5, 'rank' => 2));
    }

    public function seeLastOrder($conditions)
    {
        $I = $this;
        $I->login();

        $I->amOnPage('/admin/order/');
        $I->click('この条件で検索する');
        $I->click('.list tr:nth-child(2) > td:nth-child(9) a');

        foreach ($conditions as $param => $value) {
            switch ($param) {
            case 'customer_id':
                if ($value == null) {
                    $I->dontSeeElementInDOM('input[name="customer_id"]');
                } else {
                    $I->seeElementInDOM('input[name="customer_id"][value="' . $value . '"]');
                }
                break;
            case 'payment_id':
                $I->seeOptionIsSelected('select[name="payment_id"]', $value);
                break;
            case 'status':
                $I->seeStatus($value);
                break;
            default:
                throw new \Exception('Unknown param ' . $param);
            }
        }
    }

    public function seeStatus($statusValue)
    {
        $I = $this;
        $I->seeOptionIsSelected('select[name="status"]', $statusValue);
    }
}
