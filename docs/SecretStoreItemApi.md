# Fastly::SecretStoreItemApi


```ruby
require 'fastly'
api_instance = Fastly::SecretStoreItemApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_secret**](SecretStoreItemApi.md#create_secret) | **POST** /resources/stores/secret/{store_id}/secrets | Create a new secret in a store.
[**delete_secret**](SecretStoreItemApi.md#delete_secret) | **DELETE** /resources/stores/secret/{store_id}/secrets/{secret_name} | Delete a secret from a store.
[**get_secret**](SecretStoreItemApi.md#get_secret) | **GET** /resources/stores/secret/{store_id}/secrets/{secret_name} | Get secret metadata.
[**get_secrets**](SecretStoreItemApi.md#get_secrets) | **GET** /resources/stores/secret/{store_id}/secrets | List secrets within a store.
[**must_recreate_secret**](SecretStoreItemApi.md#must_recreate_secret) | **PATCH** /resources/stores/secret/{store_id}/secrets | Recreate a secret in a store.
[**recreate_secret**](SecretStoreItemApi.md#recreate_secret) | **PUT** /resources/stores/secret/{store_id}/secrets | Create or recreate a secret in a store.


## `create_secret()`

```ruby
create_secret(opts): <SecretResponse> # Create a new secret in a store.
```

Create a new secret in a store. Returns an error if a secret already exists with the same name. See `PUT` and `PATCH` methods for ways to recreate an existing secret.  The `secret` field must be Base64-encoded because a secret can contain binary data. In the example below, the unencoded secret is \"Hello, world!\" 

### Examples

```ruby
api_instance = Fastly::SecretStoreItemApi.new
opts = {
    store_id: 'store_id_example', # String | 
    secret: Fastly::Secret.new, # Secret | 
}

begin
  # Create a new secret in a store.
  result = api_instance.create_secret(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling SecretStoreItemApi->create_secret: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **String** |  |  |
| **secret** | [**Secret**](Secret.md) |  | [optional] |

### Return type

[**SecretResponse**](SecretResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_secret()`

```ruby
delete_secret(opts) # Delete a secret from a store.
```

Delete a secret from a store by name.

### Examples

```ruby
api_instance = Fastly::SecretStoreItemApi.new
opts = {
    store_id: 'store_id_example', # String | 
    secret_name: 'secret_name_example', # String | 
}

begin
  # Delete a secret from a store.
  api_instance.delete_secret(opts)
rescue Fastly::ApiError => e
  puts "Error when calling SecretStoreItemApi->delete_secret: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **String** |  |  |
| **secret_name** | **String** |  |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_secret()`

```ruby
get_secret(opts): <SecretResponse> # Get secret metadata.
```

Get metadata about a secret by name.

### Examples

```ruby
api_instance = Fastly::SecretStoreItemApi.new
opts = {
    store_id: 'store_id_example', # String | 
    secret_name: 'secret_name_example', # String | 
}

begin
  # Get secret metadata.
  result = api_instance.get_secret(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling SecretStoreItemApi->get_secret: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **String** |  |  |
| **secret_name** | **String** |  |  |

### Return type

[**SecretResponse**](SecretResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_secrets()`

```ruby
get_secrets(opts): <InlineResponse2008> # List secrets within a store.
```

List all secrets within a store.

### Examples

```ruby
api_instance = Fastly::SecretStoreItemApi.new
opts = {
    store_id: 'store_id_example', # String | 
    cursor: 'cursor_example', # String | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    limit: 'limit_example', # String | Number of results per page. The maximum is 200.
}

begin
  # List secrets within a store.
  result = api_instance.get_secrets(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling SecretStoreItemApi->get_secrets: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **String** |  |  |
| **cursor** | **String** | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] |
| **limit** | **String** | Number of results per page. The maximum is 200. | [optional][default to &#39;100&#39;] |

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `must_recreate_secret()`

```ruby
must_recreate_secret(opts): <SecretResponse> # Recreate a secret in a store.
```

Recreate a secret based on the secret's name. Returns an error if there is no existing secret with the same name.  The `secret` field must be Base64-encoded because a secret can contain binary data. In the example below, the unencoded secret is \"Hello, world!\" 

### Examples

```ruby
api_instance = Fastly::SecretStoreItemApi.new
opts = {
    store_id: 'store_id_example', # String | 
    secret: Fastly::Secret.new, # Secret | 
}

begin
  # Recreate a secret in a store.
  result = api_instance.must_recreate_secret(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling SecretStoreItemApi->must_recreate_secret: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **String** |  |  |
| **secret** | [**Secret**](Secret.md) |  | [optional] |

### Return type

[**SecretResponse**](SecretResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `recreate_secret()`

```ruby
recreate_secret(opts): <SecretResponse> # Create or recreate a secret in a store.
```

Create or recreate a secret based on the secret's name. The response object's `recreated` field will be true if the secret was recreated.  The `secret` field must be Base64-encoded because a secret can contain binary data. In the example below, the unencoded secret is \"Hello, world!\" 

### Examples

```ruby
api_instance = Fastly::SecretStoreItemApi.new
opts = {
    store_id: 'store_id_example', # String | 
    secret: Fastly::Secret.new, # Secret | 
}

begin
  # Create or recreate a secret in a store.
  result = api_instance.recreate_secret(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling SecretStoreItemApi->recreate_secret: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **String** |  |  |
| **secret** | [**Secret**](Secret.md) |  | [optional] |

### Return type

[**SecretResponse**](SecretResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
