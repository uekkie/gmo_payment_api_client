# GmoPaymentApiClient::Item

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | 商品の名称   設定できる最大長はUTF-8で192byteです。  |  |
| **description** | **String** | 商品の説明   設定できる最大長はUTF-8で180byteです。  | [optional] |
| **quantity** | **Integer** | 商品の購入数 |  |
| **type** | **String** | 商品のタイプ - &#x60;DIGITAL&#x60;：デジコン - &#x60;PHYSICAL&#x60;：物販 - &#x60;SERVICE&#x60;：役務  |  |
| **price** | **String** | 商品の単価 |  |
| **category** | **String** | 商品の[Merchant category code(MCC)](https://en.wikipedia.org/wiki/Merchant_category_code)   MCCは[ISO 18245](https://www.iso.org/standard/33365.html)で定められた加盟店様の業種カテゴリです。   一般的には加盟店様の業種カテゴリと商品のカテゴリは同じですが、この商品により適したものがあれば個別に設定できます。   メルペイでは必須です。  | [optional] |
| **product_id** | **String** | 商品の識別番号   加盟店様が商品ごとに一意に採番した番号です。   半角のみ設定可能です。  | [optional] |
| **product_code** | **String** | 商品の識別コード   [JANコード](https://www.gs1jp.org/code/jan/about_jan.html)や[UPCコード](https://www.gs1jp.org/code/upc/)を設定します。 半角のみ設定可能です。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::Item.new(
  name: コーヒー豆,
  description: コーヒー豆の説明,
  quantity: 3,
  type: DIGITAL,
  price: 2000,
  category: 5451,
  product_id: 123456789012,
  product_code: 1234567890123
)
```

