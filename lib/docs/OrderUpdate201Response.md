# GmoPaymentApiClient::OrderUpdate201Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'gmo_payment_api_client'

GmoPaymentApiClient::OrderUpdate201Response.openapi_one_of
# =>
# [
#   :'OrderUpdateResponseCredit',
#   :'OrderUpdateResponseWallet'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'gmo_payment_api_client'

GmoPaymentApiClient::OrderUpdate201Response.build(data)
# => #<OrderUpdateResponseCredit:0x00007fdd4aab02a0>

GmoPaymentApiClient::OrderUpdate201Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `OrderUpdateResponseCredit`
- `OrderUpdateResponseWallet`
- `nil` (if no type matches)

