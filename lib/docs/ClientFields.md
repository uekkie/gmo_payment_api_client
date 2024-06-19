# GmoPaymentApiClient::ClientFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_field1** | **String** | 加盟店自由項目1   この取引に関する任意情報を紐づけます。   決済の情報としては利用されません。   またお客様には表示されません。   照会API、管理画面、取引配信ファイルで値を確認できます。   設定できる最大長はUTF-8で150byteです。  | [optional] |
| **client_field2** | **String** | 加盟店自由項目2   「加盟店自由項目1」の説明を参照ください。   最大長はUTF-8で150byteです。  | [optional] |
| **client_field3** | **String** | 加盟店自由項目3   「加盟店自由項目1」の説明を参照ください。   設定できる最大長はUTF-8で150byteです。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::ClientFields.new(
  client_field1: 加盟店自由項目1,
  client_field2: 加盟店自由項目2,
  client_field3: 加盟店自由項目3
)
```

