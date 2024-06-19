# GmoPaymentApiClient::AmazonPayCancelWebhookRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_id** | **String** | 取引ID |  |
| **event** | **String** | Webhookイベントタイプ   - &#x60;REFUND_SUCCEEDED&#x60;：キャンセル成功 - &#x60;REFUND_FAILED&#x60;：キャンセル失敗  |  |
| **csrf_token** | **String** | Webhook任意パラメーター   chargeリクエスト時に加盟店様が設定した任意の値です。   CSRF対策のために利用してください。  | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::AmazonPayCancelWebhookRequest.new(
  access_id: acdc7d53f7a78f488d8d0997eff99c6f,
  event: null,
  csrf_token: bdb04c5f-42f0-29e2-0979-edae3e7760bf
)
```

