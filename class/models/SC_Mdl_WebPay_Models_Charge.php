<?php
/**
 * This file is part of EC-CUBE WebPay module
 *
 * @copyright 2014 WebPay All Rights Reserved.
 */

/**
 * WebPay charge handler
 *
 * @author WebPay
 */
class SC_Mdl_WebPay_Models_Charge
{
    private $objWebPay;

    /**
     * @var $arrOrder テーブルからロードした order のデータ
     */
    public $arrOrder;
    private $objWebPayCharge;

    public function __construct($order_id)
    {
        $objPurchase = new SC_Helper_Purchase_Ex();
        $this->arrOrder = $objPurchase->getOrder($order_id);
    }

    /* WebPay 上の charge object の ID */
    public function getChargeId()
    {
        $arrData = $this->lfGetChargeData();
        return $arrData['id'];
    }

    /* 課金が live か */
    public function isLiveCharge()
    {
        $arrData = $this->lfGetChargeData();
        return $arrData['livemode'];
    }

    /* 課金詳細ページURL */
    public function getWebPayPage()
    {
        return sprintf('https://webpay.jp/%s/charges/%s',
                $this->isLiveCharge() ? 'live' : 'test',
                $this->getChargeId());
    }

    /* 実売上化済みか */
    public function isCaptured()
    {
        $arrData = $this->lfGetChargeData();
        return $arrData['captured'];
    }

    /* 最終更新時の金額 */
    public function getAmount()
    {
        $arrData = $this->lfGetChargeData();
        return $arrData['real_amount'];
    }

    private function lfGetChargeData()
    {
        return unserialize($this->arrOrder[MDL_WEBPAY_CHARGE_DATA_COL]);
    }

    /**
     * 指定の注文について WebPay API で課金をおこない、決済を完了する
     * エラーメッセージを返す。
     *
     * @param  \WebPay\WebPay                $objWebPay      WebPay client
     * @param  bool                          $authorize      trueなら仮売上にする
     * @param  array                         $arrPayer       支払方法。'customer' => customer_id か 'card' => token_id
     * @return string|null                   決済時に発生したエラーを購入者に説明するメッセージ
     * @throws \WebPay\ApiException          購入者に原因がないエラー(設定ミスによるもの、通信障害によるもの)
     */
    public function createCharge($objWebPay, $authorize, $arrPayer)
    {
        $arrChargeParams = $this->lfComposeChargeParam($authorize, $arrPayer);
        try {
            $objCharge = $objWebPay->chargeCreate($arrChargeParams);
        } catch (\WebPay\ErrorResponse\CardException $e) {
            return $e->getData()->error->message;
        } catch (\WebPay\ErrorResponse\InvalidRequestException $e) {
            if ($e->getData()->error->param == 'card') {
                return '不正な操作が行われたため決済できませんでした。カード情報を再入力してください';
            } else if ($e->getData()->error->param === 'id' || $e->getData()->error->param === 'customer') {
                return 'カード情報が見付かりませんでした。カード情報を再入力してください';
            } else {
                throw $e;
            }
        }

        $objPurchase = new SC_Helper_Purchase_Ex();
        $updateData = array(MDL_WEBPAY_CHARGE_DATA_COL => $this->lfConvertToDbChargeData($objCharge));
        $objQuery = SC_Query_Ex::getSingletonInstance();
        $objQuery->begin();
        $objPurchase->sfUpdateOrderStatus(
            $this->arrOrder['order_id'],
            $authorize ? ORDER_PAY_WAIT : ORDER_PRE_END,
            null, // 加算ポイント
            null, // 使用ポイント
            $updateData
        );
        $objQuery->commit();
        $objPurchase->sendOrderMail($this->arrOrder['order_id']);

        return null;
    }

    private function lfComposeChargeParam($authorize, $arrPayer)
    {
        assert(count($arrPayer) === 1, '$arrPayer must have 1 payer specification');
        $arrChargeParams = array(
            'amount' => intval($this->arrOrder['payment_total'], 10),
            'currency' => 'jpy',
            'description' => (string) $this->arrOrder['order_id'],
        );
        if ($authorize) {
            $arrChargeParams['capture'] = false;
        }
        foreach ($arrPayer as $k => $v) {
            $arrChargeParams[$k] = $v;
        }
        return $arrChargeParams;
    }

    private function lfConvertToDbChargeData($objCharge)
    {
        return array(
            'id' => $objCharge->id,
            'livemode' => $objCharge->livemode,
            'captured' => $objCharge->captured,
            'real_amount' => $objCharge->amount - $objCharge->amount_refunded,
        );
    }

    /**
     * 指定の注文について WebPay API で実売上化する
     * エラーメッセージを返す。
     *
     * @param  \WebPay\WebPay                $objWebPay      WebPay client
     * @return string|null                   決済時に発生したエラーを管理者に説明するメッセージ
     * @throws \WebPay\ApiException          管理者に原因がないエラー(設定ミスによるもの、通信障害によるもの)
     */
    public function capture($objWebPay)
    {
        $current_total = intval($this->arrOrder['payment_total'], 10);
        if ($this->getAmount() < $current_total) {
            return sprintf('仮売上金額(%s円)以上で実売上化することはできません。合計金額を仮売上金額以下にするか、金額を増額する場合は購入者に連絡し、再度購入処理を行ってください。', number_format($this->getAmount()));
        }
        try {
            $objCharge = $objWebPay->chargeCapture(array('id' => $this->getChargeId(), 'amount' => $current_total));
        } catch (\WebPay\ApiException $e) {
            $objData = $e->getData();
            if ($objData && $objData->error) {
                $message = $objData->error->message;
                switch ($objData->error->causedBy) {
                case 'buyer':
                    return '購入者に起因する問題で決済できませんでした。購入者に連絡して状況をお訪ねください。' . $message;
                case 'insufficient':
                    return '不正なリクエストがおこなわれました。WebPayのダッシュボードを確認してください。' . $message;
                case 'missing':
                    return '操作対象の課金が見つかりませんでした。WebPayのダッシュボードを確認してください。';
                case 'service':
                default:
                    return '未知のエラーが発生しました。時間をおいてやりなおしてください。' . $message;
                }
            }
            throw $e;
        }

        $objPurchase = new SC_Helper_Purchase_Ex();
        $updateData = array(MDL_WEBPAY_CHARGE_DATA_COL => $this->lfConvertToDbChargeData($objCharge));
        $objQuery = SC_Query_Ex::getSingletonInstance();
        $objQuery->begin();
        $objPurchase->sfUpdateOrderStatus(
            $this->arrOrder['order_id'],
            ORDER_PRE_END,
            null, // 加算ポイント
            null, // 使用ポイント
            $updateData
        );
        $objQuery->commit();
        $objPurchase->sendOrderMail($this->arrOrder['order_id']);

        return null;
    }
}
