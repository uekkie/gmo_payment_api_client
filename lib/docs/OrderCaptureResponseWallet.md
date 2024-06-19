# GmoPaymentApiClient::OrderCaptureResponseWallet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_reference** | [**OrderReference**](OrderReference.md) | 取引参照情報  | [optional] |
| **wallet_result** | [**WalletResult**](WalletResult.md) |  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::OrderCaptureResponseWallet.new(
  order_reference: null,
  wallet_result: null
)
```

