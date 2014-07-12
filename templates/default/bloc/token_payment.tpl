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
<script src="https://checkout.webpay.jp/v2/" class="webpay-button" data-key="<!--{$tpl_webpay_publishable_key}-->" data-token-name="webpay_token" data-lang="ja"></script>
