# GmoPaymentApiClient::WalletApi

All URIs are relative to *https://openapi.mul-pay.jp*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**wallet_authorize_account**](WalletApi.md#wallet_authorize_account) | **POST** /wallet/authorizeAccount | 利用承諾 |
| [**wallet_charge**](WalletApi.md#wallet_charge) | **POST** /wallet/charge | 都度支払い |
| [**wallet_get_customer_data**](WalletApi.md#wallet_get_customer_data) | **POST** /wallet/getCustomerData | 購入者情報取得 |
| [**wallet_onfile_charge**](WalletApi.md#wallet_onfile_charge) | **POST** /wallet/on-file/charge | 随時支払い |


## wallet_authorize_account

> <WalletAuthorizationResponse> wallet_authorize_account(wallet_authorization_request, opts)

利用承諾

随時決済のための利用承諾手続き時に呼び出すAPIです。 

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

api_instance = GmoPaymentApiClient::WalletApi.new
wallet_authorization_request = GmoPaymentApiClient::WalletAuthorizationRequest.new({merchant: GmoPaymentApiClient::Merchant.new({name: 'サンプルストア', name_kana: 'ジーエムオーストア', name_alphabet: 'Sample Store', name_short: 'サンプル', contact_name: 'サポート窓口', contact_email: 'support@example.com', contact_phone: '0120-123-456', contact_opening_hours: '10:00-18:00'}), order: GmoPaymentApiClient::OrderWithoutAmount.new({order_id: 'order-001', transaction_type: GmoPaymentApiClient::TransactionType::CIT}), payer: GmoPaymentApiClient::Payer.new({name: '見本 太郎'}), wallet_authorization_information: GmoPaymentApiClient::WalletAuthorizationInformation.new({wallet_type: GmoPaymentApiClient::OnfileWalletType::PAYPAY, wallet_authorization_options: GmoPaymentApiClient::WalletAuthorizationOptions.new({member_id: 'member-001'})})}) # WalletAuthorizationRequest | どのPay払いを利用するかは`walletInformation.walletType`で設定します。 
opts = {
  idempotency_key: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。 
}

begin
  # 利用承諾
  result = api_instance.wallet_authorize_account(wallet_authorization_request, opts)
  p result
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling WalletApi->wallet_authorize_account: #{e}"
end
```

#### Using the wallet_authorize_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletAuthorizationResponse>, Integer, Hash)> wallet_authorize_account_with_http_info(wallet_authorization_request, opts)

```ruby
begin
  # 利用承諾
  data, status_code, headers = api_instance.wallet_authorize_account_with_http_info(wallet_authorization_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletAuthorizationResponse>
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling WalletApi->wallet_authorize_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet_authorization_request** | [**WalletAuthorizationRequest**](WalletAuthorizationRequest.md) | どのPay払いを利用するかは&#x60;walletInformation.walletType&#x60;で設定します。  |  |
| **idempotency_key** | **String** | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。  | [optional] |

### Return type

[**WalletAuthorizationResponse**](WalletAuthorizationResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [Password](../README.md#Password)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## wallet_charge

> <WalletChargeResponse> wallet_charge(wallet_charge_request, opts)

都度支払い

都度のお手続きをしてPay払いで支払う場合に呼び出すAPIです。 

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

api_instance = GmoPaymentApiClient::WalletApi.new
wallet_charge_request = GmoPaymentApiClient::WalletChargeRequest.new({merchant: GmoPaymentApiClient::Merchant.new({name: 'サンプルストア', name_kana: 'ジーエムオーストア', name_alphabet: 'Sample Store', name_short: 'サンプル', contact_name: 'サポート窓口', contact_email: 'support@example.com', contact_phone: '0120-123-456', contact_opening_hours: '10:00-18:00'}), order: GmoPaymentApiClient::Order.new({order_id: 'order-001', amount: '1000', transaction_type: GmoPaymentApiClient::TransactionType::CIT}), payer: GmoPaymentApiClient::Payer.new({name: '見本 太郎'}), wallet_information: GmoPaymentApiClient::WalletInformation.new({wallet_charge_options: GmoPaymentApiClient::WalletChargeOptions.new({authorization_mode: 'AUTH'}), wallet_type: GmoPaymentApiClient::WalletType::PAYPAY})}) # WalletChargeRequest | どのPay払いを利用するかは`walletInformation.walletType`で設定します。 
opts = {
  idempotency_key: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。 
}

begin
  # 都度支払い
  result = api_instance.wallet_charge(wallet_charge_request, opts)
  p result
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling WalletApi->wallet_charge: #{e}"
end
```

#### Using the wallet_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletChargeResponse>, Integer, Hash)> wallet_charge_with_http_info(wallet_charge_request, opts)

```ruby
begin
  # 都度支払い
  data, status_code, headers = api_instance.wallet_charge_with_http_info(wallet_charge_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletChargeResponse>
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling WalletApi->wallet_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet_charge_request** | [**WalletChargeRequest**](WalletChargeRequest.md) | どのPay払いを利用するかは&#x60;walletInformation.walletType&#x60;で設定します。  |  |
| **idempotency_key** | **String** | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。  | [optional] |

### Return type

[**WalletChargeResponse**](WalletChargeResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [Password](../README.md#Password)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## wallet_get_customer_data

> <WalletGetCustomerDataResponse> wallet_get_customer_data(wallet_get_customer_data_request)

購入者情報取得

決済事業者で保持している購入者情報を取得するためのAPIです。   現時点ではAmazon Pay V2のみ利用可能です。 

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

api_instance = GmoPaymentApiClient::WalletApi.new
wallet_get_customer_data_request = GmoPaymentApiClient::WalletGetCustomerDataRequest.new # WalletGetCustomerDataRequest | 

begin
  # 購入者情報取得
  result = api_instance.wallet_get_customer_data(wallet_get_customer_data_request)
  p result
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling WalletApi->wallet_get_customer_data: #{e}"
end
```

#### Using the wallet_get_customer_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletGetCustomerDataResponse>, Integer, Hash)> wallet_get_customer_data_with_http_info(wallet_get_customer_data_request)

```ruby
begin
  # 購入者情報取得
  data, status_code, headers = api_instance.wallet_get_customer_data_with_http_info(wallet_get_customer_data_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletGetCustomerDataResponse>
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling WalletApi->wallet_get_customer_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet_get_customer_data_request** | [**WalletGetCustomerDataRequest**](WalletGetCustomerDataRequest.md) |  |  |

### Return type

[**WalletGetCustomerDataResponse**](WalletGetCustomerDataResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [Password](../README.md#Password)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## wallet_onfile_charge

> <WalletOnfileChargeResponse> wallet_onfile_charge(wallet_onfile_charge_request, opts)

随時支払い

事前に承認済の認証情報を使ってPay払いで支払う場合に呼び出すAPIです。 

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

api_instance = GmoPaymentApiClient::WalletApi.new
wallet_onfile_charge_request = GmoPaymentApiClient::WalletOnfileChargeRequest.new({merchant: GmoPaymentApiClient::Merchant.new({name: 'サンプルストア', name_kana: 'ジーエムオーストア', name_alphabet: 'Sample Store', name_short: 'サンプル', contact_name: 'サポート窓口', contact_email: 'support@example.com', contact_phone: '0120-123-456', contact_opening_hours: '10:00-18:00'}), order: GmoPaymentApiClient::Order.new({order_id: 'order-001', amount: '1000', transaction_type: GmoPaymentApiClient::TransactionType::CIT}), payer: GmoPaymentApiClient::Payer.new({name: '見本 太郎'}), wallet_onfile_information: GmoPaymentApiClient::WalletOnfileInformation.new({wallet_charge_options: GmoPaymentApiClient::WalletChargeOptions.new({authorization_mode: 'AUTH'}), onfile_wallet: GmoPaymentApiClient::OnfileWallet.new({type: GmoPaymentApiClient::OnfileWalletType::PAYPAY})})}) # WalletOnfileChargeRequest | どのPay払いを利用するかは`walletOnfileInformation.onfileWallet`で設定します。 
opts = {
  idempotency_key: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。 
}

begin
  # 随時支払い
  result = api_instance.wallet_onfile_charge(wallet_onfile_charge_request, opts)
  p result
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling WalletApi->wallet_onfile_charge: #{e}"
end
```

#### Using the wallet_onfile_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletOnfileChargeResponse>, Integer, Hash)> wallet_onfile_charge_with_http_info(wallet_onfile_charge_request, opts)

```ruby
begin
  # 随時支払い
  data, status_code, headers = api_instance.wallet_onfile_charge_with_http_info(wallet_onfile_charge_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletOnfileChargeResponse>
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling WalletApi->wallet_onfile_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet_onfile_charge_request** | [**WalletOnfileChargeRequest**](WalletOnfileChargeRequest.md) | どのPay払いを利用するかは&#x60;walletOnfileInformation.onfileWallet&#x60;で設定します。  |  |
| **idempotency_key** | **String** | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。  | [optional] |

### Return type

[**WalletOnfileChargeResponse**](WalletOnfileChargeResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [Password](../README.md#Password)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

