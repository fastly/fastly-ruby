# Fastly::SudoApi


```ruby
require 'fastly'
api_instance = Fastly::SudoApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**request_sudo_access**](SudoApi.md#request_sudo_access) | **POST** /sudo | Request Sudo access |


## `request_sudo_access()`

```ruby
request_sudo_access(opts): <SudoResponse> # Request Sudo access
```

Re-authenticate to allow the provided user to obtain sudo access.

### Examples

```ruby
api_instance = Fastly::SudoApi.new
opts = {
    sudo_request: Fastly::SudoRequest.new({username: 'username_example', password: 'password_example'}), # SudoRequest | 
}

begin
  # Request Sudo access
  result = api_instance.request_sudo_access(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling SudoApi->request_sudo_access: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sudo_request** | [**SudoRequest**](SudoRequest.md) |  | [optional] |

### Return type

[**SudoResponse**](SudoResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
