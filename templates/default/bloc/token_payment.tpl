<!--{*
/*
 * This file is part of EC-CUBE WebPay module
 *
 * Copyright(c) 2014 WebPay All Rights Reserved.
 */
*}-->
<!--{if $tpl_webpay_charge_error !== ''}-->
    <p class="remark attention"><!--{$tpl_webpay_charge_error}--></p>
<!--{/if}-->
<!--{if $objSavedCard !== null}-->
    次のカードが登録されています。
    <table summary="登録ずみカード情報">
        <tr>
            <th>カードブランド</th>
            <td><!--{$objSavedCard->type}--></td>
        </tr>
        <tr>
            <th>カード番号</th>
            <td>****-****-****-<!--{$objSavedCard->last4}--></td>
        </tr>
        <tr>
            <th>名義人</th>
            <td><!--{$objSavedCard->name}--></td>
        </tr>
        <tr>
            <th>有効期限(月/年)</th>
            <td><!--{$objSavedCard->expMonth|string_format:"%02d"}-->/<!--{$objSavedCard->expYear|string_format:"%04d"}--></td>
        </tr>
    </table>
    <input type="hidden" name="card_info" value="" />
    <div class="btn_area">
        <ul>
            <li><a class="btn" href="javascript:;" onclick="eccube.fnFormModeSubmit('form1', 'register', 'card_info', 'customer'); return false;"><span class="btn-next">登録してあるカードで支払う</span></a></li>
            <li><a class="btn" href="javascript:;" onclick="eccube.fnFormModeSubmit('form1', 'delete_card'); return false;"><span class="btn-next">登録したカードを削除する</span></a></li>
            <li><a class="btn" href="javascript:;" onclick="eccube.fnFormModeSubmit('form1', 'other_card'); return false;"><span class="btn-next">別のカードで支払う</span></a></li>
        </ul>
    </div>
<!--{else}-->
    <!--{if $tpl_is_registered_customer === true}-->
        <label>
            <input type="hidden" name="card_info" value="token" />
            <input type="checkbox" name="card_info" value="customer_from_token" checked="checked" />
            今回利用したカード情報を安全に保存し、次回からカード情報入力なしで利用する
        </label>
    <!--{/if}-->
    <script src="https://checkout.webpay.jp/v2/" class="webpay-button" data-key="<!--{$tpl_webpay_publishable_key}-->" data-token-name="webpay_token" data-lang="ja" data-text="<!--{if $objSavedCard === null}-->カードで支払う<!--{else}-->別のカードで支払う<!--{/if}-->"></script>
<!--{/if}-->
