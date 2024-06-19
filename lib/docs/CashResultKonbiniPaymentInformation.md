# GmoPaymentApiClient::CashResultKonbiniPaymentInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **konbini_code** | [**Mulpay2**](Mulpay2.md) |  | [optional] |
| **confirmation_number** | **String** | 確認番号 | [optional] |
| **receipt_number** | **String** | 受付番号 | [optional] |
| **voucher_url** | **String** | 払込票URL(一部のコンビニのみ) | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::CashResultKonbiniPaymentInformation.new(
  konbini_code: null,
  confirmation_number: 1234567890,
  receipt_number: 1234567890,
  voucher_url: null
)
```

