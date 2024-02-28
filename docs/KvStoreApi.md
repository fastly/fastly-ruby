# Fastly::KvStoreApi


```ruby
require 'fastly'
api_instance = Fastly::KvStoreApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_store**](KvStoreApi.md#create_store) | **POST** /resources/stores/kv | Create a KV store. |
| [**delete_store**](KvStoreApi.md#delete_store) | **DELETE** /resources/stores/kv/{store_id} | Delete a KV store. |
| [**get_store**](KvStoreApi.md#get_store) | **GET** /resources/stores/kv/{store_id} | Describe a KV store. |
| [**get_stores**](KvStoreApi.md#get_stores) | **GET** /resources/stores/kv | List KV stores. |


## `create_store()`

```ruby
create_store(opts): <StoreResponse> # Create a KV store.
```

Create a new KV store.

### Examples

```ruby
api_instance = Fastly::KvStoreApi.new
opts = {
    location: 'location_example', # String | 
    store: Fastly::Store.new, # Store | 
}

begin
  # Create a KV store.
  result = api_instance.create_store(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling KvStoreApi->create_store: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** |  | [optional] |
| **store** | [**Store**](Store.md) |  | [optional] |

### Return type

[**StoreResponse**](StoreResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_store()`

```ruby
delete_store(opts) # Delete a KV store.
```

A KV store must be empty before it can be deleted.  Deleting a KV store that still contains keys will result in a `409` (Conflict).

### Examples

```ruby
api_instance = Fastly::KvStoreApi.new
opts = {
    store_id: 'store_id_example', # String | 
}

begin
  # Delete a KV store.
  api_instance.delete_store(opts)
rescue Fastly::ApiError => e
  puts "Error when calling KvStoreApi->delete_store: #{e}"
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
## `get_store()`

```ruby
get_store(opts): <StoreResponse> # Describe a KV store.
```

Get a KV store by ID.

### Examples

```ruby
api_instance = Fastly::KvStoreApi.new
opts = {
    store_id: 'store_id_example', # String | 
}

begin
  # Describe a KV store.
  result = api_instance.get_store(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling KvStoreApi->get_store: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **String** |  |  |

### Return type

[**StoreResponse**](StoreResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_stores()`

```ruby
get_stores(opts): <InlineResponse2003> # List KV stores.
```

Get all stores for a given customer.

### Examples

```ruby
api_instance = Fastly::KvStoreApi.new
opts = {
    cursor: 'cursor_example', # String | 
    limit: 56, # Integer | 
}

begin
  # List KV stores.
  result = api_instance.get_stores(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling KvStoreApi->get_stores: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 1000] |

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
