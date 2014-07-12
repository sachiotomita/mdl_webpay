<!--{*
/*
 * This file is part of EC-CUBE WebPay module
 *
 * Copyright(c) 2014 WebPay All Rights Reserved.
 */
*}-->

<form name="form-webpay-config" id="form-webpay-config" method="post" action="<!--{$smarty.server.REQUEST_URI|escape}-->">
    <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
    <input type="hidden" name="mode" value="register" />
    <div class="contents-main">
        <h2>WebPayAPIキー設定</h2>
            <table class="form">
            <col width="20%" />
            <col width="80%" />
                <tr>
                    <!--{assign var=key value="secret_key"}-->
                    <th><!--{$arrForm[$key].disp_name}--><span class="attention"> *</span></th>
                    <td>
                        <span class="attention"><!--{$arrErr[$key]}--></span>
                        <input type="text" name="<!--{$arrForm[$key].keyname}-->" value="<!--{$arrForm[$key].value|h}-->" size="30" class="box30" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" />
                    </td>
                </tr>
                <tr>
                    <!--{assign var=key value="publishable_key"}-->
                    <th><!--{$arrForm[$key].disp_name}--><span class="attention"> *</span></th>
                    <td>
                        <span class="attention"><!--{$arrErr[$key]}--></span>
                        <input type="text" name="<!--{$arrForm[$key].keyname}-->" value="<!--{$arrForm[$key].value|h}-->" size="30" class="box30" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" />
                    </td>
                </tr>
            </table>

        <div class="btn-area">
            <ul>
                <li><a class="btn-action" href="javascript:;" onclick="eccube.fnFormModeSubmit('form-webpay-config', 'register', '', ''); return false;"><span class="btn-next">この内容で登録する</span></a></li>
            </ul>
        </div>
    </div>
</form>
