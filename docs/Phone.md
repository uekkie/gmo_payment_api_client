# GmoPaymentApiClient::Phone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | 電話のタイプ   携帯、家、職場、その他から選択します。   [クレカ払い](#tag/creditcard)の3Dセキュア認証で利用する場合、&#x60;OTHER&#x60;以外を設定してください。 - &#x60;MOBILE&#x60;：携帯電話 - &#x60;HOME&#x60;：固定電話 - &#x60;WORK&#x60;：勤務先 - &#x60;OTHER&#x60;：その他  | [optional] |
| **country_code** | **String** | 電話の国コード   ITU-E.164の1～3桁の数字を設定します。   ISO3166-1ではないのでご注意ください。   プラス記号(+)はつけないでください。   例として日本の場合は「81」です。   [クレカ払い](#tag/creditcard)の3Dセキュア認証で利用する場合、&#x60;phone.type&#x60;、&#x60;phone.number&#x60;を合わせて設定してください。  | [optional] |
| **number** | **String** | 電話番号   ハイフンの有無は問いません。   [クレカ払い](#tag/creditcard)の3Dセキュア認証で利用する場合、&#x60;phone.type&#x60;、&#x60;phone.countryCode&#x60;を合わせて設定してください。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::Phone.new(
  type: MOBILE,
  country_code: 81,
  number: 090-1234-5678
)
```

