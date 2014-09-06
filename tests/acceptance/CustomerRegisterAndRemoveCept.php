<?php
$customer_id = 'cus_registered';
$customer_attrs = ['id' => $customer_id, 'description' => '1'];

$I = new AcceptanceTester\CustomerSteps($scenario);
$I->am('a new customer');
$I->wantTo('remove the registered card');
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

$I->pushMockCustomerResponse(array_merge($customer_attrs, ['card' => null]));
$I->click('登録したカードを削除する');
$I->dontSee('次のカードが登録されています。');
$I->waitForElement('#WP_checkoutBox', 5);

$I->seeInLogs([
    '/https:\/\/api\.webpay\.jp customer\.retrieve: s:14:"cus_registered"/',
    '/https:\/\/api\.webpay\.jp customer\.delete_active_card: s:14:"cus_registered"/',
]);

$I->loadRequest();
$I->seeRequestTo('DELETE', '/customers/' . $customer_id . '/active_card');
