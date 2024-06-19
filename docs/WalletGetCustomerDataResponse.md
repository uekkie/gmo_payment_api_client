# GmoPaymentApiClient::WalletGetCustomerDataResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **buyer_id** | **String** | 購入者のID | [optional] |
| **name** | **String** | 購入者の氏名 | [optional] |
| **email** | **String** | 購入者のメールアドレス | [optional] |
| **remarks** | **String** | 備考   Amazon Pay V2ではお支払い情報が設定されます。  | [optional] |
| **shipping_information** | [**CustomerShippingAddress**](CustomerShippingAddress.md) | 配送先情報 | [optional] |
| **billing_information** | [**CustomerBillingAddress**](CustomerBillingAddress.md) | 請求先情報 | [optional] |

## Example

```ruby
require 'gmo_payment_api_client'

instance = GmoPaymentApiClient::WalletGetCustomerDataResponse.new(
  buyer_id: amzn1.account.XXXXXXXXXXXXXXXXXXXXXXXXXXXX,
  name: null,
  email: null,
  remarks: JCB ****1111 (Amazon Pay),
  shipping_information: null,
  billing_information: null
)
```

