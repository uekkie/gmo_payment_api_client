# GmoPaymentApiClient::CreditChargeOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization_mode** | **String** | 支払い要求のタイプ   - &#x60;AUTH&#x60;：仮売上 - &#x60;CAPTURE&#x60;：即時売上  | [default to &#39;AUTH&#39;] |
| **use_tds2** | **Boolean** | 3Dセキュア認証の利用有無   Apple Payは利用できません。  | [optional][default to true] |
| **use_fraud_detection** | **Boolean** | 不正検知の利用有無   Apple Payは利用できません。  | [optional][default to false] |
| **item_code** | **String** | 商品番号   加盟店様とカード会社との契約で定められた場合のみ設定します。   省略時はデフォルトで「0000990」が設定されます。  | [optional][default to &#39;0000990&#39;] |
| **payment_method** | **String** | 支払方法   Apple Payは一括払い固定になります。   - &#x60;ONE_TIME&#x60;：一括 - &#x60;INSTALLMENT&#x60;：分割 - &#x60;BONUS_ONE_TIME&#x60;：ボーナス一括 - &#x60;REVOLVING&#x60;：リボ  | [optional][default to &#39;ONE_TIME&#39;] |
| **installments** | **String** | 分割回数   支払方法が分割の場合に設定します。   設定可能な分割回数は契約により異なります。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::CreditChargeOptions.new(
  authorization_mode: AUTH,
  use_tds2: true,
  use_fraud_detection: true,
  item_code: 0000990,
  payment_method: ONE_TIME,
  installments: 5
)
```

