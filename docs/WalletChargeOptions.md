# GmoPaymentApiClient::WalletChargeOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization_mode** | **String** | 支払い要求のタイプ   - &#x60;AUTH&#x60;：仮売上 - &#x60;CAPTURE&#x60;：即時売上  |  |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::WalletChargeOptions.new(
  authorization_mode: AUTH
)
```

