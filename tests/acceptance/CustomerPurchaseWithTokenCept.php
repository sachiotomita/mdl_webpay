<?php
$I = new AcceptanceTester\CustomerSteps($scenario);
$I->am('a new customer');
$I->wantTo('purchase with my card');
$admin = $I->haveFriend('admin');
$admin->does(function(AcceptanceTester $I) {
    $steps = new AcceptanceTester\AdminSteps($I);
    $steps->registerWebPayModule();
});

$I->login();
$I->amOnPage('/products/list.php');
$I->click('おなべ');
$I->proceedToPay();

$I->uncheckOption('input[type="checkbox"][name="card_info"]');
$I->pushMockChargeResponse(['captured' => true]);
$I->payWithNewCard();

$I->waitForText('Test shopの商品をご購入いただき、ありがとうございました', 5);
$I->loadRequest();
$I->seeInData('amount', 2782);
$I->seeInData('card');
$I->seeInData('currency', 'jpy');
$I->seeInData('description', '1');

$I->seeInLogs(['/https:\/\/api\.webpay\.jp charge\.create: a:4:{s:6:"amount";i:2782;s:8:"currency";s:3:"jpy";s:11:"description";s:1:"1";s:4:"card";s:19:"tok_.*";} from 127.0.0.1/']);

$admin->does(function(AcceptanceTester $I) {
    $steps = new AcceptanceTester\AdminSteps($I);
    $steps->seeLastOrder([
        'customer_id' => '1',
        'payment_id' => 'クレジットカード決済',
        'status' => '入金済み',
    ]);
});
