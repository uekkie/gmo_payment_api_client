# GmoPaymentApiClient::Tds2Options

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **skip_not_enrolled_card** | **Boolean** | 未対応カードの認証スキップ お使いのカードが3Dセキュア2.0未対応の場合に認証をスキップするか、エラーにするかを選択します。   認証をスキップしたオーソリ(信用照会)は可能ですが、チャージバックのリスクがあります。  | [optional][default to false] |
| **allow_attempt** | **String** | 認証結果Attempt時の挙動 3Dセキュア認証の結果、カード会社からECI 06(Mastercard以外)または01(Mastercard)が返された場合の処理を選択します。   ECI06/01は、カード発行会社が3Dセキュアに対応していない場合やサーバー障害などの時に、認証プロセス自体はできていませんが認証成功と扱うことを意味します。   通常、この取引が不正利用によりチャージバックとなった場合、支払いの責任はカード発行会社となり加盟店様には請求されません。   それでもECI06/01の支払いを受け付けたくない場合は、&#x60;NOT_ALLOW&#x60;を設定してください。   &#x60;FOLLOW&#x60;を設定した場合、3Dセキュア必須化の契約に従います。 - &#x60;FOLLOW&#x60;：ショップ契約の「3Dセキュア必須化」の内容に従う - &#x60;ALLOW&#x60;：認証成功と扱う - &#x60;NOT_ALLOW&#x60;：認証失敗と扱う  | [optional][default to &#39;FOLLOW&#39;] |
| **requires_challenge** | **Boolean** | 認証チャレンジ必須   リスク判定の結果によらず3Dセキュア認証チャレンジを要求する場合に&#x60;true&#x60;を設定します。   ただし、カード発行会社が対応していない場合があります。  | [optional][default to false] |
| **auto_authorization** | **Boolean** | 自動オーソリ有無   3Dセキュア認証後に自動でオーソリ(信用照会)をせずに、加盟店様から明示的に3Dセキュア後APIを呼び出してオーソリを実施したい場合には&#x60;false&#x60;を設定します。   「自動オーソリあり」の場合、オーソリが実行されてもお客様がブラウザを閉じる、通信エラーが発生するなどして処理が中断し、貴社にコールバックがされず状態不整合になる可能性があります。   「自動オーソリなし」は、オーソリのリクエストを加盟店様にて制御できるため上記のリスクを低減できます。  | [optional][default to true] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::Tds2Options.new(
  skip_not_enrolled_card: null,
  allow_attempt: FOLLOW,
  requires_challenge: null,
  auto_authorization: null
)
```

