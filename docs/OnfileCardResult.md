# GmoPaymentApiClient::OnfileCardResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | 会員ID | [optional] |
| **member_name** | **String** | 会員名 | [optional] |
| **type** | [**OnfileCardType**](OnfileCardType.md) |  | [optional] |
| **card_id** | **String** | カードのID   登録されているカードのID(物理連番)です。  | [optional] |
| **is_default** | **Boolean** | デフォルトカード判定   デフォルトカードの場合&#x60;true&#x60;、そうでない場合&#x60;false&#x60;です。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::OnfileCardResult.new(
  member_id: member-001,
  member_name: TARO MIHON,
  type: null,
  card_id: 0,
  is_default: true
)
```

