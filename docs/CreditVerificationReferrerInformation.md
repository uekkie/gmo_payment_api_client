# GmoPaymentApiClient::CreditVerificationReferrerInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **onfile_card** | [**OnfileCard**](OnfileCard.md) | 登録されているカード情報   **有効性確認(/credit/verifyCard)においては、登録済みのApple Pay情報は利用できません。**  | [optional] |
| **credit_verification_options** | [**CreditVerificationOptions**](CreditVerificationOptions.md) |  | [optional] |
| **onfile_card_options** | [**OnfileCardOptions**](OnfileCardOptions.md) |  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::CreditVerificationReferrerInformation.new(
  onfile_card: null,
  credit_verification_options: null,
  onfile_card_options: null
)
```

