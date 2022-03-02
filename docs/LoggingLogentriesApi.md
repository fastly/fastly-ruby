# Fastly::LoggingLogentriesApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingLogentriesApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_log_logentries**](LoggingLogentriesApi.md#create_log_logentries) | **POST** /service/{service_id}/version/{version_id}/logging/logentries | Create a Logentries log endpoint |
| [**delete_log_logentries**](LoggingLogentriesApi.md#delete_log_logentries) | **DELETE** /service/{service_id}/version/{version_id}/logging/logentries/{logging_logentries_name} | Delete a Logentries log endpoint |
| [**get_log_logentries**](LoggingLogentriesApi.md#get_log_logentries) | **GET** /service/{service_id}/version/{version_id}/logging/logentries/{logging_logentries_name} | Get a Logentries log endpoint |
| [**list_log_logentries**](LoggingLogentriesApi.md#list_log_logentries) | **GET** /service/{service_id}/version/{version_id}/logging/logentries | List Logentries log endpoints |
| [**update_log_logentries**](LoggingLogentriesApi.md#update_log_logentries) | **PUT** /service/{service_id}/version/{version_id}/logging/logentries/{logging_logentries_name} | Update a Logentries log endpoint |


## `create_log_logentries()`

```ruby
create_log_logentries(opts): <LoggingLogentriesResponse> # Create a Logentries log endpoint
```

Create a Logentry for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingLogentriesApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    port: 56, # Integer | The port number.
    token: 'token_example', # String | Use token based authentication ([https://logentries.com/doc/input-token/](https://logentries.com/doc/input-token/)).
    use_tls: Fastly::LoggingUseTls::no_tls, # LoggingUseTls | 
    region: 'US', # String | The region to which to stream logs.
}

begin
  # Create a Logentries log endpoint
  result = api_instance.create_log_logentries(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingLogentriesApi->create_log_logentries: #{e}"
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
| **port** | **Integer** | The port number. | [optional][default to 20000] |
| **token** | **String** | Use token based authentication ([https://logentries.com/doc/input-token/](https://logentries.com/doc/input-token/)). | [optional] |
| **use_tls** | [**LoggingUseTls**](LoggingUseTls.md) |  | [optional][default to LoggingUseTls::no_tls] |
| **region** | **String** | The region to which to stream logs. | [optional] |

### Return type

[**LoggingLogentriesResponse**](LoggingLogentriesResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_logentries()`

```ruby
delete_log_logentries(opts): <InlineResponse200> # Delete a Logentries log endpoint
```

Delete the Logentry for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingLogentriesApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_logentries_name: 'logging_logentries_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete a Logentries log endpoint
  result = api_instance.delete_log_logentries(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingLogentriesApi->delete_log_logentries: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_logentries_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_logentries()`

```ruby
get_log_logentries(opts): <LoggingLogentriesResponse> # Get a Logentries log endpoint
```

Get the Logentry for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingLogentriesApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_logentries_name: 'logging_logentries_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get a Logentries log endpoint
  result = api_instance.get_log_logentries(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingLogentriesApi->get_log_logentries: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_logentries_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingLogentriesResponse**](LoggingLogentriesResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_logentries()`

```ruby
list_log_logentries(opts): <Array<LoggingLogentriesResponse>> # List Logentries log endpoints
```

List all of the Logentries for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingLogentriesApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List Logentries log endpoints
  result = api_instance.list_log_logentries(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingLogentriesApi->list_log_logentries: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingLogentriesResponse&gt;**](LoggingLogentriesResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_logentries()`

```ruby
update_log_logentries(opts): <LoggingLogentriesResponse> # Update a Logentries log endpoint
```

Update the Logentry for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingLogentriesApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_logentries_name: 'logging_logentries_name_example', # String | The name for the real-time logging configuration.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    port: 56, # Integer | The port number.
    token: 'token_example', # String | Use token based authentication ([https://logentries.com/doc/input-token/](https://logentries.com/doc/input-token/)).
    use_tls: Fastly::LoggingUseTls::no_tls, # LoggingUseTls | 
    region: 'US', # String | The region to which to stream logs.
}

begin
  # Update a Logentries log endpoint
  result = api_instance.update_log_logentries(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingLogentriesApi->update_log_logentries: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_logentries_name** | **String** | The name for the real-time logging configuration. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.   | [optional][default to FORMAT_VERSION::v2] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional][default to &#39;%h %l %u %t \&quot;%r\&quot; %&amp;gt;s %b&#39;] |
| **port** | **Integer** | The port number. | [optional][default to 20000] |
| **token** | **String** | Use token based authentication ([https://logentries.com/doc/input-token/](https://logentries.com/doc/input-token/)). | [optional] |
| **use_tls** | [**LoggingUseTls**](LoggingUseTls.md) |  | [optional][default to LoggingUseTls::no_tls] |
| **region** | **String** | The region to which to stream logs. | [optional] |

### Return type

[**LoggingLogentriesResponse**](LoggingLogentriesResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
