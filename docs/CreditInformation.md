# GmoPaymentApiClient::CreditInformation

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'gmo_payment_api_client'

GmoPaymentApiClient::CreditInformation.openapi_one_of
# =>
# [
#   :'CreditPanInformation',
#   :'CreditTokenInformation'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'gmo_payment_api_client'

GmoPaymentApiClient::CreditInformation.build(data)
# => #<CreditPanInformation:0x00007fdd4aab02a0>

GmoPaymentApiClient::CreditInformation.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CreditPanInformation`
- `CreditTokenInformation`
- `nil` (if no type matches)

