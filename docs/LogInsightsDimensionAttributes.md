# Fastly::LogInsightsDimensionAttributes

## Class instance methods

### `fastly_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'fastly'

Fastly::LogInsightsDimensionAttributes.fastly_one_of
# =>
# [
#   :'DimensionAttributesCountryStats',
#   :'DimensionAttributesRate'
# ]
```

### build

Find the appropriate object from the `fastly_one_of` list and casts the data into it.

#### Example

```ruby
require 'fastly'

Fastly::LogInsightsDimensionAttributes.build(data)
# => #<DimensionAttributesCountryStats:0x00007fdd4aab02a0>

Fastly::LogInsightsDimensionAttributes.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `DimensionAttributesCountryStats`
- `DimensionAttributesRate`
- `nil` (if no type matches)

