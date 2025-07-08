# Fastly::LoggingFtpApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingFtpApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_log_ftp**](LoggingFtpApi.md#create_log_ftp) | **POST** /service/{service_id}/version/{version_id}/logging/ftp | Create an FTP log endpoint
[**delete_log_ftp**](LoggingFtpApi.md#delete_log_ftp) | **DELETE** /service/{service_id}/version/{version_id}/logging/ftp/{logging_ftp_name} | Delete an FTP log endpoint
[**get_log_ftp**](LoggingFtpApi.md#get_log_ftp) | **GET** /service/{service_id}/version/{version_id}/logging/ftp/{logging_ftp_name} | Get an FTP log endpoint
[**list_log_ftp**](LoggingFtpApi.md#list_log_ftp) | **GET** /service/{service_id}/version/{version_id}/logging/ftp | List FTP log endpoints
[**update_log_ftp**](LoggingFtpApi.md#update_log_ftp) | **PUT** /service/{service_id}/version/{version_id}/logging/ftp/{logging_ftp_name} | Update an FTP log endpoint


## `create_log_ftp()`

```ruby
create_log_ftp(opts): <LoggingFtpResponse> # Create an FTP log endpoint
```

Create a FTP for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingFtpApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/).
    log_processing_region: 'none', # String | The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global.
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    message_type: 'classic', # String | How the message should be formatted.
    timestamp_format: 'timestamp_format_example', # String | A timestamp format
    compression_codec: 'zstd', # String | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
    period: 56, # Integer | How frequently log files are finalized so they can be available for reading (in seconds).
    gzip_level: 56, # Integer | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
    address: 'address_example', # String | An hostname or IPv4 address.
    hostname: 'hostname_example', # String | Hostname used.
    ipv4: 'ipv4_example', # String | IPv4 address of the host.
    password: 'password_example', # String | The password for the server. For anonymous use an email address.
    path: 'path_example', # String | The path to upload log files to. If the path ends in `/` then it is treated as a directory.
    public_key: 'public_key_example', # String | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
    user: 'user_example', # String | The username for the server. Can be anonymous.
    port: 56, # Integer | The port number.
}

begin
  # Create an FTP log endpoint
  result = api_instance.create_log_ftp(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingFtpApi->create_log_ftp: #{e}"
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
| **message_type** | **String** | How the message should be formatted. | [optional][default to &#39;classic&#39;] |
| **timestamp_format** | **String** | A timestamp format | [optional] |
| **compression_codec** | **String** | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] |
| **period** | **Integer** | How frequently log files are finalized so they can be available for reading (in seconds). | [optional][default to 3600] |
| **gzip_level** | **Integer** | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional][default to 0] |
| **address** | **String** | An hostname or IPv4 address. | [optional] |
| **hostname** | **String** | Hostname used. | [optional] |
| **ipv4** | **String** | IPv4 address of the host. | [optional] |
| **password** | **String** | The password for the server. For anonymous use an email address. | [optional] |
| **path** | **String** | The path to upload log files to. If the path ends in `/` then it is treated as a directory. | [optional] |
| **public_key** | **String** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional][default to &#39;null&#39;] |
| **user** | **String** | The username for the server. Can be anonymous. | [optional] |
| **port** | **Integer** | The port number. | [optional][default to 21] |

### Return type

[**LoggingFtpResponse**](LoggingFtpResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_ftp()`

```ruby
delete_log_ftp(opts): <InlineResponse200> # Delete an FTP log endpoint
```

Delete the FTP for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingFtpApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_ftp_name: 'logging_ftp_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete an FTP log endpoint
  result = api_instance.delete_log_ftp(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingFtpApi->delete_log_ftp: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_ftp_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_ftp()`

```ruby
get_log_ftp(opts): <LoggingFtpResponse> # Get an FTP log endpoint
```

Get the FTP for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingFtpApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_ftp_name: 'logging_ftp_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get an FTP log endpoint
  result = api_instance.get_log_ftp(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingFtpApi->get_log_ftp: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_ftp_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingFtpResponse**](LoggingFtpResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_ftp()`

```ruby
list_log_ftp(opts): <Array<LoggingFtpResponse>> # List FTP log endpoints
```

List all of the FTPs for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingFtpApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List FTP log endpoints
  result = api_instance.list_log_ftp(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingFtpApi->list_log_ftp: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingFtpResponse&gt;**](LoggingFtpResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_ftp()`

```ruby
update_log_ftp(opts): <LoggingFtpResponse> # Update an FTP log endpoint
```

Update the FTP for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingFtpApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_ftp_name: 'logging_ftp_name_example', # String | The name for the real-time logging configuration.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/).
    log_processing_region: 'none', # String | The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global.
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    message_type: 'classic', # String | How the message should be formatted.
    timestamp_format: 'timestamp_format_example', # String | A timestamp format
    compression_codec: 'zstd', # String | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
    period: 56, # Integer | How frequently log files are finalized so they can be available for reading (in seconds).
    gzip_level: 56, # Integer | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
    address: 'address_example', # String | An hostname or IPv4 address.
    hostname: 'hostname_example', # String | Hostname used.
    ipv4: 'ipv4_example', # String | IPv4 address of the host.
    password: 'password_example', # String | The password for the server. For anonymous use an email address.
    path: 'path_example', # String | The path to upload log files to. If the path ends in `/` then it is treated as a directory.
    public_key: 'public_key_example', # String | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
    user: 'user_example', # String | The username for the server. Can be anonymous.
    port: 56, # Integer | The port number.
}

begin
  # Update an FTP log endpoint
  result = api_instance.update_log_ftp(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingFtpApi->update_log_ftp: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_ftp_name** | **String** | The name for the real-time logging configuration. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/). | [optional][default to &#39;%h %l %u %t \&quot;%r\&quot; %&amp;gt;s %b&#39;] |
| **log_processing_region** | **String** | The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global. | [optional][default to &#39;none&#39;] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **message_type** | **String** | How the message should be formatted. | [optional][default to &#39;classic&#39;] |
| **timestamp_format** | **String** | A timestamp format | [optional] |
| **compression_codec** | **String** | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] |
| **period** | **Integer** | How frequently log files are finalized so they can be available for reading (in seconds). | [optional][default to 3600] |
| **gzip_level** | **Integer** | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional][default to 0] |
| **address** | **String** | An hostname or IPv4 address. | [optional] |
| **hostname** | **String** | Hostname used. | [optional] |
| **ipv4** | **String** | IPv4 address of the host. | [optional] |
| **password** | **String** | The password for the server. For anonymous use an email address. | [optional] |
| **path** | **String** | The path to upload log files to. If the path ends in `/` then it is treated as a directory. | [optional] |
| **public_key** | **String** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional][default to &#39;null&#39;] |
| **user** | **String** | The username for the server. Can be anonymous. | [optional] |
| **port** | **Integer** | The port number. | [optional][default to 21] |

### Return type

[**LoggingFtpResponse**](LoggingFtpResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
