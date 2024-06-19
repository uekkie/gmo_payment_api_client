# GmoPaymentApiClient::CreditStoreCardReponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_action** | [**NextAction**](NextAction.md) | レスポンスを受け取った後の加盟店様側の処理   カード登録成功時は&#x60;NO_ACTION&#x60;です。 - &#x60;NO_ACTION&#x60;：後続処理なし  | [optional] |
| **onfile_card_result** | [**OnfileCardResult**](OnfileCardResult.md) |  | [optional] |
| **card_result** | [**CardResult**](CardResult.md) |  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::CreditStoreCardReponse.new(
  next_action: null,
  onfile_card_result: null,
  card_result: null
)
```

