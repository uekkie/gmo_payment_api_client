# GmoPaymentApiClient::Payer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | 購入者の氏名(フルネーム)   設定できる最大長はUTF-8で60byteです。  |  |
| **name_kana** | **String** | 購入者の氏名(全角カナのみ)   設定できる最大長はUTF-8で60byteです。  | [optional] |
| **name_alphabet** | **String** | 購入者の氏名(英名)  | [optional] |
| **gender** | **String** | 購入者の性別  | [optional] |
| **date_of_birth** | **String** | 購入者の誕生日   YYYYMMDD形式  | [optional] |
| **email** | **String** | 購入者のメールアドレス   [RFC 5322](https://www.rfc-editor.org/rfc/rfc5322)の仕様に沿った形式のみ許可されます。  | [optional] |
| **delivery_email** | **String** | 取引内容がWebチケットなどの電子デリバリーの場合、配信先のメールアドレスを設定します。   [RFC 5322](https://www.rfc-editor.org/rfc/rfc5322)の仕様に沿った形式のみ許可されます。  | [optional] |
| **phones** | [**Array&lt;Phone&gt;**](Phone.md) | 購入者の電話情報一覧 | [optional] |
| **account_id** | **String** | 加盟店様サイト上における購入者のアカウントIDなど、一意に識別するためのID | [optional] |
| **ip** | **String** | 購入者の発信元IPアドレス | [optional] |
| **device_type** | **String** | 購入者のデバイス情報をWeb、アプリから選択 - &#x60;PC_WEB&#x60;：PC(Web) - &#x60;PC_APP&#x60;：PC(アプリ) - &#x60;MOBILE_WEB&#x60;：モバイル(Web) - &#x60;MOBILE_APP&#x60;：モバイル(アプリ)  | [optional] |
| **http_user_agent** | **String** | 購入者のブラウザのUserAgent   半角英数字記号が設定可能です。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::Payer.new(
  name: 見本 太郎,
  name_kana: ミホン　タロウ,
  name_alphabet: Taro Mihon,
  gender: MALE,
  date_of_birth: 19950308,
  email: taro.mihon@example.com,
  delivery_email: taro.mihon.delivery@example.com,
  phones: null,
  account_id: account_123,
  ip: 172.16.0.1,
  device_type: PC_WEB,
  http_user_agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36
)
```

