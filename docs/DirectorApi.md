# Fastly::DirectorApi


```ruby
require 'fastly'
api_instance = Fastly::DirectorApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_director**](DirectorApi.md#create_director) | **POST** /service/{service_id}/version/{version_id}/director | Create a director
[**delete_director**](DirectorApi.md#delete_director) | **DELETE** /service/{service_id}/version/{version_id}/director/{director_name} | Delete a director
[**get_director**](DirectorApi.md#get_director) | **GET** /service/{service_id}/version/{version_id}/director/{director_name} | Get a director
[**list_directors**](DirectorApi.md#list_directors) | **GET** /service/{service_id}/version/{version_id}/director | List directors
[**update_director**](DirectorApi.md#update_director) | **PUT** /service/{service_id}/version/{version_id}/director/{director_name} | Update a director


## `create_director()`

```ruby
create_director(opts): <DirectorResponse> # Create a director
```

Create a director for a particular service and version.

### Examples

```ruby
api_instance = Fastly::DirectorApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    backends: [Fastly::Backend.new], # Array<Backend> | List of backends associated to a director.
    capacity: 56, # Integer | Unused.
    comment: 'comment_example', # String | A freeform descriptive note.
    name: 'name_example', # String | Name for the Director.
    quorum: 56, # Integer | The percentage of capacity that needs to be up for a director to be considered up. `0` to `100`.
    shield: 'shield_example', # String | Selected POP to serve as a shield for the backends. Defaults to `null` meaning no origin shielding if not set. Refer to the [POPs API endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/) to get a list of available POPs used for shielding.
    type: 1, # Integer | What type of load balance group to use.
    retries: 56, # Integer | How many backends to search if it fails.
}

begin
  # Create a director
  result = api_instance.create_director(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DirectorApi->create_director: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **backends** | [**Array&lt;Backend&gt;**](Backend.md) | List of backends associated to a director. | [optional] |
| **capacity** | **Integer** | Unused. | [optional] |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **name** | **String** | Name for the Director. | [optional] |
| **quorum** | **Integer** | The percentage of capacity that needs to be up for a director to be considered up. `0` to `100`. | [optional][default to 75] |
| **shield** | **String** | Selected POP to serve as a shield for the backends. Defaults to `null` meaning no origin shielding if not set. Refer to the [POPs API endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/) to get a list of available POPs used for shielding. | [optional][default to &#39;null&#39;] |
| **type** | **Integer** | What type of load balance group to use. | [optional][default to 1] |
| **retries** | **Integer** | How many backends to search if it fails. | [optional][default to 5] |

### Return type

[**DirectorResponse**](DirectorResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_director()`

```ruby
delete_director(opts): <InlineResponse200> # Delete a director
```

Delete the director for a particular service and version.

### Examples

```ruby
api_instance = Fastly::DirectorApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    director_name: 'director_name_example', # String | Name for the Director.
}

begin
  # Delete a director
  result = api_instance.delete_director(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DirectorApi->delete_director: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **director_name** | **String** | Name for the Director. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_director()`

```ruby
get_director(opts): <DirectorResponse> # Get a director
```

Get the director for a particular service and version.

### Examples

```ruby
api_instance = Fastly::DirectorApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    director_name: 'director_name_example', # String | Name for the Director.
}

begin
  # Get a director
  result = api_instance.get_director(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DirectorApi->get_director: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **director_name** | **String** | Name for the Director. |  |

### Return type

[**DirectorResponse**](DirectorResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_directors()`

```ruby
list_directors(opts): <Array<DirectorResponse>> # List directors
```

List the directors for a particular service and version.

### Examples

```ruby
api_instance = Fastly::DirectorApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List directors
  result = api_instance.list_directors(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DirectorApi->list_directors: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;DirectorResponse&gt;**](DirectorResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_director()`

```ruby
update_director(opts): <DirectorResponse> # Update a director
```

Update the director for a particular service and version.

### Examples

```ruby
api_instance = Fastly::DirectorApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    director_name: 'director_name_example', # String | Name for the Director.
}

begin
  # Update a director
  result = api_instance.update_director(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DirectorApi->update_director: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **director_name** | **String** | Name for the Director. |  |

### Return type

[**DirectorResponse**](DirectorResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
