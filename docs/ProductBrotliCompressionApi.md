# Fastly::ProductBrotliCompressionApi


```ruby
require 'fastly'
api_instance = Fastly::ProductBrotliCompressionApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_brotli_compression**](ProductBrotliCompressionApi.md#disable_product_brotli_compression) | **DELETE** /enabled-products/v1/brotli_compression/services/{service_id} | Disable product
[**enable_product_brotli_compression**](ProductBrotliCompressionApi.md#enable_product_brotli_compression) | **PUT** /enabled-products/v1/brotli_compression/services/{service_id} | Enable product
[**get_product_brotli_compression**](ProductBrotliCompressionApi.md#get_product_brotli_compression) | **GET** /enabled-products/v1/brotli_compression/services/{service_id} | Get product enablement status
[**get_services_product_brotli_compression**](ProductBrotliCompressionApi.md#get_services_product_brotli_compression) | **GET** /enabled-products/v1/brotli_compression/services | Get services with product enabled


## `disable_product_brotli_compression()`

```ruby
disable_product_brotli_compression(opts) # Disable product
```

Disable the Brotli Compression product on a service.

### Examples

```ruby
api_instance = Fastly::ProductBrotliCompressionApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Disable product
  api_instance.disable_product_brotli_compression(opts)
rescue Fastly::ApiError => e
  puts "Error when calling ProductBrotliCompressionApi->disable_product_brotli_compression: #{e}"
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
## `enable_product_brotli_compression()`

```ruby
enable_product_brotli_compression(opts): <BrotliCompressionResponseBodyEnable> # Enable product
```

Enable the Brotli Compression product on a service.

### Examples

```ruby
api_instance = Fastly::ProductBrotliCompressionApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Enable product
  result = api_instance.enable_product_brotli_compression(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductBrotliCompressionApi->enable_product_brotli_compression: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**BrotliCompressionResponseBodyEnable**](BrotliCompressionResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_product_brotli_compression()`

```ruby
get_product_brotli_compression(opts): <BrotliCompressionResponseBodyEnable> # Get product enablement status
```

Get the enablement status of the Brotli Compression product on a service.

### Examples

```ruby
api_instance = Fastly::ProductBrotliCompressionApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Get product enablement status
  result = api_instance.get_product_brotli_compression(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductBrotliCompressionApi->get_product_brotli_compression: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**BrotliCompressionResponseBodyEnable**](BrotliCompressionResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_services_product_brotli_compression()`

```ruby
get_services_product_brotli_compression: <BrotliCompressionResponseBodyGetAllServices> # Get services with product enabled
```

Get all the services which have the Brotli Compression product enabled.

### Examples

```ruby
api_instance = Fastly::ProductBrotliCompressionApi.new

begin
  # Get services with product enabled
  result = api_instance.get_services_product_brotli_compression
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductBrotliCompressionApi->get_services_product_brotli_compression: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**BrotliCompressionResponseBodyGetAllServices**](BrotliCompressionResponseBodyGetAllServices.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
