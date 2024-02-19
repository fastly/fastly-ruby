# Fastly::ResponseObjectApi


```ruby
require 'fastly'
api_instance = Fastly::ResponseObjectApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_response_object**](ResponseObjectApi.md#create_response_object) | **POST** /service/{service_id}/version/{version_id}/response_object | Create a Response object |
| [**delete_response_object**](ResponseObjectApi.md#delete_response_object) | **DELETE** /service/{service_id}/version/{version_id}/response_object/{response_object_name} | Delete a Response Object |
| [**get_response_object**](ResponseObjectApi.md#get_response_object) | **GET** /service/{service_id}/version/{version_id}/response_object/{response_object_name} | Get a Response object |
| [**list_response_objects**](ResponseObjectApi.md#list_response_objects) | **GET** /service/{service_id}/version/{version_id}/response_object | List Response objects |
| [**update_response_object**](ResponseObjectApi.md#update_response_object) | **PUT** /service/{service_id}/version/{version_id}/response_object/{response_object_name} | Update a Response object |


## `create_response_object()`

```ruby
create_response_object(opts): <ResponseObjectResponse> # Create a Response object
```

Creates a new Response Object.

### Examples

```ruby
api_instance = Fastly::ResponseObjectApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    create_response_object_request: Fastly::CreateResponseObjectRequest.new, # CreateResponseObjectRequest | 
}

begin
  # Create a Response object
  result = api_instance.create_response_object(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ResponseObjectApi->create_response_object: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **create_response_object_request** | [**CreateResponseObjectRequest**](CreateResponseObjectRequest.md) |  | [optional] |

### Return type

[**ResponseObjectResponse**](ResponseObjectResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_response_object()`

```ruby
delete_response_object(opts): <InlineResponse200> # Delete a Response Object
```

Deletes the specified Response Object.

### Examples

```ruby
api_instance = Fastly::ResponseObjectApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    response_object_name: 'response_object_name_example', # String | Name for the request settings.
}

begin
  # Delete a Response Object
  result = api_instance.delete_response_object(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ResponseObjectApi->delete_response_object: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **response_object_name** | **String** | Name for the request settings. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_response_object()`

```ruby
get_response_object(opts): <ResponseObjectResponse> # Get a Response object
```

Gets the specified Response Object.

### Examples

```ruby
api_instance = Fastly::ResponseObjectApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    response_object_name: 'response_object_name_example', # String | Name for the request settings.
}

begin
  # Get a Response object
  result = api_instance.get_response_object(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ResponseObjectApi->get_response_object: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **response_object_name** | **String** | Name for the request settings. |  |

### Return type

[**ResponseObjectResponse**](ResponseObjectResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_response_objects()`

```ruby
list_response_objects(opts): <Array<ResponseObjectResponse>> # List Response objects
```

Returns all Response Objects for the specified service and version.

### Examples

```ruby
api_instance = Fastly::ResponseObjectApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List Response objects
  result = api_instance.list_response_objects(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ResponseObjectApi->list_response_objects: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;ResponseObjectResponse&gt;**](ResponseObjectResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_response_object()`

```ruby
update_response_object(opts): <ResponseObjectResponse> # Update a Response object
```

Updates the specified Response Object.

### Examples

```ruby
api_instance = Fastly::ResponseObjectApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    response_object_name: 'response_object_name_example', # String | Name for the request settings.
    create_response_object_request: Fastly::CreateResponseObjectRequest.new, # CreateResponseObjectRequest | 
}

begin
  # Update a Response object
  result = api_instance.update_response_object(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ResponseObjectApi->update_response_object: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **response_object_name** | **String** | Name for the request settings. |  |
| **create_response_object_request** | [**CreateResponseObjectRequest**](CreateResponseObjectRequest.md) |  | [optional] |

### Return type

[**ResponseObjectResponse**](ResponseObjectResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
