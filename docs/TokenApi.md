# GmoPaymentApiClient::TokenApi

All URIs are relative to *https://openapi.mul-pay.jp*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**token**](TokenApi.md#token) | **POST** /token | アクセストークン発行 |


## token

> <TokenResponse> token(grant_type, scope)

アクセストークン発行

アクセストークン方式の認証に利用するアクセストークンを発行するために呼び出すAPIです。   認証の詳細は[APIの認証](#tag/authentication)を参照ください。 

### Examples

```ruby
require 'time'
require 'gmo_payment_api_client'
# setup authorization
GmoPaymentApiClient.configure do |config|
  # Configure HTTP basic authorization: Password
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = GmoPaymentApiClient::TokenApi.new
grant_type = 'client_credentials' # String | グラントタイプ   `client_credentials`を設定してください。 
scope = 'openapi' # String | スコープ `openapi`を設定してください。 

begin
  # アクセストークン発行
  result = api_instance.token(grant_type, scope)
  p result
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling TokenApi->token: #{e}"
end
```

#### Using the token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenResponse>, Integer, Hash)> token_with_http_info(grant_type, scope)

```ruby
begin
  # アクセストークン発行
  data, status_code, headers = api_instance.token_with_http_info(grant_type, scope)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenResponse>
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling TokenApi->token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grant_type** | **String** | グラントタイプ   &#x60;client_credentials&#x60;を設定してください。  |  |
| **scope** | **String** | スコープ &#x60;openapi&#x60;を設定してください。  |  |

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

[Password](../README.md#Password)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json, application/problem+json

