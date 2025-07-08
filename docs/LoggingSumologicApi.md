# Fastly::LoggingSumologicApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingSumologicApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_log_sumologic**](LoggingSumologicApi.md#create_log_sumologic) | **POST** /service/{service_id}/version/{version_id}/logging/sumologic | Create a Sumologic log endpoint
[**delete_log_sumologic**](LoggingSumologicApi.md#delete_log_sumologic) | **DELETE** /service/{service_id}/version/{version_id}/logging/sumologic/{logging_sumologic_name} | Delete a Sumologic log endpoint
[**get_log_sumologic**](LoggingSumologicApi.md#get_log_sumologic) | **GET** /service/{service_id}/version/{version_id}/logging/sumologic/{logging_sumologic_name} | Get a Sumologic log endpoint
[**list_log_sumologic**](LoggingSumologicApi.md#list_log_sumologic) | **GET** /service/{service_id}/version/{version_id}/logging/sumologic | List Sumologic log endpoints
[**update_log_sumologic**](LoggingSumologicApi.md#update_log_sumologic) | **PUT** /service/{service_id}/version/{version_id}/logging/sumologic/{logging_sumologic_name} | Update a Sumologic log endpoint


## `create_log_sumologic()`

```ruby
create_log_sumologic(opts): <LoggingSumologicResponse> # Create a Sumologic log endpoint
```

Create a Sumologic for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingSumologicApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/).
    log_processing_region: 'none', # String | The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global.
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    message_type: Fastly::LoggingMessageType::CLASSIC, # LoggingMessageType | 
    url: 'url_example', # String | The URL to post logs to.
}

begin
  # Create a Sumologic log endpoint
  result = api_instance.create_log_sumologic(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingSumologicApi->create_log_sumologic: #{e}"
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
| **message_type** | [**LoggingMessageType**](LoggingMessageType.md) |  | [optional][default to &#39;classic&#39;] |
| **url** | **String** | The URL to post logs to. | [optional] |

### Return type

[**LoggingSumologicResponse**](LoggingSumologicResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_sumologic()`

```ruby
delete_log_sumologic(opts): <InlineResponse200> # Delete a Sumologic log endpoint
```

Delete the Sumologic for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingSumologicApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_sumologic_name: 'logging_sumologic_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete a Sumologic log endpoint
  result = api_instance.delete_log_sumologic(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingSumologicApi->delete_log_sumologic: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_sumologic_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_sumologic()`

```ruby
get_log_sumologic(opts): <LoggingSumologicResponse> # Get a Sumologic log endpoint
```

Get the Sumologic for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingSumologicApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_sumologic_name: 'logging_sumologic_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get a Sumologic log endpoint
  result = api_instance.get_log_sumologic(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingSumologicApi->get_log_sumologic: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_sumologic_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingSumologicResponse**](LoggingSumologicResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_sumologic()`

```ruby
list_log_sumologic(opts): <Array<LoggingSumologicResponse>> # List Sumologic log endpoints
```

List all of the Sumologics for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingSumologicApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List Sumologic log endpoints
  result = api_instance.list_log_sumologic(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingSumologicApi->list_log_sumologic: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingSumologicResponse&gt;**](LoggingSumologicResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_sumologic()`

```ruby
update_log_sumologic(opts): <LoggingSumologicResponse> # Update a Sumologic log endpoint
```

Update the Sumologic for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingSumologicApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_sumologic_name: 'logging_sumologic_name_example', # String | The name for the real-time logging configuration.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/).
    log_processing_region: 'none', # String | The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global.
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    message_type: Fastly::LoggingMessageType::CLASSIC, # LoggingMessageType | 
    url: 'url_example', # String | The URL to post logs to.
}

begin
  # Update a Sumologic log endpoint
  result = api_instance.update_log_sumologic(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingSumologicApi->update_log_sumologic: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_sumologic_name** | **String** | The name for the real-time logging configuration. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/). | [optional][default to &#39;%h %l %u %t \&quot;%r\&quot; %&amp;gt;s %b&#39;] |
| **log_processing_region** | **String** | The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global. | [optional][default to &#39;none&#39;] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **message_type** | [**LoggingMessageType**](LoggingMessageType.md) |  | [optional][default to &#39;classic&#39;] |
| **url** | **String** | The URL to post logs to. | [optional] |

### Return type

[**LoggingSumologicResponse**](LoggingSumologicResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
