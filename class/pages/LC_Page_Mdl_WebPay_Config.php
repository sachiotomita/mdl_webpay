<?php
/**
 * This file is part of EC-CUBE WebPay module
 *
 * @copyright 2014 WebPay All Rights Reserved.
 */

require_once(CLASS_EX_REALDIR . "page_extends/admin/LC_Page_Admin_Ex.php");

/**
 * WebPay module admin config page class
 *
 * @package Page
 * @author WebPay
 */
class LC_Page_Mdl_WebPay_Config extends LC_Page_Admin_Ex {

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
        $arrSetting = $this->loadCurrentModuleSetting();

        $objFormParam = new SC_FormParam_Ex();
        $this->initFormParam($objFormParam, $arrSetting);

        switch($this->getMode()) {
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
     * 現在の設定を dtb_module からロード
     *
     * dtb_module に WebPay モジュールのエントリがない場合は初期化する
     *
     * @return array 現在の設定値。ない場合は空の配列
     */
    private function loadCurrentModuleSetting()
    {
        $objQuery = SC_Query::getSingletonInstance();
        $objQuery->setLimit(1);
        if ($objQuery->begin() !== MDB2_OK) {
            die('WebPayモジュールの初期化に失敗しました');
        }
        $arrModule = $objQuery->select('module_id, sub_data', 'dtb_module', 'module_code = ?', array(MDL_WEBPAY_CODE));
        if ($arrModule !== NULL && !empty($arrModule)) {
            return unserialize($arrModule[0]['sub_data']);
        }

        $arrVal = array(
            'module_id' => MDL_WEBPAY_ID,
            'module_code' => MDL_WEBPAY_CODE,
            'module_name' => 'WebPay決済モジュール',
            'auto_update_flg' => 0,
            'del_flg' => 0,
            'create_date' => 'CURRENT_TIMESTAMP',
            'update_date' => 'CURRENT_TIMESTAMP',
        );
        if ($objQuery->insert('dtb_module', $arrVal) !==  1) {
            die('WebPayモジュールの初期化に失敗しました');
        }
        if ($objQuery->commit() !== MDB2_OK) {
            die('WebPayモジュールの初期化に失敗しました');
        }
        return array();
    }

    /* パラメーター情報の初期化 */
    private function initFormParam($objFormParam)
    {
        // 仕様変更に備えて十分大きい値にしておく
        $max_length = 256;
        $objFormParam->addParam('非公開鍵', 'secret_key', $max_length, 'a', array('EXIST_CHECK', 'MAX_LENGTH_CHECK', 'ALNUM_CHECK'));
        $objFormParam->addParam('公開可能鍵', 'publishable_key', $max_length, 'a', array('EXIST_CHECK', 'MAX_LENGTH_CHECK', 'ALNUM_CHECK'));
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
