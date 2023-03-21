# Fastly::EnabledProductsApi


```ruby
require 'fastly'
api_instance = Fastly::EnabledProductsApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**disable_product**](EnabledProductsApi.md#disable_product) | **DELETE** /enabled-products/{product_id}/services/{service_id} | Disable a product |
| [**enable_product**](EnabledProductsApi.md#enable_product) | **PUT** /enabled-products/{product_id}/services/{service_id} | Enable a product |
| [**get_enabled_product**](EnabledProductsApi.md#get_enabled_product) | **GET** /enabled-products/{product_id}/services/{service_id} | Get enabled product |


## `disable_product()`

```ruby
disable_product(opts) # Disable a product
```

Disable a product on a service. Supported product IDs: `brotli_compression`,`domain_inspector`,`fanout`,`image_optimizer`,`origin_inspector`, and `websockets`.

### Examples

```ruby
api_instance = Fastly::EnabledProductsApi.new
opts = {
    product_id: 'origin_inspector', # String | 
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Disable a product
  api_instance.disable_product(opts)
rescue Fastly::ApiError => e
  puts "Error when calling EnabledProductsApi->disable_product: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `enable_product()`

```ruby
enable_product(opts): <EnabledProductResponse> # Enable a product
```

Enable a product on a service. Supported product IDs: `brotli_compression`,`domain_inspector`,`fanout`,`image_optimizer`,`origin_inspector`, and `websockets`.

### Examples

```ruby
api_instance = Fastly::EnabledProductsApi.new
opts = {
    product_id: 'origin_inspector', # String | 
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Enable a product
  result = api_instance.enable_product(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling EnabledProductsApi->enable_product: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**EnabledProductResponse**](EnabledProductResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_enabled_product()`

```ruby
get_enabled_product(opts): <EnabledProductResponse> # Get enabled product
```

Get enabled product on a service. Supported product IDs: `brotli_compression`,`domain_inspector`,`fanout`,`image_optimizer`,`origin_inspector`, and `websockets`.

### Examples

```ruby
api_instance = Fastly::EnabledProductsApi.new
opts = {
    product_id: 'origin_inspector', # String | 
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Get enabled product
  result = api_instance.get_enabled_product(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling EnabledProductsApi->get_enabled_product: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**EnabledProductResponse**](EnabledProductResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
