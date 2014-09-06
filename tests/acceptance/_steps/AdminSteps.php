<?php
namespace AcceptanceTester;

class AdminSteps extends \AcceptanceTester
{
    public function __construct(\AcceptanceTester $I)
    {
        parent::__construct($I->scenario);
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
                $I->seeOptionIsSelected('select[name="status"]', $value);
                break;
            default:
                throw new \Exception('Unknown param ' . $param);
            }
        }
    }
}