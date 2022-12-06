# Fastly::SettingsApi


```ruby
require 'fastly'
api_instance = Fastly::SettingsApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_service_settings**](SettingsApi.md#get_service_settings) | **GET** /service/{service_id}/version/{version_id}/settings | Get service settings |


## `get_service_settings()`

```ruby
get_service_settings(opts): <SettingsResponse> # Get service settings
```

Get the settings for a particular service and version.

### Examples

```ruby
api_instance = Fastly::SettingsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # Get service settings
  result = api_instance.get_service_settings(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling SettingsApi->get_service_settings: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**SettingsResponse**](SettingsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
