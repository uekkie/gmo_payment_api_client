# GmoPaymentApiClient::OrderInquiryResponseCredit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_reference** | [**OrderReference**](OrderReference.md) | 取引参照情報  | [optional] |
| **credit_result** | [**CreditResult**](CreditResult.md) |  | [optional] |
| **tds2_result** | [**Tds2Result**](Tds2Result.md) |  | [optional] |
| **fraud_detection_result** | [**FraudDetectionResult**](FraudDetectionResult.md) | 不正検知の結果情報 | [optional] |
| **error_information** | [**ErrorInformation**](ErrorInformation.md) |  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::OrderInquiryResponseCredit.new(
  order_reference: null,
  credit_result: null,
  tds2_result: null,
  fraud_detection_result: null,
  error_information: null
)
```

