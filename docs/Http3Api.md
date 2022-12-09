# Fastly::Http3Api


```ruby
require 'fastly'
api_instance = Fastly::Http3Api.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_http3**](Http3Api.md#create_http3) | **POST** /service/{service_id}/version/{version_id}/http3 | Enable support for HTTP/3 |
| [**delete_http3**](Http3Api.md#delete_http3) | **DELETE** /service/{service_id}/version/{version_id}/http3 | Disable support for HTTP/3 |
| [**get_http3**](Http3Api.md#get_http3) | **GET** /service/{service_id}/version/{version_id}/http3 | Get HTTP/3 status |


## `create_http3()`

```ruby
create_http3(opts): <Http3> # Enable support for HTTP/3
```

Enable HTTP/3 (QUIC) support for a particular service and version.

### Examples

```ruby
api_instance = Fastly::Http3Api.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    service_id: 'service_id_example', # String | 
    version: 56, # Integer | 
    created_at: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Date and time in ISO 8601 format.
    deleted_at: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Date and time in ISO 8601 format.
    updated_at: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Date and time in ISO 8601 format.
    feature_revision: 56, # Integer | Revision number of the HTTP/3 feature implementation. Defaults to the most recent revision.
}

begin
  # Enable support for HTTP/3
  result = api_instance.create_http3(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling Http3Api->create_http3: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **service_id** | **String** |  | [optional] |
| **version** | **Integer** |  | [optional] |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional] |
| **feature_revision** | **Integer** | Revision number of the HTTP/3 feature implementation. Defaults to the most recent revision. | [optional] |

### Return type

[**Http3**](Http3.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_http3()`

```ruby
delete_http3(opts): <InlineResponse200> # Disable support for HTTP/3
```

Disable HTTP/3 (QUIC) support for a particular service and version.

### Examples

```ruby
api_instance = Fastly::Http3Api.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # Disable support for HTTP/3
  result = api_instance.delete_http3(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling Http3Api->delete_http3: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_http3()`

```ruby
get_http3(opts): <Http3> # Get HTTP/3 status
```

Get the status of HTTP/3 (QUIC) support for a particular service and version.

### Examples

```ruby
api_instance = Fastly::Http3Api.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # Get HTTP/3 status
  result = api_instance.get_http3(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling Http3Api->get_http3: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Http3**](Http3.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
