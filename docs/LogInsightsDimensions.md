# Fastly::LogInsightsDimensions

## Class instance methods

### `fastly_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'fastly'

Fastly::LogInsightsDimensions.fastly_one_of
# =>
# [
#   :'DimensionBrowser',
#   :'DimensionContentType',
#   :'DimensionCountry',
#   :'DimensionDevice',
#   :'DimensionOs',
#   :'DimensionResponse',
#   :'DimensionStatusCode',
#   :'DimensionUrl'
# ]
```

### build

Find the appropriate object from the `fastly_one_of` list and casts the data into it.

#### Example

```ruby
require 'fastly'

Fastly::LogInsightsDimensions.build(data)
# => #<DimensionBrowser:0x00007fdd4aab02a0>

Fastly::LogInsightsDimensions.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `DimensionBrowser`
- `DimensionContentType`
- `DimensionCountry`
- `DimensionDevice`
- `DimensionOs`
- `DimensionResponse`
- `DimensionStatusCode`
- `DimensionUrl`
- `nil` (if no type matches)

