# GmoPaymentApiClient::ErrorInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | エラー内容のサマリー | [optional] |
| **detail** | **String** | エラーの詳細説明 | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::ErrorInformation.new(
  title: payment_failure,
  detail: Payment processing failed.
)
```

