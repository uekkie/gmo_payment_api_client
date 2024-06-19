# GmoPaymentApiClient::CreditGetCardDetailsReferrerInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **onfile_card** | [**OnfileCard**](OnfileCard.md) | 登録されているカード情報   **登録済みのApple Pay情報は利用できません。**  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::CreditGetCardDetailsReferrerInformation.new(
  onfile_card: null
)
```

