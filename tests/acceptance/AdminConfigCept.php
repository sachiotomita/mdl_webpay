<?php

$I = new AcceptanceTester($scenario);
$I->wantTo('Setup webpay module after install');
$I->amOnPage('/admin/');
$I->see('All Rights');
$I->fillField('login_id', ADMIN_NAME);
$I->fillField('password', ADMIN_PASSWORD);
$I->click('LOGIN');

$I->amOnPage('/admin/load_module_config.php?module_id=' . MDL_WEBPAY_ID);
$I->see('WebPayAPIキー設定');
$I->see('非公開鍵');
$I->see('公開可能鍵');

$I->fillField('secret_key', WEBPAY_SECRET_KEY);
$I->fillField('publishable_key', WEBPAY_PUBLISHABLE_KEY);
$I->click('この内容で登録する');

$I->canSeeInField('secret_key', WEBPAY_SECRET_KEY);
$I->canSeeInField('publishable_key', WEBPAY_PUBLISHABLE_KEY);
