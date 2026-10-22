# Fastly::ProductAiRuntimeControlApi


```ruby
require 'fastly'
api_instance = Fastly::ProductAiRuntimeControlApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_ai_runtime_control**](ProductAiRuntimeControlApi.md#disable_product_ai_runtime_control) | **DELETE** /enabled-products/v1/ai_runtime_control | Disable product
[**enable_product_ai_runtime_control**](ProductAiRuntimeControlApi.md#enable_product_ai_runtime_control) | **PUT** /enabled-products/v1/ai_runtime_control | Enable product
[**get_product_ai_runtime_control**](ProductAiRuntimeControlApi.md#get_product_ai_runtime_control) | **GET** /enabled-products/v1/ai_runtime_control | Get product enablement status


## `disable_product_ai_runtime_control()`

```ruby
disable_product_ai_runtime_control # Disable product
```

Disable the AI Runtime Control product

### Examples

```ruby
api_instance = Fastly::ProductAiRuntimeControlApi.new

begin
  # Disable product
  api_instance.disable_product_ai_runtime_control
rescue Fastly::ApiError => e
  puts "Error when calling ProductAiRuntimeControlApi->disable_product_ai_runtime_control: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `enable_product_ai_runtime_control()`

```ruby
enable_product_ai_runtime_control: <AiRuntimeControlResponseBodyEnable> # Enable product
```

Enable the AI Runtime Control product

### Examples

```ruby
api_instance = Fastly::ProductAiRuntimeControlApi.new

begin
  # Enable product
  result = api_instance.enable_product_ai_runtime_control
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductAiRuntimeControlApi->enable_product_ai_runtime_control: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**AiRuntimeControlResponseBodyEnable**](AiRuntimeControlResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_product_ai_runtime_control()`

```ruby
get_product_ai_runtime_control: <AiRuntimeControlResponseBodyEnable> # Get product enablement status
```

Get the enablement status of the AI Runtime Control product

### Examples

```ruby
api_instance = Fastly::ProductAiRuntimeControlApi.new

begin
  # Get product enablement status
  result = api_instance.get_product_ai_runtime_control
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductAiRuntimeControlApi->get_product_ai_runtime_control: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**AiRuntimeControlResponseBodyEnable**](AiRuntimeControlResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
