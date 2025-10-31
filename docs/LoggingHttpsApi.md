# Fastly::LoggingHttpsApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingHttpsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_log_https**](LoggingHttpsApi.md#create_log_https) | **POST** /service/{service_id}/version/{version_id}/logging/https | Create an HTTPS log endpoint
[**delete_log_https**](LoggingHttpsApi.md#delete_log_https) | **DELETE** /service/{service_id}/version/{version_id}/logging/https/{logging_https_name} | Delete an HTTPS log endpoint
[**get_log_https**](LoggingHttpsApi.md#get_log_https) | **GET** /service/{service_id}/version/{version_id}/logging/https/{logging_https_name} | Get an HTTPS log endpoint
[**list_log_https**](LoggingHttpsApi.md#list_log_https) | **GET** /service/{service_id}/version/{version_id}/logging/https | List HTTPS log endpoints
[**update_log_https**](LoggingHttpsApi.md#update_log_https) | **PUT** /service/{service_id}/version/{version_id}/logging/https/{logging_https_name} | Update an HTTPS log endpoint


## `create_log_https()`

```ruby
create_log_https(opts): <LoggingHttpsResponse> # Create an HTTPS log endpoint
```

Create an HTTPS object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingHttpsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/).
    log_processing_region: 'none', # String | The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global.
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    tls_ca_cert: 'tls_ca_cert_example', # String | A secure certificate to authenticate a server with. Must be in PEM format.
    tls_client_cert: 'tls_client_cert_example', # String | The client certificate used to make authenticated requests. Must be in PEM format.
    tls_client_key: 'tls_client_key_example', # String | The client private key used to make authenticated requests. Must be in PEM format.
    tls_hostname: 'tls_hostname_example', # String | The hostname to verify the server's certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported.
    request_max_entries: 56, # Integer | The maximum number of logs sent in one request. Defaults `0` (10k).
    request_max_bytes: 56, # Integer | The maximum number of bytes sent in one request. Defaults `0` (100MB).
    url: 'url_example', # String | The URL to send logs to. Must use HTTPS. Required.
    content_type: 'content_type_example', # String | Content type of the header sent with the request.
    header_name: 'header_name_example', # String | Name of the custom header sent with the request.
    message_type: Fastly::LoggingMessageType::CLASSIC, # LoggingMessageType | 
    header_value: 'header_value_example', # String | Value of the custom header sent with the request.
    method: 'POST', # String | HTTP method used for request.
    json_format: '0', # String | Enforces valid JSON formatting for log entries.
    period: 56, # Integer | How frequently, in seconds, batches of log data are sent to the HTTPS endpoint. A value of `0` sends logs at the same interval as the default, which is `5` seconds.
}

begin
  # Create an HTTPS log endpoint
  result = api_instance.create_log_https(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingHttpsApi->create_log_https: #{e}"
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
| **tls_ca_cert** | **String** | A secure certificate to authenticate a server with. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_cert** | **String** | The client certificate used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_key** | **String** | The client private key used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_hostname** | **String** | The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. | [optional][default to &#39;null&#39;] |
| **request_max_entries** | **Integer** | The maximum number of logs sent in one request. Defaults `0` (10k). | [optional][default to 0] |
| **request_max_bytes** | **Integer** | The maximum number of bytes sent in one request. Defaults `0` (100MB). | [optional][default to 0] |
| **url** | **String** | The URL to send logs to. Must use HTTPS. Required. | [optional] |
| **content_type** | **String** | Content type of the header sent with the request. | [optional][default to &#39;null&#39;] |
| **header_name** | **String** | Name of the custom header sent with the request. | [optional][default to &#39;null&#39;] |
| **message_type** | [**LoggingMessageType**](LoggingMessageType.md) |  | [optional][default to &#39;classic&#39;] |
| **header_value** | **String** | Value of the custom header sent with the request. | [optional][default to &#39;null&#39;] |
| **method** | **String** | HTTP method used for request. | [optional][default to &#39;POST&#39;] |
| **json_format** | **String** | Enforces valid JSON formatting for log entries. | [optional] |
| **period** | **Integer** | How frequently, in seconds, batches of log data are sent to the HTTPS endpoint. A value of `0` sends logs at the same interval as the default, which is `5` seconds. | [optional][default to 5] |

### Return type

[**LoggingHttpsResponse**](LoggingHttpsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_https()`

```ruby
delete_log_https(opts): <InlineResponse200> # Delete an HTTPS log endpoint
```

Delete the HTTPS object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingHttpsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_https_name: 'logging_https_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete an HTTPS log endpoint
  result = api_instance.delete_log_https(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingHttpsApi->delete_log_https: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_https_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_https()`

```ruby
get_log_https(opts): <LoggingHttpsResponse> # Get an HTTPS log endpoint
```

Get the HTTPS object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingHttpsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_https_name: 'logging_https_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get an HTTPS log endpoint
  result = api_instance.get_log_https(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingHttpsApi->get_log_https: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_https_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingHttpsResponse**](LoggingHttpsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_https()`

```ruby
list_log_https(opts): <Array<LoggingHttpsResponse>> # List HTTPS log endpoints
```

List all of the HTTPS objects for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingHttpsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List HTTPS log endpoints
  result = api_instance.list_log_https(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingHttpsApi->list_log_https: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingHttpsResponse&gt;**](LoggingHttpsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_https()`

```ruby
update_log_https(opts): <LoggingHttpsResponse> # Update an HTTPS log endpoint
```

Update the HTTPS object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingHttpsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_https_name: 'logging_https_name_example', # String | The name for the real-time logging configuration.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/).
    log_processing_region: 'none', # String | The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global.
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    tls_ca_cert: 'tls_ca_cert_example', # String | A secure certificate to authenticate a server with. Must be in PEM format.
    tls_client_cert: 'tls_client_cert_example', # String | The client certificate used to make authenticated requests. Must be in PEM format.
    tls_client_key: 'tls_client_key_example', # String | The client private key used to make authenticated requests. Must be in PEM format.
    tls_hostname: 'tls_hostname_example', # String | The hostname to verify the server's certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported.
    request_max_entries: 56, # Integer | The maximum number of logs sent in one request. Defaults `0` (10k).
    request_max_bytes: 56, # Integer | The maximum number of bytes sent in one request. Defaults `0` (100MB).
    url: 'url_example', # String | The URL to send logs to. Must use HTTPS. Required.
    content_type: 'content_type_example', # String | Content type of the header sent with the request.
    header_name: 'header_name_example', # String | Name of the custom header sent with the request.
    message_type: Fastly::LoggingMessageType::CLASSIC, # LoggingMessageType | 
    header_value: 'header_value_example', # String | Value of the custom header sent with the request.
    method: 'POST', # String | HTTP method used for request.
    json_format: '0', # String | Enforces valid JSON formatting for log entries.
    period: 56, # Integer | How frequently, in seconds, batches of log data are sent to the HTTPS endpoint. A value of `0` sends logs at the same interval as the default, which is `5` seconds.
}

begin
  # Update an HTTPS log endpoint
  result = api_instance.update_log_https(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingHttpsApi->update_log_https: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_https_name** | **String** | The name for the real-time logging configuration. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/). | [optional][default to &#39;%h %l %u %t \&quot;%r\&quot; %&amp;gt;s %b&#39;] |
| **log_processing_region** | **String** | The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global. | [optional][default to &#39;none&#39;] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **tls_ca_cert** | **String** | A secure certificate to authenticate a server with. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_cert** | **String** | The client certificate used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_key** | **String** | The client private key used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_hostname** | **String** | The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. | [optional][default to &#39;null&#39;] |
| **request_max_entries** | **Integer** | The maximum number of logs sent in one request. Defaults `0` (10k). | [optional][default to 0] |
| **request_max_bytes** | **Integer** | The maximum number of bytes sent in one request. Defaults `0` (100MB). | [optional][default to 0] |
| **url** | **String** | The URL to send logs to. Must use HTTPS. Required. | [optional] |
| **content_type** | **String** | Content type of the header sent with the request. | [optional][default to &#39;null&#39;] |
| **header_name** | **String** | Name of the custom header sent with the request. | [optional][default to &#39;null&#39;] |
| **message_type** | [**LoggingMessageType**](LoggingMessageType.md) |  | [optional][default to &#39;classic&#39;] |
| **header_value** | **String** | Value of the custom header sent with the request. | [optional][default to &#39;null&#39;] |
| **method** | **String** | HTTP method used for request. | [optional][default to &#39;POST&#39;] |
| **json_format** | **String** | Enforces valid JSON formatting for log entries. | [optional] |
| **period** | **Integer** | How frequently, in seconds, batches of log data are sent to the HTTPS endpoint. A value of `0` sends logs at the same interval as the default, which is `5` seconds. | [optional][default to 5] |

### Return type

[**LoggingHttpsResponse**](LoggingHttpsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
