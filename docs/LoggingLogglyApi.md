# Fastly::LoggingLogglyApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingLogglyApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_log_loggly**](LoggingLogglyApi.md#create_log_loggly) | **POST** /service/{service_id}/version/{version_id}/logging/loggly | Create a Loggly log endpoint
[**delete_log_loggly**](LoggingLogglyApi.md#delete_log_loggly) | **DELETE** /service/{service_id}/version/{version_id}/logging/loggly/{logging_loggly_name} | Delete a Loggly log endpoint
[**get_log_loggly**](LoggingLogglyApi.md#get_log_loggly) | **GET** /service/{service_id}/version/{version_id}/logging/loggly/{logging_loggly_name} | Get a Loggly log endpoint
[**list_log_loggly**](LoggingLogglyApi.md#list_log_loggly) | **GET** /service/{service_id}/version/{version_id}/logging/loggly | List Loggly log endpoints
[**update_log_loggly**](LoggingLogglyApi.md#update_log_loggly) | **PUT** /service/{service_id}/version/{version_id}/logging/loggly/{logging_loggly_name} | Update a Loggly log endpoint


## `create_log_loggly()`

```ruby
create_log_loggly(opts): <LoggingLogglyResponse> # Create a Loggly log endpoint
```

Create a Loggly logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingLogglyApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/).
    log_processing_region: 'none', # String | The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global.
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    token: 'token_example', # String | The token to use for authentication ([https://www.loggly.com/docs/customer-token-authentication-token/](https://www.loggly.com/docs/customer-token-authentication-token/)).
}

begin
  # Create a Loggly log endpoint
  result = api_instance.create_log_loggly(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingLogglyApi->create_log_loggly: #{e}"
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
| **format** | **String** | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/). | [optional][default to &#39;%h %l %u %t \&quot;%r\&quot; %&amp;gt;s %b&#39;] |
| **log_processing_region** | **String** | The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global. | [optional][default to &#39;none&#39;] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **token** | **String** | The token to use for authentication ([https://www.loggly.com/docs/customer-token-authentication-token/](https://www.loggly.com/docs/customer-token-authentication-token/)). | [optional] |

### Return type

[**LoggingLogglyResponse**](LoggingLogglyResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_loggly()`

```ruby
delete_log_loggly(opts): <InlineResponse200> # Delete a Loggly log endpoint
```

Delete the Loggly logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingLogglyApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_loggly_name: 'logging_loggly_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete a Loggly log endpoint
  result = api_instance.delete_log_loggly(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingLogglyApi->delete_log_loggly: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_loggly_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_loggly()`

```ruby
get_log_loggly(opts): <LoggingLogglyResponse> # Get a Loggly log endpoint
```

Get the Loggly logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingLogglyApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_loggly_name: 'logging_loggly_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get a Loggly log endpoint
  result = api_instance.get_log_loggly(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingLogglyApi->get_log_loggly: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_loggly_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingLogglyResponse**](LoggingLogglyResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_loggly()`

```ruby
list_log_loggly(opts): <Array<LoggingLogglyResponse>> # List Loggly log endpoints
```

List all Loggly logging objects for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingLogglyApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List Loggly log endpoints
  result = api_instance.list_log_loggly(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingLogglyApi->list_log_loggly: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingLogglyResponse&gt;**](LoggingLogglyResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_loggly()`

```ruby
update_log_loggly(opts): <LoggingLogglyResponse> # Update a Loggly log endpoint
```

Update the Loggly logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingLogglyApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_loggly_name: 'logging_loggly_name_example', # String | The name for the real-time logging configuration.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/).
    log_processing_region: 'none', # String | The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global.
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    token: 'token_example', # String | The token to use for authentication ([https://www.loggly.com/docs/customer-token-authentication-token/](https://www.loggly.com/docs/customer-token-authentication-token/)).
}

begin
  # Update a Loggly log endpoint
  result = api_instance.update_log_loggly(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingLogglyApi->update_log_loggly: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_loggly_name** | **String** | The name for the real-time logging configuration. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/). | [optional][default to &#39;%h %l %u %t \&quot;%r\&quot; %&amp;gt;s %b&#39;] |
| **log_processing_region** | **String** | The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global. | [optional][default to &#39;none&#39;] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **token** | **String** | The token to use for authentication ([https://www.loggly.com/docs/customer-token-authentication-token/](https://www.loggly.com/docs/customer-token-authentication-token/)). | [optional] |

### Return type

[**LoggingLogglyResponse**](LoggingLogglyResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
