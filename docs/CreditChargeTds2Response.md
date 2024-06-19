# GmoPaymentApiClient::CreditChargeTds2Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_action** | [**NextAction**](NextAction.md) | レスポンスを受け取った後の加盟店様側の処理   3Dセキュアリダイレクト時は必ず&#x60;REDIRECT&#x60;です。 - &#x60;REDIRECT&#x60;：リダイレクトが必要  | [optional] |
| **order_reference** | [**OrderReference**](OrderReference.md) | 支払いリクエストの取引情報     - &#x60;status&#x60;フィールドは、3Dセキュア開始前であるため&#x60;AUTHENTICATED&#x60;です。     - &#x60;chargeType&#x60;フィールドは必ず&#x60;CREDIT&#x60;です。  | [optional] |
| **redirect_information** | [**RedirectInformation**](RedirectInformation.md) | リダイレクト情報   3Dセキュアに進むためのリダイレクトの情報です。   &#x60;redirectType&#x60;フィールドは必ず&#x60;TDS2&#x60;です。   お客様のブラウザを&#x60;redirectUrl&#x60;にリダイレクトしてください。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::CreditChargeTds2Response.new(
  next_action: null,
  order_reference: null,
  redirect_information: null
)
```

