# Fastly::ProductOriginInspectorApi


```ruby
require 'fastly'
api_instance = Fastly::ProductOriginInspectorApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_origin_inspector**](ProductOriginInspectorApi.md#disable_product_origin_inspector) | **DELETE** /enabled-products/v1/origin_inspector/services/{service_id} | Disable product
[**enable_product_origin_inspector**](ProductOriginInspectorApi.md#enable_product_origin_inspector) | **PUT** /enabled-products/v1/origin_inspector/services/{service_id} | Enable product
[**get_product_origin_inspector**](ProductOriginInspectorApi.md#get_product_origin_inspector) | **GET** /enabled-products/v1/origin_inspector/services/{service_id} | Get product enablement status
[**get_services_product_origin_inspector**](ProductOriginInspectorApi.md#get_services_product_origin_inspector) | **GET** /enabled-products/v1/origin_inspector/services | Get services with product enabled


## `disable_product_origin_inspector()`

```ruby
disable_product_origin_inspector(opts) # Disable product
```

Disable the Origin Inspector product on a service.

### Examples

```ruby
api_instance = Fastly::ProductOriginInspectorApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Disable product
  api_instance.disable_product_origin_inspector(opts)
rescue Fastly::ApiError => e
  puts "Error when calling ProductOriginInspectorApi->disable_product_origin_inspector: #{e}"
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
## `enable_product_origin_inspector()`

```ruby
enable_product_origin_inspector(opts): <OriginInspectorResponseBodyEnable> # Enable product
```

Enable the Origin Inspector product on a service.

### Examples

```ruby
api_instance = Fastly::ProductOriginInspectorApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Enable product
  result = api_instance.enable_product_origin_inspector(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductOriginInspectorApi->enable_product_origin_inspector: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**OriginInspectorResponseBodyEnable**](OriginInspectorResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_product_origin_inspector()`

```ruby
get_product_origin_inspector(opts): <OriginInspectorResponseBodyEnable> # Get product enablement status
```

Get the enablement status of the Origin Inspector product on a service.

### Examples

```ruby
api_instance = Fastly::ProductOriginInspectorApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Get product enablement status
  result = api_instance.get_product_origin_inspector(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductOriginInspectorApi->get_product_origin_inspector: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**OriginInspectorResponseBodyEnable**](OriginInspectorResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_services_product_origin_inspector()`

```ruby
get_services_product_origin_inspector: <OriginInspectorResponseBodyGetAllServices> # Get services with product enabled
```

Get all the services which have the Origin Inspector product enabled.

### Examples

```ruby
api_instance = Fastly::ProductOriginInspectorApi.new

begin
  # Get services with product enabled
  result = api_instance.get_services_product_origin_inspector
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductOriginInspectorApi->get_services_product_origin_inspector: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**OriginInspectorResponseBodyGetAllServices**](OriginInspectorResponseBodyGetAllServices.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
