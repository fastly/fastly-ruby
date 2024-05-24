# Fastly::ImageOptimizerDefaultSettingsApi


```ruby
require 'fastly'
api_instance = Fastly::ImageOptimizerDefaultSettingsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_default_settings**](ImageOptimizerDefaultSettingsApi.md#get_default_settings) | **GET** /service/{service_id}/version/{version_id}/image_optimizer_default_settings | Get current Image Optimizer Default Settings
[**update_default_settings**](ImageOptimizerDefaultSettingsApi.md#update_default_settings) | **PATCH** /service/{service_id}/version/{version_id}/image_optimizer_default_settings | Update Image Optimizer Default Settings


## `get_default_settings()`

```ruby
get_default_settings(opts): <DefaultSettingsResponse> # Get current Image Optimizer Default Settings
```

Retrieve the current Image Optimizer default settings. All properties in the response will be populated. 

### Examples

```ruby
api_instance = Fastly::ImageOptimizerDefaultSettingsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # Get current Image Optimizer Default Settings
  result = api_instance.get_default_settings(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ImageOptimizerDefaultSettingsApi->get_default_settings: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**DefaultSettingsResponse**](DefaultSettingsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_default_settings()`

```ruby
update_default_settings(opts): <DefaultSettingsResponse> # Update Image Optimizer Default Settings
```

Update one or more default settings. A minimum of one property is required. The endpoint will respond with the new Image Optimizer default settings, with all properties populated. 

### Examples

```ruby
api_instance = Fastly::ImageOptimizerDefaultSettingsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    default_settings: Fastly::DefaultSettings.new, # DefaultSettings | 
}

begin
  # Update Image Optimizer Default Settings
  result = api_instance.update_default_settings(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ImageOptimizerDefaultSettingsApi->update_default_settings: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **default_settings** | [**DefaultSettings**](DefaultSettings.md) |  | [optional] |

### Return type

[**DefaultSettingsResponse**](DefaultSettingsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
