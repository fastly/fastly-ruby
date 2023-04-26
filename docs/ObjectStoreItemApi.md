# Fastly::ObjectStoreItemApi


```ruby
require 'fastly'
api_instance = Fastly::ObjectStoreItemApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_key_from_store**](ObjectStoreItemApi.md#delete_key_from_store) | **DELETE** /resources/stores/object/{store_id}/keys/{key_name} | Delete object store item. |
| [**get_keys**](ObjectStoreItemApi.md#get_keys) | **GET** /resources/stores/object/{store_id}/keys | List object store keys. |
| [**get_value_for_key**](ObjectStoreItemApi.md#get_value_for_key) | **GET** /resources/stores/object/{store_id}/keys/{key_name} | Get the value of an object store item |
| [**set_value_for_key**](ObjectStoreItemApi.md#set_value_for_key) | **PUT** /resources/stores/object/{store_id}/keys/{key_name} | Insert an item into an object store |


## `delete_key_from_store()`

```ruby
delete_key_from_store(opts) # Delete object store item.
```

Delete an item from an object store

### Examples

```ruby
api_instance = Fastly::ObjectStoreItemApi.new
opts = {
    store_id: 'store_id_example', # String | 
    key_name: 'key_name_example', # String | 
    force: true, # Boolean | 
}

begin
  # Delete object store item.
  api_instance.delete_key_from_store(opts)
rescue Fastly::ApiError => e
  puts "Error when calling ObjectStoreItemApi->delete_key_from_store: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **String** |  |  |
| **key_name** | **String** |  |  |
| **force** | **Boolean** |  | [optional] |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_keys()`

```ruby
get_keys(opts): <InlineResponse2004> # List object store keys.
```

List the keys of all items within an object store.

### Examples

```ruby
api_instance = Fastly::ObjectStoreItemApi.new
opts = {
    store_id: 'store_id_example', # String | 
    cursor: 'cursor_example', # String | 
    limit: 56, # Integer | 
    prefix: 'prefix_example', # String | 
}

begin
  # List object store keys.
  result = api_instance.get_keys(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ObjectStoreItemApi->get_keys: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **String** |  |  |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |
| **prefix** | **String** |  | [optional] |

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_value_for_key()`

```ruby
get_value_for_key(opts): String # Get the value of an object store item
```

Get the value associated with a key.

### Examples

```ruby
api_instance = Fastly::ObjectStoreItemApi.new
opts = {
    store_id: 'store_id_example', # String | 
    key_name: 'key_name_example', # String | 
}

begin
  # Get the value of an object store item
  result = api_instance.get_value_for_key(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ObjectStoreItemApi->get_value_for_key: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **String** |  |  |
| **key_name** | **String** |  |  |

### Return type

**String**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `set_value_for_key()`

```ruby
set_value_for_key(opts): String # Insert an item into an object store
```

Set a new value for a new or existing key in an object store.

### Examples

```ruby
api_instance = Fastly::ObjectStoreItemApi.new
opts = {
    store_id: 'store_id_example', # String | 
    key_name: 'key_name_example', # String | 
    if_generation_match: 56, # Integer | 
    time_to_live_sec: 56, # Integer | 
    metadata: 'metadata_example', # String | 
    add: true, # Boolean | 
    append: true, # Boolean | 
    prepend: true, # Boolean | 
    background_fetch: true, # Boolean | 
    body: 'BYTE_ARRAY_DATA_HERE', # String | 
}

begin
  # Insert an item into an object store
  result = api_instance.set_value_for_key(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ObjectStoreItemApi->set_value_for_key: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **String** |  |  |
| **key_name** | **String** |  |  |
| **if_generation_match** | **Integer** |  | [optional] |
| **time_to_live_sec** | **Integer** |  | [optional] |
| **metadata** | **String** |  | [optional] |
| **add** | **Boolean** |  | [optional] |
| **append** | **Boolean** |  | [optional] |
| **prepend** | **Boolean** |  | [optional] |
| **background_fetch** | **Boolean** |  | [optional] |
| **body** | **String** |  | [optional] |

### Return type

**String**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
