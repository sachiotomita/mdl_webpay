<!--{*
 * WebPayExt
 * Copyright (C) 2012 WebPay. All Rights Reserved.
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
 *}-->

<script type="text/javascript">
<!--
function fnPlgWebPayExtCapture() {
    if(window.confirm('現在の金額で実売上化をおこないます。受注内容を変更中の場合はさきに保存してください。')) {
        fnModeSubmit('plg_webpayext_capture', '', '');
    };
    return false;
}
//-->
</script>

<h2 id="plg_webpayext_detail">WebPay課金情報</h2>
<table class="form">
    <tr>
        <th>課金詳細ページ</th>
        <td><a href="<!--{$plg_webpayext_objCharge->getWebPayPage()}-->" target="_blank"><!--{$plg_webpayext_objCharge->getChargeId()}--></a></td>
    </tr>
    <tr>
        <th>状態</th>
        <td>
            <!--{if $plg_webpayext_objCharge->isCaptured()}-->
                <!--{$plg_webpayext_objCharge->getAmount()|default:0|number_format}-->円の実売上
            <!--{else}-->
                <!--{$plg_webpayext_objCharge->getAmount()|default:0|number_format}-->円の仮売上
                <a class="btn-normal" href="javascript:;"
                   onclick="fnPlgWebPayExtCapture()">実売上化する</a>
            <!--{/if}-->
        </td>
    </tr>
</table>
