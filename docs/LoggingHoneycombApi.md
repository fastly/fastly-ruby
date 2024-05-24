# Fastly::LoggingHoneycombApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingHoneycombApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_log_honeycomb**](LoggingHoneycombApi.md#create_log_honeycomb) | **POST** /service/{service_id}/version/{version_id}/logging/honeycomb | Create a Honeycomb log endpoint
[**delete_log_honeycomb**](LoggingHoneycombApi.md#delete_log_honeycomb) | **DELETE** /service/{service_id}/version/{version_id}/logging/honeycomb/{logging_honeycomb_name} | Delete the Honeycomb log endpoint
[**get_log_honeycomb**](LoggingHoneycombApi.md#get_log_honeycomb) | **GET** /service/{service_id}/version/{version_id}/logging/honeycomb/{logging_honeycomb_name} | Get a Honeycomb log endpoint
[**list_log_honeycomb**](LoggingHoneycombApi.md#list_log_honeycomb) | **GET** /service/{service_id}/version/{version_id}/logging/honeycomb | List Honeycomb log endpoints
[**update_log_honeycomb**](LoggingHoneycombApi.md#update_log_honeycomb) | **PUT** /service/{service_id}/version/{version_id}/logging/honeycomb/{logging_honeycomb_name} | Update a Honeycomb log endpoint


## `create_log_honeycomb()`

```ruby
create_log_honeycomb(opts): <LoggingHoneycombResponse> # Create a Honeycomb log endpoint
```

Create a Honeycomb logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingHoneycombApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Honeycomb can ingest.
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    dataset: 'dataset_example', # String | The Honeycomb Dataset you want to log to.
    token: 'token_example', # String | The Write Key from the Account page of your Honeycomb account.
}

begin
  # Create a Honeycomb log endpoint
  result = api_instance.create_log_honeycomb(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingHoneycombApi->create_log_honeycomb: #{e}"
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
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Honeycomb can ingest. | [optional] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **dataset** | **String** | The Honeycomb Dataset you want to log to. | [optional] |
| **token** | **String** | The Write Key from the Account page of your Honeycomb account. | [optional] |

### Return type

[**LoggingHoneycombResponse**](LoggingHoneycombResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_honeycomb()`

```ruby
delete_log_honeycomb(opts): <InlineResponse200> # Delete the Honeycomb log endpoint
```

Delete the Honeycomb logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingHoneycombApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_honeycomb_name: 'logging_honeycomb_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete the Honeycomb log endpoint
  result = api_instance.delete_log_honeycomb(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingHoneycombApi->delete_log_honeycomb: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_honeycomb_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_honeycomb()`

```ruby
get_log_honeycomb(opts): <LoggingHoneycombResponse> # Get a Honeycomb log endpoint
```

Get the details of a Honeycomb logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingHoneycombApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_honeycomb_name: 'logging_honeycomb_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get a Honeycomb log endpoint
  result = api_instance.get_log_honeycomb(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingHoneycombApi->get_log_honeycomb: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_honeycomb_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingHoneycombResponse**](LoggingHoneycombResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_honeycomb()`

```ruby
list_log_honeycomb(opts): <Array<LoggingHoneycombResponse>> # List Honeycomb log endpoints
```

List all of the Honeycomb logging objects for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingHoneycombApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List Honeycomb log endpoints
  result = api_instance.list_log_honeycomb(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingHoneycombApi->list_log_honeycomb: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingHoneycombResponse&gt;**](LoggingHoneycombResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_honeycomb()`

```ruby
update_log_honeycomb(opts): <LoggingHoneycombResponse> # Update a Honeycomb log endpoint
```

Update a Honeycomb logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingHoneycombApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_honeycomb_name: 'logging_honeycomb_name_example', # String | The name for the real-time logging configuration.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Honeycomb can ingest.
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    dataset: 'dataset_example', # String | The Honeycomb Dataset you want to log to.
    token: 'token_example', # String | The Write Key from the Account page of your Honeycomb account.
}

begin
  # Update a Honeycomb log endpoint
  result = api_instance.update_log_honeycomb(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingHoneycombApi->update_log_honeycomb: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_honeycomb_name** | **String** | The name for the real-time logging configuration. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Honeycomb can ingest. | [optional] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **dataset** | **String** | The Honeycomb Dataset you want to log to. | [optional] |
| **token** | **String** | The Write Key from the Account page of your Honeycomb account. | [optional] |

### Return type

[**LoggingHoneycombResponse**](LoggingHoneycombResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
