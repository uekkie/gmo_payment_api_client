# GmoPaymentApiClient::Card

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_number** | **String** | カード番号&lt;br&gt;ハイフンは含めないでください。 |  |
| **cardholder_name** | **String** | カード名義人 | [optional] |
| **expiry_month** | **String** | カード有効期限(月) |  |
| **expiry_year** | **String** | カード有効期限(年) |  |
| **security_code** | **String** | セキュリティコード&lt;br&gt;CVCやCVVとも呼ばれます。 | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::Card.new(
  card_number: 4111111111111111,
  cardholder_name: TARO MIHON,
  expiry_month: 01,
  expiry_year: 2033,
  security_code: 000
)
```

