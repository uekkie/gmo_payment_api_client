# GmoPaymentApiClient::OrderUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_id** | **String** | 取引ID |  |
| **amount** | **String** | 税送料込の取引金額   決済手段により設定可能な値が異なります。  |  |
| **authorization_mode** | [**AuthorizationMode**](AuthorizationMode.md) | 支払い要求のタイプ   クレカ払いの場合は必ず設定してください。   クレカ払い以外は設定しても無視されます。   - &#x60;AUTH&#x60;：仮売上 - &#x60;CAPTURE&#x60;：即時売上  | [optional] |
| **additional_options** | **Hash&lt;String, Object&gt;** | 追加情報   予備項目であり、通常は使用しないでください。   任意のMap(Key:Value)形式で、KeyとValueはともにString型のみ設定可能です。   20個までの要素を設定可能です。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::OrderUpdateRequest.new(
  access_id: acdc7d53f7a78f488d8d0997eff99c6f,
  amount: 1000,
  authorization_mode: null,
  additional_options: null
)
```

