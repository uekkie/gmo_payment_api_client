# GmoPaymentApiClient::CashResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cash_type** | [**Mulpay**](Mulpay.md) |  | [optional] |
| **payment_expiry_date_time** | **Time** | 支払い期限日時   [RFC 3339, section 5.6](https://tools.ietf.org/html/rfc3339#section-5.6)で定義された表記です。   例) 2023-05-30T12:34:56+09:00  | [optional] |
| **konbini_payment_information** | [**CashResultKonbiniPaymentInformation**](CashResultKonbiniPaymentInformation.md) |  | [optional] |
| **pay_easy_payment_information** | [**CashResultPayEasyPaymentInformation**](CashResultPayEasyPaymentInformation.md) |  | [optional] |
| **bank_transfer_payment_information** | [**CashResultBankTransferPaymentInformation**](CashResultBankTransferPaymentInformation.md) |  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::CashResult.new(
  cash_type: null,
  payment_expiry_date_time: 2023-05-30T12:34:56+09:00,
  konbini_payment_information: null,
  pay_easy_payment_information: null,
  bank_transfer_payment_information: null
)
```

