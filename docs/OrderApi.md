# GmoPaymentApiClient::OrderApi

All URIs are relative to *https://openapi.mul-pay.jp*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**order_cancel**](OrderApi.md#order_cancel) | **POST** /order/cancel | キャンセル |
| [**order_capture**](OrderApi.md#order_capture) | **POST** /order/capture | 確定 |
| [**order_inquiry**](OrderApi.md#order_inquiry) | **POST** /order/inquiry | 照会 |
| [**order_update**](OrderApi.md#order_update) | **POST** /order/update | 金額変更 |


## order_cancel

> <OrderCancel201Response> order_cancel(order_cancel_request, opts)

キャンセル

支払いを取り消すためのAPIです。 

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

api_instance = GmoPaymentApiClient::OrderApi.new
order_cancel_request = GmoPaymentApiClient::OrderCancelRequest.new({access_id: 'acdc7d53f7a78f488d8d0997eff99c6f'}) # OrderCancelRequest | 
opts = {
  idempotency_key: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。 
}

begin
  # キャンセル
  result = api_instance.order_cancel(order_cancel_request, opts)
  p result
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling OrderApi->order_cancel: #{e}"
end
```

#### Using the order_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderCancel201Response>, Integer, Hash)> order_cancel_with_http_info(order_cancel_request, opts)

```ruby
begin
  # キャンセル
  data, status_code, headers = api_instance.order_cancel_with_http_info(order_cancel_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderCancel201Response>
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling OrderApi->order_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_cancel_request** | [**OrderCancelRequest**](OrderCancelRequest.md) |  |  |
| **idempotency_key** | **String** | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。  | [optional] |

### Return type

[**OrderCancel201Response**](OrderCancel201Response.md)

### Authorization

[AccessToken](../README.md#AccessToken), [Password](../README.md#Password)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## order_capture

> <OrderCapture201Response> order_capture(order_capture_request, opts)

確定

決済確定のためのAPIです。 

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

api_instance = GmoPaymentApiClient::OrderApi.new
order_capture_request = GmoPaymentApiClient::OrderCaptureRequest.new({access_id: 'acdc7d53f7a78f488d8d0997eff99c6f'}) # OrderCaptureRequest | 
opts = {
  idempotency_key: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。 
}

begin
  # 確定
  result = api_instance.order_capture(order_capture_request, opts)
  p result
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling OrderApi->order_capture: #{e}"
end
```

#### Using the order_capture_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderCapture201Response>, Integer, Hash)> order_capture_with_http_info(order_capture_request, opts)

```ruby
begin
  # 確定
  data, status_code, headers = api_instance.order_capture_with_http_info(order_capture_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderCapture201Response>
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling OrderApi->order_capture_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_capture_request** | [**OrderCaptureRequest**](OrderCaptureRequest.md) |  |  |
| **idempotency_key** | **String** | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。  | [optional] |

### Return type

[**OrderCapture201Response**](OrderCapture201Response.md)

### Authorization

[AccessToken](../README.md#AccessToken), [Password](../README.md#Password)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## order_inquiry

> <OrderInquiryResponse> order_inquiry(order_inquiry_request)

照会

取引を照会するためのAPIです。   accessIdとorderIdのどちらかは必ず設定してください。   accessIdとorderIdの両方を設定した場合は両方に一致する取引情報を返却します。 

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

api_instance = GmoPaymentApiClient::OrderApi.new
order_inquiry_request = GmoPaymentApiClient::OrderInquiryRequest.new # OrderInquiryRequest | 

begin
  # 照会
  result = api_instance.order_inquiry(order_inquiry_request)
  p result
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling OrderApi->order_inquiry: #{e}"
end
```

#### Using the order_inquiry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderInquiryResponse>, Integer, Hash)> order_inquiry_with_http_info(order_inquiry_request)

```ruby
begin
  # 照会
  data, status_code, headers = api_instance.order_inquiry_with_http_info(order_inquiry_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderInquiryResponse>
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling OrderApi->order_inquiry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_inquiry_request** | [**OrderInquiryRequest**](OrderInquiryRequest.md) |  |  |

### Return type

[**OrderInquiryResponse**](OrderInquiryResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [Password](../README.md#Password)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## order_update

> <OrderUpdate201Response> order_update(order_update_request, opts)

金額変更

すでに支払い済みの取引の金額を変更します。   決済手段と支払い状態により実行できる処理が異なります。   クレジットカードの場合は、当サービス内部で取消と再オーソリ(信用照会)の処理を実施します。   お客様の信用状態によっては、再オーソリ(信用照会)が失敗する場合があり、その場合は取消は無効となり金額変更APIを呼び出す前の状態に戻ります。   クレジットカードは同じ金額を設定して呼び出すことで、仮売上状態の延長が可能です。  |||仮売上<br>の減額|仮売上<br>の増額|実売上<br>の減額|実売上<br>の増額|即時売上<br>の減額|即時売上<br>の増額| |:-------|:------------|:-:|:-:|:-:|:-:|:-:|:-:| |クレカ払い|クレカ     | 〇 | 〇 | 〇 | 〇 | 〇 | 〇 | |         |Google Pay | 〇 | 〇 | 〇 | 〇 | 〇 | 〇 | |         |Apple Pay  | △<sup>*1</sup> | △<sup>*1</sup> | △<sup>*1</sup> | △<sup>*1</sup> | △<sup>*1</sup> | △<sup>*1</sup> | |Pay払い  |PayPay     | × | × | 〇 | × | 〇 | × | |         |d払い      | × | × | 〇 | △<sup>*2</sup> | 〇 | △<sup>*2</sup> | |         |楽天ペイ(オンライン決済)V2 | 〇 | 〇 | 〇 | 〇 | 〇 | 〇 | |         |Amazon Pay V2 | 〇 | 〇 | 〇 | × | 〇 | × | |         |au PAY(ネット支払い)アプリ方式  | 〇 | 〇 | 〇 | × | 〇 | × | |         |メルペイ    | × | × | 〇 | × | 〇 | × | |現金払い  |コンビニ   | - | - | - | - | - | - | |         |Pay-easy   | - | - | - | - | - | - | |         |銀行振込    | - | - | - | - | - | - |  *1：Visaブランドのカードは増額・減額ができません。   *2：減額した取引に限り、元取引金額までの決済金額の増額ができます。 

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

api_instance = GmoPaymentApiClient::OrderApi.new
order_update_request = GmoPaymentApiClient::OrderUpdateRequest.new({access_id: 'acdc7d53f7a78f488d8d0997eff99c6f', amount: '1000'}) # OrderUpdateRequest | 
opts = {
  idempotency_key: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。 
}

begin
  # 金額変更
  result = api_instance.order_update(order_update_request, opts)
  p result
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling OrderApi->order_update: #{e}"
end
```

#### Using the order_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderUpdate201Response>, Integer, Hash)> order_update_with_http_info(order_update_request, opts)

```ruby
begin
  # 金額変更
  data, status_code, headers = api_instance.order_update_with_http_info(order_update_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderUpdate201Response>
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling OrderApi->order_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_update_request** | [**OrderUpdateRequest**](OrderUpdateRequest.md) |  |  |
| **idempotency_key** | **String** | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。  | [optional] |

### Return type

[**OrderUpdate201Response**](OrderUpdate201Response.md)

### Authorization

[AccessToken](../README.md#AccessToken), [Password](../README.md#Password)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

