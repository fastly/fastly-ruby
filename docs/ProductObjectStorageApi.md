# Fastly::ProductObjectStorageApi


```ruby
require 'fastly'
api_instance = Fastly::ProductObjectStorageApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_object_storage**](ProductObjectStorageApi.md#disable_product_object_storage) | **DELETE** /enabled-products/v1/object_storage | Disable product
[**enable_object_storage**](ProductObjectStorageApi.md#enable_object_storage) | **PUT** /enabled-products/v1/object_storage | Enable product
[**get_object_storage**](ProductObjectStorageApi.md#get_object_storage) | **GET** /enabled-products/v1/object_storage | Get product enablement status


## `disable_product_object_storage()`

```ruby
disable_product_object_storage # Disable product
```

Disable the Object Storage product

### Examples

```ruby
api_instance = Fastly::ProductObjectStorageApi.new

begin
  # Disable product
  api_instance.disable_product_object_storage
rescue Fastly::ApiError => e
  puts "Error when calling ProductObjectStorageApi->disable_product_object_storage: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `enable_object_storage()`

```ruby
enable_object_storage: <ObjectStorageResponseBodyEnable> # Enable product
```

Enable the Object Storage product

### Examples

```ruby
api_instance = Fastly::ProductObjectStorageApi.new

begin
  # Enable product
  result = api_instance.enable_object_storage
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductObjectStorageApi->enable_object_storage: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**ObjectStorageResponseBodyEnable**](ObjectStorageResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_object_storage()`

```ruby
get_object_storage: <ObjectStorageResponseBodyEnable> # Get product enablement status
```

Get the enablement status of the Object Storage product

### Examples

```ruby
api_instance = Fastly::ProductObjectStorageApi.new

begin
  # Get product enablement status
  result = api_instance.get_object_storage
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductObjectStorageApi->get_object_storage: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**ObjectStorageResponseBodyEnable**](ObjectStorageResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
