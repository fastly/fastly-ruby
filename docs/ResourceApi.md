# Fastly::ResourceApi


```ruby
require 'fastly'
api_instance = Fastly::ResourceApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_resource**](ResourceApi.md#create_resource) | **POST** /service/{service_id}/version/{version_id}/resource | Create a resource link |
| [**delete_resource**](ResourceApi.md#delete_resource) | **DELETE** /service/{service_id}/version/{version_id}/resource/{id} | Delete a resource link |
| [**get_resource**](ResourceApi.md#get_resource) | **GET** /service/{service_id}/version/{version_id}/resource/{id} | Display a resource link |
| [**list_resources**](ResourceApi.md#list_resources) | **GET** /service/{service_id}/version/{version_id}/resource | List resource links |
| [**update_resource**](ResourceApi.md#update_resource) | **PUT** /service/{service_id}/version/{version_id}/resource/{id} | Update a resource link |


## `create_resource()`

```ruby
create_resource(opts): <ResourceResponse> # Create a resource link
```

Create a link between a resource and a service version.

### Examples

```ruby
api_instance = Fastly::ResourceApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    resource_id: 'resource_id_example', # String | The ID of the underlying linked resource.
    name: 'name_example', # String | The name of the resource link.
}

begin
  # Create a resource link
  result = api_instance.create_resource(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ResourceApi->create_resource: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **resource_id** | **String** | The ID of the underlying linked resource. | [optional] |
| **name** | **String** | The name of the resource link. | [optional] |

### Return type

[**ResourceResponse**](ResourceResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_resource()`

```ruby
delete_resource(opts): <InlineResponse200> # Delete a resource link
```

Delete a link between a resource and a service version.

### Examples

```ruby
api_instance = Fastly::ResourceApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    id: 'id_example', # String | An alphanumeric string identifying the resource link.
}

begin
  # Delete a resource link
  result = api_instance.delete_resource(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ResourceApi->delete_resource: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **id** | **String** | An alphanumeric string identifying the resource link. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_resource()`

```ruby
get_resource(opts): <ResourceResponse> # Display a resource link
```

Display a resource link by its identifier.

### Examples

```ruby
api_instance = Fastly::ResourceApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    id: 'id_example', # String | An alphanumeric string identifying the resource link.
}

begin
  # Display a resource link
  result = api_instance.get_resource(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ResourceApi->get_resource: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **id** | **String** | An alphanumeric string identifying the resource link. |  |

### Return type

[**ResourceResponse**](ResourceResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_resources()`

```ruby
list_resources(opts): <Array<ResourceResponse>> # List resource links
```

List links between resources and services

### Examples

```ruby
api_instance = Fastly::ResourceApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List resource links
  result = api_instance.list_resources(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ResourceApi->list_resources: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;ResourceResponse&gt;**](ResourceResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_resource()`

```ruby
update_resource(opts): <ResourceResponse> # Update a resource link
```

Update a link between a resource and a service version.

### Examples

```ruby
api_instance = Fastly::ResourceApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    id: 'id_example', # String | An alphanumeric string identifying the resource link.
    resource_id: 'resource_id_example', # String | The ID of the underlying linked resource.
    name: 'name_example', # String | The name of the resource link.
}

begin
  # Update a resource link
  result = api_instance.update_resource(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ResourceApi->update_resource: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **id** | **String** | An alphanumeric string identifying the resource link. |  |
| **resource_id** | **String** | The ID of the underlying linked resource. | [optional] |
| **name** | **String** | The name of the resource link. | [optional] |

### Return type

[**ResourceResponse**](ResourceResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
