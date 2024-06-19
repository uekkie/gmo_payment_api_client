# GmoPaymentApiClient::CashApi

All URIs are relative to *https://openapi.mul-pay.jp*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cash_charge**](CashApi.md#cash_charge) | **POST** /cash/charge | 支払い番号発行 |


## cash_charge

> <CashChargeResponse> cash_charge(cash_charge_request, opts)

支払い番号発行

コンビニ決済や銀行振込などの現金払いでのお支払い時に利用するAPIです。   支払いの結果は、非同期で加盟店様がリクエスト時に設定した[Webhook URLにHTTPメソッド`POST`で通知](#tag/events/operation/cashWebhook)します。 

### Examples

```ruby
require 'time'
require 'gmo_payment_api_client'
# setup authorization
GmoPaymentApiClient.configure do |config|
  # Configure OAuth2 access token for authorization: AccessToken
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure HTTP basic authorization: Password
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = GmoPaymentApiClient::CashApi.new
cash_charge_request = GmoPaymentApiClient::CashChargeRequest.new({merchant: GmoPaymentApiClient::Merchant.new({name: 'サンプルストア', name_kana: 'ジーエムオーストア', name_alphabet: 'Sample Store', name_short: 'サンプル', contact_name: 'サポート窓口', contact_email: 'support@example.com', contact_phone: '0120-123-456', contact_opening_hours: '10:00-18:00'}), order: GmoPaymentApiClient::Order.new({order_id: 'order-001', amount: '1000', transaction_type: GmoPaymentApiClient::TransactionType::CIT}), payer: GmoPaymentApiClient::Payer.new({name: '見本 太郎'}), cash_information: GmoPaymentApiClient::CashInformation.new({cash_type: GmoPaymentApiClient::Mulpay::KONBINI})}) # CashChargeRequest | どの現金払いを利用するかは`cashInformation.cashType`で設定します。 
opts = {
  idempotency_key: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。 
}

begin
  # 支払い番号発行
  result = api_instance.cash_charge(cash_charge_request, opts)
  p result
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling CashApi->cash_charge: #{e}"
end
```

#### Using the cash_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CashChargeResponse>, Integer, Hash)> cash_charge_with_http_info(cash_charge_request, opts)

```ruby
begin
  # 支払い番号発行
  data, status_code, headers = api_instance.cash_charge_with_http_info(cash_charge_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CashChargeResponse>
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling CashApi->cash_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cash_charge_request** | [**CashChargeRequest**](CashChargeRequest.md) | どの現金払いを利用するかは&#x60;cashInformation.cashType&#x60;で設定します。  |  |
| **idempotency_key** | **String** | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。  | [optional] |

### Return type

[**CashChargeResponse**](CashChargeResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [Password](../README.md#Password)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

