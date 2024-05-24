# Fastly::LoggingSyslogApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingSyslogApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_log_syslog**](LoggingSyslogApi.md#create_log_syslog) | **POST** /service/{service_id}/version/{version_id}/logging/syslog | Create a syslog log endpoint
[**delete_log_syslog**](LoggingSyslogApi.md#delete_log_syslog) | **DELETE** /service/{service_id}/version/{version_id}/logging/syslog/{logging_syslog_name} | Delete a syslog log endpoint
[**get_log_syslog**](LoggingSyslogApi.md#get_log_syslog) | **GET** /service/{service_id}/version/{version_id}/logging/syslog/{logging_syslog_name} | Get a syslog log endpoint
[**list_log_syslog**](LoggingSyslogApi.md#list_log_syslog) | **GET** /service/{service_id}/version/{version_id}/logging/syslog | List Syslog log endpoints
[**update_log_syslog**](LoggingSyslogApi.md#update_log_syslog) | **PUT** /service/{service_id}/version/{version_id}/logging/syslog/{logging_syslog_name} | Update a syslog log endpoint


## `create_log_syslog()`

```ruby
create_log_syslog(opts): <LoggingSyslogResponse> # Create a syslog log endpoint
```

Create a Syslog for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingSyslogApi.new
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
    address: 'address_example', # String | A hostname or IPv4 address.
    port: 56, # Integer | The port number.
    message_type: Fastly::LoggingMessageType::CLASSIC, # LoggingMessageType | 
    hostname: 'hostname_example', # String | The hostname used for the syslog endpoint.
    ipv4: 'ipv4_example', # String | The IPv4 address used for the syslog endpoint.
    token: 'token_example', # String | Whether to prepend each message with a specific token.
    use_tls: Fastly::LoggingUseTls::no_tls, # LoggingUseTls | 
}

begin
  # Create a syslog log endpoint
  result = api_instance.create_log_syslog(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingSyslogApi->create_log_syslog: #{e}"
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
| **address** | **String** | A hostname or IPv4 address. | [optional] |
| **port** | **Integer** | The port number. | [optional][default to 514] |
| **message_type** | [**LoggingMessageType**](LoggingMessageType.md) |  | [optional][default to &#39;classic&#39;] |
| **hostname** | **String** | The hostname used for the syslog endpoint. | [optional] |
| **ipv4** | **String** | The IPv4 address used for the syslog endpoint. | [optional] |
| **token** | **String** | Whether to prepend each message with a specific token. | [optional][default to &#39;null&#39;] |
| **use_tls** | [**LoggingUseTls**](LoggingUseTls.md) |  | [optional][default to LoggingUseTls::no_tls] |

### Return type

[**LoggingSyslogResponse**](LoggingSyslogResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_syslog()`

```ruby
delete_log_syslog(opts): <InlineResponse200> # Delete a syslog log endpoint
```

Delete the Syslog for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingSyslogApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_syslog_name: 'logging_syslog_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete a syslog log endpoint
  result = api_instance.delete_log_syslog(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingSyslogApi->delete_log_syslog: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_syslog_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_syslog()`

```ruby
get_log_syslog(opts): <LoggingSyslogResponse> # Get a syslog log endpoint
```

Get the Syslog for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingSyslogApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_syslog_name: 'logging_syslog_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get a syslog log endpoint
  result = api_instance.get_log_syslog(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingSyslogApi->get_log_syslog: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_syslog_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingSyslogResponse**](LoggingSyslogResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_syslog()`

```ruby
list_log_syslog(opts): <Array<LoggingSyslogResponse>> # List Syslog log endpoints
```

List all of the Syslogs for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingSyslogApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List Syslog log endpoints
  result = api_instance.list_log_syslog(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingSyslogApi->list_log_syslog: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingSyslogResponse&gt;**](LoggingSyslogResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_syslog()`

```ruby
update_log_syslog(opts): <LoggingSyslogResponse> # Update a syslog log endpoint
```

Update the Syslog for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingSyslogApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_syslog_name: 'logging_syslog_name_example', # String | The name for the real-time logging configuration.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    tls_ca_cert: 'tls_ca_cert_example', # String | A secure certificate to authenticate a server with. Must be in PEM format.
    tls_client_cert: 'tls_client_cert_example', # String | The client certificate used to make authenticated requests. Must be in PEM format.
    tls_client_key: 'tls_client_key_example', # String | The client private key used to make authenticated requests. Must be in PEM format.
    tls_hostname: 'tls_hostname_example', # String | The hostname to verify the server's certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported.
    address: 'address_example', # String | A hostname or IPv4 address.
    port: 56, # Integer | The port number.
    message_type: Fastly::LoggingMessageType::CLASSIC, # LoggingMessageType | 
    hostname: 'hostname_example', # String | The hostname used for the syslog endpoint.
    ipv4: 'ipv4_example', # String | The IPv4 address used for the syslog endpoint.
    token: 'token_example', # String | Whether to prepend each message with a specific token.
    use_tls: Fastly::LoggingUseTls::no_tls, # LoggingUseTls | 
}

begin
  # Update a syslog log endpoint
  result = api_instance.update_log_syslog(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingSyslogApi->update_log_syslog: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_syslog_name** | **String** | The name for the real-time logging configuration. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional][default to &#39;%h %l %u %t \&quot;%r\&quot; %&amp;gt;s %b&#39;] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **tls_ca_cert** | **String** | A secure certificate to authenticate a server with. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_cert** | **String** | The client certificate used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_key** | **String** | The client private key used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_hostname** | **String** | The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. | [optional][default to &#39;null&#39;] |
| **address** | **String** | A hostname or IPv4 address. | [optional] |
| **port** | **Integer** | The port number. | [optional][default to 514] |
| **message_type** | [**LoggingMessageType**](LoggingMessageType.md) |  | [optional][default to &#39;classic&#39;] |
| **hostname** | **String** | The hostname used for the syslog endpoint. | [optional] |
| **ipv4** | **String** | The IPv4 address used for the syslog endpoint. | [optional] |
| **token** | **String** | Whether to prepend each message with a specific token. | [optional][default to &#39;null&#39;] |
| **use_tls** | [**LoggingUseTls**](LoggingUseTls.md) |  | [optional][default to LoggingUseTls::no_tls] |

### Return type

[**LoggingSyslogResponse**](LoggingSyslogResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
