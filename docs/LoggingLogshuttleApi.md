# Fastly::LoggingLogshuttleApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingLogshuttleApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_log_logshuttle**](LoggingLogshuttleApi.md#create_log_logshuttle) | **POST** /service/{service_id}/version/{version_id}/logging/logshuttle | Create a Log Shuttle log endpoint |
| [**delete_log_logshuttle**](LoggingLogshuttleApi.md#delete_log_logshuttle) | **DELETE** /service/{service_id}/version/{version_id}/logging/logshuttle/{logging_logshuttle_name} | Delete a Log Shuttle log endpoint |
| [**get_log_logshuttle**](LoggingLogshuttleApi.md#get_log_logshuttle) | **GET** /service/{service_id}/version/{version_id}/logging/logshuttle/{logging_logshuttle_name} | Get a Log Shuttle log endpoint |
| [**list_log_logshuttle**](LoggingLogshuttleApi.md#list_log_logshuttle) | **GET** /service/{service_id}/version/{version_id}/logging/logshuttle | List Log Shuttle log endpoints |
| [**update_log_logshuttle**](LoggingLogshuttleApi.md#update_log_logshuttle) | **PUT** /service/{service_id}/version/{version_id}/logging/logshuttle/{logging_logshuttle_name} | Update a Log Shuttle log endpoint |


## `create_log_logshuttle()`

```ruby
create_log_logshuttle(opts): <LoggingLogshuttleResponse> # Create a Log Shuttle log endpoint
```

Create a Log Shuttle logging endpoint for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingLogshuttleApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    token: 'token_example', # String | The data authentication token associated with this endpoint.
    url: 'url_example', # String | The URL to stream logs to.
}

begin
  # Create a Log Shuttle log endpoint
  result = api_instance.create_log_logshuttle(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingLogshuttleApi->create_log_logshuttle: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional][default to &#39;%h %l %u %t \&quot;%r\&quot; %&amp;gt;s %b&#39;] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **token** | **String** | The data authentication token associated with this endpoint. | [optional] |
| **url** | **String** | The URL to stream logs to. | [optional] |

### Return type

[**LoggingLogshuttleResponse**](LoggingLogshuttleResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_logshuttle()`

```ruby
delete_log_logshuttle(opts): <InlineResponse200> # Delete a Log Shuttle log endpoint
```

Delete the Log Shuttle logging endpoint for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingLogshuttleApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_logshuttle_name: 'logging_logshuttle_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete a Log Shuttle log endpoint
  result = api_instance.delete_log_logshuttle(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingLogshuttleApi->delete_log_logshuttle: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_logshuttle_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_logshuttle()`

```ruby
get_log_logshuttle(opts): <LoggingLogshuttleResponse> # Get a Log Shuttle log endpoint
```

Get the Log Shuttle logging endpoint for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingLogshuttleApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_logshuttle_name: 'logging_logshuttle_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get a Log Shuttle log endpoint
  result = api_instance.get_log_logshuttle(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingLogshuttleApi->get_log_logshuttle: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_logshuttle_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingLogshuttleResponse**](LoggingLogshuttleResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_logshuttle()`

```ruby
list_log_logshuttle(opts): <Array<LoggingLogshuttleResponse>> # List Log Shuttle log endpoints
```

List all of the Log Shuttle logging endpoints for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingLogshuttleApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List Log Shuttle log endpoints
  result = api_instance.list_log_logshuttle(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingLogshuttleApi->list_log_logshuttle: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingLogshuttleResponse&gt;**](LoggingLogshuttleResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_logshuttle()`

```ruby
update_log_logshuttle(opts): <LoggingLogshuttleResponse> # Update a Log Shuttle log endpoint
```

Update the Log Shuttle logging endpoint for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingLogshuttleApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_logshuttle_name: 'logging_logshuttle_name_example', # String | The name for the real-time logging configuration.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    token: 'token_example', # String | The data authentication token associated with this endpoint.
    url: 'url_example', # String | The URL to stream logs to.
}

begin
  # Update a Log Shuttle log endpoint
  result = api_instance.update_log_logshuttle(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingLogshuttleApi->update_log_logshuttle: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_logshuttle_name** | **String** | The name for the real-time logging configuration. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional][default to &#39;%h %l %u %t \&quot;%r\&quot; %&amp;gt;s %b&#39;] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **token** | **String** | The data authentication token associated with this endpoint. | [optional] |
| **url** | **String** | The URL to stream logs to. | [optional] |

### Return type

[**LoggingLogshuttleResponse**](LoggingLogshuttleResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
