# GmoPaymentApiClient::WalletOnfileInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet_charge_options** | [**WalletChargeOptions**](WalletChargeOptions.md) |  |  |
| **onfile_wallet** | [**OnfileWallet**](OnfileWallet.md) |  |  |
| **amazon_pay** | [**OnfileAmazonPay**](OnfileAmazonPay.md) |  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::WalletOnfileInformation.new(
  wallet_charge_options: null,
  onfile_wallet: null,
  amazon_pay: null
)
```

