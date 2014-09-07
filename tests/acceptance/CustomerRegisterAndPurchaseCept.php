<?php
$customer_id = 'cus_registered';
$customer_attrs = ['id' => $customer_id, 'description' => '1'];

$I = new AcceptanceTester\CustomerSteps($scenario);
$I->am('a new customer');
$I->wantTo('register my card to purchase again');
$admin = $I->haveFriend('admin');
$admin->does(function (AcceptanceTester $I) {
    $steps = new AcceptanceTester\AdminSteps($I);
    $steps->registerWebPayModule();
});

$I->login();
$I->registerCardByPurchase($customer_attrs);

$I->expectTo('buy another item with the previously registered card');
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

$I->see('登録してあるカードで支払う');
$I->see('登録したカードを削除する');
$I->see('別のカードで支払う');

$I->pushMockChargeResponse(['captured' => true]);
$I->click('登録してあるカードで支払う');

$I->waitForText('Test shopの商品をご購入いただき、ありがとうございました', 5);
$I->loadRequest();
$I->seeInData('amount', 2782);
$I->seeInData('customer', $customer_id);
$I->seeInData('currency', 'jpy');
$I->seeInData('description', '2');

$I->seeInLogs([
    '/https:\/\/api\.webpay\.jp customer\.retrieve/',
    '/https:\/\/api\.webpay\.jp charge\.create/',
]);

$admin->does(function (AcceptanceTester $I) {
    $steps = new AcceptanceTester\AdminSteps($I);
    $steps->seeLastOrder([
        'customer_id' => '1',
        'payment_id' => 'クレジットカード決済',
        'status' => '入金済み',
    ]);
});
