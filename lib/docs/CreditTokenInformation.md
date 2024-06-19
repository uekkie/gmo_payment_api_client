# GmoPaymentApiClient::CreditTokenInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tokenized_card** | [**TokenizedCard**](TokenizedCard.md) |  |  |
| **credit_charge_options** | [**CreditChargeOptions**](CreditChargeOptions.md) |  |  |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::CreditTokenInformation.new(
  tokenized_card: null,
  credit_charge_options: null
)
```

