# GmoPaymentApiClient::OrderCapture201Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'gmo_payment_api_client'

GmoPaymentApiClient::OrderCapture201Response.openapi_one_of
# =>
# [
#   :'OrderCaptureResponseCredit',
#   :'OrderCaptureResponseWallet'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'gmo_payment_api_client'

GmoPaymentApiClient::OrderCapture201Response.build(data)
# => #<OrderCaptureResponseCredit:0x00007fdd4aab02a0>

GmoPaymentApiClient::OrderCapture201Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `OrderCaptureResponseCredit`
- `OrderCaptureResponseWallet`
- `nil` (if no type matches)

