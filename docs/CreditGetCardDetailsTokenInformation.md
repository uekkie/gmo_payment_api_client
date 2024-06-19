# GmoPaymentApiClient::CreditGetCardDetailsTokenInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tokenized_card** | [**TokenizedCard**](TokenizedCard.md) | トークン化されたカード情報   **Apple PayトークンおよびGoogle Payトークンは利用できません。**  |  |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::CreditGetCardDetailsTokenInformation.new(
  tokenized_card: null
)
```

