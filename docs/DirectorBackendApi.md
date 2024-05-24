# Fastly::DirectorBackendApi


```ruby
require 'fastly'
api_instance = Fastly::DirectorBackendApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_director_backend**](DirectorBackendApi.md#create_director_backend) | **POST** /service/{service_id}/version/{version_id}/director/{director_name}/backend/{backend_name} | Create a director-backend relationship
[**delete_director_backend**](DirectorBackendApi.md#delete_director_backend) | **DELETE** /service/{service_id}/version/{version_id}/director/{director_name}/backend/{backend_name} | Delete a director-backend relationship
[**get_director_backend**](DirectorBackendApi.md#get_director_backend) | **GET** /service/{service_id}/version/{version_id}/director/{director_name}/backend/{backend_name} | Get a director-backend relationship


## `create_director_backend()`

```ruby
create_director_backend(opts): <DirectorBackend> # Create a director-backend relationship
```

Establishes a relationship between a Backend and a Director. The Backend is then considered a member of the Director and can be used to balance traffic onto.

### Examples

```ruby
api_instance = Fastly::DirectorBackendApi.new
opts = {
    director_name: 'director_name_example', # String | Name for the Director.
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    backend_name: 'backend_name_example', # String | The name of the backend.
}

begin
  # Create a director-backend relationship
  result = api_instance.create_director_backend(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DirectorBackendApi->create_director_backend: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **director_name** | **String** | Name for the Director. |  |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **backend_name** | **String** | The name of the backend. |  |

### Return type

[**DirectorBackend**](DirectorBackend.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_director_backend()`

```ruby
delete_director_backend(opts): <InlineResponse200> # Delete a director-backend relationship
```

Deletes the relationship between a Backend and a Director. The Backend is no longer considered a member of the Director and thus will not have traffic balanced onto it from this Director.

### Examples

```ruby
api_instance = Fastly::DirectorBackendApi.new
opts = {
    director_name: 'director_name_example', # String | Name for the Director.
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    backend_name: 'backend_name_example', # String | The name of the backend.
}

begin
  # Delete a director-backend relationship
  result = api_instance.delete_director_backend(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DirectorBackendApi->delete_director_backend: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **director_name** | **String** | Name for the Director. |  |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **backend_name** | **String** | The name of the backend. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_director_backend()`

```ruby
get_director_backend(opts): <DirectorBackend> # Get a director-backend relationship
```

Returns the relationship between a Backend and a Director. If the Backend has been associated with the Director, it returns a simple record indicating this. Otherwise, returns a 404.

### Examples

```ruby
api_instance = Fastly::DirectorBackendApi.new
opts = {
    director_name: 'director_name_example', # String | Name for the Director.
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    backend_name: 'backend_name_example', # String | The name of the backend.
}

begin
  # Get a director-backend relationship
  result = api_instance.get_director_backend(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DirectorBackendApi->get_director_backend: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **director_name** | **String** | Name for the Director. |  |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **backend_name** | **String** | The name of the backend. |  |

### Return type

[**DirectorBackend**](DirectorBackend.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
