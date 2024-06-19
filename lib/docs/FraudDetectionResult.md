# GmoPaymentApiClient::FraudDetectionResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **screening_type** | **String** | 審査タイプ | [optional] |
| **screening_transaction_id** | **String** | 審査トランザクションID | [optional] |
| **screening_result_code** | **String** | 審査結果コード | [optional] |
| **screening_result_raw_data** | **String** | 審査結果(未加工) | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::FraudDetectionResult.new(
  screening_type: null,
  screening_transaction_id: null,
  screening_result_code: null,
  screening_result_raw_data: null
)
```

