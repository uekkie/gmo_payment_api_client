# GmoPaymentApiClient::Status

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'gmo_payment_api_client'

GmoPaymentApiClient::Status.openapi_one_of
# =>
# [
#   :'StatusCash',
#   :'StatusCredit',
#   :'StatusWallet'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'gmo_payment_api_client'

GmoPaymentApiClient::Status.build(data)
# => #<StatusCash:0x00007fdd4aab02a0>

GmoPaymentApiClient::Status.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `StatusCash`
- `StatusCredit`
- `StatusWallet`
- `nil` (if no type matches)

