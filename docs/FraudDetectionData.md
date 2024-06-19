# GmoPaymentApiClient::FraudDetectionData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | ユーザーID |  |
| **identity_doc_type** | **String** | 本人確認書類タイプ   本人確認書類IDに設定する書類タイプを設定します。   本人確認書類IDを設定する場合は省略できません。 - &#x60;PASSPORT&#x60;：パスポート - &#x60;TAXSTATEMENT&#x60;：納税証明書  | [optional] |
| **identity_doc_id** | **String** | 本人確認書類ID   設定する場合は本人確認書類タイプも設定する必要があります。  | [optional] |
| **shipping_corporation_name** | **String** | 配送先会社名 | [optional] |
| **shipping_phone** | **String** | 配送先電話番号 | [optional] |
| **shipping_email** | **String** | 配送先メールアドレス | [optional] |
| **shipping_method** | **String** | 配送方法 - &#x60;NEXT_DAY_OVERNIGHT&#x60;: 翌日発送 - &#x60;TWO_DAY_SERVICE&#x60;: 2日以内発送 - &#x60;THREE_DAY_SERVICE&#x60;: 3日以内発送 - &#x60;LOWEST_COST&#x60;: 最安値の配送方法 - &#x60;CARRIER_DESIGNATED_BY_CUSTOMER&#x60;:  お客様指定の運送会社 - &#x60;ELECTRONIC_DELIVERY&#x60;: 電子郵便 - &#x60;GROUND&#x60;: 陸上輸送 - &#x60;INTERNATIONAL&#x60;: 国際郵便 - &#x60;MILITARY&#x60;: 軍事郵便 - &#x60;STORE_PICKUP&#x60;: 店舗受け取り - &#x60;SAME_DAY_SERVICE&#x60;: 即日配送 - &#x60;OTHER&#x60;: その他 - &#x60;PUDO&#x60;: PUDOステーション - &#x60;EXPEDITED&#x60;: 速達郵便  | [optional] |
| **shipping_amount** | **String** | 送料   &lt;span style&#x3D;\&quot;color: #d41f1c\&quot;&gt;※審査タイプ(screeningType)が&#x60;RED_SHIELD&#x60;の場合、13桁以上の金額を設定できません。&lt;/span&gt;  | [optional] |
| **shipping_tracking_number** | **String** | トラッキング番号 | [optional] |
| **shipping_comment** | **String** | 発送時コメント | [optional] |
| **shipping_salutation** | **String** | 配送先敬称 | [optional] |
| **device_information** | **String** | デバイス情報 | [optional] |
| **repeater** | **Boolean** | リピータフラグ | [optional][default to false] |
| **user_registration_elapsed_days** | **String** | ユーザーID登録後経過日数 | [optional] |
| **promotion_code** | **String** | プロモーションコード | [optional] |
| **gift_card_message** | **String** | ギフトカードメッセージ | [optional] |
| **gift_card_type** | **String** | ギフトカードタイプ   - &#x60;ANNIVERSARY&#x60;: 記念日 - &#x60;APRIL_FOOLS_DAY&#x60;: エイプリルフール - &#x60;BABY_SHOWER&#x60;: ベビーシャワー - &#x60;BIRTHDAY&#x60;: 誕生日 - &#x60;BOSSES_DAY&#x60;: ボスの日 - &#x60;CELEBRATE_FALL&#x60;: セレブレイト・フォール - &#x60;CHINESE_NEW_YEAR&#x60;: 春節 - &#x60;CHRISTMAS&#x60;: クリスマス - &#x60;CONGRATULATIONS&#x60;: お祝い - &#x60;EASTER&#x60;: イースター - &#x60;FATHERS_DAY&#x60;: 父の日 - &#x60;GRADUATION&#x60;: 卒業 - &#x60;GRANDPARENTS_DAY&#x60;: 祖父母の日 - &#x60;HALLOWEEN&#x60;: ハロウィン - &#x60;HANUKKAH&#x60;: ハヌカー - &#x60;HOLIDAY&#x60;: 祝日 - &#x60;INDEPENDENCE_DAY&#x60;: 独立記念日 - &#x60;KWANZAA&#x60;: クワンザ - &#x60;MOTHERS_DAY&#x60;: 母の日 - &#x60;NEW_YEARS_DAY&#x60;: 元日 - &#x60;OTHER&#x60;: その他 - &#x60;PASSOVER&#x60;: 過越 - &#x60;SEASONS_GREETINGS&#x60;: 季節の挨拶 - &#x60;SECRETARYS_DAY&#x60;: 秘書の日 - &#x60;ST_PATRICKS_DAY&#x60;: 聖パトリックの祝日 - &#x60;SWEETEST_DAY&#x60;: スウィーテスト・デー - &#x60;THANKSGIVING&#x60;: 感謝祭 - &#x60;VALENTINES_DAY&#x60;:バレンタインデー  - &#x60;WEDDING&#x60;: 結婚式  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::FraudDetectionData.new(
  user_id: userId-01,
  identity_doc_type: PASSPORT,
  identity_doc_id: TA0000001,
  shipping_corporation_name: 見本配送会社,
  shipping_phone: 000-0000-0000,
  shipping_email: null,
  shipping_method: NEXT_DAY_OVERNIGHT,
  shipping_amount: 200,
  shipping_tracking_number: 12345678901,
  shipping_comment: Don&#39;t turn over.,
  shipping_salutation: Hi,
  device_information: null,
  repeater: false,
  user_registration_elapsed_days: 180,
  promotion_code: INITIAL-BENEFITS-001,
  gift_card_message: Here&#39;s to another year of being great together.,
  gift_card_type: ANNIVERSARY
)
```

