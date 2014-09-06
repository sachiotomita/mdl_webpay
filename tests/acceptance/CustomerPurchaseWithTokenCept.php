<?php
$I = new AcceptanceTester\CustomerSteps($scenario);
$I->am('a new customer');
$I->wantTo('purchase with my card');
$I->haveFriend('admin')->does(registerWebPay);
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
