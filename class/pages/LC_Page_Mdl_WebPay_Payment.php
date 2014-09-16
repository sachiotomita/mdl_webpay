<?php
/**
 * This file is part of EC-CUBE WebPay module
 *
 * @copyright 2014 WebPay All Rights Reserved.
 */

require_once(CLASS_EX_REALDIR . "page_extends/LC_Page_Ex.php");
require_once(MDL_WEBPAY_CLASS_REALDIR . 'SC_Mdl_WebPay_Wrapper.php');
require_once(MDL_WEBPAY_CLASS_REALDIR . 'models/SC_Mdl_WebPay_Models_Charge.php');
require_once(MDL_WEBPAY_CLASS_REALDIR . 'models/SC_Mdl_WebPay_Models_Customer.php');
require_once(MDL_WEBPAY_CLASS_REALDIR . 'models/SC_Mdl_WebPay_Models_Module.php');

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
        $objCharge= new SC_Mdl_WebPay_Models_Charge($order_id);
        $this->tpl_title = $objCharge->arrOrder['payment_method'];

        $this->validateOrderConsistency($objCharge->arrOrder);

        $arrModuleSetting = SC_Mdl_WebPay_Models_Module::loadCurrentSetting();
        $objWebPay = new SC_Mdl_WebPay_Wrapper($arrModuleSetting['secret_key']);
        $objCustomer = new SC_Mdl_WebPay_Models_Customer($objWebPay, $objCharge->arrOrder['customer_id']);
        $objFormParam = new SC_FormParam_Ex();
        $this->initFormParam($objFormParam);

        switch ($this->getMode()) {
            case 'delete_card':
                $objCustomer->deleteActiveCard();
                break;
            case 'other_card':
                break;
            case 'pay':
                $objFormParam->setParam($_REQUEST);
                $objFormParam->convParam();
                $this->arrErr = $this->checkFormParamError($objFormParam);
                if (empty($this->arrErr)) {
                    $arrData = $objFormParam->getHashArray();
                    $arrPayer = array();
                    $message = $this->selectPayer($objCustomer, $arrData, $arrPayer);
                    if ($message !== null) {
                        $this->tpl_webpay_charge_error = $message;
                        break;
                    }
                    $authorize = $arrModuleSetting['payment'] == 'authorize';
                    $message = $objCharge->createCharge($objWebPay, $authorize, $arrPayer);
                    if ($message !== null) {
                        $this->tpl_webpay_charge_error = $message;
                        break;
                    }
                    SC_Response_Ex::sendRedirect(SHOPPING_COMPLETE_URLPATH);
                    SC_Response_Ex::actionExit();
                    break;
                }
                break;
            default:
                $this->objSavedCard = $objCustomer->fetchSavedCardForCustomer();
                break;
        }
        $this->tpl_is_registered_customer = $objCustomer->getCustomerId() !== 0;
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
            default:
                $this->tpl_mainpage = MDL_WEBPAY_TEMPLATE_REALDIR . 'default/load_payment_module.tpl';
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
            case ORDER_PAY_WAIT:
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
        if ($arrPayment === null || $arrPayment['module_id'] !== MDL_WEBPAY_ID) {
            SC_Utils_Ex::sfDispSiteError(FREE_ERROR_MSG, '', true, '支払方法が不正です。<br />この手続きは無効となりました。');
        }
    }

    /* パラメーター情報の初期化 */
    private function initFormParam($objFormParam)
    {
        // 仕様変更に備えて十分大きい値にしておく
        $max_length = 256;
        $objFormParam->addParam('カードトークン', 'webpay_token', $max_length, 'a', array('MAX_LENGTH_CHECK', 'GRAPH_CHECK'));
        $objFormParam->addParam('支払方法', 'card_info', $max_length, 'a', array('EXIST_CHECK', 'MAX_LENGTH_CHECK', 'GRAPH_CHECK'));
    }

    /* パラメータチェック */
    private function checkFormParamError($objFormParam)
    {
        $arrErr = $objFormParam->checkError();
        $card_info = $objFormParam->getValue('card_info');
        $webpay_token = $objFormParam->getValue('webpay_token');
        if (($card_info === 'token' || $card_info === 'customer_from_token') && empty($webpay_token)) {
            $arrErr['webpay_token'] = 'カードトークンが入力されていません';
        }

        return $arrErr;
    }

    /**
     * 顧客情報と入力パラメータから支払ソースを決定する
     *
     * @param  SC_Mdl_WebPay_Models_Customer $objCustomer
     * @param  array                         $arrPaymentData 利用者の入力
     * @param  array                         &$arrOutPayer   output: 選択された支払いソースの情報
     * @return string|null                   決済時に発生したエラーを購入者に説明するメッセージ
     * @throws \WebPay\ApiException          購入者に原因がないエラー(設定ミスによるもの、通信障害によるもの)
     */
    private function selectPayer($objCustomer, $arrPaymentData, &$arrOutPayer)
    {
        switch ($arrPaymentData['card_info']) {
            case 'customer':
                $customer_id = $objCustomer->loadWebPayId();
                if ($customer_id === null) {
                    return 'カード情報が見付かりませんでした。カード情報を再入力してください';
                }
                $arrOutPayer['customer'] = $customer_id;
                break;
            case 'customer_from_token':
                $customer_id = $objCustomer->saveCardForCustomer($arrPaymentData['webpay_token']);
                if ($customer_id === null) {
                    return 'カード情報の登録に失敗したため決済できませんでした。カード情報を再入力してください';
                }
                $arrOutPayer['customer'] = $customer_id;
                break;
            case 'token':
                $arrOutPayer['card'] = $arrPaymentData['webpay_token'];
                break;
            default:
                return '未知の決済方法です。再度入力してください';
        }

        return null;
    }
}
