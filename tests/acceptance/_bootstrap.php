<?php
// Here you can initialize variables that will be available to your tests

require_once '../../../../html/require.php';
require_once 'inc/include.php';

define('ADMIN_NAME', 'admin');
define('ADMIN_PASSWORD', 'password');
define('WEBPAY_SECRET_KEY', 'test_secret_TESTSECRETKEY');
define('WEBPAY_PUBLISHABLE_KEY', 'test_public_TESTPUBKEY');

\Codeception\Util\Autoload::registerSuffix('Steps', __DIR__.DIRECTORY_SEPARATOR.'_steps');
