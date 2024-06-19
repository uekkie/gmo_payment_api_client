# GmoPaymentApiClient::CardDetailResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_number** | **String** | カード番号   下4桁(**********9999)固定でマスクされます。  | [optional] |
| **expiry_month** | **String** | カードの有効期限(月) | [optional] |
| **expiry_year** | **String** | カードの有効期限(年) | [optional] |
| **brand** | **String** | カードのブランド | [optional] |
| **issuer_location** | **String** | カードの発行会社所在地 - &#x60;JP&#x60;：日本国内 - &#x60;INTERNATIONAL&#x60;：海外 - &#x60;UNKNOWN&#x60;：不明  | [optional] |
| **issuer_code** | **String** | カードの発行カード会社コード | [optional] |
| **debit_information** | [**DebitInformation**](DebitInformation.md) |  | [optional] |
| **client_card_bin_data** | [**ClientCardBinData**](ClientCardBinData.md) |  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::CardDetailResult.new(
  card_number: **********1111,
  expiry_month: 06,
  expiry_year: 2033,
  brand: VISA,
  issuer_location: JP,
  issuer_code: 2a99663,
  debit_information: null,
  client_card_bin_data: null
)
```

