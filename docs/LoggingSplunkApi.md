# Fastly::LoggingSplunkApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingSplunkApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_log_splunk**](LoggingSplunkApi.md#create_log_splunk) | **POST** /service/{service_id}/version/{version_id}/logging/splunk | Create a Splunk log endpoint
[**delete_log_splunk**](LoggingSplunkApi.md#delete_log_splunk) | **DELETE** /service/{service_id}/version/{version_id}/logging/splunk/{logging_splunk_name} | Delete a Splunk log endpoint
[**get_log_splunk**](LoggingSplunkApi.md#get_log_splunk) | **GET** /service/{service_id}/version/{version_id}/logging/splunk/{logging_splunk_name} | Get a Splunk log endpoint
[**list_log_splunk**](LoggingSplunkApi.md#list_log_splunk) | **GET** /service/{service_id}/version/{version_id}/logging/splunk | List Splunk log endpoints
[**update_log_splunk**](LoggingSplunkApi.md#update_log_splunk) | **PUT** /service/{service_id}/version/{version_id}/logging/splunk/{logging_splunk_name} | Update a Splunk log endpoint


## `create_log_splunk()`

```ruby
create_log_splunk(opts): <LoggingSplunkResponse> # Create a Splunk log endpoint
```

Create a Splunk logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingSplunkApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    tls_ca_cert: 'tls_ca_cert_example', # String | A secure certificate to authenticate a server with. Must be in PEM format.
    tls_client_cert: 'tls_client_cert_example', # String | The client certificate used to make authenticated requests. Must be in PEM format.
    tls_client_key: 'tls_client_key_example', # String | The client private key used to make authenticated requests. Must be in PEM format.
    tls_hostname: 'tls_hostname_example', # String | The hostname to verify the server's certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported.
    request_max_entries: 56, # Integer | The maximum number of logs sent in one request. Defaults `0` for unbounded.
    request_max_bytes: 56, # Integer | The maximum number of bytes sent in one request. Defaults `0` for unbounded.
    url: 'url_example', # String | The URL to post logs to.
    token: 'token_example', # String | A Splunk token for use in posting logs over HTTP to your collector.
    use_tls: Fastly::LoggingUseTls::no_tls, # LoggingUseTls | 
}

begin
  # Create a Splunk log endpoint
  result = api_instance.create_log_splunk(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingSplunkApi->create_log_splunk: #{e}"
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
| **tls_ca_cert** | **String** | A secure certificate to authenticate a server with. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_cert** | **String** | The client certificate used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_key** | **String** | The client private key used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_hostname** | **String** | The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. | [optional][default to &#39;null&#39;] |
| **request_max_entries** | **Integer** | The maximum number of logs sent in one request. Defaults `0` for unbounded. | [optional][default to 0] |
| **request_max_bytes** | **Integer** | The maximum number of bytes sent in one request. Defaults `0` for unbounded. | [optional][default to 0] |
| **url** | **String** | The URL to post logs to. | [optional] |
| **token** | **String** | A Splunk token for use in posting logs over HTTP to your collector. | [optional] |
| **use_tls** | [**LoggingUseTls**](LoggingUseTls.md) |  | [optional][default to LoggingUseTls::no_tls] |

### Return type

[**LoggingSplunkResponse**](LoggingSplunkResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_splunk()`

```ruby
delete_log_splunk(opts): <InlineResponse200> # Delete a Splunk log endpoint
```

Delete the Splunk logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingSplunkApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_splunk_name: 'logging_splunk_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete a Splunk log endpoint
  result = api_instance.delete_log_splunk(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingSplunkApi->delete_log_splunk: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_splunk_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_splunk()`

```ruby
get_log_splunk(opts): <LoggingSplunkResponse> # Get a Splunk log endpoint
```

Get the details for a Splunk logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingSplunkApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_splunk_name: 'logging_splunk_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get a Splunk log endpoint
  result = api_instance.get_log_splunk(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingSplunkApi->get_log_splunk: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_splunk_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingSplunkResponse**](LoggingSplunkResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_splunk()`

```ruby
list_log_splunk(opts): <Array<LoggingSplunkResponse>> # List Splunk log endpoints
```

List all of the Splunk logging objects for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingSplunkApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List Splunk log endpoints
  result = api_instance.list_log_splunk(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingSplunkApi->list_log_splunk: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingSplunkResponse&gt;**](LoggingSplunkResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_splunk()`

```ruby
update_log_splunk(opts): <LoggingSplunkResponse> # Update a Splunk log endpoint
```

Update the Splunk logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingSplunkApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_splunk_name: 'logging_splunk_name_example', # String | The name for the real-time logging configuration.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    tls_ca_cert: 'tls_ca_cert_example', # String | A secure certificate to authenticate a server with. Must be in PEM format.
    tls_client_cert: 'tls_client_cert_example', # String | The client certificate used to make authenticated requests. Must be in PEM format.
    tls_client_key: 'tls_client_key_example', # String | The client private key used to make authenticated requests. Must be in PEM format.
    tls_hostname: 'tls_hostname_example', # String | The hostname to verify the server's certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported.
    request_max_entries: 56, # Integer | The maximum number of logs sent in one request. Defaults `0` for unbounded.
    request_max_bytes: 56, # Integer | The maximum number of bytes sent in one request. Defaults `0` for unbounded.
    url: 'url_example', # String | The URL to post logs to.
    token: 'token_example', # String | A Splunk token for use in posting logs over HTTP to your collector.
    use_tls: Fastly::LoggingUseTls::no_tls, # LoggingUseTls | 
}

begin
  # Update a Splunk log endpoint
  result = api_instance.update_log_splunk(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingSplunkApi->update_log_splunk: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_splunk_name** | **String** | The name for the real-time logging configuration. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional][default to &#39;%h %l %u %t \&quot;%r\&quot; %&amp;gt;s %b&#39;] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **tls_ca_cert** | **String** | A secure certificate to authenticate a server with. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_cert** | **String** | The client certificate used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_key** | **String** | The client private key used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_hostname** | **String** | The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. | [optional][default to &#39;null&#39;] |
| **request_max_entries** | **Integer** | The maximum number of logs sent in one request. Defaults `0` for unbounded. | [optional][default to 0] |
| **request_max_bytes** | **Integer** | The maximum number of bytes sent in one request. Defaults `0` for unbounded. | [optional][default to 0] |
| **url** | **String** | The URL to post logs to. | [optional] |
| **token** | **String** | A Splunk token for use in posting logs over HTTP to your collector. | [optional] |
| **use_tls** | [**LoggingUseTls**](LoggingUseTls.md) |  | [optional][default to LoggingUseTls::no_tls] |

### Return type

[**LoggingSplunkResponse**](LoggingSplunkResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
