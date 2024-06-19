# GmoPaymentApiClient::CreditStoreCardRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant** | [**Merchant**](Merchant.md) |  |  |
| **credit_storing_information** | [**CreditStoringInformation**](CreditStoringInformation.md) |  |  |
| **additional_options** | **Hash&lt;String, Object&gt;** | 追加情報   予備項目であり、通常は使用しないでください。   任意のMap(Key:Value)形式で、KeyとValueはともにString型のみ設定可能です。   20個までの要素を設定可能です。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::CreditStoreCardRequest.new(
  merchant: null,
  credit_storing_information: null,
  additional_options: null
)
```

