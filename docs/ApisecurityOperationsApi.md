# Fastly::ApisecurityOperationsApi


```ruby
require 'fastly'
api_instance = Fastly::ApisecurityOperationsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**api_security_bulk_add_tags_to_operations**](ApisecurityOperationsApi.md#api_security_bulk_add_tags_to_operations) | **POST** /api-security/v1/services/{service_id}/operations-bulk-tags | Bulk add tags to operations
[**api_security_bulk_create_operations**](ApisecurityOperationsApi.md#api_security_bulk_create_operations) | **POST** /api-security/v1/services/{service_id}/operations-bulk | Bulk create operations
[**api_security_bulk_delete_operations**](ApisecurityOperationsApi.md#api_security_bulk_delete_operations) | **DELETE** /api-security/v1/services/{service_id}/operations-bulk | Bulk delete operations
[**api_security_create_operation**](ApisecurityOperationsApi.md#api_security_create_operation) | **POST** /api-security/v1/services/{service_id}/operations | Create operation
[**api_security_create_operation_tag**](ApisecurityOperationsApi.md#api_security_create_operation_tag) | **POST** /api-security/v1/services/{service_id}/tags | Create operation tag
[**api_security_delete_operation**](ApisecurityOperationsApi.md#api_security_delete_operation) | **DELETE** /api-security/v1/services/{service_id}/operations/{operation_id} | Delete operation
[**api_security_delete_operation_tag**](ApisecurityOperationsApi.md#api_security_delete_operation_tag) | **DELETE** /api-security/v1/services/{service_id}/tags/{tag_id} | Delete operation tag
[**api_security_get_operation**](ApisecurityOperationsApi.md#api_security_get_operation) | **GET** /api-security/v1/services/{service_id}/operations/{operation_id} | Retrieve operation
[**api_security_get_operation_tag**](ApisecurityOperationsApi.md#api_security_get_operation_tag) | **GET** /api-security/v1/services/{service_id}/tags/{tag_id} | Retrieve operation tag
[**api_security_list_discovered_operations**](ApisecurityOperationsApi.md#api_security_list_discovered_operations) | **GET** /api-security/v1/services/{service_id}/discovered-operations | List discovered operations
[**api_security_list_operation_tags**](ApisecurityOperationsApi.md#api_security_list_operation_tags) | **GET** /api-security/v1/services/{service_id}/tags | List operation tags
[**api_security_list_operations**](ApisecurityOperationsApi.md#api_security_list_operations) | **GET** /api-security/v1/services/{service_id}/operations | List operations
[**api_security_update_operation**](ApisecurityOperationsApi.md#api_security_update_operation) | **PATCH** /api-security/v1/services/{service_id}/operations/{operation_id} | Update operation
[**api_security_update_operation_tag**](ApisecurityOperationsApi.md#api_security_update_operation_tag) | **PATCH** /api-security/v1/services/{service_id}/tags/{tag_id} | Update operation tag


## `api_security_bulk_add_tags_to_operations()`

```ruby
api_security_bulk_add_tags_to_operations(opts): <InlineResponse2071> # Bulk add tags to operations
```

Add tags to multiple operations in a single request.

### Examples

```ruby
api_instance = Fastly::ApisecurityOperationsApi.new
opts = {
    service_id: '3NeCFuZNP1v0iyJ2vmYQI6', # String | The unique identifier of the service.
    operation_bulk_add_tags: Fastly::OperationBulkAddTags.new({operation_ids: ['op_abc123def456'], tag_ids: ['tag_abc123def456']}), # OperationBulkAddTags | 
}

begin
  # Bulk add tags to operations
  result = api_instance.api_security_bulk_add_tags_to_operations(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ApisecurityOperationsApi->api_security_bulk_add_tags_to_operations: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | The unique identifier of the service. |  |
| **operation_bulk_add_tags** | [**OperationBulkAddTags**](OperationBulkAddTags.md) |  | [optional] |

### Return type

[**InlineResponse2071**](InlineResponse2071.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `api_security_bulk_create_operations()`

```ruby
api_security_bulk_create_operations(opts): <InlineResponse207> # Bulk create operations
```

Create multiple operations associated with a specific service in a single request.

### Examples

```ruby
api_instance = Fastly::ApisecurityOperationsApi.new
opts = {
    service_id: '3NeCFuZNP1v0iyJ2vmYQI6', # String | The unique identifier of the service.
    operation_bulk_create: Fastly::OperationBulkCreate.new({operations: [Fastly::OperationBulkCreateOperations.new({method: 'GET', domain: 'www.example.com', path: '/api/v1/users/{var1}'})]}), # OperationBulkCreate | 
}

begin
  # Bulk create operations
  result = api_instance.api_security_bulk_create_operations(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ApisecurityOperationsApi->api_security_bulk_create_operations: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | The unique identifier of the service. |  |
| **operation_bulk_create** | [**OperationBulkCreate**](OperationBulkCreate.md) |  | [optional] |

### Return type

[**InlineResponse207**](InlineResponse207.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `api_security_bulk_delete_operations()`

```ruby
api_security_bulk_delete_operations(opts): <InlineResponse2071> # Bulk delete operations
```

Delete multiple operations in a single request.

### Examples

```ruby
api_instance = Fastly::ApisecurityOperationsApi.new
opts = {
    service_id: '3NeCFuZNP1v0iyJ2vmYQI6', # String | The unique identifier of the service.
    operation_bulk_delete: Fastly::OperationBulkDelete.new({operation_ids: ['op_abc123def456']}), # OperationBulkDelete | 
}

begin
  # Bulk delete operations
  result = api_instance.api_security_bulk_delete_operations(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ApisecurityOperationsApi->api_security_bulk_delete_operations: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | The unique identifier of the service. |  |
| **operation_bulk_delete** | [**OperationBulkDelete**](OperationBulkDelete.md) |  | [optional] |

### Return type

[**InlineResponse2071**](InlineResponse2071.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `api_security_create_operation()`

```ruby
api_security_create_operation(opts): <OperationGet> # Create operation
```

Create a new operation associated with a specific service.

### Examples

```ruby
api_instance = Fastly::ApisecurityOperationsApi.new
opts = {
    service_id: '3NeCFuZNP1v0iyJ2vmYQI6', # String | The unique identifier of the service.
    operation_create: Fastly::OperationCreate.new({method: 'GET', domain: 'www.example.com', path: '/api/v1/users/{var1}'}), # OperationCreate | 
}

begin
  # Create operation
  result = api_instance.api_security_create_operation(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ApisecurityOperationsApi->api_security_create_operation: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | The unique identifier of the service. |  |
| **operation_create** | [**OperationCreate**](OperationCreate.md) |  | [optional] |

### Return type

[**OperationGet**](OperationGet.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `api_security_create_operation_tag()`

```ruby
api_security_create_operation_tag(opts): <TagGet> # Create operation tag
```

Create a new operation tag associated with a specific service.

### Examples

```ruby
api_instance = Fastly::ApisecurityOperationsApi.new
opts = {
    service_id: '3NeCFuZNP1v0iyJ2vmYQI6', # String | The unique identifier of the service.
    tag_create: Fastly::TagCreate.new, # TagCreate | 
}

begin
  # Create operation tag
  result = api_instance.api_security_create_operation_tag(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ApisecurityOperationsApi->api_security_create_operation_tag: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | The unique identifier of the service. |  |
| **tag_create** | [**TagCreate**](TagCreate.md) |  | [optional] |

### Return type

[**TagGet**](TagGet.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `api_security_delete_operation()`

```ruby
api_security_delete_operation(opts) # Delete operation
```

Delete an existing operation associated with a specific service.

### Examples

```ruby
api_instance = Fastly::ApisecurityOperationsApi.new
opts = {
    service_id: '3NeCFuZNP1v0iyJ2vmYQI6', # String | The unique identifier of the service.
    operation_id: 'op_abc123def456', # String | The unique identifier of the operation.
}

begin
  # Delete operation
  api_instance.api_security_delete_operation(opts)
rescue Fastly::ApiError => e
  puts "Error when calling ApisecurityOperationsApi->api_security_delete_operation: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | The unique identifier of the service. |  |
| **operation_id** | **String** | The unique identifier of the operation. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `api_security_delete_operation_tag()`

```ruby
api_security_delete_operation_tag(opts) # Delete operation tag
```

Delete an existing operation tag.

### Examples

```ruby
api_instance = Fastly::ApisecurityOperationsApi.new
opts = {
    service_id: '3NeCFuZNP1v0iyJ2vmYQI6', # String | The unique identifier of the service.
    tag_id: 'tag_abc123def456', # String | The unique identifier of the operation tag.
}

begin
  # Delete operation tag
  api_instance.api_security_delete_operation_tag(opts)
rescue Fastly::ApiError => e
  puts "Error when calling ApisecurityOperationsApi->api_security_delete_operation_tag: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | The unique identifier of the service. |  |
| **tag_id** | **String** | The unique identifier of the operation tag. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `api_security_get_operation()`

```ruby
api_security_get_operation(opts): <OperationGet> # Retrieve operation
```

Get a specific operation associated with a service.

### Examples

```ruby
api_instance = Fastly::ApisecurityOperationsApi.new
opts = {
    service_id: '3NeCFuZNP1v0iyJ2vmYQI6', # String | The unique identifier of the service.
    operation_id: 'op_abc123def456', # String | The unique identifier of the operation.
}

begin
  # Retrieve operation
  result = api_instance.api_security_get_operation(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ApisecurityOperationsApi->api_security_get_operation: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | The unique identifier of the service. |  |
| **operation_id** | **String** | The unique identifier of the operation. |  |

### Return type

[**OperationGet**](OperationGet.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `api_security_get_operation_tag()`

```ruby
api_security_get_operation_tag(opts): <TagGet> # Retrieve operation tag
```

Get a specific operation tag by its unique identifier.

### Examples

```ruby
api_instance = Fastly::ApisecurityOperationsApi.new
opts = {
    service_id: '3NeCFuZNP1v0iyJ2vmYQI6', # String | The unique identifier of the service.
    tag_id: 'tag_abc123def456', # String | The unique identifier of the operation tag.
}

begin
  # Retrieve operation tag
  result = api_instance.api_security_get_operation_tag(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ApisecurityOperationsApi->api_security_get_operation_tag: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | The unique identifier of the service. |  |
| **tag_id** | **String** | The unique identifier of the operation tag. |  |

### Return type

[**TagGet**](TagGet.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `api_security_list_discovered_operations()`

```ruby
api_security_list_discovered_operations(opts): <InlineResponse2001> # List discovered operations
```

List all discovered operations associated with a specific service. Optionally filter operations by status.

### Examples

```ruby
api_instance = Fastly::ApisecurityOperationsApi.new
opts = {
    service_id: '3NeCFuZNP1v0iyJ2vmYQI6', # String | The unique identifier of the service.
    method: ['GET'], # Array<String> | Filter operations by HTTP method.
    domain: ['inner_example'], # Array<String> | Filter operations by fully-qualified domain name (exact match).
    path: '/api/v1/users', # String | Filter operations by path (exact match).
    limit: 100, # Integer | The maximum number of operations to return per page.
    page: 1, # Integer | The page number to return.
}

begin
  # List discovered operations
  result = api_instance.api_security_list_discovered_operations(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ApisecurityOperationsApi->api_security_list_discovered_operations: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | The unique identifier of the service. |  |
| **method** | [**Array&lt;String&gt;**](String.md) | Filter operations by HTTP method. | [optional] |
| **domain** | [**Array&lt;String&gt;**](String.md) | Filter operations by fully-qualified domain name (exact match). | [optional] |
| **path** | **String** | Filter operations by path (exact match). | [optional] |
| **limit** | **Integer** | The maximum number of operations to return per page. | [optional][default to 100] |
| **page** | **Integer** | The page number to return. | [optional][default to 0] |

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `api_security_list_operation_tags()`

```ruby
api_security_list_operation_tags(opts): <InlineResponse2003> # List operation tags
```

List all operation tags associated with a specific service.

### Examples

```ruby
api_instance = Fastly::ApisecurityOperationsApi.new
opts = {
    service_id: '3NeCFuZNP1v0iyJ2vmYQI6', # String | The unique identifier of the service.
    limit: 100, # Integer | The maximum number of operations to return per page.
    page: 1, # Integer | The page number to return.
}

begin
  # List operation tags
  result = api_instance.api_security_list_operation_tags(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ApisecurityOperationsApi->api_security_list_operation_tags: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | The unique identifier of the service. |  |
| **limit** | **Integer** | The maximum number of operations to return per page. | [optional][default to 100] |
| **page** | **Integer** | The page number to return. | [optional][default to 0] |

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `api_security_list_operations()`

```ruby
api_security_list_operations(opts): <InlineResponse2002> # List operations
```

List all operations associated with a specific service. Optionally filter operations by tag ID.

### Examples

```ruby
api_instance = Fastly::ApisecurityOperationsApi.new
opts = {
    service_id: '3NeCFuZNP1v0iyJ2vmYQI6', # String | The unique identifier of the service.
    tag_id: 'tag_abc123def456', # String | Filter operations by operation tag ID. Only operations associated with this operation tag will be returned.
    status: 'SAVED', # String | Filter operations by status. Defaults to SAVED if omitted.
    method: ['GET'], # Array<String> | Filter operations by HTTP method.
    domain: ['inner_example'], # Array<String> | Filter operations by fully-qualified domain name (exact match).
    path: '/api/v1/users', # String | Filter operations by path (exact match).
    limit: 100, # Integer | The maximum number of operations to return per page.
    page: 1, # Integer | The page number to return.
}

begin
  # List operations
  result = api_instance.api_security_list_operations(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ApisecurityOperationsApi->api_security_list_operations: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | The unique identifier of the service. |  |
| **tag_id** | **String** | Filter operations by operation tag ID. Only operations associated with this operation tag will be returned. | [optional] |
| **status** | **String** | Filter operations by status. Defaults to SAVED if omitted. | [optional][default to &#39;SAVED&#39;] |
| **method** | [**Array&lt;String&gt;**](String.md) | Filter operations by HTTP method. | [optional] |
| **domain** | [**Array&lt;String&gt;**](String.md) | Filter operations by fully-qualified domain name (exact match). | [optional] |
| **path** | **String** | Filter operations by path (exact match). | [optional] |
| **limit** | **Integer** | The maximum number of operations to return per page. | [optional][default to 100] |
| **page** | **Integer** | The page number to return. | [optional][default to 0] |

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `api_security_update_operation()`

```ruby
api_security_update_operation(opts): <OperationGet> # Update operation
```

Partially update an existing operation associated with a specific service.

### Examples

```ruby
api_instance = Fastly::ApisecurityOperationsApi.new
opts = {
    service_id: '3NeCFuZNP1v0iyJ2vmYQI6', # String | The unique identifier of the service.
    operation_id: 'op_abc123def456', # String | The unique identifier of the operation.
    operation_update: Fastly::OperationUpdate.new, # OperationUpdate | 
}

begin
  # Update operation
  result = api_instance.api_security_update_operation(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ApisecurityOperationsApi->api_security_update_operation: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | The unique identifier of the service. |  |
| **operation_id** | **String** | The unique identifier of the operation. |  |
| **operation_update** | [**OperationUpdate**](OperationUpdate.md) |  | [optional] |

### Return type

[**OperationGet**](OperationGet.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `api_security_update_operation_tag()`

```ruby
api_security_update_operation_tag(opts): <TagGet> # Update operation tag
```

Partially update an existing operation tag.

### Examples

```ruby
api_instance = Fastly::ApisecurityOperationsApi.new
opts = {
    service_id: '3NeCFuZNP1v0iyJ2vmYQI6', # String | The unique identifier of the service.
    tag_id: 'tag_abc123def456', # String | The unique identifier of the operation tag.
    body: 3.56, # TagBase | 
}

begin
  # Update operation tag
  result = api_instance.api_security_update_operation_tag(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ApisecurityOperationsApi->api_security_update_operation_tag: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | The unique identifier of the service. |  |
| **tag_id** | **String** | The unique identifier of the operation tag. |  |
| **body** | **TagBase** |  | [optional] |

### Return type

[**TagGet**](TagGet.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
