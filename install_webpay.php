<?php
/**
 * This file is part of EC-CUBE WebPay module
 *
 * @copyright 2014 WebPay All Rights Reserved.
 */

require_once '../../../../html/require.php';
require_once(MODULE_REALDIR . 'mdl_webpay/inc/include.php');
require_once(MDL_WEBPAY_CLASS_REALDIR . 'models/SC_Mdl_WebPay_Models_Module.php');

SC_Mdl_WebPay_Models_Module::insert();
$setting_path = '/admin/load_module_config.php?module_id=' . MDL_WEBPAY_ID;
echo 'インストールが終了しました。ログインして ' . $setting_path . ' から設定をおこなってください。';
