# GmoPaymentApiClient::MemberDeleteResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | 会員ID | [optional] |
| **deleted_cards** | [**Array&lt;OnfileCardInformation&gt;**](OnfileCardInformation.md) | 登録されたカード情報一覧 | [optional] |
| **deleted_wallets** | [**Array&lt;OnfileWalletInformation&gt;**](OnfileWalletInformation.md) | 登録されたPay払い利用承諾情報一覧 | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::MemberDeleteResponse.new(
  member_id: member-001,
  deleted_cards: null,
  deleted_wallets: null
)
```

