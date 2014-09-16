<?php
namespace AcceptanceTester;

class CustomerSteps extends \AcceptanceTester
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
        $I->amOnPage('/');
        $I->submitForm('#header_login_form', [
            'login_email' => 'test@example.com',
            'login_pass' => 'password'
        ]);
        $I->see('ようこそ 試験 太郎 様');
    }

    public function proceedToPay()
    {
        $I = $this;
        $I->click('カゴに入れる');
        $I->click('購入手続きへ');
        $I->click('選択したお届け先に送る');
        $I->click('input[name="payment_id"][value="5"]');
        $I->click('次へ');
        $I->click('次へ');
        $I->see('クレジットカード決済');

    }

    public function payWithNewCard()
    {
        $I = $this;
        $I->waitForElement('#WP_checkoutBox', 5);
        $I->executeJS('WebPay.testMode = true');

        $I->click('カードで支払う');
        $I->fillField('#WP_cardNumber', '4242 4242 4242 4242');
        $I->selectOption('#WP_expMonth', '12');
        $I->selectOption('#WP_expYear', '19');
        $I->fillField('#WP_name', 'TEST TEST');
        $I->fillField('#WP_cvc', '123');
        $I->click('#WP_sendButton');
    }

    public function registerCardByPurchase($customer_attrs = [], $charge_attrs = [])
    {
        $I = $this;
        $I->expectTo('buy an item to register card');
        $I->amOnPage('/products/list.php');
        $I->click('おなべ');
        $I->proceedToPay();

        $I->pushMockCustomerResponse($customer_attrs);
        $I->pushMockChargeResponse($charge_attrs);
        $I->payWithNewCard();

        $I->waitForText('Test shopの商品をご購入いただき、ありがとうございました', 5);
        $I->loadRequest();
        $I->seeInData('description', '1');
        $I->seeInData('card');
        $I->loadRequest();
        $I->seeInData('amount', 2782);
        $I->dontSeeInData('card');
        $I->seeInData('customer', $customer_id);
        $I->seeInData('currency', 'jpy');
        $I->seeInData('description', '1');

        $I->seeInLogs([
            '/https:\/\/api\.webpay\.jp customer\.create/',
            '/https:\/\/api\.webpay\.jp charge\.create/',
        ]);
    }
}
