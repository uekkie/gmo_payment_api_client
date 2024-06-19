# GmoPaymentApiClient::WalletInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet_charge_options** | [**WalletChargeOptions**](WalletChargeOptions.md) |  |  |
| **wallet_type** | [**WalletType**](WalletType.md) |  |  |
| **amazon_pay** | [**AmazonPay**](AmazonPay.md) |  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::WalletInformation.new(
  wallet_charge_options: null,
  wallet_type: null,
  amazon_pay: null
)
```

