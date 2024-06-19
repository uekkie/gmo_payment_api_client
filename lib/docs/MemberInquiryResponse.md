# GmoPaymentApiClient::MemberInquiryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | 会員ID | [optional] |
| **member_name** | **String** | 会員名 | [optional] |
| **onfile_cards** | [**Array&lt;OnfileCardInformation&gt;**](OnfileCardInformation.md) | 登録されたカード情報一覧 | [optional] |
| **onfile_wallets** | [**Array&lt;OnfileWalletInformation&gt;**](OnfileWalletInformation.md) | 登録されたPay払い利用承諾情報一覧 | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::MemberInquiryResponse.new(
  member_id: member-001,
  member_name: TARO MIHON,
  onfile_cards: null,
  onfile_wallets: null
)
```

