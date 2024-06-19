# GmoPaymentApiClient::MemberApi

All URIs are relative to *https://openapi.mul-pay.jp*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**member_create**](MemberApi.md#member_create) | **POST** /member/create | ID登録 |
| [**member_delete**](MemberApi.md#member_delete) | **POST** /member/delete | 全削除 |
| [**member_delete_item**](MemberApi.md#member_delete_item) | **POST** /member/deleteItem | 認証情報削除 |
| [**member_inquiry**](MemberApi.md#member_inquiry) | **POST** /member/inquiry | 照会 |


## member_create

> <MemberCreateResponse> member_create(member_create_request, opts)

ID登録

会員を登録するためのAPIです。 

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

api_instance = GmoPaymentApiClient::MemberApi.new
member_create_request = GmoPaymentApiClient::MemberCreateRequest.new({member_id: 'member-001'}) # MemberCreateRequest | 
opts = {
  idempotency_key: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。 
}

begin
  # ID登録
  result = api_instance.member_create(member_create_request, opts)
  p result
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling MemberApi->member_create: #{e}"
end
```

#### Using the member_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberCreateResponse>, Integer, Hash)> member_create_with_http_info(member_create_request, opts)

```ruby
begin
  # ID登録
  data, status_code, headers = api_instance.member_create_with_http_info(member_create_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberCreateResponse>
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling MemberApi->member_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_create_request** | [**MemberCreateRequest**](MemberCreateRequest.md) |  |  |
| **idempotency_key** | **String** | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。  | [optional] |

### Return type

[**MemberCreateResponse**](MemberCreateResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [Password](../README.md#Password)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## member_delete

> <MemberDeleteResponse> member_delete(member_delete_request, opts)

全削除

会員情報を削除するためのAPIです。   Pay払いの認証情報も含まれます。   一度削除した会員ID、認証情報は二度と利用できないため、ご注意ください。 

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

api_instance = GmoPaymentApiClient::MemberApi.new
member_delete_request = GmoPaymentApiClient::MemberDeleteRequest.new({member_id: 'member-001'}) # MemberDeleteRequest | 
opts = {
  idempotency_key: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。 
}

begin
  # 全削除
  result = api_instance.member_delete(member_delete_request, opts)
  p result
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling MemberApi->member_delete: #{e}"
end
```

#### Using the member_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberDeleteResponse>, Integer, Hash)> member_delete_with_http_info(member_delete_request, opts)

```ruby
begin
  # 全削除
  data, status_code, headers = api_instance.member_delete_with_http_info(member_delete_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberDeleteResponse>
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling MemberApi->member_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_delete_request** | [**MemberDeleteRequest**](MemberDeleteRequest.md) |  |  |
| **idempotency_key** | **String** | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。  | [optional] |

### Return type

[**MemberDeleteResponse**](MemberDeleteResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [Password](../README.md#Password)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## member_delete_item

> <MemberDeleteItem201Response> member_delete_item(member_delete_item_request, opts)

認証情報削除

会員に登録されている情報を削除するためのAPIです。   楽天ペイ(オンライン決済)V2ではご利用いただけません。 

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

api_instance = GmoPaymentApiClient::MemberApi.new
member_delete_item_request = GmoPaymentApiClient::MemberDeleteItemRequestCard.new({member_id: 'member-001', onfile_type: GmoPaymentApiClient::OnfileType::CARD, onfile_card_type: GmoPaymentApiClient::OnfileCardType::CREDIT_CARD, card_id: '0'}) # MemberDeleteItemRequest | 
opts = {
  idempotency_key: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。 
}

begin
  # 認証情報削除
  result = api_instance.member_delete_item(member_delete_item_request, opts)
  p result
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling MemberApi->member_delete_item: #{e}"
end
```

#### Using the member_delete_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberDeleteItem201Response>, Integer, Hash)> member_delete_item_with_http_info(member_delete_item_request, opts)

```ruby
begin
  # 認証情報削除
  data, status_code, headers = api_instance.member_delete_item_with_http_info(member_delete_item_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberDeleteItem201Response>
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling MemberApi->member_delete_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_delete_item_request** | [**MemberDeleteItemRequest**](MemberDeleteItemRequest.md) |  |  |
| **idempotency_key** | **String** | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。  | [optional] |

### Return type

[**MemberDeleteItem201Response**](MemberDeleteItem201Response.md)

### Authorization

[AccessToken](../README.md#AccessToken), [Password](../README.md#Password)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## member_inquiry

> <MemberInquiryResponse> member_inquiry(member_inquiry_request)

照会

会員情報を照会するためのAPIです。 

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

api_instance = GmoPaymentApiClient::MemberApi.new
member_inquiry_request = GmoPaymentApiClient::MemberInquiryRequest.new({member_id: 'member-001'}) # MemberInquiryRequest | 

begin
  # 照会
  result = api_instance.member_inquiry(member_inquiry_request)
  p result
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling MemberApi->member_inquiry: #{e}"
end
```

#### Using the member_inquiry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberInquiryResponse>, Integer, Hash)> member_inquiry_with_http_info(member_inquiry_request)

```ruby
begin
  # 照会
  data, status_code, headers = api_instance.member_inquiry_with_http_info(member_inquiry_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberInquiryResponse>
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling MemberApi->member_inquiry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_inquiry_request** | [**MemberInquiryRequest**](MemberInquiryRequest.md) |  |  |

### Return type

[**MemberInquiryResponse**](MemberInquiryResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [Password](../README.md#Password)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

