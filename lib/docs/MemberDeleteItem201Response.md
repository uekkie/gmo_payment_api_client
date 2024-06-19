# GmoPaymentApiClient::MemberDeleteItem201Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'gmo_payment_api_client'

GmoPaymentApiClient::MemberDeleteItem201Response.openapi_one_of
# =>
# [
#   :'MemberDeleteItemResponseCard',
#   :'MemberDeleteItemResponseWallet'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'gmo_payment_api_client'

GmoPaymentApiClient::MemberDeleteItem201Response.build(data)
# => #<MemberDeleteItemResponseCard:0x00007fdd4aab02a0>

GmoPaymentApiClient::MemberDeleteItem201Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `MemberDeleteItemResponseCard`
- `MemberDeleteItemResponseWallet`
- `nil` (if no type matches)

