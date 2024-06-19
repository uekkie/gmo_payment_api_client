# GmoPaymentApiClient::Tds2FinalizeVerificationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_action** | [**NextAction**](NextAction.md) | レスポンスを受け取った後の加盟店様側の処理   有効性確認成功時は&#x60;NO_ACTION&#x60;です。 - &#x60;NO_ACTION&#x60;：後続処理なし  | [optional] |
| **order_reference** | [**OrderReference**](OrderReference.md) | 有効性確認リクエストの取引情報     - &#x60;amount&#x60;フィールドは返しません。   - &#x60;status&#x60;フィールドは必ず&#x60;CHECK&#x60;です。     - &#x60;chargeType&#x60;フィールドは必ず&#x60;CREDIT&#x60;です。  | [optional] |
| **credit_result** | [**CreditResult**](CreditResult.md) | クレカ払いの結果情報   3Dセキュア後有効性確認では、3Dセキュアの利用有無&#x60;useTds2&#x60;は必ず&#x60;true&#x60;です。  | [optional] |
| **onfile_card_result** | [**OnfileCardResult**](OnfileCardResult.md) |  | [optional] |
| **tds2_result** | [**Tds2Result**](Tds2Result.md) |  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::Tds2FinalizeVerificationResponse.new(
  next_action: null,
  order_reference: null,
  credit_result: null,
  onfile_card_result: null,
  tds2_result: null
)
```

