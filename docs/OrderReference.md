# GmoPaymentApiClient::OrderReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_id** | **String** | 取引ID | [optional] |
| **access_pass** | **String** | 取引パスワード&lt;br&gt;OpenAPIタイプでは利用しません。モジュールタイプ・プロトコルタイプで利用します。 | [optional] |
| **order_id** | **String** | オーダーID | [optional] |
| **status** | [**Status**](Status.md) |  | [optional] |
| **created** | **Time** | 開始日時&lt;br&gt; [RFC 3339, section 5.6](https://tools.ietf.org/html/rfc3339#section-5.6)で定義された表記   例) 2023-05-30T12:34:56+09:00  | [optional] |
| **updated** | **Time** | 最終更新日時   [RFC 3339, section 5.6](https://tools.ietf.org/html/rfc3339#section-5.6)で定義された表記   例) 2023-05-30T12:34:56+09:00  | [optional] |
| **amount** | **String** | 税送料込の取引金額 | [optional] |
| **client_fields** | [**ClientFields**](ClientFields.md) |  | [optional] |
| **charge_type** | [**ChargeType**](ChargeType.md) |  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::OrderReference.new(
  access_id: acdc7d53f7a78f488d8d0997eff99c6f,
  access_pass: 8edc86b5c8b34e92a224f577dec63990,
  order_id: order-001,
  status: null,
  created: 2023-05-30T12:34:56+09:00,
  updated: 2023-05-30T12:34:56+09:00,
  amount: 1000,
  client_fields: null,
  charge_type: null
)
```

