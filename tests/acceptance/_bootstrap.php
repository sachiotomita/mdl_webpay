<?php
// Here you can initialize variables that will be available to your tests

include('install_webpay.php');
require_once('inc/include.php');
use WebPay\WebPay;

define('ADMIN_NAME', 'admin');
define('ADMIN_PASSWORD', 'password');
define('WEBPAY_SECRET_KEY', 'test_secret_TESTSECRETKEY');
define('WEBPAY_PUBLISHABLE_KEY', 'test_public_TESTPUBKEY');

function registerWebPay(AcceptanceTester $I) {
    $I->amOnPage('/admin/');
    $I->fillField('login_id', ADMIN_NAME);
    $I->fillField('password', ADMIN_PASSWORD);
    $I->click('LOGIN');

    $I->amOnPage('/admin/load_module_config.php?module_id=' . MDL_WEBPAY_ID);
    $I->fillField('secret_key', WEBPAY_SECRET_KEY);
    $I->fillField('publishable_key', WEBPAY_PUBLISHABLE_KEY);
    $I->click('この内容で登録する');

    $I->seeInDatabase('dtb_payment',  array('payment_id' => 5, 'memo03' => MDL_WEBPAY_CODE));
    $I->haveInDatabase('dtb_payment_options', array('deliv_id' => 1, 'payment_id' => 5, 'rank' => 5));
    $I->haveInDatabase('dtb_payment_options', array('deliv_id' => 2, 'payment_id' => 5, 'rank' => 2));
}