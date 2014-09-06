<?php
$customer_id = 'cus_registered';
$customer_attrs = ['id' => $customer_id, 'description' => '1'];

$I = new AcceptanceTester\CustomerSteps($scenario);
$I->am('a new customer');
$I->wantTo('register my card to purchase again');
$I->haveFriend('admin')->does(registerWebPay);
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

$I->loadRequest();
$I->seeRequestTo('DELETE', '/customers/' . $customer_id . '/active_card');
