<?php
/*
 * WebPayExt
 * Copyright (C) 2014 WebPay. All Rights Reserved.
 * https://webpay.jp/
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

class plugin_info{
    static $PLUGIN_CODE       = 'WebPayExt';
    static $PLUGIN_NAME       = 'WebPay決済モジュール拡張プラグイン';
    // Inherit module's version. Bump when plugin code changes
    static $PLUGIN_VERSION    = '0.2.0';
    static $COMPLIANT_VERSION = '2.13.0,2.13.1,2.13.2';
    static $AUTHOR            = 'WebPay';
    static $DESCRIPTION       = 'WebPay決済モジュールを使いやすくするためにページの変更をおこないます。';
    static $PLUGIN_SITE_URL   = 'https://github.com/webpay/mdl_webpay';
    static $AUTHOR_SITE_URL   = 'https://webpay.jp/';
    static $CLASS_NAME        = 'WebPayExt';
    static $HOOK_POINTS       = array(
        array("LC_Page_Admin_Order_Edit_action_before", 'beforeAdminOrderEdit'),
        array("LC_Page_Admin_Order_Edit_action_after", 'afterAdminOrderEdit'),
        array('prefilterTransform', 'prefilterTransform'));
    static $LICENSE           = 'LGPL';
}
?>