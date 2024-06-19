# GmoPaymentApiClient::OrderInquiryResponseCash

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_reference** | [**OrderReference**](OrderReference.md) | 取引参照情報  | [optional] |
| **cash_result** | [**CashResult**](CashResult.md) |  | [optional] |
| **error_information** | [**ErrorInformation**](ErrorInformation.md) |  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::OrderInquiryResponseCash.new(
  order_reference: null,
  cash_result: null,
  error_information: null
)
```

