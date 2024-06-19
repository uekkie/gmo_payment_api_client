# GmoPaymentApiClient::RedirectInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **redirect_url** | **String** | リダイレクト先のURL | [optional] |
| **http_method** | **String** | リダイレクト時のHTTPメソッド   原則 &#x60;GET&#x60; です。詳細は[リダイレクトとコールバック](#tag/callback)を参照ください。  | [optional] |
| **redirect_type** | **String** | リダイレクト処理のタイプ   - &#x60;TDS2&#x60;：3Dセキュア - &#x60;WALLET_CHARGE&#x60;：Pay払い 都度支払い - &#x60;WALLET_AUTHORIZE&#x60;：Pay払い 利用承諾  | [optional] |
| **redirect_parameters** | **Hash&lt;String, Object&gt;** | リダイレクト時のパラメーター   リダイレクト時のHTTPメソッドが &#x60;POST&#x60; の場合に、リクエストボディに設定するパラメーター(Map形式)です。   &#x60;GET&#x60; の場合は、クエリパラメーターとしてリダイレクト先URLに含まれるため、この項目は返しません。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::RedirectInformation.new(
  redirect_url: null,
  http_method: GET,
  redirect_type: null,
  redirect_parameters: null
)
```

