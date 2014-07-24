<?php
/**
 * This file is part of EC-CUBE WebPay module
 *
 * @copyright 2014 WebPay All Rights Reserved.
 */

require_once(CLASS_EX_REALDIR . "page_extends/admin/LC_Page_Admin_Ex.php");
require_once(MDL_WEBPAY_CLASS_REALDIR . 'models/SC_Mdl_WebPay_Models_Module.php');

/**
 * WebPay module admin config page class
 *
 * @package Page
 * @author WebPay
 */
class LC_Page_Mdl_WebPay_Config extends LC_Page_Admin_Ex
{

    /**
     * Page を初期化する.
     *
     * @return void
     */
    public function init()
    {
        parent::init();
        $this->tpl_mainpage = MDL_WEBPAY_TEMPLATE_REALDIR . 'admin/config.tpl';
        $this->tpl_subtitle = 'WebPay';
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
        $this->initPaymentMethod();
        $arrSetting = SC_Mdl_WebPay_Models_Module::loadCurrentSetting(true);

        $objFormParam = new SC_FormParam_Ex();
        $this->initFormParam($objFormParam, $arrSetting);

        switch ($this->getMode()) {
            case 'register':
                $objFormParam->setParam($_REQUEST);
                $objFormParam->convParam();
                $this->arrErr = $objFormParam->checkError();
                if (empty($this->arrErr)) {
                    $arrSetting = $objFormParam->getHashArray();
                    $this->updateModuleSetting($arrSetting);
                }
                break;
            default:
                $objFormParam->setParam($arrSetting);
                $objFormParam->convParam();
                $this->arrErr = $objFormParam->checkError();
                break;
        }
        $this->arrForm = $objFormParam->getFormParamList();
    }

    /**
     * dtb_payment に WebPay モジュールによるクレジットカード決済がない場合は追加する
     *
     * @return boolean 実行した場合は true
     */
    private function initPaymentMethod()
    {
        $objQuery = SC_Query::getSingletonInstance();
        $isExists = $objQuery->exists('dtb_payment', 'module_id = ?', array(MDL_WEBPAY_ID));
        if ($isExists) {
            return false;
        }

        // rank, create_date, update_date, payment_id は自動設定される
        $arrVal = array(
            'payment_method' => 'クレジットカード決済',
            'charge_flg' => 2, // 決済手数料設定不可
            'rule_min' => 50, // 設定できる最低金額の下限
            'upper_rule_max'  => 9999999, // 設定できる最高金額の上限
            'module_id' => MDL_WEBPAY_ID,
            'module_path' => MDL_WEBPAY_REALDIR . 'payment.php',
            'memo03' => MDL_WEBPAY_CODE,
        );
        $objPayment = new SC_Helper_Payment_Ex();
        $objPayment->save($arrVal);

        return true;
    }

    /* パラメーター情報の初期化 */
    private function initFormParam($objFormParam)
    {
        // 仕様変更に備えて十分大きい値にしておく
        $max_length = 256;
        $objFormParam->addParam('非公開鍵', 'secret_key', $max_length, 'a', array('EXIST_CHECK', 'MAX_LENGTH_CHECK', 'GRAPH_CHECK'));
        $objFormParam->addParam('公開可能鍵', 'publishable_key', $max_length, 'a', array('EXIST_CHECK', 'MAX_LENGTH_CHECK', 'GRAPH_CHECK'));
    }

    /* バリデーション済みの設定値を dtb_module に保存 */
    private function updateModuleSetting($arrSetting)
    {
        $objQuery = SC_Query::getSingletonInstance();
        if ($objQuery->begin() !== MDB2_OK) {
            die('WebPayモジュールの初期化に失敗しました');
        }
        $arrVal = array('sub_data' => serialize($arrSetting), 'update_date' => 'CURRENT_TIMESTAMP');
        $objQuery->update('dtb_module', $arrVal, 'module_code = ?', array(MDL_WEBPAY_CODE));
        if ($objQuery->commit() !== MDB2_OK) {
            die('WebPayモジュールの初期化に失敗しました');
        }
    }
}
