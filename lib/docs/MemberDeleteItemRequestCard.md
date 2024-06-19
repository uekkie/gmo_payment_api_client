# GmoPaymentApiClient::MemberDeleteItemRequestCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | 会員ID |  |
| **onfile_type** | [**OnfileType**](OnfileType.md) | 認証情報タイプ   削除する認証情報タイプとしてクレジットカード&#x60;CARD&#x60;を設定してください。  |  |
| **onfile_card_type** | [**OnfileCardType**](OnfileCardType.md) | 削除するカードのタイプ   - &#x60;CREDIT_CARD&#x60;：クレジットカード - &#x60;APPLE_PAY&#x60;：Apple Pay  |  |
| **card_id** | **String** | カードのID   登録されているカードのID(物理連番)です。  |  |
| **additional_options** | **Hash&lt;String, Object&gt;** | 追加情報   予備項目であり、通常は使用しないでください。   任意のMap(Key:Value)形式で、KeyとValueはともにString型のみ設定可能です。   20個までの要素を設定可能です。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::MemberDeleteItemRequestCard.new(
  member_id: member-001,
  onfile_type: null,
  onfile_card_type: null,
  card_id: 0,
  additional_options: null
)
```

