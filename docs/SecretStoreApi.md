# Fastly::SecretStoreApi


```ruby
require 'fastly'
api_instance = Fastly::SecretStoreApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**client_key**](SecretStoreApi.md#client_key) | **POST** /resources/stores/secret/client-key | Create new client key |
| [**create_secret_store**](SecretStoreApi.md#create_secret_store) | **POST** /resources/stores/secret | Create new secret store |
| [**delete_secret_store**](SecretStoreApi.md#delete_secret_store) | **DELETE** /resources/stores/secret/{store_id} | Delete secret store |
| [**get_secret_store**](SecretStoreApi.md#get_secret_store) | **GET** /resources/stores/secret/{store_id} | Create secret store by ID |
| [**get_secret_stores**](SecretStoreApi.md#get_secret_stores) | **GET** /resources/stores/secret | Get all secret stores |
| [**signing_key**](SecretStoreApi.md#signing_key) | **GET** /resources/stores/secret/signing-key | Get public key |


## `client_key()`

```ruby
client_key: <ClientKey> # Create new client key
```

Create a new client key for encrypting secrets locally before uploading.

### Examples

```ruby
api_instance = Fastly::SecretStoreApi.new

begin
  # Create new client key
  result = api_instance.client_key
  p result
rescue Fastly::ApiError => e
  puts "Error when calling SecretStoreApi->client_key: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**ClientKey**](ClientKey.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `create_secret_store()`

```ruby
create_secret_store(opts): <SecretStoreResponse> # Create new secret store
```

Create a new secret store.

### Examples

```ruby
api_instance = Fastly::SecretStoreApi.new
opts = {
    secret_store: Fastly::SecretStore.new, # SecretStore | 
}

begin
  # Create new secret store
  result = api_instance.create_secret_store(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling SecretStoreApi->create_secret_store: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **secret_store** | [**SecretStore**](SecretStore.md) |  | [optional] |

### Return type

[**SecretStoreResponse**](SecretStoreResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_secret_store()`

```ruby
delete_secret_store(opts) # Delete secret store
```

Delete a secret store and all of its contents.

### Examples

```ruby
api_instance = Fastly::SecretStoreApi.new
opts = {
    store_id: 'store_id_example', # String | 
}

begin
  # Delete secret store
  api_instance.delete_secret_store(opts)
rescue Fastly::ApiError => e
  puts "Error when calling SecretStoreApi->delete_secret_store: #{e}"
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
## `get_secret_store()`

```ruby
get_secret_store(opts): <SecretStoreResponse> # Create secret store by ID
```

Get a secret store by ID.

### Examples

```ruby
api_instance = Fastly::SecretStoreApi.new
opts = {
    store_id: 'store_id_example', # String | 
}

begin
  # Create secret store by ID
  result = api_instance.get_secret_store(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling SecretStoreApi->get_secret_store: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **String** |  |  |

### Return type

[**SecretStoreResponse**](SecretStoreResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_secret_stores()`

```ruby
get_secret_stores(opts): <InlineResponse2005> # Get all secret stores
```

Get all secret stores.

### Examples

```ruby
api_instance = Fastly::SecretStoreApi.new
opts = {
    cursor: 'cursor_example', # String | Cursor value from a previous response to retrieve the next page. To request the first page, this should be empty.
    limit: 'limit_example', # String | Number of results per page. The maximum is 200.
}

begin
  # Get all secret stores
  result = api_instance.get_secret_stores(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling SecretStoreApi->get_secret_stores: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** | Cursor value from a previous response to retrieve the next page. To request the first page, this should be empty. | [optional] |
| **limit** | **String** | Number of results per page. The maximum is 200. | [optional][default to &#39;100&#39;] |

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `signing_key()`

```ruby
signing_key: <SigningKey> # Get public key
```

Get the public key used for signing client keys.

### Examples

```ruby
api_instance = Fastly::SecretStoreApi.new

begin
  # Get public key
  result = api_instance.signing_key
  p result
rescue Fastly::ApiError => e
  puts "Error when calling SecretStoreApi->signing_key: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**SigningKey**](SigningKey.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
