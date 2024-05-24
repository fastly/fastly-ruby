# Fastly::GzipApi


```ruby
require 'fastly'
api_instance = Fastly::GzipApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_gzip_config**](GzipApi.md#create_gzip_config) | **POST** /service/{service_id}/version/{version_id}/gzip | Create a gzip configuration
[**delete_gzip_config**](GzipApi.md#delete_gzip_config) | **DELETE** /service/{service_id}/version/{version_id}/gzip/{gzip_name} | Delete a gzip configuration
[**get_gzip_configs**](GzipApi.md#get_gzip_configs) | **GET** /service/{service_id}/version/{version_id}/gzip/{gzip_name} | Get a gzip configuration
[**list_gzip_configs**](GzipApi.md#list_gzip_configs) | **GET** /service/{service_id}/version/{version_id}/gzip | List gzip configurations
[**update_gzip_config**](GzipApi.md#update_gzip_config) | **PUT** /service/{service_id}/version/{version_id}/gzip/{gzip_name} | Update a gzip configuration


## `create_gzip_config()`

```ruby
create_gzip_config(opts): <GzipResponse> # Create a gzip configuration
```

Create a named gzip configuration on a particular service and version.

### Examples

```ruby
api_instance = Fastly::GzipApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    cache_condition: 'cache_condition_example', # String | Name of the cache condition controlling when this configuration applies.
    content_types: 'content_types_example', # String | Space-separated list of content types to compress. If you omit this field a default list will be used.
    extensions: 'extensions_example', # String | Space-separated list of file extensions to compress. If you omit this field a default list will be used.
    name: 'name_example', # String | Name of the gzip configuration.
}

begin
  # Create a gzip configuration
  result = api_instance.create_gzip_config(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling GzipApi->create_gzip_config: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **cache_condition** | **String** | Name of the cache condition controlling when this configuration applies. | [optional] |
| **content_types** | **String** | Space-separated list of content types to compress. If you omit this field a default list will be used. | [optional] |
| **extensions** | **String** | Space-separated list of file extensions to compress. If you omit this field a default list will be used. | [optional] |
| **name** | **String** | Name of the gzip configuration. | [optional] |

### Return type

[**GzipResponse**](GzipResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_gzip_config()`

```ruby
delete_gzip_config(opts): <InlineResponse200> # Delete a gzip configuration
```

Delete a named gzip configuration on a particular service and version.

### Examples

```ruby
api_instance = Fastly::GzipApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    gzip_name: 'gzip_name_example', # String | Name of the gzip configuration.
}

begin
  # Delete a gzip configuration
  result = api_instance.delete_gzip_config(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling GzipApi->delete_gzip_config: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **gzip_name** | **String** | Name of the gzip configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_gzip_configs()`

```ruby
get_gzip_configs(opts): <GzipResponse> # Get a gzip configuration
```

Get the gzip configuration for a particular service, version, and name.

### Examples

```ruby
api_instance = Fastly::GzipApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    gzip_name: 'gzip_name_example', # String | Name of the gzip configuration.
}

begin
  # Get a gzip configuration
  result = api_instance.get_gzip_configs(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling GzipApi->get_gzip_configs: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **gzip_name** | **String** | Name of the gzip configuration. |  |

### Return type

[**GzipResponse**](GzipResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_gzip_configs()`

```ruby
list_gzip_configs(opts): <Array<GzipResponse>> # List gzip configurations
```

List all gzip configurations for a particular service and version.

### Examples

```ruby
api_instance = Fastly::GzipApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List gzip configurations
  result = api_instance.list_gzip_configs(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling GzipApi->list_gzip_configs: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;GzipResponse&gt;**](GzipResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_gzip_config()`

```ruby
update_gzip_config(opts): <GzipResponse> # Update a gzip configuration
```

Update a named gzip configuration on a particular service and version.

### Examples

```ruby
api_instance = Fastly::GzipApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    gzip_name: 'gzip_name_example', # String | Name of the gzip configuration.
    cache_condition: 'cache_condition_example', # String | Name of the cache condition controlling when this configuration applies.
    content_types: 'content_types_example', # String | Space-separated list of content types to compress. If you omit this field a default list will be used.
    extensions: 'extensions_example', # String | Space-separated list of file extensions to compress. If you omit this field a default list will be used.
    name: 'name_example', # String | Name of the gzip configuration.
}

begin
  # Update a gzip configuration
  result = api_instance.update_gzip_config(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling GzipApi->update_gzip_config: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **gzip_name** | **String** | Name of the gzip configuration. |  |
| **cache_condition** | **String** | Name of the cache condition controlling when this configuration applies. | [optional] |
| **content_types** | **String** | Space-separated list of content types to compress. If you omit this field a default list will be used. | [optional] |
| **extensions** | **String** | Space-separated list of file extensions to compress. If you omit this field a default list will be used. | [optional] |
| **name** | **String** | Name of the gzip configuration. | [optional] |

### Return type

[**GzipResponse**](GzipResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
