# Fastly::LoggingCloudfilesApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingCloudfilesApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_log_cloudfiles**](LoggingCloudfilesApi.md#create_log_cloudfiles) | **POST** /service/{service_id}/version/{version_id}/logging/cloudfiles | Create a Cloud Files log endpoint |
| [**delete_log_cloudfiles**](LoggingCloudfilesApi.md#delete_log_cloudfiles) | **DELETE** /service/{service_id}/version/{version_id}/logging/cloudfiles/{logging_cloudfiles_name} | Delete the Cloud Files log endpoint |
| [**get_log_cloudfiles**](LoggingCloudfilesApi.md#get_log_cloudfiles) | **GET** /service/{service_id}/version/{version_id}/logging/cloudfiles/{logging_cloudfiles_name} | Get a Cloud Files log endpoint |
| [**list_log_cloudfiles**](LoggingCloudfilesApi.md#list_log_cloudfiles) | **GET** /service/{service_id}/version/{version_id}/logging/cloudfiles | List Cloud Files log endpoints |
| [**update_log_cloudfiles**](LoggingCloudfilesApi.md#update_log_cloudfiles) | **PUT** /service/{service_id}/version/{version_id}/logging/cloudfiles/{logging_cloudfiles_name} | Update the Cloud Files log endpoint |


## `create_log_cloudfiles()`

```ruby
create_log_cloudfiles(opts): <LoggingCloudfilesResponse> # Create a Cloud Files log endpoint
```

Create a Cloud Files log endpoint for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingCloudfilesApi.new
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
    access_key: 'access_key_example', # String | Your Cloud Files account access key.
    bucket_name: 'bucket_name_example', # String | The name of your Cloud Files container.
    path: 'path_example', # String | The path to upload logs to.
    region: 'DFW', # String | The region to stream logs to.
    public_key: 'public_key_example', # String | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
    user: 'user_example', # String | The username for your Cloud Files account.
}

begin
  # Create a Cloud Files log endpoint
  result = api_instance.create_log_cloudfiles(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingCloudfilesApi->create_log_cloudfiles: #{e}"
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
| **access_key** | **String** | Your Cloud Files account access key. | [optional] |
| **bucket_name** | **String** | The name of your Cloud Files container. | [optional] |
| **path** | **String** | The path to upload logs to. | [optional][default to &#39;null&#39;] |
| **region** | **String** | The region to stream logs to. | [optional] |
| **public_key** | **String** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional][default to &#39;null&#39;] |
| **user** | **String** | The username for your Cloud Files account. | [optional] |

### Return type

[**LoggingCloudfilesResponse**](LoggingCloudfilesResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_cloudfiles()`

```ruby
delete_log_cloudfiles(opts): <InlineResponse200> # Delete the Cloud Files log endpoint
```

Delete the Cloud Files log endpoint for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingCloudfilesApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_cloudfiles_name: 'logging_cloudfiles_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete the Cloud Files log endpoint
  result = api_instance.delete_log_cloudfiles(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingCloudfilesApi->delete_log_cloudfiles: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_cloudfiles_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_cloudfiles()`

```ruby
get_log_cloudfiles(opts): <LoggingCloudfilesResponse> # Get a Cloud Files log endpoint
```

Get the Cloud Files log endpoint for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingCloudfilesApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_cloudfiles_name: 'logging_cloudfiles_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get a Cloud Files log endpoint
  result = api_instance.get_log_cloudfiles(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingCloudfilesApi->get_log_cloudfiles: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_cloudfiles_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingCloudfilesResponse**](LoggingCloudfilesResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_cloudfiles()`

```ruby
list_log_cloudfiles(opts): <Array<LoggingCloudfilesResponse>> # List Cloud Files log endpoints
```

List all of the Cloud Files log endpoints for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingCloudfilesApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List Cloud Files log endpoints
  result = api_instance.list_log_cloudfiles(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingCloudfilesApi->list_log_cloudfiles: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingCloudfilesResponse&gt;**](LoggingCloudfilesResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_cloudfiles()`

```ruby
update_log_cloudfiles(opts): <LoggingCloudfilesResponse> # Update the Cloud Files log endpoint
```

Update the Cloud Files log endpoint for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingCloudfilesApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_cloudfiles_name: 'logging_cloudfiles_name_example', # String | The name for the real-time logging configuration.
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
    access_key: 'access_key_example', # String | Your Cloud Files account access key.
    bucket_name: 'bucket_name_example', # String | The name of your Cloud Files container.
    path: 'path_example', # String | The path to upload logs to.
    region: 'DFW', # String | The region to stream logs to.
    public_key: 'public_key_example', # String | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
    user: 'user_example', # String | The username for your Cloud Files account.
}

begin
  # Update the Cloud Files log endpoint
  result = api_instance.update_log_cloudfiles(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingCloudfilesApi->update_log_cloudfiles: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_cloudfiles_name** | **String** | The name for the real-time logging configuration. |  |
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
| **access_key** | **String** | Your Cloud Files account access key. | [optional] |
| **bucket_name** | **String** | The name of your Cloud Files container. | [optional] |
| **path** | **String** | The path to upload logs to. | [optional][default to &#39;null&#39;] |
| **region** | **String** | The region to stream logs to. | [optional] |
| **public_key** | **String** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional][default to &#39;null&#39;] |
| **user** | **String** | The username for your Cloud Files account. | [optional] |

### Return type

[**LoggingCloudfilesResponse**](LoggingCloudfilesResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
