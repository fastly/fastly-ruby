# Fastly::DomainOwnershipsApi


```ruby
require 'fastly'
api_instance = Fastly::DomainOwnershipsApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_domain_ownerships**](DomainOwnershipsApi.md#list_domain_ownerships) | **GET** /domain-ownerships | List domain-ownerships |


## `list_domain_ownerships()`

```ruby
list_domain_ownerships: <InlineResponse2001> # List domain-ownerships
```

List all domain-ownerships.

### Examples

```ruby
api_instance = Fastly::DomainOwnershipsApi.new

begin
  # List domain-ownerships
  result = api_instance.list_domain_ownerships
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DomainOwnershipsApi->list_domain_ownerships: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
