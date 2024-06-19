# GmoPaymentApiClient::AmazonPay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_session_id** | **String** | チェックアウトセッションID   APBタイプ&#x60;apbType&#x60;を設定しない場合は必須です。  | [optional] |
| **note_to_buyer** | **String** | 注文の説明   注文の説明です。   Amazonからお客様へのメールに表示されます。  | [optional] |
| **apb_type** | **String** | APBタイプ   [APB(AdditionalPaymentButton)機能](https://www.amazonpay-faq.jp/faq/QA-66)を利用する場合のみ設定してください。    - &#x60;PayOnly&#x60;: デジタル商品など住所情報を使用しない場合   - &#x60;PayAndShip&#x60;: 物販など住所情報を使用する場合   &#x60;PayAndShip&#x60;の場合、以下パラメーターは必須です。   住所の宛名&#x60;order.shippingAddress.name&#x60;   住所の町域・丁目番地&#x60;order.shippingAddress.line1&#x60;   住所の市区町村&#x60;order.shippingAddress.city&#x60;   住所の都道府県番号&#x60;order.shippingAddress.state&#x60;   住所の郵便番号&#x60;order.shippingAddress.postCode&#x60;   住所の国番号&#x60;order.shippingAddress.country&#x60;   電話番号&#x60;payer.phones.number&#x60;(1件目が使用されます)  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::AmazonPay.new(
  checkout_session_id: 931782ff-12db-46d0-ba57-f7cc7ee10560,
  note_to_buyer: 渋谷店,
  apb_type: PayOnly
)
```

