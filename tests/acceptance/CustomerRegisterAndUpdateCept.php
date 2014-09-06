<?php
$customer_id = 'cus_registered';
$customer_attrs = ['id' => $customer_id, 'description' => '1'];

$I = new AcceptanceTester\CustomerSteps($scenario);
$I->am('a new customer');
$I->wantTo('update my card');
$admin = $I->haveFriend('admin');
$admin->does(function(AcceptanceTester $I) {
    $steps = new AcceptanceTester\AdminSteps($I);
    $steps->registerWebPayModule();
});

$I->login();

$I->registerCardByPurchase($customer_attrs);

$I->expectTo('buy another item with the new card');
$I->amOnPage('/products/list.php');
$I->click('おなべ');

$I->pushMockCustomerResponse($customer_attrs);
$I->proceedToPay();
$I->loadRequest();
$I->seeRequestTo('GET', '/customers/' . $customer_id);

$I->see('次のカードが登録されています。');
$I->see('Visa');
$I->see('****-****-****-4242');
$I->see('TEST TEST');
$I->see('12/2019');

$I->click('別のカードで支払う');

$I->pushMockCustomerResponse($customer_attrs);
$I->pushMockChargeResponse(['captured' => true]);
$I->payWithNewCard();
$I->waitForText('Test shopの商品をご購入いただき、ありがとうございました', 5);

$I->loadRequest();
$I->seeRequestTo('POST', '/customers/' . $customer_id);
$I->seeInData('card');

$I->loadRequest();
$I->seeRequestTo('POST', '/charges');
$I->seeInData('amount', 2782);
$I->seeInData('customer', $customer_id);
$I->seeInData('currency', 'jpy');
$I->seeInData('description', '2');

$admin->does(function(AcceptanceTester $I) {
    $steps = new AcceptanceTester\AdminSteps($I);
    $steps->seeLastOrder([
        'customer_id' => '1',
        'payment_id' => 'クレジットカード決済',
        'status' => '入金済み',
    ]);
});
