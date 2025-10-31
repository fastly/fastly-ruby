# Fastly::ProductApiDiscoveryApi


```ruby
require 'fastly'
api_instance = Fastly::ProductApiDiscoveryApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_api_discovery**](ProductApiDiscoveryApi.md#disable_product_api_discovery) | **DELETE** /enabled-products/v1/api_discovery/services/{service_id} | Disable product
[**enable_product_api_discovery**](ProductApiDiscoveryApi.md#enable_product_api_discovery) | **PUT** /enabled-products/v1/api_discovery/services/{service_id} | Enable product
[**get_product_api_discovery**](ProductApiDiscoveryApi.md#get_product_api_discovery) | **GET** /enabled-products/v1/api_discovery/services/{service_id} | Get product enablement status
[**get_services_product_api_discovery**](ProductApiDiscoveryApi.md#get_services_product_api_discovery) | **GET** /enabled-products/v1/api_discovery/services | Get services with product enabled


## `disable_product_api_discovery()`

```ruby
disable_product_api_discovery(opts) # Disable product
```

Disable the API Discovery product on a service.

### Examples

```ruby
api_instance = Fastly::ProductApiDiscoveryApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Disable product
  api_instance.disable_product_api_discovery(opts)
rescue Fastly::ApiError => e
  puts "Error when calling ProductApiDiscoveryApi->disable_product_api_discovery: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `enable_product_api_discovery()`

```ruby
enable_product_api_discovery(opts): <ApiDiscoveryResponseEnable> # Enable product
```

Enable the API Discovery product on a service.

### Examples

```ruby
api_instance = Fastly::ProductApiDiscoveryApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Enable product
  result = api_instance.enable_product_api_discovery(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductApiDiscoveryApi->enable_product_api_discovery: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**ApiDiscoveryResponseEnable**](ApiDiscoveryResponseEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_product_api_discovery()`

```ruby
get_product_api_discovery(opts): <ApiDiscoveryResponseEnable> # Get product enablement status
```

Get the enablement status of the API Discovery product on a service.

### Examples

```ruby
api_instance = Fastly::ProductApiDiscoveryApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Get product enablement status
  result = api_instance.get_product_api_discovery(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductApiDiscoveryApi->get_product_api_discovery: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**ApiDiscoveryResponseEnable**](ApiDiscoveryResponseEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_services_product_api_discovery()`

```ruby
get_services_product_api_discovery: <ApiDiscoveryResponseBodyGetAllServices> # Get services with product enabled
```

Get all the services for a customer that has the API Discovery product enabled.

### Examples

```ruby
api_instance = Fastly::ProductApiDiscoveryApi.new

begin
  # Get services with product enabled
  result = api_instance.get_services_product_api_discovery
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductApiDiscoveryApi->get_services_product_api_discovery: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**ApiDiscoveryResponseBodyGetAllServices**](ApiDiscoveryResponseBodyGetAllServices.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
