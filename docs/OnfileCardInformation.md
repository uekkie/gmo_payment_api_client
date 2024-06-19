# GmoPaymentApiClient::OnfileCardInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**OnfileCardType**](OnfileCardType.md) |  | [optional] |
| **card_id** | **String** | カードのID   登録されているカードのID(物理連番)です。  | [optional] |
| **index** | **String** | カードのインデックス   登録されているカードの0から4までのインデックス番号(論理連番)です。   有効な(削除されていない)カードのIDを昇順に並べた順番です。   必ず1枚しか登録しない加盟店様がカードIDを保持することなく利用することを想定しています。  | [optional] |
| **card_number** | **String** | カード番号   下4桁(**********9999)固定でマスクされます。  | [optional] |
| **expiry_month** | **String** | カードの有効期限(月) | [optional] |
| **expiry_year** | **String** | カードの有効期限(年) | [optional] |
| **issuer_code** | **String** | カードの発行カード会社コード | [optional] |
| **brand** | **String** | カードのブランド | [optional] |
| **is_default** | **Boolean** | デフォルトカード判定   デフォルトカードの場合&#x60;true&#x60;、そうでない場合&#x60;false&#x60;です。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::OnfileCardInformation.new(
  type: null,
  card_id: 0,
  index: 0,
  card_number: **********1111,
  expiry_month: 06,
  expiry_year: 2033,
  issuer_code: 2a99663,
  brand: VISA,
  is_default: true
)
```

