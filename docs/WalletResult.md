# GmoPaymentApiClient::WalletResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet_type** | [**WalletType**](WalletType.md) |  | [optional] |
| **settlement_code** | **String** | 決済番号 | [optional] |
| **acceptance_code** | **String** | 利用承諾番号 | [optional] |
| **capture_expiry_date_time** | **Time** | 仮売上有効日時   [RFC 3339, section 5.6](https://tools.ietf.org/html/rfc3339#section-5.6)で定義された表記です。   例) 2023-06-30T12:34:56+09:00  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::WalletResult.new(
  wallet_type: null,
  settlement_code: 1234567890,
  acceptance_code: 1234567890,
  capture_expiry_date_time: 2023-06-30T12:34:56+09:00
)
```

