# GmoPaymentApiClient::Problem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | エラーの説明ページURL   対応するページがある場合のみ返します。  | [optional] |
| **title** | **String** | エラーの内容サマリー   エラーコードとして取り扱えます。  | [optional] |
| **detail** | **String** | エラーの詳細説明   エラーメッセージとして取り扱えます。  | [optional] |
| **instance** | **String** | エラーが発生したエンドポイント   ホスト名は含まれません。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::Problem.new(
  type: https://example.com/errors,
  title: null,
  detail: null,
  instance: null
)
```

