# GmoPaymentApiClient::CreditChargeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant** | [**Merchant**](Merchant.md) |  |  |
| **order** | [**Order**](Order.md) |  |  |
| **payer** | [**Payer**](Payer.md) |  |  |
| **credit_information** | [**CreditInformation**](CreditInformation.md) | クレカ払い情報 |  |
| **tds2_information** | [**Tds2Information**](Tds2Information.md) |  | [optional] |
| **fraud_detection_information** | [**FraudDetectionInformation**](FraudDetectionInformation.md) |  | [optional] |
| **additional_options** | **Hash&lt;String, Object&gt;** | 追加情報   予備項目であり、通常は使用しないでください。   任意のMap(Key:Value)形式で、KeyとValueはともにString型のみ設定可能です。   20個までの要素を設定可能です。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::CreditChargeRequest.new(
  merchant: null,
  order: null,
  payer: null,
  credit_information: null,
  tds2_information: null,
  fraud_detection_information: null,
  additional_options: null
)
```

