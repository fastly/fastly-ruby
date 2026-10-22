# Fastly::AiRuntimeControlVirtualKeysApi


```ruby
require 'fastly'
api_instance = Fastly::AiRuntimeControlVirtualKeysApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**arc_create_virtual_key**](AiRuntimeControlVirtualKeysApi.md#arc_create_virtual_key) | **POST** /ai-runtime-control/v1/keys | Create a virtual key
[**arc_delete_virtual_key**](AiRuntimeControlVirtualKeysApi.md#arc_delete_virtual_key) | **DELETE** /ai-runtime-control/v1/keys/{key_id} | Delete a virtual key
[**arc_get_virtual_key**](AiRuntimeControlVirtualKeysApi.md#arc_get_virtual_key) | **GET** /ai-runtime-control/v1/keys/{key_id} | Get a virtual key
[**arc_get_virtual_key_failover**](AiRuntimeControlVirtualKeysApi.md#arc_get_virtual_key_failover) | **GET** /ai-runtime-control/v1/keys/{key_id}/failover | Get a virtual key&#39;s failover policy
[**arc_list_virtual_keys**](AiRuntimeControlVirtualKeysApi.md#arc_list_virtual_keys) | **GET** /ai-runtime-control/v1/keys | List virtual keys
[**arc_rotate_virtual_key**](AiRuntimeControlVirtualKeysApi.md#arc_rotate_virtual_key) | **POST** /ai-runtime-control/v1/keys/{key_id}/rotate | Rotate a virtual key
[**arc_update_virtual_key**](AiRuntimeControlVirtualKeysApi.md#arc_update_virtual_key) | **PATCH** /ai-runtime-control/v1/keys/{key_id} | Update a virtual key
[**arc_update_virtual_key_failover**](AiRuntimeControlVirtualKeysApi.md#arc_update_virtual_key_failover) | **PUT** /ai-runtime-control/v1/keys/{key_id}/failover | Update a virtual key&#39;s failover policy


## `arc_create_virtual_key()`

```ruby
arc_create_virtual_key(opts): <ArcCreateVirtualKeyResponse> # Create a virtual key
```

Create a new virtual key for authenticating requests through the AI Runtime Control gateway.

### Examples

```ruby
api_instance = Fastly::AiRuntimeControlVirtualKeysApi.new
opts = {
    arc_virtual_key: Fastly::ArcVirtualKey.new({name: 'production-anthropic-key'}), # ArcVirtualKey | 
}

begin
  # Create a virtual key
  result = api_instance.arc_create_virtual_key(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AiRuntimeControlVirtualKeysApi->arc_create_virtual_key: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **arc_virtual_key** | [**ArcVirtualKey**](ArcVirtualKey.md) |  |  |

### Return type

[**ArcCreateVirtualKeyResponse**](ArcCreateVirtualKeyResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `arc_delete_virtual_key()`

```ruby
arc_delete_virtual_key(opts) # Delete a virtual key
```

Delete a virtual key. This also deletes any security configuration associated with the key.

### Examples

```ruby
api_instance = Fastly::AiRuntimeControlVirtualKeysApi.new
opts = {
    key_id: '7fVVQb1nZaJgnzCn4B4v3B', # String | The ID of the virtual key.
}

begin
  # Delete a virtual key
  api_instance.arc_delete_virtual_key(opts)
rescue Fastly::ApiError => e
  puts "Error when calling AiRuntimeControlVirtualKeysApi->arc_delete_virtual_key: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_id** | **String** | The ID of the virtual key. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `arc_get_virtual_key()`

```ruby
arc_get_virtual_key(opts): <ArcVirtualKeyResponse> # Get a virtual key
```

Retrieve a single virtual key.

### Examples

```ruby
api_instance = Fastly::AiRuntimeControlVirtualKeysApi.new
opts = {
    key_id: '7fVVQb1nZaJgnzCn4B4v3B', # String | The ID of the virtual key.
}

begin
  # Get a virtual key
  result = api_instance.arc_get_virtual_key(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AiRuntimeControlVirtualKeysApi->arc_get_virtual_key: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_id** | **String** | The ID of the virtual key. |  |

### Return type

[**ArcVirtualKeyResponse**](ArcVirtualKeyResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `arc_get_virtual_key_failover()`

```ruby
arc_get_virtual_key_failover(opts): <ArcVirtualKeyFailoverResponse> # Get a virtual key's failover policy
```

Retrieve the failover policy for a virtual key. A failover policy lists alternate provider connections to retry a request against, and which error conditions trigger a retry.  Failover is a per-account feature. If it isn't enabled on your account, this endpoint returns a 404 response. 

### Examples

```ruby
api_instance = Fastly::AiRuntimeControlVirtualKeysApi.new
opts = {
    key_id: '7fVVQb1nZaJgnzCn4B4v3B', # String | The ID of the virtual key.
}

begin
  # Get a virtual key's failover policy
  result = api_instance.arc_get_virtual_key_failover(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AiRuntimeControlVirtualKeysApi->arc_get_virtual_key_failover: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_id** | **String** | The ID of the virtual key. |  |

### Return type

[**ArcVirtualKeyFailoverResponse**](ArcVirtualKeyFailoverResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `arc_list_virtual_keys()`

```ruby
arc_list_virtual_keys(opts): <ArcVirtualKeysResponse> # List virtual keys
```

List the virtual keys belonging to your account.

### Examples

```ruby
api_instance = Fastly::AiRuntimeControlVirtualKeysApi.new
opts = {
    include_deleted: true, # Boolean | Include deleted virtual keys in the results.
    search: 'production', # String | Filter results to virtual keys whose name contains this substring.
    cursor: 'MTA6MA', # String | Cursor for pagination. Use the `next_cursor` value from a previous response to request the next page of results, or the `prev_cursor` value to request the previous page. 
    limit: 10, # Integer | Limit how many results are returned.
    sort: 'created_at', # String | Sort field. Prefix with `-` for descending order (e.g., `sort=-created_at`). 
}

begin
  # List virtual keys
  result = api_instance.arc_list_virtual_keys(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AiRuntimeControlVirtualKeysApi->arc_list_virtual_keys: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_deleted** | **Boolean** | Include deleted virtual keys in the results. | [optional][default to false] |
| **search** | **String** | Filter results to virtual keys whose name contains this substring. | [optional] |
| **cursor** | **String** | Cursor for pagination. Use the `next_cursor` value from a previous response to request the next page of results, or the `prev_cursor` value to request the previous page.  | [optional] |
| **limit** | **Integer** | Limit how many results are returned. | [optional][default to 10] |
| **sort** | **String** | Sort field. Prefix with `-` for descending order (e.g., `sort&#x3D;-created_at`).  | [optional][default to &#39;created_at&#39;] |

### Return type

[**ArcVirtualKeysResponse**](ArcVirtualKeysResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `arc_rotate_virtual_key()`

```ruby
arc_rotate_virtual_key(opts): <ArcRotateVirtualKeyResponse> # Rotate a virtual key
```

Issue a new access token for a virtual key, invalidating the previous one.

### Examples

```ruby
api_instance = Fastly::AiRuntimeControlVirtualKeysApi.new
opts = {
    key_id: '7fVVQb1nZaJgnzCn4B4v3B', # String | The ID of the virtual key.
    arc_rotate_virtual_key_request: Fastly::ArcRotateVirtualKeyRequest.new, # ArcRotateVirtualKeyRequest | 
}

begin
  # Rotate a virtual key
  result = api_instance.arc_rotate_virtual_key(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AiRuntimeControlVirtualKeysApi->arc_rotate_virtual_key: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_id** | **String** | The ID of the virtual key. |  |
| **arc_rotate_virtual_key_request** | [**ArcRotateVirtualKeyRequest**](ArcRotateVirtualKeyRequest.md) |  | [optional] |

### Return type

[**ArcRotateVirtualKeyResponse**](ArcRotateVirtualKeyResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `arc_update_virtual_key()`

```ruby
arc_update_virtual_key(opts): <ArcUpdateVirtualKeyResponse> # Update a virtual key
```

Update the attributes of a virtual key. Only the fields you include are changed.

### Examples

```ruby
api_instance = Fastly::AiRuntimeControlVirtualKeysApi.new
opts = {
    key_id: '7fVVQb1nZaJgnzCn4B4v3B', # String | The ID of the virtual key.
    arc_update_virtual_key_request: Fastly::ArcUpdateVirtualKeyRequest.new, # ArcUpdateVirtualKeyRequest | 
}

begin
  # Update a virtual key
  result = api_instance.arc_update_virtual_key(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AiRuntimeControlVirtualKeysApi->arc_update_virtual_key: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_id** | **String** | The ID of the virtual key. |  |
| **arc_update_virtual_key_request** | [**ArcUpdateVirtualKeyRequest**](ArcUpdateVirtualKeyRequest.md) |  |  |

### Return type

[**ArcUpdateVirtualKeyResponse**](ArcUpdateVirtualKeyResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `arc_update_virtual_key_failover()`

```ruby
arc_update_virtual_key_failover(opts): <ArcVirtualKeyFailoverResponse> # Update a virtual key's failover policy
```

Replace the failover policy for a virtual key.  Failover is a per-account feature. If it isn't enabled on your account, this endpoint returns a 404 response. 

### Examples

```ruby
api_instance = Fastly::AiRuntimeControlVirtualKeysApi.new
opts = {
    key_id: '7fVVQb1nZaJgnzCn4B4v3B', # String | The ID of the virtual key.
    arc_virtual_key_failover_request: Fastly::ArcVirtualKeyFailoverRequest.new({targets: [Fastly::ArcFailoverTarget.new({provider_connection_id: 'pTfnUUBcU1yv8SoRJn5PZ2'})]}), # ArcVirtualKeyFailoverRequest | 
}

begin
  # Update a virtual key's failover policy
  result = api_instance.arc_update_virtual_key_failover(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AiRuntimeControlVirtualKeysApi->arc_update_virtual_key_failover: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_id** | **String** | The ID of the virtual key. |  |
| **arc_virtual_key_failover_request** | [**ArcVirtualKeyFailoverRequest**](ArcVirtualKeyFailoverRequest.md) |  |  |

### Return type

[**ArcVirtualKeyFailoverResponse**](ArcVirtualKeyFailoverResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
