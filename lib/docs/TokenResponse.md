# GmoPaymentApiClient::TokenResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** | アクセストークン | [optional] |
| **expires_in** | **String** | 有効期間(秒)   アクセストークンの有効期間を秒数で返却します。  | [optional] |
| **scope** | **String** | スコープ   &#x60;openapi&#x60;を返却します。  | [optional] |
| **token_type** | **String** | アクセストークンのタイプ   &#x60;bearer&#x60;を返却します。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::TokenResponse.new(
  access_token: null,
  expires_in: null,
  scope: null,
  token_type: null
)
```

