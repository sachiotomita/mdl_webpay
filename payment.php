<?php
/**
 * This file is part of EC-CUBE WebPay module
 *
 * @copyright 2014 WebPay All Rights Reserved.
 *
 */

require_once(MODULE_REALDIR . 'mdl_webpay/inc/include.php');
require_once(MDL_WEBPAY_CLASS_REALDIR . "pages/LC_Page_Mdl_WebPay_Payment.php");

$objPage = new LC_Page_Mdl_WebPay_Payment();
$objPage->init();
$objPage->process();
