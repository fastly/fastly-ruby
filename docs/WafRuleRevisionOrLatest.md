# Fastly::WafRuleRevisionOrLatest

## Class instance methods

### `fastly_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'fastly'

Fastly::WafRuleRevisionOrLatest.fastly_one_of
# =>
# [
#   :'Float',
#   :'String'
# ]
```

### build

Find the appropriate object from the `fastly_one_of` list and casts the data into it.

#### Example

```ruby
require 'fastly'

Fastly::WafRuleRevisionOrLatest.build(data)
# => #<Float:0x00007fdd4aab02a0>

Fastly::WafRuleRevisionOrLatest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Float`
- `String`
- `nil` (if no type matches)

