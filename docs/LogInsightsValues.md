# Fastly::LogInsightsValues

## Class instance methods

### `fastly_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'fastly'

Fastly::LogInsightsValues.fastly_one_of
# =>
# [
#   :'Values503Responses',
#   :'ValuesBandwidth',
#   :'ValuesBrowser',
#   :'ValuesCacheHitRatio',
#   :'ValuesCountryStats',
#   :'ValuesDuration',
#   :'ValuesMisses',
#   :'ValuesRate',
#   :'ValuesRequests',
#   :'ValuesStatusCodes'
# ]
```

### build

Find the appropriate object from the `fastly_one_of` list and casts the data into it.

#### Example

```ruby
require 'fastly'

Fastly::LogInsightsValues.build(data)
# => #<Values503Responses:0x00007fdd4aab02a0>

Fastly::LogInsightsValues.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Values503Responses`
- `ValuesBandwidth`
- `ValuesBrowser`
- `ValuesCacheHitRatio`
- `ValuesCountryStats`
- `ValuesDuration`
- `ValuesMisses`
- `ValuesRate`
- `ValuesRequests`
- `ValuesStatusCodes`
- `nil` (if no type matches)

