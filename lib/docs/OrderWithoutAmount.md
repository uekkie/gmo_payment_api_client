# GmoPaymentApiClient::OrderWithoutAmount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** |  |  |
| **client_fields** | [**ClientFields**](ClientFields.md) |  | [optional] |
| **items** | [**Array&lt;Item&gt;**](Item.md) | 商品情報の一覧 | [optional] |
| **transaction_type** | [**TransactionType**](TransactionType.md) |  | [default to &#39;CIT&#39;] |
| **shipping_address** | [**Address**](Address.md) | 発送先住所情報 | [optional] |
| **address_match** | **Boolean** | 発送先住所と請求先住所が同じ場合は&#x60;true&#x60;を設定します。   住所はいずれかのみ設定してください。  | [optional][default to false] |
| **billing_address** | [**Address**](Address.md) | 請求先住所情報 | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::OrderWithoutAmount.new(
  order_id: order-001,
  client_fields: null,
  items: null,
  transaction_type: null,
  shipping_address: null,
  address_match: null,
  billing_address: null
)
```

