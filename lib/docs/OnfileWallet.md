# GmoPaymentApiClient::OnfileWallet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | 会員ID | [optional] |
| **type** | [**OnfileWalletType**](OnfileWalletType.md) | 登録されているPay払いのタイプ   登録されているPay払いのタイプによってパラメーターの指定要否が異なります。   本セクション冒頭の「共通パラメーター対応表」を参照してください。   - &#x60;PAYPAY&#x60;：PayPay - &#x60;DOCOMO&#x60;：d払い - &#x60;RAKUTEN&#x60;：楽天ペイ(オンライン決済)V2 - &#x60;AMAZON&#x60;：Amazon Pay V2 - &#x60;AU_APP&#x60;：au PAY(ネット支払い)アプリ方式 &lt;span style&#x3D;\&quot;color: #d41f1c\&quot;&gt;※本番環境では2024年3月1日から利用できます&lt;/span&gt; - &#x60;MERPAY&#x60;：メルペイ  |  |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::OnfileWallet.new(
  member_id: member-001,
  type: null
)
```

