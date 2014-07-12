<?php
/**
 * This file is part of EC-CUBE WebPay module
 *
 * @copyright 2014 WebPay All Rights Reserved.
 */

require_once(CLASS_EX_REALDIR . "page_extends/LC_Page_Ex.php");
require_once(MDL_WEBPAY_CLASS_REALDIR . 'models/SC_Mdl_WebPay_Models_Module.php');
use WebPay\WebPay;

/**
 * WebPay module payment page class
 *
 * @package Page
 * @author WebPay
 */
class LC_Page_Mdl_WebPay_Payment extends LC_Page_Ex
{

    /**
     * Page を初期化する.
     *
     * @return void
     */
    public function init()
    {
        parent::init();
        $this->httpCacheControl('nocache');
    }

    /**
     * Page のプロセス.
     *
     * @return void
     */
    public function process()
    {
        $this->action();
        $this->sendResponse();
    }

    /**
     * Page のアクション.
     *
     * @return void
     */
    public function action()
    {
        $this->selectTemplate();

        $order_id = $this->getOrderId();
        if ($order_id === NULL) {
            SC_Utils_Ex::sfDispSiteError(FREE_ERROR_MSG, '', true, '注文情報の取得が出来ませんでした。<br />この手続きは無効となりました。');
        }

        $objPurchase = new SC_Helper_Purchase_Ex();
        $arrOrder = $objPurchase->getOrder($order_id);
        $this->tpl_title = $arrOrder['payment_method'];

        $this->validateOrderConsistency($arrOrder);

        $arrModuleSetting = SC_Mdl_WebPay_Models_Module::loadCurrentSetting();
        $objFormParam = new SC_FormParam_Ex();
        $this->initFormParam($objFormParam);

        switch ($this->getMode()) {
            case 'register':
                $objFormParam->setParam($_REQUEST);
                $objFormParam->convParam();
                $this->arrErr = $objFormParam->checkError();
                if (empty($this->arrErr)) {
                    $arrData = $objFormParam->getHashArray();
                    $message = $this->createCharge($arrModuleSetting, $arrOrder, array('token' => $arrData['webpay_token']));
                    if ($message === null) {
                        SC_Response_Ex::sendRedirect(SHOPPING_COMPLETE_URLPATH);
                        SC_Response_Ex::actionExit();
                    } else {
                        $this->tpl_webpay_charge_error = $message;
                    }
                    break;
                }
                break;
            default:
                break;
        }
        $this->tpl_webpay_publishable_key = $arrModuleSetting['publishable_key'];
        $this->tpl_url = $_SERVER['REQUEST_URI'];
    }

    /* テンプレートを設定する。携帯ははじく */
    private function selectTemplate()
    {
        switch (SC_Display_Ex::detectDevice()) {
            case DEVICE_TYPE_MOBILE:
                SC_Utils_Ex::sfDispSiteError(FREE_ERROR_MSG, '', true, '携帯電話からはクレジットカード決済を利用できせん');
                break;
            case DEVICE_TYPE_SMARTPHONE:
                $this->tpl_form_bloc_path = MDL_WEBPAY_TEMPLATE_REALDIR . 'sphone/bloc/token_payment.tpl';
                break;
            case DEVICE_TYPE_PC:
                $this->tpl_form_bloc_path = MDL_WEBPAY_TEMPLATE_REALDIR . 'default/bloc/token_payment.tpl';
                break;
        }
    }

    /* order_id を SESSION から取得する */
    private function getOrderId()
    {
        if (isset($_SESSION['order_id'])
            && !SC_Utils_Ex::isBlank($_SESSION['order_id'])
            && SC_Utils_Ex::sfIsInt($_SESSION['order_id'])) {
            return $_SESSION['order_id'];
        }

        return NULL;
    }

    /* 注文のデータが一貫しており処理可能なものであることを確認する */
    private function validateOrderConsistency($arrOrder)
    {
        switch ($arrOrder['status']) {
            case ORDER_PENDING:
                // 対象ケース。以降で処理する
                break;

            // 会計済み。許容しうる
            case ORDER_NEW:
            case ORDER_PRE_END:
                SC_Response_Ex::sendRedirect(SHOPPING_COMPLETE_URLPATH);
                SC_Response_Ex::actionExit();
                break;

            // WebPay の決済では発生しない
            default:
                SC_Utils_Ex::sfDispSiteError(FREE_ERROR_MSG, '', true, '注文情報の状態が不正です。<br />この手続きは無効となりました。');
        }

        $objPayment = new SC_Helper_Payment_Ex();
        $arrPayment = $objPayment->get($arrOrder['payment_id']);
        if ($arrPayment === null || $arrPayment['module_code'] !== MDL_WEBPAY_CODE) {
            SC_Utils_Ex::sfDispSiteError(FREE_ERROR_MSG, '', true, '支払方法が不正です。<br />この手続きは無効となりました。');
        }
    }

    /* パラメーター情報の初期化 */
    private function initFormParam($objFormParam)
    {
        // 仕様変更に備えて十分大きい値にしておく
        $max_length = 256;
        $objFormParam->addParam('カードトークン', 'webpay_token', $max_length, 'a', array('EXIST_CHECK', 'MAX_LENGTH_CHECK', 'ALNUM_CHECK'));
    }

    /**
     * WebPay API で課金をおこない、決済を完了する
     *
     * @param  array                $arrModuleSetting 読み込んだモジュール設定
     * @param  array                $arrOrder         dtb_order に入っている注文情報の列
     * @param  array                $arrPaymentData   WebPay での決済に利用するデータ
     * @return string|null          決済時に発生したエラーを購入者に説明するメッセージ
     * @throws \WebPay\ApiException 購入者に原因がないエラー(設定ミスによるもの、通信障害によるもの)
     */
    private function createCharge($arrModuleSetting, $arrOrder, $arrPaymentData)
    {
        if ($token = $arrPaymentData['token']) {
            $webpay = new WebPay($arrModuleSetting['secret_key']);
            $webpay->setAcceptLanguage('ja');
            try {
                $webpay->charge->create(array(
                    'amount' => $arrOrder['payment_total'],
                    'currency' => 'jpy',
                    'card' => $token,
                    'description' => $arrOrder['order_id'],
                ));
            } catch (\WebPay\ErrorResponse\CardException $e) {
                return $e->getData()->error->message;
            } catch (\WebPay\ErrorResponse\InvalidRequestException $e) {
                if ($e->getData()->error->param == 'card') {
                    return '不正な操作が行われたため決済できませんでした。再度カード情報を入力してください。';
                } else {
                    throw $e;
                }
            }
        }

        $objPurchase = new SC_Helper_Purchase_Ex();
        $objQuery =& SC_Query_Ex::getSingletonInstance();
        $objQuery->begin();
        $objPurchase->sfUpdateOrderStatus($arrOrder['order_id'], ORDER_PAY_END);
        $objQuery->commit();
        $objPurchase->sendORderMail($arrOrder['order_id']);

        return null;
    }
}
