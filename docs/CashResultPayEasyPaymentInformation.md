# GmoPaymentApiClient::CashResultPayEasyPaymentInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_number** | **String** | お客様番号 | [optional] |
| **institution_code** | **String** | 収納機関番号 | [optional] |
| **confirmation_number** | **String** | 確認番号 | [optional] |
| **bank_url** | **String** | 銀行サイトURL | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::CashResultPayEasyPaymentInformation.new(
  customer_number: WNT12345678,
  institution_code: 58021,
  confirmation_number: 1234567890,
  bank_url: https://example.com/bank
)
```

