# GmoPaymentApiClient::OrderCaptureRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_id** | **String** | 取引ID |  |
| **additional_options** | **Hash&lt;String, Object&gt;** | 追加情報   予備項目であり、通常は使用しないでください。   任意のMap(Key:Value)形式で、KeyとValueはともにString型のみ設定可能です。   20個までの要素を設定可能です。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::OrderCaptureRequest.new(
  access_id: acdc7d53f7a78f488d8d0997eff99c6f,
  additional_options: null
)
```

