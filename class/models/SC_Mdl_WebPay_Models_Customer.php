<?php
/**
 * This file is part of EC-CUBE WebPay module
 *
 * @copyright 2014 WebPay All Rights Reserved.
 */

/**
 * WebPay customer handler
 *
 * @author WebPay
 */
class SC_Mdl_WebPay_Models_Customer
{
    private $objWebPay;

    /**
     * @var $customer_id 0 or NULL のとき該当なしとする
     */
    private $customer_id;
    private $objWebPayCustomer;

    public function __construct($objWebPay, $customer_id)
    {
        $this->objWebPay = $objWebPay;
        $this->customer_id = intval($customer_id);
    }

    /* int 化された customer_id を取得 */
    public function getCustomerId()
    {
        return $this->customer_id;
    }

    /**
     * 顧客に関連づけられたカード情報を WebPay から取得する
     *
     * @return object|null 取得したカード情報。ない場合はnull
     */
    public function fetchSavedCardForCustomer()
    {
        if ($this->lfIsNoCustomer()) {
            return null;
        }
        $objCustomer = $this->lfFetchWebPayCustomer();

        return $objCustomer !== null ? $objCustomer->activeCard : null;
    }

    /**
     * カード情報を WebPay に保存する
     *
     * @param  string $token WebPay token id
     * @return string WebPay customer id
     */
    public function saveCardForCustomer($token)
    {
        if ($this->lfIsNoCustomer()) {
            return null;
        }
        $webpay_id = $this->LoadWebPayId();
        $arrAttributes = array('card' => $token, 'description' => (string) $this->customer_id);
        $webpay_id = $this->lfUpdateCustomer($webpay_id, $arrAttributes);
        $this->lfInsertWebPayId($webpay_id);

        return $webpay_id;
    }

    /**
     * WebPay に保存したカード情報を削除する
     *
     * 顧客情報は課金を紐付いているため削除しない
     *
     * @return void
     */
    public function deleteActiveCard()
    {
        if ($this->lfIsNoCustomer()) {
            return;
        }
        $webpay_id = $this->LoadWebPayId();
        $this->objWebPay->customerDeleteActiveCard($webpay_id);
    }

    private function lfIsNoCustomer()
    {
        return $this->customer_id === 0;
    }

    /* WebPay の顧客情報を取得する */
    private function lfFetchWebPayCustomer()
    {
        if ($this->objWebPayCustomer !== null) {
            return $this->objWebPayCustomer;
        }
        $webpay_customer_id = $this->loadWebPayId();
        if ($webpay_customer_id === null)
            return null;
        try {
            $this->objWebPayCustomer = $this->objWebPay->customerRetrieve($webpay_customer_id);
        } catch (\WebPay\ErrorResponse\InvalidRequestException $e) {
            $this->lfRemoveWebPayId();
        }

        return $this->objWebPayCustomer;
    }

    /* WebPay の顧客情報を更新する。更新or作成した id を返す */
    private function lfUpdateCustomer($webpay_id, $arrAttributes)
    {
        $updated = false;
        if ($webpay_id !== null) {
            $arrWithId = array_merge(array('id' => $webpay_id), $arrAttributes);
            try {
                $this->objWebPayCustomer = $this->objWebPay->customerUpdate($arrWithId);
                $updated = true;
            } catch (\WebPay\ErrorResponse\InvalidRequestException $e) {
                if ($e->getData()->error->param !== 'id')
                    throw $e;
            }
        }
        if (!$updated) {
            $this->objWebPayCustomer = $this->objWebPay->customerCreate($arrAttributes);
        }

        return $this->objWebPayCustomer->id;
    }

    /* WebPay の ID を DB に登録する */
    private function lfInsertWebPayId($webpay_id)
    {
        $objQuery = SC_Query_Ex::getSingletonInstance();
        $objQuery->begin();
        $arrMapping = self::lfLoadMapping($objQuery);
        $arrMapping[$this->customer_id] = $webpay_id;
        self::lfSaveMapping($objQuery, $arrMapping);
        $objQuery->commit();
    }

    /* WebPay の ID を DB から取得する。ない場合は null */
    public function loadWebPayId()
    {
        if ($this->lfIsNoCustomer()) {
            return null;
        }
        $objQuery = SC_Query_Ex::getSingletonInstance();
        $arrMapping = self::lfLoadMapping($objQuery);
        if (!array_key_exists($this->customer_id, $arrMapping)) {
            return null;
        }

        return $arrMapping[$this->customer_id];
    }

    /* WebPay の ID を DB から削除する */
    private function lfRemoveWebPayId()
    {
        $objQuery = SC_Query_Ex::getSingletonInstance();
        $objQuery->begin();
        $arrMapping = self::lfLoadMapping($objQuery);
        if (array_key_exists($this->customer_id, $arrMapping)) {
            unset($arrMapping[$this->customer_id]);
            self::lfSaveMapping($objQuery, $arrMapping);
        }
        $objQuery->commit();
    }

    /*
      arrMapping を安全にロードする
      この持ちかたは理想的ではないが、10,000件程度のエントリに対して十分なパフォーマンスが出ることを確認済
     */
    private static function lfLoadMapping($objQuery)
    {
        $s_data = $objQuery->getCol(MDL_WEBPAY_CUSTOMER_DATA_COL, 'dtb_payment', 'module_id = ?',  array(MDL_WEBPAY_ID));
        $arrMapping = unserialize($s_data[0]);

        return is_array($arrMapping) ? $arrMapping : array();
    }

    /* arrMapping を保存する */
    private static function lfSaveMapping($objQuery, $arrMapping)
    {
        unset($arrMapping[0]); // id > 0 なので 0 は必ず排除
        $arrNewVal = array(MDL_WEBPAY_CUSTOMER_DATA_COL => serialize($arrMapping));
        $objQuery->update('dtb_payment', $arrNewVal, 'module_id = ?',  array(MDL_WEBPAY_ID));
    }
}
