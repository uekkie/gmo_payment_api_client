# GmoPaymentApiClient::CreditVerificationPanInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card** | [**Card**](Card.md) |  | [optional] |
| **credit_verification_options** | [**CreditVerificationOptions**](CreditVerificationOptions.md) |  | [optional] |
| **onfile_card_options** | [**OnfileCardOptions**](OnfileCardOptions.md) |  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::CreditVerificationPanInformation.new(
  card: null,
  credit_verification_options: null,
  onfile_card_options: null
)
```

