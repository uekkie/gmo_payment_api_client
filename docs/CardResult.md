# GmoPaymentApiClient::CardResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_number** | **String** | 利用されたカード番号   下4桁(**********9999)固定でマスクされます。  | [optional] |
| **expiry_month** | **String** | 利用されたカードの有効期限(月) | [optional] |
| **expiry_year** | **String** | 利用されたカードの有効期限(年) | [optional] |
| **issuer_code** | **String** | 利用されたカードの発行カード会社コード | [optional] |
| **brand** | **String** | 利用されたカードのブランド | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::CardResult.new(
  card_number: **********1111,
  expiry_month: 06,
  expiry_year: 2033,
  issuer_code: 2a99663,
  brand: VISA
)
```

