# GmoPaymentApiClient::CreditVerificationOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **use_tds2** | **Boolean** | 3Dセキュア認証の利用有無 | [optional][default to true] |
| **item_code** | **String** | 商品番号   加盟店様とカード会社との契約で定められた場合のみ設定します。   省略時はデフォルトで「0000990」が設定されます。  | [optional][default to &#39;0000990&#39;] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::CreditVerificationOptions.new(
  use_tds2: true,
  item_code: 0000990
)
```

