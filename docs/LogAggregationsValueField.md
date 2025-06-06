# Fastly::LogAggregationsValueField

## Class instance methods

### `fastly_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'fastly'

Fastly::LogAggregationsValueField.fastly_one_of
# =>
# [
#   :'Array<Float>',
#   :'Array<Integer>',
#   :'Array<String>',
#   :'Boolean',
#   :'Float',
#   :'Integer',
#   :'String'
# ]
```

### build

Find the appropriate object from the `fastly_one_of` list and casts the data into it.

#### Example

```ruby
require 'fastly'

Fastly::LogAggregationsValueField.build(data)
# => #<Array<Float>:0x00007fdd4aab02a0>

Fastly::LogAggregationsValueField.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Array<Float>`
- `Array<Integer>`
- `Array<String>`
- `Boolean`
- `Float`
- `Integer`
- `String`
- `nil` (if no type matches)

