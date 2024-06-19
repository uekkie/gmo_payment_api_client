# GmoPaymentApiClient::CreditResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_type** | **String** | カードのタイプ   - &#x60;CREDIT_CARD&#x60;：クレジットカード - &#x60;APPLE_PAY&#x60;：Apple Pay - &#x60;GOOGLE_PAY&#x60;：Google Pay  | [optional] |
| **card_result** | [**CardResult**](CardResult.md) |  | [optional] |
| **forwarded_acquirer_code** | **String** | 仕向先カード会社コード   従来の接続方式であるプロトコル/モジュールタイプにおける&#x60;Forward&#x60;です。  | [optional] |
| **approval_code** | **String** | カード会社が発行した承認番号   従来の接続方式であるプロトコル/モジュールタイプにおける&#x60;Approve&#x60;です。  | [optional] |
| **nw_transaction_id** | **String** | クレジットカードネットワーク事業者が取引を特定するためのID   従来の接続方式であるプロトコル/モジュールタイプにおける&#x60;TranID&#x60;です。  | [optional] |
| **transaction_date_time** | **Time** | 処理日時   [RFC 3339, section 5.6](https://tools.ietf.org/html/rfc3339#section-5.6)で定義された表記   例) 2023-05-30T12:34:56+09:00  | [optional] |
| **capture_expiry_date_time** | **Time** | 仮売上有効日時   [RFC 3339, section 5.6](https://tools.ietf.org/html/rfc3339#section-5.6)で定義された表記   例) 2023-06-30T12:34:56+09:00  | [optional] |
| **use_tds2** | **Boolean** | 3Dセキュアの利用有無   当該取引が3Dセキュア認証済である場合は&#x60;true&#x60;です。  | [optional] |
| **use_fraud_detection** | **Boolean** | 不正検知の利用有無 | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::CreditResult.new(
  card_type: CREDIT,
  card_result: null,
  forwarded_acquirer_code: 2a99663,
  approval_code: 1234567,
  nw_transaction_id: 2305301234602212345678912345,
  transaction_date_time: 2023-05-30T12:34:56+09:00,
  capture_expiry_date_time: 2023-06-30T12:34:56+09:00,
  use_tds2: false,
  use_fraud_detection: true
)
```

