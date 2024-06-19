# GmoPaymentApiClient::Merchant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | 表示用の加盟店様名   設定できる最大長はUTF-8で45byteです。  |  |
| **name_kana** | **String** | 表示用の加盟店様名(全角カナのみ)   設定できる最大長はUTF-8で60byteです。  |  |
| **name_alphabet** | **String** | 表示用の加盟店様名(英名)  |  |
| **name_short** | **String** | 表示用の加盟店様名(略称)   設定できる最大長はUTF-8で45byteです。  |  |
| **contact_name** | **String** | 加盟店様の問い合わせ先名称   設定できる最大長はUTF-8で63byteです。  |  |
| **contact_email** | **String** | 加盟店様の問い合わせ先メールアドレス   [RFC 5322](https://www.rfc-editor.org/rfc/rfc5322)の仕様に沿った形式のみ許可されます。  |  |
| **contact_url** | **String** | 加盟店様の問い合わせ先ページURL  | [optional] |
| **contact_phone** | **String** | 加盟店様の問い合わせ先電話番号  |  |
| **contact_opening_hours** | **String** | 加盟店様の問い合わせ窓口の営業時間(HH:MM-HH:MM形式)  |  |
| **callback_url** | **String** | コールバックURL   リダイレクトが発生するリクエスト時は必ず設定してください。   リダイレクト後に加盟店様のサーバーに処理の遷移を戻すためのURLです。   詳細は[リダイレクトとコールバック](#tag/callback)を参照ください。  | [optional] |
| **webhook_url** | **String** | Webhook URL   現金払いの支払いなど、処理が非同期で行われた場合に、その結果を通知するための加盟店様側のURLです。   httpsから始まるURLを設定してください。   ※テスト環境ではhttpの指定が可能です。   詳細は[Webhook](#tag/webhook)を参照ください。  | [optional] |
| **csrf_token** | **String** | CSRFトークン   コールバックやWebhookの呼び出し時につける任意のパラメーターです。   CSRF対策のために利用してください。   詳細は[リダイレクトとコールバック](#tag/callback)を参照ください。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::Merchant.new(
  name: サンプルストア,
  name_kana: ジーエムオーストア,
  name_alphabet: Sample Store,
  name_short: サンプル,
  contact_name: サポート窓口,
  contact_email: support@example.com,
  contact_url: https://example.com/contact,
  contact_phone: 0120-123-456,
  contact_opening_hours: 10:00-18:00,
  callback_url: https://example.com/callback,
  webhook_url: https://example.com/webhook,
  csrf_token: bdb04c5f-42f0-29e2-0979-edae3e7760bf
)
```

