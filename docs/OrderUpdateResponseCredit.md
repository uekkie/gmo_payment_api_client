# GmoPaymentApiClient::OrderUpdateResponseCredit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_reference** | [**OrderReference**](OrderReference.md) | 取引参照情報  | [optional] |
| **credit_result** | [**CreditResult**](CreditResult.md) | カード支払い結果情報   金額変更時は元の取引が3Dセキュア認証済であっても、3Dセキュアの利用有無&#x60;useTds2&#x60;は必ず&#x60;false&#x60;です。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::OrderUpdateResponseCredit.new(
  order_reference: null,
  credit_result: null
)
```

