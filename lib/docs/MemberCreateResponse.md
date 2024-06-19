# GmoPaymentApiClient::MemberCreateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | 会員ID | [optional] |
| **member_name** | **String** | 会員名 | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::MemberCreateResponse.new(
  member_id: member-001,
  member_name: TARO MIHON
)
```

