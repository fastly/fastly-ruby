# Fastly::ConfigStoreItemApi


```ruby
require 'fastly'
api_instance = Fastly::ConfigStoreItemApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bulk_update_config_store_item**](ConfigStoreItemApi.md#bulk_update_config_store_item) | **PATCH** /resources/stores/config/{config_store_id}/items | Update multiple entries in a config store |
| [**create_config_store_item**](ConfigStoreItemApi.md#create_config_store_item) | **POST** /resources/stores/config/{config_store_id}/item | Create an entry in a config store |
| [**delete_config_store_item**](ConfigStoreItemApi.md#delete_config_store_item) | **DELETE** /resources/stores/config/{config_store_id}/item/{config_store_item_key} | Delete an item from a config store |
| [**get_config_store_item**](ConfigStoreItemApi.md#get_config_store_item) | **GET** /resources/stores/config/{config_store_id}/item/{config_store_item_key} | Get an item from a config store |
| [**list_config_store_items**](ConfigStoreItemApi.md#list_config_store_items) | **GET** /resources/stores/config/{config_store_id}/items | List items in a config store |
| [**update_config_store_item**](ConfigStoreItemApi.md#update_config_store_item) | **PATCH** /resources/stores/config/{config_store_id}/item/{config_store_item_key} | Update an entry in a config store |
| [**upsert_config_store_item**](ConfigStoreItemApi.md#upsert_config_store_item) | **PUT** /resources/stores/config/{config_store_id}/item/{config_store_item_key} | Insert or update an entry in a config store |


## `bulk_update_config_store_item()`

```ruby
bulk_update_config_store_item(opts): <InlineResponse200> # Update multiple entries in a config store
```

Add multiple key-value pairs to an individual config store, specified by ID.

### Examples

```ruby
api_instance = Fastly::ConfigStoreItemApi.new
opts = {
    config_store_id: 'config_store_id_example', # String | An alphanumeric string identifying the config store.
    bulk_update_config_store_list_request: Fastly::BulkUpdateConfigStoreListRequest.new, # BulkUpdateConfigStoreListRequest | 
}

begin
  # Update multiple entries in a config store
  result = api_instance.bulk_update_config_store_item(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ConfigStoreItemApi->bulk_update_config_store_item: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_store_id** | **String** | An alphanumeric string identifying the config store. |  |
| **bulk_update_config_store_list_request** | [**BulkUpdateConfigStoreListRequest**](BulkUpdateConfigStoreListRequest.md) |  | [optional] |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `create_config_store_item()`

```ruby
create_config_store_item(opts): <ConfigStoreItemResponse> # Create an entry in a config store
```

Add a single key-value pair to an individual config store, specified by ID.

### Examples

```ruby
api_instance = Fastly::ConfigStoreItemApi.new
opts = {
    config_store_id: 'config_store_id_example', # String | An alphanumeric string identifying the config store.
    item_key: 'item_key_example', # String | Item key, maximum 256 characters.
    item_value: 'item_value_example', # String | Item value, maximum 8000 characters.
}

begin
  # Create an entry in a config store
  result = api_instance.create_config_store_item(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ConfigStoreItemApi->create_config_store_item: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_store_id** | **String** | An alphanumeric string identifying the config store. |  |
| **item_key** | **String** | Item key, maximum 256 characters. | [optional] |
| **item_value** | **String** | Item value, maximum 8000 characters. | [optional] |

### Return type

[**ConfigStoreItemResponse**](ConfigStoreItemResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_config_store_item()`

```ruby
delete_config_store_item(opts): <InlineResponse200> # Delete an item from a config store
```

Delete an entry in a config store given a config store ID, and item key.

### Examples

```ruby
api_instance = Fastly::ConfigStoreItemApi.new
opts = {
    config_store_id: 'config_store_id_example', # String | An alphanumeric string identifying the config store.
    config_store_item_key: 'config_store_item_key_example', # String | Item key, maximum 256 characters.
}

begin
  # Delete an item from a config store
  result = api_instance.delete_config_store_item(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ConfigStoreItemApi->delete_config_store_item: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_store_id** | **String** | An alphanumeric string identifying the config store. |  |
| **config_store_item_key** | **String** | Item key, maximum 256 characters. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_config_store_item()`

```ruby
get_config_store_item(opts): <ConfigStoreItemResponse> # Get an item from a config store
```

Retrieve a config store entry given a config store ID and item key.

### Examples

```ruby
api_instance = Fastly::ConfigStoreItemApi.new
opts = {
    config_store_id: 'config_store_id_example', # String | An alphanumeric string identifying the config store.
    config_store_item_key: 'config_store_item_key_example', # String | Item key, maximum 256 characters.
}

begin
  # Get an item from a config store
  result = api_instance.get_config_store_item(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ConfigStoreItemApi->get_config_store_item: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_store_id** | **String** | An alphanumeric string identifying the config store. |  |
| **config_store_item_key** | **String** | Item key, maximum 256 characters. |  |

### Return type

[**ConfigStoreItemResponse**](ConfigStoreItemResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_config_store_items()`

```ruby
list_config_store_items(opts): <Array<ConfigStoreItemResponse>> # List items in a config store
```

List the key-value pairs associated with a given config store ID.

### Examples

```ruby
api_instance = Fastly::ConfigStoreItemApi.new
opts = {
    config_store_id: 'config_store_id_example', # String | An alphanumeric string identifying the config store.
}

begin
  # List items in a config store
  result = api_instance.list_config_store_items(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ConfigStoreItemApi->list_config_store_items: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_store_id** | **String** | An alphanumeric string identifying the config store. |  |

### Return type

[**Array&lt;ConfigStoreItemResponse&gt;**](ConfigStoreItemResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_config_store_item()`

```ruby
update_config_store_item(opts): <ConfigStoreItemResponse> # Update an entry in a config store
```

Update an entry in a config store given a config store ID, item key, and item value.

### Examples

```ruby
api_instance = Fastly::ConfigStoreItemApi.new
opts = {
    config_store_id: 'config_store_id_example', # String | An alphanumeric string identifying the config store.
    config_store_item_key: 'config_store_item_key_example', # String | Item key, maximum 256 characters.
    item_key: 'item_key_example', # String | Item key, maximum 256 characters.
    item_value: 'item_value_example', # String | Item value, maximum 8000 characters.
}

begin
  # Update an entry in a config store
  result = api_instance.update_config_store_item(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ConfigStoreItemApi->update_config_store_item: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_store_id** | **String** | An alphanumeric string identifying the config store. |  |
| **config_store_item_key** | **String** | Item key, maximum 256 characters. |  |
| **item_key** | **String** | Item key, maximum 256 characters. | [optional] |
| **item_value** | **String** | Item value, maximum 8000 characters. | [optional] |

### Return type

[**ConfigStoreItemResponse**](ConfigStoreItemResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `upsert_config_store_item()`

```ruby
upsert_config_store_item(opts): <ConfigStoreItemResponse> # Insert or update an entry in a config store
```

Insert or update an entry in a config store given a config store ID, item key, and item value.

### Examples

```ruby
api_instance = Fastly::ConfigStoreItemApi.new
opts = {
    config_store_id: 'config_store_id_example', # String | An alphanumeric string identifying the config store.
    config_store_item_key: 'config_store_item_key_example', # String | Item key, maximum 256 characters.
    item_key: 'item_key_example', # String | Item key, maximum 256 characters.
    item_value: 'item_value_example', # String | Item value, maximum 8000 characters.
}

begin
  # Insert or update an entry in a config store
  result = api_instance.upsert_config_store_item(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ConfigStoreItemApi->upsert_config_store_item: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_store_id** | **String** | An alphanumeric string identifying the config store. |  |
| **config_store_item_key** | **String** | Item key, maximum 256 characters. |  |
| **item_key** | **String** | Item key, maximum 256 characters. | [optional] |
| **item_value** | **String** | Item value, maximum 8000 characters. | [optional] |

### Return type

[**ConfigStoreItemResponse**](ConfigStoreItemResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
