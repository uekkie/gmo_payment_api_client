# GmoPaymentApiClient::CashInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cash_type** | [**Mulpay**](Mulpay.md) |  |  |
| **cash_options** | [**CashOptions**](CashOptions.md) |  | [optional] |
| **display_information** | [**DisplayInformation**](DisplayInformation.md) |  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::CashInformation.new(
  cash_type: null,
  cash_options: null,
  display_information: null
)
```

