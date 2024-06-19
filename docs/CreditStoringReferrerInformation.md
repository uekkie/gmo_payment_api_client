# GmoPaymentApiClient::CreditStoringReferrerInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **referrer** | [**Referrer**](Referrer.md) |  |  |
| **onfile_card_options** | [**OnfileCardOptions**](OnfileCardOptions.md) | カード登録オプション情報  |  |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::CreditStoringReferrerInformation.new(
  referrer: null,
  onfile_card_options: null
)
```

