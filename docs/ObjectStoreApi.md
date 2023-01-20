# Fastly::ObjectStoreApi


```ruby
require 'fastly'
api_instance = Fastly::ObjectStoreApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_store**](ObjectStoreApi.md#create_store) | **POST** /resources/stores/object | Create an object store. |
| [**delete_key_from_store**](ObjectStoreApi.md#delete_key_from_store) | **DELETE** /resources/stores/object/{store_id}/keys/{key_name} | Delete object store key. |
| [**delete_store**](ObjectStoreApi.md#delete_store) | **DELETE** /resources/stores/object/{store_id} | Delete an object store. |
| [**get_keys**](ObjectStoreApi.md#get_keys) | **GET** /resources/stores/object/{store_id}/keys | List object store keys. |
| [**get_store**](ObjectStoreApi.md#get_store) | **GET** /resources/stores/object/{store_id} | Describe an object store. |
| [**get_stores**](ObjectStoreApi.md#get_stores) | **GET** /resources/stores/object | List object stores. |
| [**get_value_for_key**](ObjectStoreApi.md#get_value_for_key) | **GET** /resources/stores/object/{store_id}/keys/{key_name} | Get object store key value. |
| [**set_value_for_key**](ObjectStoreApi.md#set_value_for_key) | **PUT** /resources/stores/object/{store_id}/keys/{key_name} | Insert object store key-value. |


## `create_store()`

```ruby
create_store(opts): <StoreResponse> # Create an object store.
```

Create a new object store.

### Examples

```ruby
api_instance = Fastly::ObjectStoreApi.new
opts = {
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
| **store** | [**Store**](Store.md) |  | [optional] |

### Return type

[**StoreResponse**](StoreResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_key_from_store()`

```ruby
delete_key_from_store(opts) # Delete object store key.
```

Delete a key from a customer store.

### Examples

```ruby
api_instance = Fastly::ObjectStoreApi.new
opts = {
    store_id: 'store_id_example', # String | 
    key_name: 'key_name_example', # String | 
}

begin
  # Delete object store key.
  api_instance.delete_key_from_store(opts)
rescue Fastly::ApiError => e
  puts "Error when calling ObjectStoreApi->delete_key_from_store: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **String** |  |  |
| **key_name** | **String** |  |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_store()`

```ruby
delete_store(opts) # Delete an object store.
```

An object store must be empty before it can be deleted.  Deleting an object store that still contains keys will result in a 409 Conflict.

### Examples

```ruby
api_instance = Fastly::ObjectStoreApi.new
opts = {
    store_id: 'store_id_example', # String | 
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

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_keys()`

```ruby
get_keys(opts): <KeyResponse> # List object store keys.
```

List all keys within an object store.

### Examples

```ruby
api_instance = Fastly::ObjectStoreApi.new
opts = {
    store_id: 'store_id_example', # String | 
    cursor: 'cursor_example', # String | 
    limit: 56, # Integer | 
}

begin
  # List object store keys.
  result = api_instance.get_keys(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ObjectStoreApi->get_keys: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **String** |  |  |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**KeyResponse**](KeyResponse.md)

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
get_stores(opts): <GetStoresResponse> # List object stores.
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

[**GetStoresResponse**](GetStoresResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_value_for_key()`

```ruby
get_value_for_key(opts): File # Get object store key value.
```

Get the value associated with a key.

### Examples

```ruby
api_instance = Fastly::ObjectStoreApi.new
opts = {
    store_id: 'store_id_example', # String | 
    key_name: 'key_name_example', # String | 
}

begin
  # Get object store key value.
  result = api_instance.get_value_for_key(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ObjectStoreApi->get_value_for_key: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **String** |  |  |
| **key_name** | **String** |  |  |

### Return type

**File**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `set_value_for_key()`

```ruby
set_value_for_key(opts): File # Insert object store key-value.
```

Insert a new key-value pair into an object store.

### Examples

```ruby
api_instance = Fastly::ObjectStoreApi.new
opts = {
    store_id: 'store_id_example', # String | 
    key_name: 'key_name_example', # String | 
    body: File.new('/path/to/some/file'), # File | 
}

begin
  # Insert object store key-value.
  result = api_instance.set_value_for_key(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ObjectStoreApi->set_value_for_key: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **String** |  |  |
| **key_name** | **String** |  |  |
| **body** | **File** |  | [optional] |

### Return type

**File**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
