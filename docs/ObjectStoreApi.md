# Fastly::ObjectStoreApi


```ruby
require 'fastly'
api_instance = Fastly::ObjectStoreApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_store**](ObjectStoreApi.md#create_store) | **POST** /resources/stores/object | Create an object store. |
| [**delete_store**](ObjectStoreApi.md#delete_store) | **DELETE** /resources/stores/object/{store_id} | Delete an object store. |
| [**get_store**](ObjectStoreApi.md#get_store) | **GET** /resources/stores/object/{store_id} | Describe an object store. |
| [**get_stores**](ObjectStoreApi.md#get_stores) | **GET** /resources/stores/object | List object stores. |


## `create_store()`

```ruby
create_store(opts): <StoreResponse> # Create an object store.
```

Create a new object store.

### Examples

```ruby
api_instance = Fastly::ObjectStoreApi.new
opts = {
    location: 'location_example', # String | 
    store: Fastly::Store.new, # Store | 
}

begin
  # Create an object store.
  result = api_instance.create_store(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ObjectStoreApi->create_store: #{e}"
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
delete_store(opts) # Delete an object store.
```

An object store must be empty before it can be deleted.  Deleting an object store that still contains keys will result in a `409` (Conflict).

### Examples

```ruby
api_instance = Fastly::ObjectStoreApi.new
opts = {
    store_id: 'store_id_example', # String | 
    force: true, # Boolean | 
}

begin
  # Delete an object store.
  api_instance.delete_store(opts)
rescue Fastly::ApiError => e
  puts "Error when calling ObjectStoreApi->delete_store: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **String** |  |  |
| **force** | **Boolean** |  | [optional] |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_store()`

```ruby
get_store(opts): <StoreResponse> # Describe an object store.
```

Get an object store by ID.

### Examples

```ruby
api_instance = Fastly::ObjectStoreApi.new
opts = {
    store_id: 'store_id_example', # String | 
}

begin
  # Describe an object store.
  result = api_instance.get_store(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ObjectStoreApi->get_store: #{e}"
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
get_stores(opts): <InlineResponse2003> # List object stores.
```

Get all stores for a given customer.

### Examples

```ruby
api_instance = Fastly::ObjectStoreApi.new
opts = {
    cursor: 'cursor_example', # String | 
    limit: 56, # Integer | 
}

begin
  # List object stores.
  result = api_instance.get_stores(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ObjectStoreApi->get_stores: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
