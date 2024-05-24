# Fastly::KvStoreItemApi


```ruby
require 'fastly'
api_instance = Fastly::KvStoreItemApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**delete_key_from_store**](KvStoreItemApi.md#delete_key_from_store) | **DELETE** /resources/stores/kv/{store_id}/keys/{key_name} | Delete kv store item.
[**get_keys**](KvStoreItemApi.md#get_keys) | **GET** /resources/stores/kv/{store_id}/keys | List kv store keys.
[**get_value_for_key**](KvStoreItemApi.md#get_value_for_key) | **GET** /resources/stores/kv/{store_id}/keys/{key_name} | Get the value of an kv store item
[**set_value_for_key**](KvStoreItemApi.md#set_value_for_key) | **PUT** /resources/stores/kv/{store_id}/keys/{key_name} | Insert an item into an kv store


## `delete_key_from_store()`

```ruby
delete_key_from_store(opts) # Delete kv store item.
```

Delete an item from an kv store

### Examples

```ruby
api_instance = Fastly::KvStoreItemApi.new
opts = {
    store_id: 'store_id_example', # String | 
    key_name: 'key_name_example', # String | 
}

begin
  # Delete kv store item.
  api_instance.delete_key_from_store(opts)
rescue Fastly::ApiError => e
  puts "Error when calling KvStoreItemApi->delete_key_from_store: #{e}"
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
## `get_keys()`

```ruby
get_keys(opts): <InlineResponse2004> # List kv store keys.
```

List the keys of all items within an kv store.

### Examples

```ruby
api_instance = Fastly::KvStoreItemApi.new
opts = {
    store_id: 'store_id_example', # String | 
    cursor: 'cursor_example', # String | 
    limit: 56, # Integer | 
    prefix: 'prefix_example', # String | 
}

begin
  # List kv store keys.
  result = api_instance.get_keys(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling KvStoreItemApi->get_keys: #{e}"
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
get_value_for_key(opts): String # Get the value of an kv store item
```

Get the value associated with a key.

### Examples

```ruby
api_instance = Fastly::KvStoreItemApi.new
opts = {
    store_id: 'store_id_example', # String | 
    key_name: 'key_name_example', # String | 
}

begin
  # Get the value of an kv store item
  result = api_instance.get_value_for_key(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling KvStoreItemApi->get_value_for_key: #{e}"
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
set_value_for_key(opts): String # Insert an item into an kv store
```

Set a new value for a new or existing key in an kv store.

### Examples

```ruby
api_instance = Fastly::KvStoreItemApi.new
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
  # Insert an item into an kv store
  result = api_instance.set_value_for_key(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling KvStoreItemApi->set_value_for_key: #{e}"
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
