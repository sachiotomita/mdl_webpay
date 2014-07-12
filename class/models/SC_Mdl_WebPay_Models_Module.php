<?php
/**
 * This file is part of EC-CUBE WebPay module
 *
 * @copyright 2014 WebPay All Rights Reserved.
 */

/**
 * WebPay module database accessor
 *
 * @author WebPay
 */
class SC_Mdl_WebPay_Models_Module
{
    private static $requiredKeys = array('secret_key', 'publishable_key');

    /**
     * 現在の設定を dtb_module からロード
     *
     * @param boolean $initialize true ならエントリが存在しない場合は作成し、データが存在しない場合に array() を返す。 false なら完全性チェックをおこない、データが不正な場合に null を返す
     * @return array|null 現在の設定値。ない場合は空の配列
     */
    public static function loadCurrentSetting($initialize = false)
    {
        $objQuery = SC_Query::getSingletonInstance();
        $objQuery->setLimit(1);
        $retval = $initialize ? array() : null;

        if ($objQuery->begin() !== MDB2_OK) {
            die('WebPayモジュールの初期化に失敗しました');
        }
        $arrModule = $objQuery->select('module_id, sub_data', 'dtb_module', 'module_code = ?', array(MDL_WEBPAY_CODE));
        if ($arrModule !== NULL && !empty($arrModule)) {
            $data = $arrModule[0]['sub_data'];

            if ($initialize) {
                if ($data !== null) {
                    $retval = unserialize($data);
                }
            } else {
                $retval = self::lfCompleteSettingOrNull($data);
            }
        } else {
            if ($initialize) {
                self::lfInsert($objQuery);
            }
        }
        if ($objQuery->commit() !== MDB2_OK) {
            die('WebPayモジュールの初期化に失敗しました');
        }

        return $retval;
    }

    /* ModuleSetting の完全性チェックをおこない、不正なら null を返す */
    private static function lfCompleteSettingOrNull($data)
    {
        if ($data === null)
            return null;
        try {
            $arrSetting = unserialize($data);
        } catch (Exception $e) {
            return null;
        }
        foreach ($key as self::$requiredKeys) {
            if (!array_key_exists($key, $arrSetting) || $arrSetting[$key] === null || $arrSetting[$key] === '')
                return null;
        }
        return $arrSetting;
    }

    /* dtb_module に WebPay のエントリを挿入する */
    private static function lfInsert($objQuery)
    {
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
    }
}
