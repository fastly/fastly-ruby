# Fastly::IamPermissionsApi


```ruby
require 'fastly'
api_instance = Fastly::IamPermissionsApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_permissions**](IamPermissionsApi.md#list_permissions) | **GET** /permissions | List permissions |


## `list_permissions()`

```ruby
list_permissions: Object # List permissions
```

List all permissions.

### Examples

```ruby
api_instance = Fastly::IamPermissionsApi.new

begin
  # List permissions
  result = api_instance.list_permissions
  p result
rescue Fastly::ApiError => e
  puts "Error when calling IamPermissionsApi->list_permissions: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
