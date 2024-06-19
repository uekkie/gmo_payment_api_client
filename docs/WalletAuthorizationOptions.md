# GmoPaymentApiClient::WalletAuthorizationOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | 会員ID |  |
| **member_name** | **String** | 会員名 | [optional] |
| **create_new_member** | **Boolean** | 会員ID未登録時の新規作成   &#x60;true&#x60;にすると、指定した会員IDが存在しない場合に新規登録します。  | [optional][default to false] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::WalletAuthorizationOptions.new(
  member_id: member-001,
  member_name: TARO MIHON,
  create_new_member: null
)
```

