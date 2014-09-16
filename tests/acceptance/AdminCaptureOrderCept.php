<?php
$chargeId = 'ch_authcharge';

$I = new AcceptanceTester\AdminSteps($scenario);
$I->wantTo('capture a charge for an order');
$I->registerWebPayModule('authorize');

$customer = $I->haveFriend('customer');
$customer->does(function (AcceptanceTester $I) {
    $I = new AcceptanceTester\CustomerSteps($I);
    $I->login();
    $I->amOnPage('/products/list.php');
    $I->click('おなべ');
    $I->proceedToPay();

    $I->uncheckOption('input[type="checkbox"][name="card_info"]');
    $I->pushMockChargeResponse(['id' => 'ch_authcharge', 'captured' => false]);
    $I->payWithNewCard();

    $I->waitForText('Test shopの商品をご購入いただき、ありがとうございました', 5);
    $I->loadRequest();
    $I->seeInData('amount', 2782);
    $I->seeInData('card');
    $I->seeInData('currency', 'jpy');
    $I->seeInData('description', '1');
    $I->seeInData('capture', false);

    $I->seeInLogs(['/https:\/\/api\.webpay\.jp charge\.create/']);
});

$I->seeLastOrder([
    'customer_id' => '1',
    'payment_id' => 'クレジットカード決済',
    'status' => '入金待ち',
]);

$I->seeLink($chargeId);
$I->see('2,782円の仮売上');
$I->seeLink('実売上化する');

$I->fillField('deliv_fee', '1200');
$I->executeJS('window.confirm = function (text) { return text == "この内容で登録しても宜しいでしょうか"; }');
$I->click('この内容で登録する');
$I->executeJS('window.confirm = function (text) { return text == "現在の金額で実売上化をおこないます。受注内容を変更中の場合はさきに保存してください。"; }');
$I->click('実売上化する');
$I->see('仮売上金額(2,782円)以上で実売上化することはできません。合計金額を仮売上金額以下にするか、金額を増額する場合は購入者に連絡し、再度購入処理を行ってください。');

$I->fillField('deliv_fee', '120');
$I->executeJS('window.confirm = function (text) { return text == "この内容で登録しても宜しいでしょうか"; }');
$I->click('この内容で登録する');

// dummy error to test error presentation
$I->pushMockResponse(400, json_encode([
    'error' => [
        'message'   => '課金 ch_auth_charge は仮売上済状態でありません',
        'caused_by' => 'insufficient',
        'type'      => 'invalid_request_error'
    ]
]));
$I->executeJS('window.confirm = function (text) { return text == "現在の金額で実売上化をおこないます。受注内容を変更中の場合はさきに保存してください。"; }');
$I->click('実売上化する');

$I->see('不正なリクエストがおこなわれました。WebPayのダッシュボードを確認してください。課金 ch_auth_charge は仮売上済状態でありません');
$I->see('2,782円の仮売上');
$I->loadRequest();
$I->seeInLogs(['/https:\/\/api\.webpay\.jp charge\.capture: a:2:{s:2:"id";s:13:"ch_authcharge";s:6:"amount";i:1902;} from 127.0.0.1/']);

$I->executeJS('window.confirm = function (text) { return text == "現在の金額で実売上化をおこないます。受注内容を変更中の場合はさきに保存してください。"; }');
$I->pushMockChargeResponse(['id' => $chargeId, 'amount_refunded' => 880, 'captured' => true]);
$I->click('実売上化する');

$I->see('1,902円の実売上');
$I->dontSee('実売上化する');
$I->seeStatus('入金済み');

$I->loadRequest();
$I->seeRequestTo('POST', '/charges/' . $chargeId . '/capture');
$I->seeInData('amount', 1902);

$I->seeInLogs(['/https:\/\/api\.webpay\.jp charge\.capture: a:2:{s:2:"id";s:13:"ch_authcharge";s:6:"amount";i:1902;} from 127.0.0.1/']);
