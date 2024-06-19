# GmoPaymentApiClient::DisplayInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **register_display1** | **String** | POSレジ表示欄1   設定できる最大長はUTF-8で48byteです。   全角のみ設定可能です。  | [optional] |
| **register_display2** | **String** | POSレジ表示欄2   設定できる最大長はUTF-8で48byteです。   全角のみ設定可能です。  | [optional] |
| **register_display3** | **String** | POSレジ表示欄3   設定できる最大長はUTF-8で48byteです。   全角のみ設定可能です。  | [optional] |
| **register_display4** | **String** | POSレジ表示欄4   設定できる最大長はUTF-8で48byteです。   全角のみ設定可能です。  | [optional] |
| **register_display5** | **String** | POSレジ表示欄5   設定できる最大長はUTF-8で48byteです。   全角のみ設定可能です。  | [optional] |
| **register_display6** | **String** | POSレジ表示欄6   設定できる最大長はUTF-8で48byteです。   全角のみ設定可能です。  | [optional] |
| **register_display7** | **String** | POSレジ表示欄7   設定できる最大長はUTF-8で48byteです。   全角のみ設定可能です。  | [optional] |
| **register_display8** | **String** | POSレジ表示欄8   設定できる最大長はUTF-8で48byteです。   全角のみ設定可能です。  | [optional] |
| **receipt_display1** | **String** | 明細表示欄1   設定できる最大長はUTF-8で90byteです。   全角のみ設定可能です。  | [optional] |
| **receipt_display2** | **String** | 明細表示欄2   設定できる最大長はUTF-8で90byteです。   全角のみ設定可能です。  | [optional] |
| **receipt_display3** | **String** | 明細表示欄3   設定できる最大長はUTF-8で90byteです。   全角のみ設定可能です。  | [optional] |
| **receipt_display4** | **String** | 明細表示欄4   設定できる最大長はUTF-8で90byteです。   全角のみ設定可能です。  | [optional] |
| **receipt_display5** | **String** | 明細表示欄5   設定できる最大長はUTF-8で90byteです。   全角のみ設定可能です。  | [optional] |
| **receipt_display6** | **String** | 明細表示欄6   設定できる最大長はUTF-8で90byteです。   全角のみ設定可能です。  | [optional] |
| **receipt_display7** | **String** | 明細表示欄7   設定できる最大長はUTF-8で90byteです。   全角のみ設定可能です。  | [optional] |
| **receipt_display8** | **String** | 明細表示欄8   設定できる最大長はUTF-8で90byteです。   全角のみ設定可能です。  | [optional] |
| **receipt_display9** | **String** | 明細表示欄9   設定できる最大長はUTF-8で90byteです。   全角のみ設定可能です。  | [optional] |
| **receipt_display10** | **String** | 明細表示欄10   設定できる最大長はUTF-8で90byteです。   全角のみ設定可能です。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::DisplayInformation.new(
  register_display1: ＰＯＳレジ表示欄１,
  register_display2: ＰＯＳレジ表示欄２,
  register_display3: ＰＯＳレジ表示欄３,
  register_display4: ＰＯＳレジ表示欄４,
  register_display5: ＰＯＳレジ表示欄５,
  register_display6: ＰＯＳレジ表示欄６,
  register_display7: ＰＯＳレジ表示欄７,
  register_display8: ＰＯＳレジ表示欄８,
  receipt_display1: 明細表示欄１,
  receipt_display2: 明細表示欄２,
  receipt_display3: 明細表示欄３,
  receipt_display4: 明細表示欄４,
  receipt_display5: 明細表示欄５,
  receipt_display6: 明細表示欄６,
  receipt_display7: 明細表示欄７,
  receipt_display8: 明細表示欄８,
  receipt_display9: 明細表示欄９,
  receipt_display10: 明細表示欄１０
)
```

