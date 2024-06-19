# GmoPaymentApiClient::CreditVerificationTokenInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tokenized_card** | [**TokenizedCard**](TokenizedCard.md) | トークン化されたカード情報   **有効性確認(/credit/verifyCard)においては、Apple Payトークンは利用できません。**  | [optional] |
| **credit_verification_options** | [**CreditVerificationOptions**](CreditVerificationOptions.md) |  | [optional] |
| **onfile_card_options** | [**OnfileCardOptions**](OnfileCardOptions.md) |  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::CreditVerificationTokenInformation.new(
  tokenized_card: null,
  credit_verification_options: null,
  onfile_card_options: null
)
```

