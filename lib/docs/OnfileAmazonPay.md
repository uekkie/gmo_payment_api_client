# GmoPaymentApiClient::OnfileAmazonPay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **note_to_buyer** | **String** | 注文の説明   注文の説明です。   Amazonからお客様へのメールに表示されます。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::OnfileAmazonPay.new(
  note_to_buyer: 渋谷店
)
```

