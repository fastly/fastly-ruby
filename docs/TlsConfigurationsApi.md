# Fastly::TlsConfigurationsApi


```ruby
require 'fastly'
api_instance = Fastly::TlsConfigurationsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_tls_config**](TlsConfigurationsApi.md#get_tls_config) | **GET** /tls/configurations/{tls_configuration_id} | Get a TLS configuration
[**list_tls_configs**](TlsConfigurationsApi.md#list_tls_configs) | **GET** /tls/configurations | List TLS configurations
[**update_tls_config**](TlsConfigurationsApi.md#update_tls_config) | **PATCH** /tls/configurations/{tls_configuration_id} | Update a TLS configuration


## `get_tls_config()`

```ruby
get_tls_config(opts): <TlsConfigurationResponse> # Get a TLS configuration
```

Show a TLS configuration.

### Examples

```ruby
api_instance = Fastly::TlsConfigurationsApi.new
opts = {
    tls_configuration_id: 'tls_configuration_id_example', # String | Alphanumeric string identifying a TLS configuration.
    include: 'dns_records', # String | Include related objects. Optional, comma-separated values. Permitted values: `dns_records`. 
}

begin
  # Get a TLS configuration
  result = api_instance.get_tls_config(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TlsConfigurationsApi->get_tls_config: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Include related objects. Optional, comma-separated values. Permitted values: `dns_records`.  | [optional] |
| **tls_configuration_id** | **String** | Alphanumeric string identifying a TLS configuration. |  |

### Return type

[**TlsConfigurationResponse**](TlsConfigurationResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_tls_configs()`

```ruby
list_tls_configs(opts): <TlsConfigurationsResponse> # List TLS configurations
```

List all TLS configurations.

### Examples

```ruby
api_instance = Fastly::TlsConfigurationsApi.new
opts = {
    filter_bulk: 'filter_bulk_example', # String | Optionally filters by the bulk attribute.
    include: 'dns_records', # String | Include related objects. Optional, comma-separated values. Permitted values: `dns_records`. 
    page_number: 1, # Integer | Current page.
    page_size: 20, # Integer | Number of records per page.
}

begin
  # List TLS configurations
  result = api_instance.list_tls_configs(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TlsConfigurationsApi->list_tls_configs: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_bulk** | **String** | Optionally filters by the bulk attribute. | [optional] |
| **include** | **String** | Include related objects. Optional, comma-separated values. Permitted values: `dns_records`.  | [optional] |
| **page_number** | **Integer** | Current page. | [optional] |
| **page_size** | **Integer** | Number of records per page. | [optional][default to 20] |

### Return type

[**TlsConfigurationsResponse**](TlsConfigurationsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_tls_config()`

```ruby
update_tls_config(opts): <TlsConfigurationResponse> # Update a TLS configuration
```

Update a TLS configuration.

### Examples

```ruby
api_instance = Fastly::TlsConfigurationsApi.new
opts = {
    tls_configuration_id: 'tls_configuration_id_example', # String | Alphanumeric string identifying a TLS configuration.
    tls_configuration: Fastly::TlsConfiguration.new, # TlsConfiguration | 
}

begin
  # Update a TLS configuration
  result = api_instance.update_tls_config(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TlsConfigurationsApi->update_tls_config: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tls_configuration_id** | **String** | Alphanumeric string identifying a TLS configuration. |  |
| **tls_configuration** | [**TlsConfiguration**](TlsConfiguration.md) |  | [optional] |

### Return type

[**TlsConfigurationResponse**](TlsConfigurationResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
