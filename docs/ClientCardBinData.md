# GmoPaymentApiClient::ClientCardBinData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **info1** | **Array&lt;String&gt;** | 加盟店設定情報1   管理画面で登録した独自BIN情報の「Info1」の値を返却します。   登録方法はこちらの[FAQページ](https://mp-faq.gmo-pg.com/s/article/D00042)を参照ください。   複数の登録済みBIN情報に該当する場合は全ての値を返却します。  | [optional] |
| **info2** | **Array&lt;String&gt;** | 加盟店設定情報2   管理画面で登録した独自BIN情報の「Info2」の値を返却します。   登録方法はこちらの[FAQページ]((https://mp-faq.gmo-pg.com/s/article/D00042)を参照ください。   複数の登録済みBIN情報に該当する場合は全ての値を返却します。  | [optional] |
| **info3** | **Array&lt;String&gt;** | 加盟店設定情報3   管理画面で登録した独自BIN情報の「Info3」の値を返却します。   登録方法はこちらの[FAQページ]((https://mp-faq.gmo-pg.com/s/article/D00042)を参照ください。   複数の登録済みBIN情報に該当する場合は全ての値を返却します。  | [optional] |
| **info4** | **Array&lt;String&gt;** | 加盟店設定情報4   管理画面で登録した独自BIN情報の「Info4」の値を返却します。   登録方法はこちらの[FAQページ]((https://mp-faq.gmo-pg.com/s/article/D00042)を参照ください。   複数の登録済みBIN情報に該当する場合は全ての値を返却します。  | [optional] |
| **info5** | **Array&lt;String&gt;** | 加盟店設定情報5   管理画面で登録した独自BIN情報の「Info5」の値を返却します。   登録方法はこちらの[FAQページ]((https://mp-faq.gmo-pg.com/s/article/D00042)を参照ください。   複数の登録済みBIN情報に該当する場合は全ての値を返却します。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::ClientCardBinData.new(
  info1: Info1,
  info2: [Info2-1, Info2-2],
  info3: [Info3-1, Info3-2],
  info4: [Info4-1, Info4-2],
  info5: [Info5-1, Info5-2]
)
```

