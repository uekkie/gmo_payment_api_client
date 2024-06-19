# GmoPaymentApiClient::CreditStoringTokenInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tokenized_card** | [**TokenizedCard**](TokenizedCard.md) | トークン化されたカード情報   **カード登録(/credit/storeCard)においては、Apple Payトークンは利用できません。**  |  |
| **onfile_card_options** | [**OnfileCardOptions**](OnfileCardOptions.md) |  |  |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::CreditStoringTokenInformation.new(
  tokenized_card: null,
  onfile_card_options: null
)
```

