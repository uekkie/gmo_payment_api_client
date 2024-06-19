# GmoPaymentApiClient::CreditVerifyCardRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant** | [**Merchant**](Merchant.md) |  |  |
| **order** | [**OrderWithoutAmount**](OrderWithoutAmount.md) |  |  |
| **payer** | [**Payer**](Payer.md) |  |  |
| **credit_verification_information** | [**CreditVerificationInformation**](CreditVerificationInformation.md) |  |  |
| **tds2_information** | [**Tds2Information**](Tds2Information.md) |  | [optional] |
| **additional_options** | **Hash&lt;String, Object&gt;** | 追加情報   予備項目であり、通常は使用しないでください。   任意のMap(Key:Value)形式で、KeyとValueはともにString型のみ設定可能です。   20個までの要素を設定可能です。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::CreditVerifyCardRequest.new(
  merchant: null,
  order: null,
  payer: null,
  credit_verification_information: null,
  tds2_information: null,
  additional_options: null
)
```

