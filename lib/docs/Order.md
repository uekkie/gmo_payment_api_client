# GmoPaymentApiClient::Order

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** |  |  |
| **amount** | **String** | 税送料込の取引金額   決済手段により設定可能な値が異なります。  |  |
| **currency** | **String** | 通貨コード   ISO 4217のアルファベット3文字を設定します。   例えば日本円の場合&#x60;JPY&#x60;です。   省略時は&#x60;JPY&#x60;です。   &lt;span style&#x3D;\&quot;color: #d41f1c\&quot;&gt; ※現時点では&#x60;JPY&#x60;のみ利用可能です。&lt;/span&gt;  | [optional][default to &#39;JPY&#39;] |
| **client_fields** | [**ClientFields**](ClientFields.md) |  | [optional] |
| **items** | [**Array&lt;Item&gt;**](Item.md) | 商品情報の一覧 | [optional] |
| **transaction_type** | [**TransactionType**](TransactionType.md) |  | [default to &#39;CIT&#39;] |
| **shipping_address** | [**Address**](Address.md) | 発送先住所情報 | [optional] |
| **address_match** | **Boolean** | 発送先住所と請求先住所が同じ場合は&#x60;true&#x60;を設定します。   住所はいずれかのみ設定してください。  | [optional][default to false] |
| **billing_address** | [**Address**](Address.md) | 請求先住所情報 | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::Order.new(
  order_id: order-001,
  amount: 1000,
  currency: JPY,
  client_fields: null,
  items: null,
  transaction_type: null,
  shipping_address: null,
  address_match: null,
  billing_address: null
)
```

