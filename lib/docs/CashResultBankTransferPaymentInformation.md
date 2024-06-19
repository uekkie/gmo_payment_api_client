# GmoPaymentApiClient::CashResultBankTransferPaymentInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_code** | **String** | 銀行コード | [optional] |
| **bank_name** | **String** | 銀行名 | [optional] |
| **branch_code** | **String** | 支店コード | [optional] |
| **branch_name** | **String** | 支店名 | [optional] |
| **account_type** | **String** | 口座種目 | [optional] |
| **account_number** | **String** | 口座番号 | [optional] |
| **account_holder_name** | **String** | 口座名義人名 | [optional] |
| **deposit_amount** | **String** | 合計入金金額 | [optional] |
| **bank_transfer_code** | **String** | 振込コード | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::CashResultBankTransferPaymentInformation.new(
  bank_code: 0310,
  bank_name: ｼﾞ-ｴﾑｵ-ｱｵｿﾞﾗﾈﾂﾄ,
  branch_code: 503,
  branch_name: ｶｿｳｼﾃﾝ,
  account_type: 1,
  account_number: 1234567,
  account_holder_name: ﾃｽﾄｺｳｻﾞ,
  deposit_amount: 1000,
  bank_transfer_code: 1010101
)
```

