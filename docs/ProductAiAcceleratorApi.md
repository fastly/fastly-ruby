# Fastly::ProductAiAcceleratorApi


```ruby
require 'fastly'
api_instance = Fastly::ProductAiAcceleratorApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_ai_accelerator**](ProductAiAcceleratorApi.md#disable_product_ai_accelerator) | **DELETE** /enabled-products/v1/ai_accelerator | Disable product
[**enable_ai_accelerator**](ProductAiAcceleratorApi.md#enable_ai_accelerator) | **PUT** /enabled-products/v1/ai_accelerator | Enable product
[**get_ai_accelerator**](ProductAiAcceleratorApi.md#get_ai_accelerator) | **GET** /enabled-products/v1/ai_accelerator | Get product enablement status


## `disable_product_ai_accelerator()`

```ruby
disable_product_ai_accelerator # Disable product
```

Disable the AI Accelerator product

### Examples

```ruby
api_instance = Fastly::ProductAiAcceleratorApi.new

begin
  # Disable product
  api_instance.disable_product_ai_accelerator
rescue Fastly::ApiError => e
  puts "Error when calling ProductAiAcceleratorApi->disable_product_ai_accelerator: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `enable_ai_accelerator()`

```ruby
enable_ai_accelerator: <AiAcceleratorResponseBodyEnable> # Enable product
```

Enable the AI Accelerator product

### Examples

```ruby
api_instance = Fastly::ProductAiAcceleratorApi.new

begin
  # Enable product
  result = api_instance.enable_ai_accelerator
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductAiAcceleratorApi->enable_ai_accelerator: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**AiAcceleratorResponseBodyEnable**](AiAcceleratorResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_ai_accelerator()`

```ruby
get_ai_accelerator: <AiAcceleratorResponseBodyEnable> # Get product enablement status
```

Get the enablement status of the AI Accelerator product

### Examples

```ruby
api_instance = Fastly::ProductAiAcceleratorApi.new

begin
  # Get product enablement status
  result = api_instance.get_ai_accelerator
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductAiAcceleratorApi->get_ai_accelerator: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**AiAcceleratorResponseBodyEnable**](AiAcceleratorResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
