# GmoPaymentApiClient::MemberDeleteItemResponseCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | 会員ID | [optional] |
| **deleted_card** | [**OnfileCardInformation**](OnfileCardInformation.md) | 削除されたカードの情報   &#x60;index&#x60;や&#x60;isDefault&#x60;は削除する前の情報です。   最新の状態は[取引照会API(/order/inquiry)](#tag/order/operation/orderInquiry)で確認してください。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::MemberDeleteItemResponseCard.new(
  member_id: member-001,
  deleted_card: null
)
```

