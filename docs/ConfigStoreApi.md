# Fastly::ConfigStoreApi


```ruby
require 'fastly'
api_instance = Fastly::ConfigStoreApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_config_store**](ConfigStoreApi.md#create_config_store) | **POST** /resources/stores/config | Create a config store
[**delete_config_store**](ConfigStoreApi.md#delete_config_store) | **DELETE** /resources/stores/config/{config_store_id} | Delete a config store
[**get_config_store**](ConfigStoreApi.md#get_config_store) | **GET** /resources/stores/config/{config_store_id} | Describe a config store
[**get_config_store_info**](ConfigStoreApi.md#get_config_store_info) | **GET** /resources/stores/config/{config_store_id}/info | Get config store metadata
[**list_config_store_services**](ConfigStoreApi.md#list_config_store_services) | **GET** /resources/stores/config/{config_store_id}/services | List linked services
[**list_config_stores**](ConfigStoreApi.md#list_config_stores) | **GET** /resources/stores/config | List config stores
[**update_config_store**](ConfigStoreApi.md#update_config_store) | **PUT** /resources/stores/config/{config_store_id} | Update a config store


## `create_config_store()`

```ruby
create_config_store(opts): <ConfigStoreResponse> # Create a config store
```

Create a config store.

### Examples

```ruby
api_instance = Fastly::ConfigStoreApi.new
opts = {
    name: 'name_example', # String | The name of the config store.
}

begin
  # Create a config store
  result = api_instance.create_config_store(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ConfigStoreApi->create_config_store: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the config store. | [optional] |

### Return type

[**ConfigStoreResponse**](ConfigStoreResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_config_store()`

```ruby
delete_config_store(opts): <InlineResponse200> # Delete a config store
```

Delete a config store.

### Examples

```ruby
api_instance = Fastly::ConfigStoreApi.new
opts = {
    config_store_id: 'config_store_id_example', # String | An alphanumeric string identifying the config store.
}

begin
  # Delete a config store
  result = api_instance.delete_config_store(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ConfigStoreApi->delete_config_store: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_store_id** | **String** | An alphanumeric string identifying the config store. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_config_store()`

```ruby
get_config_store(opts): <ConfigStoreResponse> # Describe a config store
```

Describe a config store by its identifier.

### Examples

```ruby
api_instance = Fastly::ConfigStoreApi.new
opts = {
    config_store_id: 'config_store_id_example', # String | An alphanumeric string identifying the config store.
}

begin
  # Describe a config store
  result = api_instance.get_config_store(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ConfigStoreApi->get_config_store: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_store_id** | **String** | An alphanumeric string identifying the config store. |  |

### Return type

[**ConfigStoreResponse**](ConfigStoreResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_config_store_info()`

```ruby
get_config_store_info(opts): <ConfigStoreInfoResponse> # Get config store metadata
```

Retrieve metadata for a single config store.

### Examples

```ruby
api_instance = Fastly::ConfigStoreApi.new
opts = {
    config_store_id: 'config_store_id_example', # String | An alphanumeric string identifying the config store.
}

begin
  # Get config store metadata
  result = api_instance.get_config_store_info(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ConfigStoreApi->get_config_store_info: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_store_id** | **String** | An alphanumeric string identifying the config store. |  |

### Return type

[**ConfigStoreInfoResponse**](ConfigStoreInfoResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_config_store_services()`

```ruby
list_config_store_services(opts): Object # List linked services
```

List services linked to a config store

### Examples

```ruby
api_instance = Fastly::ConfigStoreApi.new
opts = {
    config_store_id: 'config_store_id_example', # String | An alphanumeric string identifying the config store.
}

begin
  # List linked services
  result = api_instance.list_config_store_services(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ConfigStoreApi->list_config_store_services: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_store_id** | **String** | An alphanumeric string identifying the config store. |  |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_config_stores()`

```ruby
list_config_stores(opts): <Array<ConfigStoreResponse>> # List config stores
```

List config stores.

### Examples

```ruby
api_instance = Fastly::ConfigStoreApi.new
opts = {
    name: 'name_example', # String | Returns a one-element array containing the details for the named config store.
}

begin
  # List config stores
  result = api_instance.list_config_stores(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ConfigStoreApi->list_config_stores: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Returns a one-element array containing the details for the named config store. | [optional] |

### Return type

[**Array&lt;ConfigStoreResponse&gt;**](ConfigStoreResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_config_store()`

```ruby
update_config_store(opts): <ConfigStoreResponse> # Update a config store
```

Update a config store.

### Examples

```ruby
api_instance = Fastly::ConfigStoreApi.new
opts = {
    config_store_id: 'config_store_id_example', # String | An alphanumeric string identifying the config store.
    name: 'name_example', # String | The name of the config store.
}

begin
  # Update a config store
  result = api_instance.update_config_store(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ConfigStoreApi->update_config_store: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_store_id** | **String** | An alphanumeric string identifying the config store. |  |
| **name** | **String** | The name of the config store. | [optional] |

### Return type

[**ConfigStoreResponse**](ConfigStoreResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
