# Fastly::LoggingScalyrApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingScalyrApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_log_scalyr**](LoggingScalyrApi.md#create_log_scalyr) | **POST** /service/{service_id}/version/{version_id}/logging/scalyr | Create a Scalyr log endpoint |
| [**delete_log_scalyr**](LoggingScalyrApi.md#delete_log_scalyr) | **DELETE** /service/{service_id}/version/{version_id}/logging/scalyr/{logging_scalyr_name} | Delete the Scalyr log endpoint |
| [**get_log_scalyr**](LoggingScalyrApi.md#get_log_scalyr) | **GET** /service/{service_id}/version/{version_id}/logging/scalyr/{logging_scalyr_name} | Get a Scalyr log endpoint |
| [**list_log_scalyr**](LoggingScalyrApi.md#list_log_scalyr) | **GET** /service/{service_id}/version/{version_id}/logging/scalyr | List Scalyr log endpoints |
| [**update_log_scalyr**](LoggingScalyrApi.md#update_log_scalyr) | **PUT** /service/{service_id}/version/{version_id}/logging/scalyr/{logging_scalyr_name} | Update the Scalyr log endpoint |


## `create_log_scalyr()`

```ruby
create_log_scalyr(opts): <LoggingScalyrResponse> # Create a Scalyr log endpoint
```

Create a Scalyr for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingScalyrApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    region: 'US', # String | The region that log data will be sent to.
    token: 'token_example', # String | The token to use for authentication ([https://www.scalyr.com/keys](https://www.scalyr.com/keys)).
    project_id: 'project_id_example', # String | The name of the logfile within Scalyr.
}

begin
  # Create a Scalyr log endpoint
  result = api_instance.create_log_scalyr(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingScalyrApi->create_log_scalyr: #{e}"
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
| **region** | **String** | The region that log data will be sent to. | [optional][default to &#39;US&#39;] |
| **token** | **String** | The token to use for authentication ([https://www.scalyr.com/keys](https://www.scalyr.com/keys)). | [optional] |
| **project_id** | **String** | The name of the logfile within Scalyr. | [optional][default to &#39;logplex&#39;] |

### Return type

[**LoggingScalyrResponse**](LoggingScalyrResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_scalyr()`

```ruby
delete_log_scalyr(opts): <InlineResponse200> # Delete the Scalyr log endpoint
```

Delete the Scalyr for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingScalyrApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_scalyr_name: 'logging_scalyr_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete the Scalyr log endpoint
  result = api_instance.delete_log_scalyr(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingScalyrApi->delete_log_scalyr: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_scalyr_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_scalyr()`

```ruby
get_log_scalyr(opts): <LoggingScalyrResponse> # Get a Scalyr log endpoint
```

Get the Scalyr for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingScalyrApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_scalyr_name: 'logging_scalyr_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get a Scalyr log endpoint
  result = api_instance.get_log_scalyr(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingScalyrApi->get_log_scalyr: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_scalyr_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingScalyrResponse**](LoggingScalyrResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_scalyr()`

```ruby
list_log_scalyr(opts): <Array<LoggingScalyrResponse>> # List Scalyr log endpoints
```

List all of the Scalyrs for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingScalyrApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List Scalyr log endpoints
  result = api_instance.list_log_scalyr(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingScalyrApi->list_log_scalyr: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingScalyrResponse&gt;**](LoggingScalyrResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_scalyr()`

```ruby
update_log_scalyr(opts): <LoggingScalyrResponse> # Update the Scalyr log endpoint
```

Update the Scalyr for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingScalyrApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_scalyr_name: 'logging_scalyr_name_example', # String | The name for the real-time logging configuration.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    region: 'US', # String | The region that log data will be sent to.
    token: 'token_example', # String | The token to use for authentication ([https://www.scalyr.com/keys](https://www.scalyr.com/keys)).
    project_id: 'project_id_example', # String | The name of the logfile within Scalyr.
}

begin
  # Update the Scalyr log endpoint
  result = api_instance.update_log_scalyr(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingScalyrApi->update_log_scalyr: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_scalyr_name** | **String** | The name for the real-time logging configuration. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.   | [optional][default to FORMAT_VERSION::v2] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional][default to &#39;%h %l %u %t \&quot;%r\&quot; %&amp;gt;s %b&#39;] |
| **region** | **String** | The region that log data will be sent to. | [optional][default to &#39;US&#39;] |
| **token** | **String** | The token to use for authentication ([https://www.scalyr.com/keys](https://www.scalyr.com/keys)). | [optional] |
| **project_id** | **String** | The name of the logfile within Scalyr. | [optional][default to &#39;logplex&#39;] |

### Return type

[**LoggingScalyrResponse**](LoggingScalyrResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
