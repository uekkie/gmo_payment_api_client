# GmoPaymentApiClient::MemberInquiryRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | 会員ID |  |
| **onfile_type** | [**OnfileType**](OnfileType.md) | 照会したい登録認証情報のタイプ   設定なしの場合は全てのタイプを返します。  | [optional] |
| **additional_options** | **Hash&lt;String, Object&gt;** | 追加情報   予備項目であり、通常は使用しないでください。   任意のMap(Key:Value)形式で、KeyとValueはともにString型のみ設定可能です。   20個までの要素を設定可能です。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::MemberInquiryRequest.new(
  member_id: member-001,
  onfile_type: null,
  additional_options: null
)
```

