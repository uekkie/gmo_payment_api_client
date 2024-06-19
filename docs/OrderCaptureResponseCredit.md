# GmoPaymentApiClient::OrderCaptureResponseCredit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_reference** | [**OrderReference**](OrderReference.md) | 取引参照情報  | [optional] |
| **credit_result** | [**CreditResult**](CreditResult.md) |  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::OrderCaptureResponseCredit.new(
  order_reference: null,
  credit_result: null
)
```

