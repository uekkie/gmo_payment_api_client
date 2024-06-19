# GmoPaymentApiClient::CreditVerificationInformation

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'gmo_payment_api_client'

GmoPaymentApiClient::CreditVerificationInformation.openapi_one_of
# =>
# [
#   :'CreditVerificationPanInformation',
#   :'CreditVerificationReferrerInformation',
#   :'CreditVerificationTokenInformation'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'gmo_payment_api_client'

GmoPaymentApiClient::CreditVerificationInformation.build(data)
# => #<CreditVerificationPanInformation:0x00007fdd4aab02a0>

GmoPaymentApiClient::CreditVerificationInformation.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CreditVerificationPanInformation`
- `CreditVerificationReferrerInformation`
- `CreditVerificationTokenInformation`
- `nil` (if no type matches)

