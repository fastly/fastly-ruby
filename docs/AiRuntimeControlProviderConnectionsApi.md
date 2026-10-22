# Fastly::AiRuntimeControlProviderConnectionsApi


```ruby
require 'fastly'
api_instance = Fastly::AiRuntimeControlProviderConnectionsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**arc_create_provider_connection**](AiRuntimeControlProviderConnectionsApi.md#arc_create_provider_connection) | **POST** /ai-runtime-control/v1/provider-connections | Create a provider connection
[**arc_delete_provider_connection**](AiRuntimeControlProviderConnectionsApi.md#arc_delete_provider_connection) | **DELETE** /ai-runtime-control/v1/provider-connections/{id} | Delete a provider connection
[**arc_get_provider_connection**](AiRuntimeControlProviderConnectionsApi.md#arc_get_provider_connection) | **GET** /ai-runtime-control/v1/provider-connections/{id} | Get a provider connection
[**arc_list_provider_connections**](AiRuntimeControlProviderConnectionsApi.md#arc_list_provider_connections) | **GET** /ai-runtime-control/v1/provider-connections | List provider connections
[**arc_update_provider_connection**](AiRuntimeControlProviderConnectionsApi.md#arc_update_provider_connection) | **PATCH** /ai-runtime-control/v1/provider-connections/{id} | Update a provider connection


## `arc_create_provider_connection()`

```ruby
arc_create_provider_connection(opts): <ArcProviderConnectionResponse> # Create a provider connection
```

Create a provider connection. Set `auth_type` to `api-key` (the default) to connect with a provider's own API key, or to `aws-iam` to connect to Amazon Bedrock using an AWS IAM role.  Accounts are limited to 25 provider connections. Creating a 26th connection returns a 409 response. 

### Examples

```ruby
api_instance = Fastly::AiRuntimeControlProviderConnectionsApi.new
opts = {
    arc_provider_connection_request: Fastly::ArcProviderConnectionApiKey.new({name: 'my-openai-connection', models: ["gpt-4"], base_url: 'https://api.openai.com', api_key: 'sk-...'}), # ArcProviderConnectionRequest | 
}

begin
  # Create a provider connection
  result = api_instance.arc_create_provider_connection(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AiRuntimeControlProviderConnectionsApi->arc_create_provider_connection: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **arc_provider_connection_request** | [**ArcProviderConnectionRequest**](ArcProviderConnectionRequest.md) |  |  |

### Return type

[**ArcProviderConnectionResponse**](ArcProviderConnectionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `arc_delete_provider_connection()`

```ruby
arc_delete_provider_connection(opts) # Delete a provider connection
```

Delete a provider connection. Returns a 409 response if the connection is still referenced by a virtual key's failover policy. 

### Examples

```ruby
api_instance = Fastly::AiRuntimeControlProviderConnectionsApi.new
opts = {
    id: 'pTfnUUBcU1yv8SoRJn5PZ2', # String | The ID of the provider connection.
}

begin
  # Delete a provider connection
  api_instance.arc_delete_provider_connection(opts)
rescue Fastly::ApiError => e
  puts "Error when calling AiRuntimeControlProviderConnectionsApi->arc_delete_provider_connection: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the provider connection. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `arc_get_provider_connection()`

```ruby
arc_get_provider_connection(opts): <ArcGetProviderConnectionResponse> # Get a provider connection
```

Retrieve a single provider connection.

### Examples

```ruby
api_instance = Fastly::AiRuntimeControlProviderConnectionsApi.new
opts = {
    id: 'pTfnUUBcU1yv8SoRJn5PZ2', # String | The ID of the provider connection.
}

begin
  # Get a provider connection
  result = api_instance.arc_get_provider_connection(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AiRuntimeControlProviderConnectionsApi->arc_get_provider_connection: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the provider connection. |  |

### Return type

[**ArcGetProviderConnectionResponse**](ArcGetProviderConnectionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `arc_list_provider_connections()`

```ruby
arc_list_provider_connections(opts): <ArcProviderConnectionsResponse> # List provider connections
```

List the provider connections belonging to your account.

### Examples

```ruby
api_instance = Fastly::AiRuntimeControlProviderConnectionsApi.new
opts = {
    include_deleted: true, # Boolean | Include deleted provider connections in the results. Deleted connections have a `deleted_at` value.
    sort: 'created_at', # String | Sort field. Prefix with `-` for descending order (e.g., `sort=-name`). 
}

begin
  # List provider connections
  result = api_instance.arc_list_provider_connections(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AiRuntimeControlProviderConnectionsApi->arc_list_provider_connections: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_deleted** | **Boolean** | Include deleted provider connections in the results. Deleted connections have a `deleted_at` value. | [optional][default to false] |
| **sort** | **String** | Sort field. Prefix with `-` for descending order (e.g., `sort&#x3D;-name`).  | [optional][default to &#39;created_at&#39;] |

### Return type

[**ArcProviderConnectionsResponse**](ArcProviderConnectionsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `arc_update_provider_connection()`

```ruby
arc_update_provider_connection(opts): <ArcProviderConnectionResponse> # Update a provider connection
```

Update the attributes of a provider connection. Only the fields you include are changed. Which fields you can set depends on the connection's existing `auth_type`: `base_url` and `api_key` apply only to `api-key` connections, and `customer_role_arn` and `region` apply only to `aws-iam` connections. `auth_type` itself cannot be changed. 

### Examples

```ruby
api_instance = Fastly::AiRuntimeControlProviderConnectionsApi.new
opts = {
    id: 'pTfnUUBcU1yv8SoRJn5PZ2', # String | The ID of the provider connection.
    arc_update_provider_connection_request: Fastly::ArcUpdateProviderConnectionRequest.new, # ArcUpdateProviderConnectionRequest | 
}

begin
  # Update a provider connection
  result = api_instance.arc_update_provider_connection(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AiRuntimeControlProviderConnectionsApi->arc_update_provider_connection: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the provider connection. |  |
| **arc_update_provider_connection_request** | [**ArcUpdateProviderConnectionRequest**](ArcUpdateProviderConnectionRequest.md) |  |  |

### Return type

[**ArcProviderConnectionResponse**](ArcProviderConnectionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
