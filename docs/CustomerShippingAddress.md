# GmoPaymentApiClient::CustomerShippingAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | 氏名 | [optional] |
| **line1** | **String** | 配送先住所1 | [optional] |
| **line2** | **String** | 配送先住所2 | [optional] |
| **line3** | **String** | 配送先住所3 | [optional] |
| **state** | **String** | 住所の都道府県 | [optional] |
| **post_code** | **String** | 住所の郵便番号 | [optional] |
| **country** | **String** | 住所の国コード   ISO3166-1の英字2桁  | [optional] |
| **phone** | **String** | 電話番号 | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::CustomerShippingAddress.new(
  name: 見本 太郎,
  line1: 渋谷区道玄坂,
  line2: 1丁目2-3,
  line3: 見本マンション101,
  state: 東京都,
  post_code: 150-0043,
  country: JP,
  phone: 090-1234-5678
)
```

