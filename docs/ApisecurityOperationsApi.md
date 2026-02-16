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
    operation_create: Fastly::OperationCreate.new, # OperationCreate | 
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
    status: 'DISCOVERED', # String | Filter operations by status. Only operations with this status will be returned.
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
| **status** | **String** | Filter operations by status. Only operations with this status will be returned. | [optional] |
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
