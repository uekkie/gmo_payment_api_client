# GmoPaymentApiClient::MemberDeleteItemResponseWallet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | 会員ID | [optional] |
| **deleted_wallet** | [**OnfileWalletInformation**](OnfileWalletInformation.md) | 削除されたPay払い利用承諾情報  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::MemberDeleteItemResponseWallet.new(
  member_id: member-001,
  deleted_wallet: null
)
```

