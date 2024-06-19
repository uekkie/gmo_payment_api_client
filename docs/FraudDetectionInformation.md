# GmoPaymentApiClient::FraudDetectionInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fraud_detection_options** | [**FraudDetectionOptions**](FraudDetectionOptions.md) |  |  |
| **fraud_detection_data** | [**FraudDetectionData**](FraudDetectionData.md) |  |  |
| **fraud_detection_custom_data** | [**FraudDetectionCustomData**](FraudDetectionCustomData.md) |  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::FraudDetectionInformation.new(
  fraud_detection_options: null,
  fraud_detection_data: null,
  fraud_detection_custom_data: null
)
```

