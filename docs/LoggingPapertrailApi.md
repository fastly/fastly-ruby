# Fastly::LoggingPapertrailApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingPapertrailApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_log_papertrail**](LoggingPapertrailApi.md#create_log_papertrail) | **POST** /service/{service_id}/version/{version_id}/logging/papertrail | Create a Papertrail log endpoint |
| [**delete_log_papertrail**](LoggingPapertrailApi.md#delete_log_papertrail) | **DELETE** /service/{service_id}/version/{version_id}/logging/papertrail/{logging_papertrail_name} | Delete a Papertrail log endpoint |
| [**get_log_papertrail**](LoggingPapertrailApi.md#get_log_papertrail) | **GET** /service/{service_id}/version/{version_id}/logging/papertrail/{logging_papertrail_name} | Get a Papertrail log endpoint |
| [**list_log_papertrail**](LoggingPapertrailApi.md#list_log_papertrail) | **GET** /service/{service_id}/version/{version_id}/logging/papertrail | List Papertrail log endpoints |
| [**update_log_papertrail**](LoggingPapertrailApi.md#update_log_papertrail) | **PUT** /service/{service_id}/version/{version_id}/logging/papertrail/{logging_papertrail_name} | Update a Papertrail log endpoint |


## `create_log_papertrail()`

```ruby
create_log_papertrail(opts): <LoggingPapertrailResponse> # Create a Papertrail log endpoint
```

Create a Papertrail for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingPapertrailApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    address: 'address_example', # String | A hostname or IPv4 address.
    port: 56, # Integer | The port number.
}

begin
  # Create a Papertrail log endpoint
  result = api_instance.create_log_papertrail(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingPapertrailApi->create_log_papertrail: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.   | [optional][default to FORMAT_VERSION::v2] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional][default to &#39;%h %l %u %t \&quot;%r\&quot; %&amp;gt;s %b&#39;] |
| **address** | **String** | A hostname or IPv4 address. | [optional] |
| **port** | **Integer** | The port number. | [optional][default to 514] |

### Return type

[**LoggingPapertrailResponse**](LoggingPapertrailResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_papertrail()`

```ruby
delete_log_papertrail(opts): <InlineResponse200> # Delete a Papertrail log endpoint
```

Delete the Papertrail for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingPapertrailApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_papertrail_name: 'logging_papertrail_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete a Papertrail log endpoint
  result = api_instance.delete_log_papertrail(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingPapertrailApi->delete_log_papertrail: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_papertrail_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_papertrail()`

```ruby
get_log_papertrail(opts): <LoggingPapertrailResponse> # Get a Papertrail log endpoint
```

Get the Papertrail for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingPapertrailApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_papertrail_name: 'logging_papertrail_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get a Papertrail log endpoint
  result = api_instance.get_log_papertrail(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingPapertrailApi->get_log_papertrail: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_papertrail_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingPapertrailResponse**](LoggingPapertrailResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_papertrail()`

```ruby
list_log_papertrail(opts): <Array<LoggingPapertrailResponse>> # List Papertrail log endpoints
```

List all of the Papertrails for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingPapertrailApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List Papertrail log endpoints
  result = api_instance.list_log_papertrail(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingPapertrailApi->list_log_papertrail: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingPapertrailResponse&gt;**](LoggingPapertrailResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_papertrail()`

```ruby
update_log_papertrail(opts): <LoggingPapertrailResponse> # Update a Papertrail log endpoint
```

Update the Papertrail for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingPapertrailApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_papertrail_name: 'logging_papertrail_name_example', # String | The name for the real-time logging configuration.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    address: 'address_example', # String | A hostname or IPv4 address.
    port: 56, # Integer | The port number.
}

begin
  # Update a Papertrail log endpoint
  result = api_instance.update_log_papertrail(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingPapertrailApi->update_log_papertrail: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_papertrail_name** | **String** | The name for the real-time logging configuration. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.   | [optional][default to FORMAT_VERSION::v2] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional][default to &#39;%h %l %u %t \&quot;%r\&quot; %&amp;gt;s %b&#39;] |
| **address** | **String** | A hostname or IPv4 address. | [optional] |
| **port** | **Integer** | The port number. | [optional][default to 514] |

### Return type

[**LoggingPapertrailResponse**](LoggingPapertrailResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
