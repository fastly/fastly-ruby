# Fastly::DictionaryItemApi


```ruby
require 'fastly'
api_instance = Fastly::DictionaryItemApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**bulk_update_dictionary_item**](DictionaryItemApi.md#bulk_update_dictionary_item) | **PATCH** /service/{service_id}/dictionary/{dictionary_id}/items | Update multiple entries in a dictionary
[**create_dictionary_item**](DictionaryItemApi.md#create_dictionary_item) | **POST** /service/{service_id}/dictionary/{dictionary_id}/item | Create an entry in a dictionary
[**delete_dictionary_item**](DictionaryItemApi.md#delete_dictionary_item) | **DELETE** /service/{service_id}/dictionary/{dictionary_id}/item/{dictionary_item_key} | Delete an item from a dictionary
[**get_dictionary_item**](DictionaryItemApi.md#get_dictionary_item) | **GET** /service/{service_id}/dictionary/{dictionary_id}/item/{dictionary_item_key} | Get an item from a dictionary
[**list_dictionary_items**](DictionaryItemApi.md#list_dictionary_items) | **GET** /service/{service_id}/dictionary/{dictionary_id}/items | List items in a dictionary
[**update_dictionary_item**](DictionaryItemApi.md#update_dictionary_item) | **PATCH** /service/{service_id}/dictionary/{dictionary_id}/item/{dictionary_item_key} | Update an entry in a dictionary
[**upsert_dictionary_item**](DictionaryItemApi.md#upsert_dictionary_item) | **PUT** /service/{service_id}/dictionary/{dictionary_id}/item/{dictionary_item_key} | Insert or update an entry in a dictionary


## `bulk_update_dictionary_item()`

```ruby
bulk_update_dictionary_item(opts): <InlineResponse200> # Update multiple entries in a dictionary
```

Update multiple items in the same dictionary. For faster updates to your service, group your changes into large batches. The maximum batch size is 1000 items. [Contact support](https://support.fastly.com/) to discuss raising this limit.

### Examples

```ruby
api_instance = Fastly::DictionaryItemApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    dictionary_id: 'dictionary_id_example', # String | Alphanumeric string identifying a Dictionary.
    bulk_update_dictionary_list_request: Fastly::BulkUpdateDictionaryListRequest.new, # BulkUpdateDictionaryListRequest | 
}

begin
  # Update multiple entries in a dictionary
  result = api_instance.bulk_update_dictionary_item(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DictionaryItemApi->bulk_update_dictionary_item: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **dictionary_id** | **String** | Alphanumeric string identifying a Dictionary. |  |
| **bulk_update_dictionary_list_request** | [**BulkUpdateDictionaryListRequest**](BulkUpdateDictionaryListRequest.md) |  | [optional] |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `create_dictionary_item()`

```ruby
create_dictionary_item(opts): <DictionaryItemResponse> # Create an entry in a dictionary
```

Create DictionaryItem given service, dictionary ID, item key, and item value.

### Examples

```ruby
api_instance = Fastly::DictionaryItemApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    dictionary_id: 'dictionary_id_example', # String | Alphanumeric string identifying a Dictionary.
    item_key: 'item_key_example', # String | Item key, maximum 256 characters.
    item_value: 'item_value_example', # String | Item value, maximum 8000 characters.
}

begin
  # Create an entry in a dictionary
  result = api_instance.create_dictionary_item(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DictionaryItemApi->create_dictionary_item: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **dictionary_id** | **String** | Alphanumeric string identifying a Dictionary. |  |
| **item_key** | **String** | Item key, maximum 256 characters. | [optional] |
| **item_value** | **String** | Item value, maximum 8000 characters. | [optional] |

### Return type

[**DictionaryItemResponse**](DictionaryItemResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_dictionary_item()`

```ruby
delete_dictionary_item(opts): <InlineResponse200> # Delete an item from a dictionary
```

Delete DictionaryItem given service, dictionary ID, and item key.

### Examples

```ruby
api_instance = Fastly::DictionaryItemApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    dictionary_id: 'dictionary_id_example', # String | Alphanumeric string identifying a Dictionary.
    dictionary_item_key: 'dictionary_item_key_example', # String | Item key, maximum 256 characters.
}

begin
  # Delete an item from a dictionary
  result = api_instance.delete_dictionary_item(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DictionaryItemApi->delete_dictionary_item: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **dictionary_id** | **String** | Alphanumeric string identifying a Dictionary. |  |
| **dictionary_item_key** | **String** | Item key, maximum 256 characters. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_dictionary_item()`

```ruby
get_dictionary_item(opts): <DictionaryItemResponse> # Get an item from a dictionary
```

Retrieve a single DictionaryItem given service, dictionary ID and item key.

### Examples

```ruby
api_instance = Fastly::DictionaryItemApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    dictionary_id: 'dictionary_id_example', # String | Alphanumeric string identifying a Dictionary.
    dictionary_item_key: 'dictionary_item_key_example', # String | Item key, maximum 256 characters.
}

begin
  # Get an item from a dictionary
  result = api_instance.get_dictionary_item(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DictionaryItemApi->get_dictionary_item: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **dictionary_id** | **String** | Alphanumeric string identifying a Dictionary. |  |
| **dictionary_item_key** | **String** | Item key, maximum 256 characters. |  |

### Return type

[**DictionaryItemResponse**](DictionaryItemResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_dictionary_items()`

```ruby
list_dictionary_items(opts): <Array<DictionaryItemResponse>> # List items in a dictionary
```

List of DictionaryItems given service and dictionary ID.

### Examples

```ruby
api_instance = Fastly::DictionaryItemApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    dictionary_id: 'dictionary_id_example', # String | Alphanumeric string identifying a Dictionary.
    page: 1, # Integer | Current page.
    per_page: 20, # Integer | Number of records per page.
    sort: 'created', # String | Field on which to sort.
    direction: 'ascend', # String | Direction in which to sort results.
}

begin
  # List items in a dictionary
  result = api_instance.list_dictionary_items(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DictionaryItemApi->list_dictionary_items: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **dictionary_id** | **String** | Alphanumeric string identifying a Dictionary. |  |
| **page** | **Integer** | Current page. | [optional] |
| **per_page** | **Integer** | Number of records per page. | [optional][default to 100] |
| **sort** | **String** | Field on which to sort. | [optional][default to &#39;created&#39;] |
| **direction** | **String** | Direction in which to sort results. | [optional][default to &#39;ascend&#39;] |

### Return type

[**Array&lt;DictionaryItemResponse&gt;**](DictionaryItemResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_dictionary_item()`

```ruby
update_dictionary_item(opts): <DictionaryItemResponse> # Update an entry in a dictionary
```

Update DictionaryItem given service, dictionary ID, item key, and item value.

### Examples

```ruby
api_instance = Fastly::DictionaryItemApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    dictionary_id: 'dictionary_id_example', # String | Alphanumeric string identifying a Dictionary.
    dictionary_item_key: 'dictionary_item_key_example', # String | Item key, maximum 256 characters.
    item_key: 'item_key_example', # String | Item key, maximum 256 characters.
    item_value: 'item_value_example', # String | Item value, maximum 8000 characters.
}

begin
  # Update an entry in a dictionary
  result = api_instance.update_dictionary_item(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DictionaryItemApi->update_dictionary_item: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **dictionary_id** | **String** | Alphanumeric string identifying a Dictionary. |  |
| **dictionary_item_key** | **String** | Item key, maximum 256 characters. |  |
| **item_key** | **String** | Item key, maximum 256 characters. | [optional] |
| **item_value** | **String** | Item value, maximum 8000 characters. | [optional] |

### Return type

[**DictionaryItemResponse**](DictionaryItemResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `upsert_dictionary_item()`

```ruby
upsert_dictionary_item(opts): <DictionaryItemResponse> # Insert or update an entry in a dictionary
```

Upsert DictionaryItem given service, dictionary ID, item key, and item value.

### Examples

```ruby
api_instance = Fastly::DictionaryItemApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    dictionary_id: 'dictionary_id_example', # String | Alphanumeric string identifying a Dictionary.
    dictionary_item_key: 'dictionary_item_key_example', # String | Item key, maximum 256 characters.
    item_key: 'item_key_example', # String | Item key, maximum 256 characters.
    item_value: 'item_value_example', # String | Item value, maximum 8000 characters.
}

begin
  # Insert or update an entry in a dictionary
  result = api_instance.upsert_dictionary_item(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DictionaryItemApi->upsert_dictionary_item: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **dictionary_id** | **String** | Alphanumeric string identifying a Dictionary. |  |
| **dictionary_item_key** | **String** | Item key, maximum 256 characters. |  |
| **item_key** | **String** | Item key, maximum 256 characters. | [optional] |
| **item_value** | **String** | Item value, maximum 8000 characters. | [optional] |

### Return type

[**DictionaryItemResponse**](DictionaryItemResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
