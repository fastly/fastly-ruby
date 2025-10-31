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
[**kv_store_delete_item**](KvStoreItemApi.md#kv_store_delete_item) | **DELETE** /resources/stores/kv/{store_id}/keys/{key} | Delete an item.
[**kv_store_get_item**](KvStoreItemApi.md#kv_store_get_item) | **GET** /resources/stores/kv/{store_id}/keys/{key} | Get an item.
[**kv_store_list_item_keys**](KvStoreItemApi.md#kv_store_list_item_keys) | **GET** /resources/stores/kv/{store_id}/keys | List item keys.
[**kv_store_upsert_item**](KvStoreItemApi.md#kv_store_upsert_item) | **PUT** /resources/stores/kv/{store_id}/keys/{key} | Insert or update an item.


## `kv_store_delete_item()`

```ruby
kv_store_delete_item(opts) # Delete an item.
```

Delete an item.

### Examples

```ruby
api_instance = Fastly::KvStoreItemApi.new
opts = {
    store_id: 'store_id_example', # String | 
    key: 'key_example', # String | 
    if_generation_match: 56, # Integer | 
    force: true, # Boolean | 
}

begin
  # Delete an item.
  api_instance.kv_store_delete_item(opts)
rescue Fastly::ApiError => e
  puts "Error when calling KvStoreItemApi->kv_store_delete_item: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **String** |  |  |
| **key** | **String** |  |  |
| **if_generation_match** | **Integer** |  | [optional] |
| **force** | **Boolean** |  | [optional][default to false] |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `kv_store_get_item()`

```ruby
kv_store_get_item(opts): String # Get an item.
```

Get an item, including its value, metadata (if any), and generation marker.

### Examples

```ruby
api_instance = Fastly::KvStoreItemApi.new
opts = {
    store_id: 'store_id_example', # String | 
    key: 'key_example', # String | 
}

begin
  # Get an item.
  result = api_instance.kv_store_get_item(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling KvStoreItemApi->kv_store_get_item: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **String** |  |  |
| **key** | **String** |  |  |

### Return type

**String**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `kv_store_list_item_keys()`

```ruby
kv_store_list_item_keys(opts): <InlineResponse2007> # List item keys.
```

Lists the matching item keys (or all item keys, if no prefix is supplied).

### Examples

```ruby
api_instance = Fastly::KvStoreItemApi.new
opts = {
    store_id: 'store_id_example', # String | 
    cursor: 'cursor_example', # String | 
    limit: 56, # Integer | 
    prefix: 'prefix_example', # String | 
    consistency: 'strong', # String | 
}

begin
  # List item keys.
  result = api_instance.kv_store_list_item_keys(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling KvStoreItemApi->kv_store_list_item_keys: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **String** |  |  |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |
| **prefix** | **String** |  | [optional] |
| **consistency** | **String** |  | [optional][default to &#39;strong&#39;] |

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `kv_store_upsert_item()`

```ruby
kv_store_upsert_item(opts) # Insert or update an item.
```

Inserts or updates an item's value and metadata.

### Examples

```ruby
api_instance = Fastly::KvStoreItemApi.new
opts = {
    store_id: 'store_id_example', # String | 
    key: 'key_example', # String | 
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
  # Insert or update an item.
  api_instance.kv_store_upsert_item(opts)
rescue Fastly::ApiError => e
  puts "Error when calling KvStoreItemApi->kv_store_upsert_item: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **String** |  |  |
| **key** | **String** |  |  |
| **if_generation_match** | **Integer** |  | [optional] |
| **time_to_live_sec** | **Integer** |  | [optional] |
| **metadata** | **String** |  | [optional] |
| **add** | **Boolean** |  | [optional][default to false] |
| **append** | **Boolean** |  | [optional][default to false] |
| **prepend** | **Boolean** |  | [optional][default to false] |
| **background_fetch** | **Boolean** |  | [optional][default to false] |
| **body** | **String** |  | [optional] |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
