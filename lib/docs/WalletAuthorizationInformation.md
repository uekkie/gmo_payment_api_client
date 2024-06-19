# GmoPaymentApiClient::WalletAuthorizationInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet_type** | [**OnfileWalletType**](OnfileWalletType.md) | 登録するPay払い利用承諾のタイプ   登録するPay払い利用承諾のタイプによってパラメーターの指定要否が異なります。   本セクション冒頭の「共通パラメーター対応表」を参照してください。   - &#x60;PAYPAY&#x60;：PayPay - &#x60;DOCOMO&#x60;：d払い - &#x60;RAKUTEN&#x60;：楽天ペイ(オンライン決済)V2 - &#x60;AMAZON&#x60;：Amazon Pay V2 - &#x60;AU_APP&#x60;：au PAY(ネット支払い)アプリ方式 &lt;span style&#x3D;\&quot;color: #d41f1c\&quot;&gt;※本番環境では2024年3月1日から利用できます&lt;/span&gt; - &#x60;MERPAY&#x60;：メルペイ  |  |
| **wallet_authorization_options** | [**WalletAuthorizationOptions**](WalletAuthorizationOptions.md) |  |  |
| **amazon_pay** | [**AmazonPay**](AmazonPay.md) |  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::WalletAuthorizationInformation.new(
  wallet_type: null,
  wallet_authorization_options: null,
  amazon_pay: null
)
```

