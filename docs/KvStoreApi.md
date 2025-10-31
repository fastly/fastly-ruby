# Fastly::KvStoreApi


```ruby
require 'fastly'
api_instance = Fastly::KvStoreApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**kv_store_create**](KvStoreApi.md#kv_store_create) | **POST** /resources/stores/kv | Create a KV store.
[**kv_store_delete**](KvStoreApi.md#kv_store_delete) | **DELETE** /resources/stores/kv/{store_id} | Delete a KV store.
[**kv_store_get**](KvStoreApi.md#kv_store_get) | **GET** /resources/stores/kv/{store_id} | Describe a KV store.
[**kv_store_list**](KvStoreApi.md#kv_store_list) | **GET** /resources/stores/kv | List all KV stores.


## `kv_store_create()`

```ruby
kv_store_create(opts): <KvStoreDetails> # Create a KV store.
```

Create a KV store.

### Examples

```ruby
api_instance = Fastly::KvStoreApi.new
opts = {
    location: 'US', # String | 
    kv_store_request_create: Fastly::KvStoreRequestCreate.new({name: 'name_example'}), # KvStoreRequestCreate | 
}

begin
  # Create a KV store.
  result = api_instance.kv_store_create(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling KvStoreApi->kv_store_create: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** |  | [optional] |
| **kv_store_request_create** | [**KvStoreRequestCreate**](KvStoreRequestCreate.md) |  | [optional] |

### Return type

[**KvStoreDetails**](KvStoreDetails.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `kv_store_delete()`

```ruby
kv_store_delete(opts) # Delete a KV store.
```

A KV store must be empty before it can be deleted. Attempting to delete a KV store that contains items will result in a response with a `409` status code.

### Examples

```ruby
api_instance = Fastly::KvStoreApi.new
opts = {
    store_id: 'store_id_example', # String | 
}

begin
  # Delete a KV store.
  api_instance.kv_store_delete(opts)
rescue Fastly::ApiError => e
  puts "Error when calling KvStoreApi->kv_store_delete: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **String** |  |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `kv_store_get()`

```ruby
kv_store_get(opts): <KvStoreDetails> # Describe a KV store.
```

Get details of a KV store.

### Examples

```ruby
api_instance = Fastly::KvStoreApi.new
opts = {
    store_id: 'store_id_example', # String | 
}

begin
  # Describe a KV store.
  result = api_instance.kv_store_get(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling KvStoreApi->kv_store_get: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **String** |  |  |

### Return type

[**KvStoreDetails**](KvStoreDetails.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `kv_store_list()`

```ruby
kv_store_list(opts): <InlineResponse2006> # List all KV stores.
```

List all KV stores.

### Examples

```ruby
api_instance = Fastly::KvStoreApi.new
opts = {
    cursor: 'cursor_example', # String | 
    limit: 56, # Integer | 
    name: 'name_example', # String | Returns a one-element array containing the details for the named KV store.
}

begin
  # List all KV stores.
  result = api_instance.kv_store_list(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling KvStoreApi->kv_store_list: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 1000] |
| **name** | **String** | Returns a one-element array containing the details for the named KV store. | [optional] |

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
