# GmoPaymentApiClient::CreditcardApi

All URIs are relative to *https://openapi.mul-pay.jp*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**credit_charge**](CreditcardApi.md#credit_charge) | **POST** /credit/charge | 都度支払い |
| [**credit_get_card_details**](CreditcardApi.md#credit_get_card_details) | **POST** /credit/getCardDetails | カード詳細情報取得 |
| [**credit_onfile_charge**](CreditcardApi.md#credit_onfile_charge) | **POST** /credit/on-file/charge | 随時支払い |
| [**credit_store_card**](CreditcardApi.md#credit_store_card) | **POST** /credit/storeCard | カード登録 |
| [**credit_verify_card**](CreditcardApi.md#credit_verify_card) | **POST** /credit/verifyCard | 有効性確認 |
| [**tds2_finalize_charge**](CreditcardApi.md#tds2_finalize_charge) | **POST** /tds2/finalizeCharge | 3Dセキュア後の支払い |
| [**tds2_finalize_verification**](CreditcardApi.md#tds2_finalize_verification) | **POST** /tds2/finalizeVerification | 3Dセキュア後の有効性確認 |


## credit_charge

> <CreditChargeResponse> credit_charge(credit_charge_request, opts)

都度支払い

カード情報を都度設定して支払う場合に呼び出すAPIです。   Apple Pay、Google Payでのお支払いもこのAPIを利用します。   <span style=\"color: #d41f1c\">※ApplePayでは3Dセキュアおよび不正検知のご利用ができません。</span> <br> 

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

api_instance = GmoPaymentApiClient::CreditcardApi.new
credit_charge_request = GmoPaymentApiClient::CreditChargeRequest.new({merchant: GmoPaymentApiClient::Merchant.new({name: 'サンプルストア', name_kana: 'ジーエムオーストア', name_alphabet: 'Sample Store', name_short: 'サンプル', contact_name: 'サポート窓口', contact_email: 'support@example.com', contact_phone: '0120-123-456', contact_opening_hours: '10:00-18:00'}), order: GmoPaymentApiClient::Order.new({order_id: 'order-001', amount: '1000', transaction_type: GmoPaymentApiClient::TransactionType::CIT}), payer: GmoPaymentApiClient::Payer.new({name: '見本 太郎'}), credit_information: GmoPaymentApiClient::CreditPanInformation.new({card: GmoPaymentApiClient::Card.new({card_number: '4111111111111111', expiry_month: '01', expiry_year: '2033'}), credit_charge_options: GmoPaymentApiClient::CreditChargeOptions.new({authorization_mode: 'AUTH'})})}) # CreditChargeRequest | カード情報の設定方法は以下のいずれかです。   1. トークン化して設定         - MPクレカトークン         当サービス標準のカード情報トークンです。         詳細は[トークン決済v2 開発ガイド](https://static.mul-pay.jp/doc/card-token/)を参照ください。              - Apple Payトークン         Apple Payに対応した端末で取得したApple PayのPayment tokenをbase64エンコードした値です。         詳細は「BT01_ApplePay開発ガイド」を参照ください。              - Google Payトークン         Google Pay APIで取得したPayment tokenをbase64エンコードした値です。         当サービスが提供する`MpToken.js`を利用してトークンを取得することができます。         詳細は[トークン決済v2 開発ガイド](https://static.mul-pay.jp/doc/card-token/)を参照ください。         Google Payに関する詳細は[デベロッパー向けドキュメント](https://developers.google.com/pay/api)を参照ください。    2. 直接設定   [PCI DSS](https://ja.wikipedia.org/wiki/PCI_DSS)の認定を得ている加盟店様のみが利用できます。   本番環境で利用するためにはお申し込みが必要です。      3Dセキュア認証利用時には、以下のカード会員の情報を必ず設定してください。   未設定でもエラーにはなりませんが、変更になる可能性があります。     - カード会員の名前       - トークン化して設定         MPクレカトークンの「カード名義人」が利用されます。     - 直接設定         `creditInformation.card.cardholderName`が利用されます。     - カード会員のメールアドレスまたは電話番号       `payer`に設定した値が利用されます。       詳細は本セクション冒頭の「共通パラメーター対応表」を参照してください。 
opts = {
  idempotency_key: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。 
}

begin
  # 都度支払い
  result = api_instance.credit_charge(credit_charge_request, opts)
  p result
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling CreditcardApi->credit_charge: #{e}"
end
```

#### Using the credit_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreditChargeResponse>, Integer, Hash)> credit_charge_with_http_info(credit_charge_request, opts)

```ruby
begin
  # 都度支払い
  data, status_code, headers = api_instance.credit_charge_with_http_info(credit_charge_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreditChargeResponse>
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling CreditcardApi->credit_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_charge_request** | [**CreditChargeRequest**](CreditChargeRequest.md) | カード情報の設定方法は以下のいずれかです。   1. トークン化して設定         - MPクレカトークン         当サービス標準のカード情報トークンです。         詳細は[トークン決済v2 開発ガイド](https://static.mul-pay.jp/doc/card-token/)を参照ください。              - Apple Payトークン         Apple Payに対応した端末で取得したApple PayのPayment tokenをbase64エンコードした値です。         詳細は「BT01_ApplePay開発ガイド」を参照ください。              - Google Payトークン         Google Pay APIで取得したPayment tokenをbase64エンコードした値です。         当サービスが提供する&#x60;MpToken.js&#x60;を利用してトークンを取得することができます。         詳細は[トークン決済v2 開発ガイド](https://static.mul-pay.jp/doc/card-token/)を参照ください。         Google Payに関する詳細は[デベロッパー向けドキュメント](https://developers.google.com/pay/api)を参照ください。    2. 直接設定   [PCI DSS](https://ja.wikipedia.org/wiki/PCI_DSS)の認定を得ている加盟店様のみが利用できます。   本番環境で利用するためにはお申し込みが必要です。      3Dセキュア認証利用時には、以下のカード会員の情報を必ず設定してください。   未設定でもエラーにはなりませんが、変更になる可能性があります。     - カード会員の名前       - トークン化して設定         MPクレカトークンの「カード名義人」が利用されます。     - 直接設定         &#x60;creditInformation.card.cardholderName&#x60;が利用されます。     - カード会員のメールアドレスまたは電話番号       &#x60;payer&#x60;に設定した値が利用されます。       詳細は本セクション冒頭の「共通パラメーター対応表」を参照してください。  |  |
| **idempotency_key** | **String** | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。  | [optional] |

### Return type

[**CreditChargeResponse**](CreditChargeResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [Password](../README.md#Password)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## credit_get_card_details

> <CreditGetCardDetailsResponse> credit_get_card_details(credit_get_card_details_request)

カード詳細情報取得

カードの詳細情報を返すためのAPIです。   「クレカトークン」または「会員ID＋カードID」から紐づいたカード情報を取得します。   利用可能な決済手段はクレジットカードのみです。   ※本APIを利用するには契約が必要です。 

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

api_instance = GmoPaymentApiClient::CreditcardApi.new
credit_get_card_details_request = GmoPaymentApiClient::CreditGetCardDetailsRequest.new({card_information: GmoPaymentApiClient::CreditGetCardDetailsReferrerInformation.new}) # CreditGetCardDetailsRequest | カード情報の設定方法は以下のいずれかです。   1. トークン化して設定       - MPクレカトークン         当サービス標準のカード情報トークンです。         本APIではトークンを利用しても無効化されず、支払いAPIで同じMPクレカトークンを設定できます。         詳細は[トークン決済v2 開発ガイド](https://static.mul-pay.jp/doc/card-token/)を参照ください。  2. 登録済み情報を設定   登録されているカード情報を利用します。   対象の会員IDが必要です。 

begin
  # カード詳細情報取得
  result = api_instance.credit_get_card_details(credit_get_card_details_request)
  p result
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling CreditcardApi->credit_get_card_details: #{e}"
end
```

#### Using the credit_get_card_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreditGetCardDetailsResponse>, Integer, Hash)> credit_get_card_details_with_http_info(credit_get_card_details_request)

```ruby
begin
  # カード詳細情報取得
  data, status_code, headers = api_instance.credit_get_card_details_with_http_info(credit_get_card_details_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreditGetCardDetailsResponse>
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling CreditcardApi->credit_get_card_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_get_card_details_request** | [**CreditGetCardDetailsRequest**](CreditGetCardDetailsRequest.md) | カード情報の設定方法は以下のいずれかです。   1. トークン化して設定       - MPクレカトークン         当サービス標準のカード情報トークンです。         本APIではトークンを利用しても無効化されず、支払いAPIで同じMPクレカトークンを設定できます。         詳細は[トークン決済v2 開発ガイド](https://static.mul-pay.jp/doc/card-token/)を参照ください。  2. 登録済み情報を設定   登録されているカード情報を利用します。   対象の会員IDが必要です。  |  |

### Return type

[**CreditGetCardDetailsResponse**](CreditGetCardDetailsResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [Password](../README.md#Password)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## credit_onfile_charge

> <CreditChargeResponse> credit_onfile_charge(credit_onfile_charge_request, opts)

随時支払い

登録されているカード情報を使って支払う場合に呼び出すAPIです。   対応している決済手段はクレジットカード、Apple Payです。   ただしVISAブランドのカード番号が登録されたApple Payはご利用になれません。   また、VISA以外のブランドについても、将来的に利用できなくなる可能性があります。   <span style=\"color: #d41f1c\">※ApplePayでは3Dセキュアおよび不正検知のご利用ができません。</span>   Google Payについては、アカウント情報を当サービスに保管できません。   都度支払い時にGoogle Payで使用されたクレジットカード情報を保管することで、通常のクレジットカードとして随時支払いが利用可能です。 

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

api_instance = GmoPaymentApiClient::CreditcardApi.new
credit_onfile_charge_request = GmoPaymentApiClient::CreditOnfileChargeRequest.new({merchant: GmoPaymentApiClient::Merchant.new({name: 'サンプルストア', name_kana: 'ジーエムオーストア', name_alphabet: 'Sample Store', name_short: 'サンプル', contact_name: 'サポート窓口', contact_email: 'support@example.com', contact_phone: '0120-123-456', contact_opening_hours: '10:00-18:00'}), order: GmoPaymentApiClient::Order.new({order_id: 'order-001', amount: '1000', transaction_type: GmoPaymentApiClient::TransactionType::CIT}), payer: GmoPaymentApiClient::Payer.new({name: '見本 太郎'}), credit_onfile_information: GmoPaymentApiClient::CreditOnfileInformation.new({onfile_card: GmoPaymentApiClient::OnfileCard.new({member_id: 'member-001', type: GmoPaymentApiClient::OnfileCardType::CREDIT_CARD}), credit_charge_options: GmoPaymentApiClient::CreditChargeOptions.new({authorization_mode: 'AUTH'})})}) # CreditOnfileChargeRequest | カードのタイプは`creditOnfileInformation.onfileCard.type`で設定します。   プロトコルタイプとは異なりカード登録連番を物理モードで設定できません。      3Dセキュア認証利用時には、以下のカード会員の情報を必ず設定してください。   未設定でもエラーにはなりませんが、変更になる可能性があります。   - カード会員の名前     登録されているカード情報の「カード名義人」が利用されます。     カードの登録については、[有効性確認(/credit/verifyCard)](#tag/creditcard/operation/creditVerifyCard)、[カード登録(/credit/storeCard)](#tag/creditcard/operation/creditStoreCard)を参照ください。 - カード会員のメールアドレスまたは電話番号     `payer`に設定した値が利用されます。     詳細は本セクション冒頭の「共通パラメーター対応表」を参照してください。 
opts = {
  idempotency_key: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。 
}

begin
  # 随時支払い
  result = api_instance.credit_onfile_charge(credit_onfile_charge_request, opts)
  p result
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling CreditcardApi->credit_onfile_charge: #{e}"
end
```

#### Using the credit_onfile_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreditChargeResponse>, Integer, Hash)> credit_onfile_charge_with_http_info(credit_onfile_charge_request, opts)

```ruby
begin
  # 随時支払い
  data, status_code, headers = api_instance.credit_onfile_charge_with_http_info(credit_onfile_charge_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreditChargeResponse>
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling CreditcardApi->credit_onfile_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_onfile_charge_request** | [**CreditOnfileChargeRequest**](CreditOnfileChargeRequest.md) | カードのタイプは&#x60;creditOnfileInformation.onfileCard.type&#x60;で設定します。   プロトコルタイプとは異なりカード登録連番を物理モードで設定できません。      3Dセキュア認証利用時には、以下のカード会員の情報を必ず設定してください。   未設定でもエラーにはなりませんが、変更になる可能性があります。   - カード会員の名前     登録されているカード情報の「カード名義人」が利用されます。     カードの登録については、[有効性確認(/credit/verifyCard)](#tag/creditcard/operation/creditVerifyCard)、[カード登録(/credit/storeCard)](#tag/creditcard/operation/creditStoreCard)を参照ください。 - カード会員のメールアドレスまたは電話番号     &#x60;payer&#x60;に設定した値が利用されます。     詳細は本セクション冒頭の「共通パラメーター対応表」を参照してください。  |  |
| **idempotency_key** | **String** | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。  | [optional] |

### Return type

[**CreditChargeResponse**](CreditChargeResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [Password](../README.md#Password)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## credit_store_card

> <CreditStoreCardReponse> credit_store_card(credit_store_card_request, opts)

カード登録

カード情報を会員に紐づけて登録するためのAPIです。   [有効性確認(/credit/verifyCard)](#tag/creditcard/operation/creditVerifyCard)とは異なり、**カード情報の有効性確認をしません**。   このため、トークンまたは直接設定で登録したカード情報については、随時支払いに失敗する可能があります。   利用可能な決済手段はクレジットカード、Google Payであり、**Apple Payは利用できません**。   ただし、Google Payの場合は、通常のクレジットカードとして会員に紐づけて登録します。   <br> 継続課金サービスや一括決済サービスで登録したカード情報を利用する場合は、以下にご注意ください。   トークンまたは直接設定で登録したカード情報は、有効性確認がされていないため、チャージバックやカード会社契約停止のリスクがあります。   必ず[有効性確認(/credit/verifyCard)](#tag/creditcard/operation/creditVerifyCard)を使用してカード情報を登録してください。   成功した取引情報を使って登録したカード情報は問題ありせん。 

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

api_instance = GmoPaymentApiClient::CreditcardApi.new
credit_store_card_request = GmoPaymentApiClient::CreditStoreCardRequest.new({merchant: GmoPaymentApiClient::Merchant.new({name: 'サンプルストア', name_kana: 'ジーエムオーストア', name_alphabet: 'Sample Store', name_short: 'サンプル', contact_name: 'サポート窓口', contact_email: 'support@example.com', contact_phone: '0120-123-456', contact_opening_hours: '10:00-18:00'}), credit_storing_information: GmoPaymentApiClient::CreditStoringPanInformation.new({card: GmoPaymentApiClient::Card.new({card_number: '4111111111111111', expiry_month: '01', expiry_year: '2033'}), onfile_card_options: GmoPaymentApiClient::OnfileCardOptions.new({member_id: 'member-001'})})}) # CreditStoreCardRequest | カード情報の設定方法は以下のいずれかです。   1. 成功した取引を設定   成功した支払いや有効性確認時に返された取引ID`accessId`を設定することで、該当の取引で利用されたカード情報を登録します。    2. トークン化して設定       - MPクレカトークン         当サービス標準のカード情報トークンです。         詳細は[トークン決済v2 開発ガイド](https://static.mul-pay.jp/doc/card-token/)を参照ください。        - Google Payトークン         Google Pay APIで取得したPayment tokenをbase64エンコードした値です。         当サービスが提供する`MpToken.js`を利用してトークンを取得することができます。         詳細は[トークン決済v2 開発ガイド](https://static.mul-pay.jp/doc/card-token/)を参照ください。         Google Payに関する詳細は[デベロッパー向けドキュメント](https://developers.google.com/pay/api)を参照ください。    3. 直接設定   [PCI DSS](https://ja.wikipedia.org/wiki/PCI_DSS)の認定を得ている加盟店様のみが利用できます。   本番環境で利用するためにはお申し込みが必要です。      登録したカード情報で3Dセキュア認証をする場合、「カード名義人」を含めて登録する必要があります。   - 成功した取引を設定     該当の取引で設定した「カード名義人」が登録されます。   - トークン化して設定     MPクレカトークンの「カード名義人」が登録されます。 - 直接設定     `creditStoringInformation.card.cardholderName`が登録されます。 
opts = {
  idempotency_key: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。 
}

begin
  # カード登録
  result = api_instance.credit_store_card(credit_store_card_request, opts)
  p result
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling CreditcardApi->credit_store_card: #{e}"
end
```

#### Using the credit_store_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreditStoreCardReponse>, Integer, Hash)> credit_store_card_with_http_info(credit_store_card_request, opts)

```ruby
begin
  # カード登録
  data, status_code, headers = api_instance.credit_store_card_with_http_info(credit_store_card_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreditStoreCardReponse>
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling CreditcardApi->credit_store_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_store_card_request** | [**CreditStoreCardRequest**](CreditStoreCardRequest.md) | カード情報の設定方法は以下のいずれかです。   1. 成功した取引を設定   成功した支払いや有効性確認時に返された取引ID&#x60;accessId&#x60;を設定することで、該当の取引で利用されたカード情報を登録します。    2. トークン化して設定       - MPクレカトークン         当サービス標準のカード情報トークンです。         詳細は[トークン決済v2 開発ガイド](https://static.mul-pay.jp/doc/card-token/)を参照ください。        - Google Payトークン         Google Pay APIで取得したPayment tokenをbase64エンコードした値です。         当サービスが提供する&#x60;MpToken.js&#x60;を利用してトークンを取得することができます。         詳細は[トークン決済v2 開発ガイド](https://static.mul-pay.jp/doc/card-token/)を参照ください。         Google Payに関する詳細は[デベロッパー向けドキュメント](https://developers.google.com/pay/api)を参照ください。    3. 直接設定   [PCI DSS](https://ja.wikipedia.org/wiki/PCI_DSS)の認定を得ている加盟店様のみが利用できます。   本番環境で利用するためにはお申し込みが必要です。      登録したカード情報で3Dセキュア認証をする場合、「カード名義人」を含めて登録する必要があります。   - 成功した取引を設定     該当の取引で設定した「カード名義人」が登録されます。   - トークン化して設定     MPクレカトークンの「カード名義人」が登録されます。 - 直接設定     &#x60;creditStoringInformation.card.cardholderName&#x60;が登録されます。  |  |
| **idempotency_key** | **String** | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。  | [optional] |

### Return type

[**CreditStoreCardReponse**](CreditStoreCardReponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [Password](../README.md#Password)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## credit_verify_card

> <CreditVerifyCardResponse> credit_verify_card(credit_verify_card_request, opts)

有効性確認

カード情報の有効性確認をするためのAPIです。     加えて有効性の確認が取れたカード情報を会員に紐づけて登録できます。   利用可能な決済手段はクレジットカード、Google Payであり、**Apple Payは利用できません。**   Google Payは通常のクレジットカードとして会員に紐づけて登録します。 

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

api_instance = GmoPaymentApiClient::CreditcardApi.new
credit_verify_card_request = GmoPaymentApiClient::CreditVerifyCardRequest.new({merchant: GmoPaymentApiClient::Merchant.new({name: 'サンプルストア', name_kana: 'ジーエムオーストア', name_alphabet: 'Sample Store', name_short: 'サンプル', contact_name: 'サポート窓口', contact_email: 'support@example.com', contact_phone: '0120-123-456', contact_opening_hours: '10:00-18:00'}), order: GmoPaymentApiClient::OrderWithoutAmount.new({order_id: 'order-001', transaction_type: GmoPaymentApiClient::TransactionType::CIT}), payer: GmoPaymentApiClient::Payer.new({name: '見本 太郎'}), credit_verification_information: GmoPaymentApiClient::CreditVerificationPanInformation.new}) # CreditVerifyCardRequest | カード情報の設定方法は以下のいずれかです。   1. トークン化して設定       - MPクレカトークン         当サービス標準のカード情報トークンです。         詳細は[トークン決済v2 開発ガイド](https://static.mul-pay.jp/doc/card-token/)を参照ください。        - Google Payトークン         Google Pay APIで取得したPayment tokenをbase64エンコードした値です。         当サービスが提供する`MpToken.js`を利用してトークンを取得することができます。         詳細は[トークン決済v2 開発ガイド](https://static.mul-pay.jp/doc/card-token/)を参照ください。         Google Payに関する詳細は[デベロッパー向けドキュメント](https://developers.google.com/pay/api)を参照ください。    2. 登録済み情報を設定   登録されているカード情報を利用します。   対象の会員IDが必要です。    3. 直接設定   [PCI DSS](https://ja.wikipedia.org/wiki/PCI_DSS)の認定を得ている加盟店様のみが利用できます。   本番環境で利用するためにはお申し込みが必要です。    3Dセキュア認証利用時には、以下のカード会員の情報を必ず設定してください。   未設定でもエラーにはなりませんが、変更になる可能性があります。     - カード会員の名前       - トークン化して設定         MPクレカトークンの「カード名義人」が利用されます。     - 登録済み情報を設定         登録されているカード情報の「カード名義人」が利用されます。     - 直接設定         `creditVerificationInformation.card.cardholderName`が利用されます。   - カード会員のメールアドレスまたは電話番号       `payer`に設定した値が利用されます。詳細は本セクション冒頭の「共通パラメーター対応表」を参照してください。      有効性確認後にカード情報を会員に紐づけて登録した場合、設定した「カード名義人」が登録されます。 
opts = {
  idempotency_key: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。 
}

begin
  # 有効性確認
  result = api_instance.credit_verify_card(credit_verify_card_request, opts)
  p result
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling CreditcardApi->credit_verify_card: #{e}"
end
```

#### Using the credit_verify_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreditVerifyCardResponse>, Integer, Hash)> credit_verify_card_with_http_info(credit_verify_card_request, opts)

```ruby
begin
  # 有効性確認
  data, status_code, headers = api_instance.credit_verify_card_with_http_info(credit_verify_card_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreditVerifyCardResponse>
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling CreditcardApi->credit_verify_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_verify_card_request** | [**CreditVerifyCardRequest**](CreditVerifyCardRequest.md) | カード情報の設定方法は以下のいずれかです。   1. トークン化して設定       - MPクレカトークン         当サービス標準のカード情報トークンです。         詳細は[トークン決済v2 開発ガイド](https://static.mul-pay.jp/doc/card-token/)を参照ください。        - Google Payトークン         Google Pay APIで取得したPayment tokenをbase64エンコードした値です。         当サービスが提供する&#x60;MpToken.js&#x60;を利用してトークンを取得することができます。         詳細は[トークン決済v2 開発ガイド](https://static.mul-pay.jp/doc/card-token/)を参照ください。         Google Payに関する詳細は[デベロッパー向けドキュメント](https://developers.google.com/pay/api)を参照ください。    2. 登録済み情報を設定   登録されているカード情報を利用します。   対象の会員IDが必要です。    3. 直接設定   [PCI DSS](https://ja.wikipedia.org/wiki/PCI_DSS)の認定を得ている加盟店様のみが利用できます。   本番環境で利用するためにはお申し込みが必要です。    3Dセキュア認証利用時には、以下のカード会員の情報を必ず設定してください。   未設定でもエラーにはなりませんが、変更になる可能性があります。     - カード会員の名前       - トークン化して設定         MPクレカトークンの「カード名義人」が利用されます。     - 登録済み情報を設定         登録されているカード情報の「カード名義人」が利用されます。     - 直接設定         &#x60;creditVerificationInformation.card.cardholderName&#x60;が利用されます。   - カード会員のメールアドレスまたは電話番号       &#x60;payer&#x60;に設定した値が利用されます。詳細は本セクション冒頭の「共通パラメーター対応表」を参照してください。      有効性確認後にカード情報を会員に紐づけて登録した場合、設定した「カード名義人」が登録されます。  |  |
| **idempotency_key** | **String** | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。  | [optional] |

### Return type

[**CreditVerifyCardResponse**](CreditVerifyCardResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [Password](../README.md#Password)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## tds2_finalize_charge

> <Tds2FinalizeChargeResponse> tds2_finalize_charge(tds2_finalize_charge_request, opts)

3Dセキュア後の支払い

3Dセキュアに進んだ後に最終的に支払いをするためのAPIです。   Chargeリクエスト時に自動オーソリなしの場合には、コールバック後にこのAPIで支払いを完了してください。 

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

api_instance = GmoPaymentApiClient::CreditcardApi.new
tds2_finalize_charge_request = GmoPaymentApiClient::Tds2FinalizeChargeRequest.new({access_id: 'acdc7d53f7a78f488d8d0997eff99c6f'}) # Tds2FinalizeChargeRequest | 対象の取引のID 
opts = {
  idempotency_key: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。 
}

begin
  # 3Dセキュア後の支払い
  result = api_instance.tds2_finalize_charge(tds2_finalize_charge_request, opts)
  p result
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling CreditcardApi->tds2_finalize_charge: #{e}"
end
```

#### Using the tds2_finalize_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tds2FinalizeChargeResponse>, Integer, Hash)> tds2_finalize_charge_with_http_info(tds2_finalize_charge_request, opts)

```ruby
begin
  # 3Dセキュア後の支払い
  data, status_code, headers = api_instance.tds2_finalize_charge_with_http_info(tds2_finalize_charge_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tds2FinalizeChargeResponse>
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling CreditcardApi->tds2_finalize_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tds2_finalize_charge_request** | [**Tds2FinalizeChargeRequest**](Tds2FinalizeChargeRequest.md) | 対象の取引のID  |  |
| **idempotency_key** | **String** | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。  | [optional] |

### Return type

[**Tds2FinalizeChargeResponse**](Tds2FinalizeChargeResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [Password](../README.md#Password)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## tds2_finalize_verification

> <Tds2FinalizeVerificationResponse> tds2_finalize_verification(tds2_finalize_verification_request, opts)

3Dセキュア後の有効性確認

3Dセキュア認証に進んだ後に最終的に有効性確認とカード登録をするためのAPIです。   有効性リクエスト時に自動オーソリなしの場合には、コールバック後にこのAPIで処理を完了してください。 

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

api_instance = GmoPaymentApiClient::CreditcardApi.new
tds2_finalize_verification_request = GmoPaymentApiClient::Tds2FinalizeVerificationRequest.new({access_id: 'acdc7d53f7a78f488d8d0997eff99c6f'}) # Tds2FinalizeVerificationRequest | 対象の取引のID 
opts = {
  idempotency_key: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。 
}

begin
  # 3Dセキュア後の有効性確認
  result = api_instance.tds2_finalize_verification(tds2_finalize_verification_request, opts)
  p result
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling CreditcardApi->tds2_finalize_verification: #{e}"
end
```

#### Using the tds2_finalize_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tds2FinalizeVerificationResponse>, Integer, Hash)> tds2_finalize_verification_with_http_info(tds2_finalize_verification_request, opts)

```ruby
begin
  # 3Dセキュア後の有効性確認
  data, status_code, headers = api_instance.tds2_finalize_verification_with_http_info(tds2_finalize_verification_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tds2FinalizeVerificationResponse>
rescue GmoPaymentApiClient::ApiError => e
  puts "Error when calling CreditcardApi->tds2_finalize_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tds2_finalize_verification_request** | [**Tds2FinalizeVerificationRequest**](Tds2FinalizeVerificationRequest.md) | 対象の取引のID  |  |
| **idempotency_key** | **String** | 冪等キー   UUIDv4に則った書式でリクエスト毎にユニークとなる最大36桁の値。   詳細は[冪等処理](#tag/idempotence)を参照ください。  | [optional] |

### Return type

[**Tds2FinalizeVerificationResponse**](Tds2FinalizeVerificationResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [Password](../README.md#Password)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

