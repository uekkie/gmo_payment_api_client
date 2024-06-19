# GmoPaymentApiClient::Address

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | 住所の宛名   設定できる最大長はUTF-8で60byteです。  |  |
| **line1** | **String** | 住所の町域・丁目番地   設定できる最大長はUTF-8で75byteです。  |  |
| **line2** | **String** | 住所の建物・号室   設定できる最大長はUTF-8で75byteです。  | [optional] |
| **line3** | **String** | 住所情報に関する予備項目   設定できる最大長はUTF-8で75byteです。  | [optional] |
| **city** | **String** | 住所の市区町村   「渋谷区」「横浜市」などの市区町村名です。   日本語・漢字でなくても構いません。   設定できる最大長はUTF-8で75byteです。  |  |
| **state** | **String** | 住所の都道府県番号   [都道府県コード表](https://nlftp.mlit.go.jp/ksj/gml/codelist/PrefCd.html)を参照してください。   日本の場合は「001」から「047」からなる先頭ゼロ埋め3桁の形式です。  |  |
| **post_code** | **String** | 住所の郵便番号&lt;br&gt;ハイフンの有無は問いません。 |  |
| **country** | **String** | 住所の国番号&lt;br&gt;ISO3166-1の数字3桁を設定します。   ITU-E.164ではないのでご注意ください。例えば日本の場合「392」です。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::Address.new(
  name: 見本 太郎,
  line1: 道玄坂1丁目2-3,
  line2: 渋谷ビル1F,
  line3: 1号室,
  city: 渋谷区,
  state: 013,
  post_code: 150-0043,
  country: 392
)
```

