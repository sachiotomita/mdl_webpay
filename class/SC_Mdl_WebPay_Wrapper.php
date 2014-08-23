<?php
/**
 * This file is part of EC-CUBE WebPay module
 *
 * @copyright 2014 WebPay All Rights Reserved.
 */

use WebPay\WebPay;

/**
 * Wrap WebPay library to log transactions
 *
 * @author WebPay
 */
class SC_Mdl_WebPay_Wrapper
{
    private $objWebPay;

    public function __construct($secret_key)
    {
        $this->objWebPay = new WebPay($secret_key);
        $this->objWebPay->setAcceptLanguage('ja');
    }

    public function chargeCreate($arrParams)
    {
        $this->lfLog('charge.create', $arrParams);
        return $this->objWebPay->charge->create($arrParams);
    }

    public function customerCreate($arrParams)
    {
        $this->lflog('customer.create', $arrParams);
        return $this->objWebPay->customer->create($arrParams);
    }

    public function customerUpdate($arrParams)
    {
        $this->lflog('customer.update', $arrParams);
        return $this->objWebPay->customer->update($arrParams);
    }

    public function customerRetrieve($customer_id)
    {
        $this->lflog('customer.retrieve', $customer_id);
        return $this->objWebPay->customer->retrieve($customer_id);
    }

    public function customerDeleteActiveCard($customer_id)
    {
        $this->lflog('customer.delete_active_card', $customer_id);
        return $this->objWebPay->customer->deleteActiveCard($customer_id);
    }

    private function lfLog($method, $param)
    {
        $msg = 'https://api.webpay.jp ' . $method . ': '. serialize($param);
        $path = sprintf(MDL_WEBPAY_LOG_REALFILE_FORMAT, date('Ymd'));
        GC_Utils_Ex::gfPrintLog($msg, $path);
    }
}
