# GmoPaymentApiClient::Tds2Result

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **eci** | **String** | ECI値 | [optional] |
| **requires_challenge** | **Boolean** | 認証チャレンジ必須 3Dセキュア認証をチャレンジ必須化で処理をしたかを表します。  | [optional] |
| **tds2_trans_result** | **String** | 認証結果   - &#x60;Y&#x60;：認証／口座確認に成功 - &#x60;A&#x60;：処理の試行が実施された - &#x60;C&#x60;：認証チャレンジが必要 - &#x60;N&#x60;：未認証／口座未確認 取引拒否 - &#x60;U&#x60;：認証／口座確認を実行できなかった - &#x60;R&#x60;：認証／口座確認が拒否された  | [optional] |
| **tds2_trans_result_reason** | **String** | 認証結果理由&lt;br&gt;01:カード認証に失敗した&lt;br&gt;02:不明なデバイス&lt;br&gt;03:サポートされていないデバイス&lt;br&gt;04:認証頻度の上限を超えた&lt;br&gt;05:有効期限切れのカード&lt;br&gt;06:無効なカード番号&lt;br&gt;07:無効な取引&lt;br&gt;08:カードのレコードが存在しない&lt;br&gt;09:セキュリティ障害&lt;br&gt;10:盗難カード&lt;br&gt;11:不正の疑い&lt;br&gt;12:カード会員に取引が許可されていない&lt;br&gt;13:カード会員がサービスに登録されていない&lt;br&gt;14:取引がACSでタイムアウトした&lt;br&gt;15:信頼度が低い&lt;br&gt;16:信頼度が中程度&lt;br&gt;17:信頼度が高い&lt;br&gt;18:信頼度が非常に高い&lt;br&gt;19:ACSの最大チャレンジを超える&lt;br&gt;20:非決済取引はサポートされていません&lt;br&gt;21:3RIトランザクションはサポートされていません | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::Tds2Result.new(
  eci: 05,
  requires_challenge: null,
  tds2_trans_result: Y,
  tds2_trans_result_reason: 18
)
```

