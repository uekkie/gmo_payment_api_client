# GmoPaymentApiClient::DebitInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | カードの種類 - &#x60;DEBIT&#x60;：デビットカード - &#x60;PREPAID&#x60;：プリペイドカード - &#x60;OTHER&#x60;：その他  | [optional] |
| **issuer_name** | **String** | カードの発行会社名   &#x60;cardType&#x60;が &#x60;DEBIT&#x60;、&#x60;PREPAID&#x60;の場合のみ返却します。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::DebitInformation.new(
  type: DEBIT,
  issuer_name: VISAデビット-海外
)
```

