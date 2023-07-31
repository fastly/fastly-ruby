# Fastly::LoggingSftpApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingSftpApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_log_sftp**](LoggingSftpApi.md#create_log_sftp) | **POST** /service/{service_id}/version/{version_id}/logging/sftp | Create an SFTP log endpoint |
| [**delete_log_sftp**](LoggingSftpApi.md#delete_log_sftp) | **DELETE** /service/{service_id}/version/{version_id}/logging/sftp/{logging_sftp_name} | Delete an SFTP log endpoint |
| [**get_log_sftp**](LoggingSftpApi.md#get_log_sftp) | **GET** /service/{service_id}/version/{version_id}/logging/sftp/{logging_sftp_name} | Get an SFTP log endpoint |
| [**list_log_sftp**](LoggingSftpApi.md#list_log_sftp) | **GET** /service/{service_id}/version/{version_id}/logging/sftp | List SFTP log endpoints |
| [**update_log_sftp**](LoggingSftpApi.md#update_log_sftp) | **PUT** /service/{service_id}/version/{version_id}/logging/sftp/{logging_sftp_name} | Update an SFTP log endpoint |


## `create_log_sftp()`

```ruby
create_log_sftp(opts): <LoggingSftpResponse> # Create an SFTP log endpoint
```

Create a SFTP for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingSftpApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    message_type: 'classic', # String | How the message should be formatted.
    timestamp_format: 'timestamp_format_example', # String | A timestamp format
    compression_codec: 'zstd', # String | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
    period: 56, # Integer | How frequently log files are finalized so they can be available for reading (in seconds).
    gzip_level: 56, # Integer | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
    address: 'address_example', # String | A hostname or IPv4 address.
    port: 56, # Integer | The port number.
    password: 'password_example', # String | The password for the server. If both `password` and `secret_key` are passed, `secret_key` will be used in preference.
    path: 'path_example', # String | The path to upload logs to.
    public_key: 'public_key_example', # String | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
    secret_key: 'secret_key_example', # String | The SSH private key for the server. If both `password` and `secret_key` are passed, `secret_key` will be used in preference.
    ssh_known_hosts: 'ssh_known_hosts_example', # String | A list of host keys for all hosts we can connect to over SFTP.
    user: 'user_example', # String | The username for the server.
}

begin
  # Create an SFTP log endpoint
  result = api_instance.create_log_sftp(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingSftpApi->create_log_sftp: #{e}"
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
| **message_type** | **String** | How the message should be formatted. | [optional][default to &#39;classic&#39;] |
| **timestamp_format** | **String** | A timestamp format | [optional] |
| **compression_codec** | **String** | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] |
| **period** | **Integer** | How frequently log files are finalized so they can be available for reading (in seconds). | [optional][default to 3600] |
| **gzip_level** | **Integer** | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional][default to 0] |
| **address** | **String** | A hostname or IPv4 address. | [optional] |
| **port** | **Integer** | The port number. | [optional][default to 22] |
| **password** | **String** | The password for the server. If both `password` and `secret_key` are passed, `secret_key` will be used in preference. | [optional] |
| **path** | **String** | The path to upload logs to. | [optional][default to &#39;null&#39;] |
| **public_key** | **String** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional][default to &#39;null&#39;] |
| **secret_key** | **String** | The SSH private key for the server. If both `password` and `secret_key` are passed, `secret_key` will be used in preference. | [optional][default to &#39;null&#39;] |
| **ssh_known_hosts** | **String** | A list of host keys for all hosts we can connect to over SFTP. | [optional] |
| **user** | **String** | The username for the server. | [optional] |

### Return type

[**LoggingSftpResponse**](LoggingSftpResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_sftp()`

```ruby
delete_log_sftp(opts): <InlineResponse200> # Delete an SFTP log endpoint
```

Delete the SFTP for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingSftpApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_sftp_name: 'logging_sftp_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete an SFTP log endpoint
  result = api_instance.delete_log_sftp(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingSftpApi->delete_log_sftp: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_sftp_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_sftp()`

```ruby
get_log_sftp(opts): <LoggingSftpResponse> # Get an SFTP log endpoint
```

Get the SFTP for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingSftpApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_sftp_name: 'logging_sftp_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get an SFTP log endpoint
  result = api_instance.get_log_sftp(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingSftpApi->get_log_sftp: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_sftp_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingSftpResponse**](LoggingSftpResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_sftp()`

```ruby
list_log_sftp(opts): <Array<LoggingSftpResponse>> # List SFTP log endpoints
```

List all of the SFTPs for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingSftpApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List SFTP log endpoints
  result = api_instance.list_log_sftp(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingSftpApi->list_log_sftp: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingSftpResponse&gt;**](LoggingSftpResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_sftp()`

```ruby
update_log_sftp(opts): <LoggingSftpResponse> # Update an SFTP log endpoint
```

Update the SFTP for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingSftpApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_sftp_name: 'logging_sftp_name_example', # String | The name for the real-time logging configuration.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    message_type: 'classic', # String | How the message should be formatted.
    timestamp_format: 'timestamp_format_example', # String | A timestamp format
    compression_codec: 'zstd', # String | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
    period: 56, # Integer | How frequently log files are finalized so they can be available for reading (in seconds).
    gzip_level: 56, # Integer | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
    address: 'address_example', # String | A hostname or IPv4 address.
    port: 56, # Integer | The port number.
    password: 'password_example', # String | The password for the server. If both `password` and `secret_key` are passed, `secret_key` will be used in preference.
    path: 'path_example', # String | The path to upload logs to.
    public_key: 'public_key_example', # String | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
    secret_key: 'secret_key_example', # String | The SSH private key for the server. If both `password` and `secret_key` are passed, `secret_key` will be used in preference.
    ssh_known_hosts: 'ssh_known_hosts_example', # String | A list of host keys for all hosts we can connect to over SFTP.
    user: 'user_example', # String | The username for the server.
}

begin
  # Update an SFTP log endpoint
  result = api_instance.update_log_sftp(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingSftpApi->update_log_sftp: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_sftp_name** | **String** | The name for the real-time logging configuration. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional][default to &#39;%h %l %u %t \&quot;%r\&quot; %&amp;gt;s %b&#39;] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **message_type** | **String** | How the message should be formatted. | [optional][default to &#39;classic&#39;] |
| **timestamp_format** | **String** | A timestamp format | [optional] |
| **compression_codec** | **String** | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] |
| **period** | **Integer** | How frequently log files are finalized so they can be available for reading (in seconds). | [optional][default to 3600] |
| **gzip_level** | **Integer** | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional][default to 0] |
| **address** | **String** | A hostname or IPv4 address. | [optional] |
| **port** | **Integer** | The port number. | [optional][default to 22] |
| **password** | **String** | The password for the server. If both `password` and `secret_key` are passed, `secret_key` will be used in preference. | [optional] |
| **path** | **String** | The path to upload logs to. | [optional][default to &#39;null&#39;] |
| **public_key** | **String** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional][default to &#39;null&#39;] |
| **secret_key** | **String** | The SSH private key for the server. If both `password` and `secret_key` are passed, `secret_key` will be used in preference. | [optional][default to &#39;null&#39;] |
| **ssh_known_hosts** | **String** | A list of host keys for all hosts we can connect to over SFTP. | [optional] |
| **user** | **String** | The username for the server. | [optional] |

### Return type

[**LoggingSftpResponse**](LoggingSftpResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
