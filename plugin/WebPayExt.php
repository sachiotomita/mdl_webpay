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

/*
 * This plugin add elements to pages for usability of WebPay module
 */
class WebPayExt extends SC_Plugin_Base
{
    // do nothing
    function install($arrPlugin)
    {
    }

    // do nothing
    function uninstall($arrPlugin)
    {
    }

    /**
     * prefilterコールバック関数
     * テンプレートの変更処理を行います.
     *
     * @param string &$source テンプレートのHTMLソース
     * @param LC_Page_Ex $objPage ページオブジェクト
     * @param string $filename テンプレートのファイル名
     * @return void
     */
    function prefilterTransform(&$source, LC_Page_Ex $objPage, $filename) {
        $objTransform = new SC_Helper_Transform($source);
        switch($objPage->arrPageLayout['device_type_id']){
        case DEVICE_TYPE_MOBILE:
        case DEVICE_TYPE_SMARTPHONE:
        case DEVICE_TYPE_PC:
            break;
        case DEVICE_TYPE_ADMIN:
        case null: // 未設定は admin
            error_log($filename);
            if (strpos($filename, 'order/edit.tpl') !== false) {
                // 個別受注画面にWebPay上のオブジェクトとの連携を挿入する
                $template = PLUGIN_UPLOAD_REALDIR . $this->arrSelfInfo['plugin_code'] .
                    '/templates/webpayext_admin_order_charge_add.tpl';
                $objTransform->select('div#order')->appendFirst(file_get_contents($template));
            }
            break;
        default:
            break;
        }

        // 変更を実行します
        $source = $objTransform->getHTML();
    }
}