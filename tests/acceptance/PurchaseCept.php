<?php
$I = new AcceptanceTester($scenario);
$I->wantTo('purchase an item without login');
$I->haveFriend('admin')->does(registerWebPay);
$I->amOnPage('/products/list.php');
$I->click('おなべ');
$I->click('カゴに入れる');
$I->click('購入手続きへ');
$I->click('購入手続きへ');

$I->fillField('order_name01', 'テスト');
$I->fillField('order_name02', 'テスト');
$I->fillField('order_kana01', 'テスト');
$I->fillField('order_kana02', 'テスト');
$I->fillField('order_zip01', '100');
$I->fillField('order_zip02', '0001');
$I->selectOption('select[name=order_pref]', '北海道');
$I->fillField('order_addr01', '札幌市');
$I->fillField('order_addr02', '123');
$I->fillField('order_tel01', '00');
$I->fillField('order_tel02', '0000');
$I->fillField('order_tel03', '0000');
$I->fillField('order_email', 'test@example.com');
$I->fillField('order_email02', 'test@example.com');
$I->click('input[name="order_sex"][value="1"]');
$I->click('上記のお届け先のみに送る');

$I->click('input[name="payment_id"][value="5"]');
$I->click('次へ');
$I->click('次へ');

$I->waitForElement('#WP_checkoutBox', 5);
$I->executeJS('WebPay.testMode = true');
$I->see('クレジットカード決済');
$I->click('カードで支払う');
$I->fillField('#WP_cardNumber', '4242 4242 4242 4242');
$I->selectOption('#WP_expMonth', '12');
$I->selectOption('#WP_expYear', '19');
$I->fillField('#WP_name', 'TEST TEST');
$I->fillField('#WP_cvc', '123');

$I->pushMockChargeResponse(['captured' => true]);
$I->click('#WP_sendButton');

$I->waitForText('Test shopの商品をご購入いただき、ありがとうございました', 5);
$I->loadRequest();
$I->seeInData('amount', 2782);
$I->seeInData('card');
$I->seeInData('currency', 'jpy');
$I->seeInData('description', '1');
