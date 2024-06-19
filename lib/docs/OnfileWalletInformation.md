# GmoPaymentApiClient::OnfileWalletInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **onfile_wallet_type** | [**OnfileWalletType**](OnfileWalletType.md) |  | [optional] |
| **acceptance_code** | **String** | 利用承諾番号 | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::OnfileWalletInformation.new(
  onfile_wallet_type: null,
  acceptance_code: 12345
)
```

