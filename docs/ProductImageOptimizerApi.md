# Fastly::ProductImageOptimizerApi


```ruby
require 'fastly'
api_instance = Fastly::ProductImageOptimizerApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_image_optimizer**](ProductImageOptimizerApi.md#disable_product_image_optimizer) | **DELETE** /enabled-products/v1/image_optimizer/services/{service_id} | Disable product
[**enable_product_image_optimizer**](ProductImageOptimizerApi.md#enable_product_image_optimizer) | **PUT** /enabled-products/v1/image_optimizer/services/{service_id} | Enable product
[**get_product_image_optimizer**](ProductImageOptimizerApi.md#get_product_image_optimizer) | **GET** /enabled-products/v1/image_optimizer/services/{service_id} | Get product enablement status


## `disable_product_image_optimizer()`

```ruby
disable_product_image_optimizer(opts) # Disable product
```

Disable the Image Optimizer product on a service.

### Examples

```ruby
api_instance = Fastly::ProductImageOptimizerApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Disable product
  api_instance.disable_product_image_optimizer(opts)
rescue Fastly::ApiError => e
  puts "Error when calling ProductImageOptimizerApi->disable_product_image_optimizer: #{e}"
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
## `enable_product_image_optimizer()`

```ruby
enable_product_image_optimizer(opts): <ImageOptimizerResponseBodyEnable> # Enable product
```

Enable the Image Optimizer product on a service.

### Examples

```ruby
api_instance = Fastly::ProductImageOptimizerApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Enable product
  result = api_instance.enable_product_image_optimizer(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductImageOptimizerApi->enable_product_image_optimizer: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**ImageOptimizerResponseBodyEnable**](ImageOptimizerResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_product_image_optimizer()`

```ruby
get_product_image_optimizer(opts): <ImageOptimizerResponseBodyEnable> # Get product enablement status
```

Get the enablement status of the Image Optimizer product on a service.

### Examples

```ruby
api_instance = Fastly::ProductImageOptimizerApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Get product enablement status
  result = api_instance.get_product_image_optimizer(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductImageOptimizerApi->get_product_image_optimizer: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**ImageOptimizerResponseBodyEnable**](ImageOptimizerResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
