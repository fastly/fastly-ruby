# Fastly::LoggingGcsApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingGcsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_log_gcs**](LoggingGcsApi.md#create_log_gcs) | **POST** /service/{service_id}/version/{version_id}/logging/gcs | Create a GCS log endpoint
[**delete_log_gcs**](LoggingGcsApi.md#delete_log_gcs) | **DELETE** /service/{service_id}/version/{version_id}/logging/gcs/{logging_gcs_name} | Delete a GCS log endpoint
[**get_log_gcs**](LoggingGcsApi.md#get_log_gcs) | **GET** /service/{service_id}/version/{version_id}/logging/gcs/{logging_gcs_name} | Get a GCS log endpoint
[**list_log_gcs**](LoggingGcsApi.md#list_log_gcs) | **GET** /service/{service_id}/version/{version_id}/logging/gcs | List GCS log endpoints
[**update_log_gcs**](LoggingGcsApi.md#update_log_gcs) | **PUT** /service/{service_id}/version/{version_id}/logging/gcs/{logging_gcs_name} | Update a GCS log endpoint


## `create_log_gcs()`

```ruby
create_log_gcs(opts): <LoggingGcsResponse> # Create a GCS log endpoint
```

Create GCS logging for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingGcsApi.new
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
    user: 'user_example', # String | Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Not required if `account_name` is specified.
    secret_key: 'secret_key_example', # String | Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Not required if `account_name` is specified.
    account_name: 'account_name_example', # String | The name of the Google Cloud Platform service account associated with the target log collection service. Not required if `user` and `secret_key` are provided.
    bucket_name: 'bucket_name_example', # String | The name of the GCS bucket.
    path: 'path_example', # String | 
    public_key: 'public_key_example', # String | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
    project_id: 'project_id_example', # String | Your Google Cloud Platform project ID. Required
}

begin
  # Create a GCS log endpoint
  result = api_instance.create_log_gcs(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingGcsApi->create_log_gcs: #{e}"
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
| **user** | **String** | Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Not required if `account_name` is specified. | [optional] |
| **secret_key** | **String** | Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Not required if `account_name` is specified. | [optional] |
| **account_name** | **String** | The name of the Google Cloud Platform service account associated with the target log collection service. Not required if `user` and `secret_key` are provided. | [optional] |
| **bucket_name** | **String** | The name of the GCS bucket. | [optional] |
| **path** | **String** |  | [optional][default to &#39;/&#39;] |
| **public_key** | **String** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional][default to &#39;null&#39;] |
| **project_id** | **String** | Your Google Cloud Platform project ID. Required | [optional] |

### Return type

[**LoggingGcsResponse**](LoggingGcsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_gcs()`

```ruby
delete_log_gcs(opts): <InlineResponse200> # Delete a GCS log endpoint
```

Delete the GCS Logging for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingGcsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_gcs_name: 'logging_gcs_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete a GCS log endpoint
  result = api_instance.delete_log_gcs(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingGcsApi->delete_log_gcs: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_gcs_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_gcs()`

```ruby
get_log_gcs(opts): <LoggingGcsResponse> # Get a GCS log endpoint
```

Get the GCS Logging for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingGcsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_gcs_name: 'logging_gcs_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get a GCS log endpoint
  result = api_instance.get_log_gcs(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingGcsApi->get_log_gcs: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_gcs_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingGcsResponse**](LoggingGcsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_gcs()`

```ruby
list_log_gcs(opts): <Array<LoggingGcsResponse>> # List GCS log endpoints
```

List all of the GCS log endpoints for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingGcsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List GCS log endpoints
  result = api_instance.list_log_gcs(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingGcsApi->list_log_gcs: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingGcsResponse&gt;**](LoggingGcsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_gcs()`

```ruby
update_log_gcs(opts): <LoggingGcsResponse> # Update a GCS log endpoint
```

Update the GCS for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingGcsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_gcs_name: 'logging_gcs_name_example', # String | The name for the real-time logging configuration.
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
    user: 'user_example', # String | Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Not required if `account_name` is specified.
    secret_key: 'secret_key_example', # String | Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Not required if `account_name` is specified.
    account_name: 'account_name_example', # String | The name of the Google Cloud Platform service account associated with the target log collection service. Not required if `user` and `secret_key` are provided.
    bucket_name: 'bucket_name_example', # String | The name of the GCS bucket.
    path: 'path_example', # String | 
    public_key: 'public_key_example', # String | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
    project_id: 'project_id_example', # String | Your Google Cloud Platform project ID. Required
}

begin
  # Update a GCS log endpoint
  result = api_instance.update_log_gcs(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingGcsApi->update_log_gcs: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_gcs_name** | **String** | The name for the real-time logging configuration. |  |
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
| **user** | **String** | Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Not required if `account_name` is specified. | [optional] |
| **secret_key** | **String** | Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Not required if `account_name` is specified. | [optional] |
| **account_name** | **String** | The name of the Google Cloud Platform service account associated with the target log collection service. Not required if `user` and `secret_key` are provided. | [optional] |
| **bucket_name** | **String** | The name of the GCS bucket. | [optional] |
| **path** | **String** |  | [optional][default to &#39;/&#39;] |
| **public_key** | **String** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional][default to &#39;null&#39;] |
| **project_id** | **String** | Your Google Cloud Platform project ID. Required | [optional] |

### Return type

[**LoggingGcsResponse**](LoggingGcsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
