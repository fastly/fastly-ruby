# Fastly::ProductKvStoreApi


```ruby
require 'fastly'
api_instance = Fastly::ProductKvStoreApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_kv_store**](ProductKvStoreApi.md#disable_product_kv_store) | **DELETE** /enabled-products/v1/kv_store | Disable product
[**enable_kv_store**](ProductKvStoreApi.md#enable_kv_store) | **PUT** /enabled-products/v1/kv_store | Enable product
[**get_kv_store**](ProductKvStoreApi.md#get_kv_store) | **GET** /enabled-products/v1/kv_store | Get product enablement status


## `disable_product_kv_store()`

```ruby
disable_product_kv_store # Disable product
```

Disable the KV Store product

### Examples

```ruby
api_instance = Fastly::ProductKvStoreApi.new

begin
  # Disable product
  api_instance.disable_product_kv_store
rescue Fastly::ApiError => e
  puts "Error when calling ProductKvStoreApi->disable_product_kv_store: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `enable_kv_store()`

```ruby
enable_kv_store: <KvStoreResponseBodyEnable> # Enable product
```

Enable the KV Store product

### Examples

```ruby
api_instance = Fastly::ProductKvStoreApi.new

begin
  # Enable product
  result = api_instance.enable_kv_store
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductKvStoreApi->enable_kv_store: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**KvStoreResponseBodyEnable**](KvStoreResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_kv_store()`

```ruby
get_kv_store: <KvStoreResponseBodyEnable> # Get product enablement status
```

Get the enablement status of the KV Store product

### Examples

```ruby
api_instance = Fastly::ProductKvStoreApi.new

begin
  # Get product enablement status
  result = api_instance.get_kv_store
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductKvStoreApi->get_kv_store: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**KvStoreResponseBodyEnable**](KvStoreResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
