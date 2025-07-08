# Fastly::LoggingAzureblobApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingAzureblobApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_log_azure**](LoggingAzureblobApi.md#create_log_azure) | **POST** /service/{service_id}/version/{version_id}/logging/azureblob | Create an Azure Blob Storage log endpoint
[**delete_log_azure**](LoggingAzureblobApi.md#delete_log_azure) | **DELETE** /service/{service_id}/version/{version_id}/logging/azureblob/{logging_azureblob_name} | Delete the Azure Blob Storage log endpoint
[**get_log_azure**](LoggingAzureblobApi.md#get_log_azure) | **GET** /service/{service_id}/version/{version_id}/logging/azureblob/{logging_azureblob_name} | Get an Azure Blob Storage log endpoint
[**list_log_azure**](LoggingAzureblobApi.md#list_log_azure) | **GET** /service/{service_id}/version/{version_id}/logging/azureblob | List Azure Blob Storage log endpoints
[**update_log_azure**](LoggingAzureblobApi.md#update_log_azure) | **PUT** /service/{service_id}/version/{version_id}/logging/azureblob/{logging_azureblob_name} | Update an Azure Blob Storage log endpoint


## `create_log_azure()`

```ruby
create_log_azure(opts): <LoggingAzureblobResponse> # Create an Azure Blob Storage log endpoint
```

Create an Azure Blob Storage logging endpoint for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingAzureblobApi.new
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
    path: 'path_example', # String | The path to upload logs to.
    account_name: 'account_name_example', # String | The unique Azure Blob Storage namespace in which your data objects are stored. Required.
    container: 'container_example', # String | The name of the Azure Blob Storage container in which to store logs. Required.
    sas_token: 'sas_token_example', # String | The Azure shared access signature providing write access to the blob service objects. Be sure to update your token before it expires or the logging functionality will not work. Required.
    public_key: 'public_key_example', # String | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
    file_max_bytes: 56, # Integer | The maximum number of bytes for each uploaded file. A value of 0 can be used to indicate there is no limit on the size of uploaded files, otherwise the minimum value is 1048576 bytes (1 MiB). Note that Microsoft Azure Storage has [block size limits](https://learn.microsoft.com/en-us/rest/api/storageservices/put-block?tabs=microsoft-entra-id#remarks).
}

begin
  # Create an Azure Blob Storage log endpoint
  result = api_instance.create_log_azure(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingAzureblobApi->create_log_azure: #{e}"
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
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to 2] |
| **message_type** | **String** | How the message should be formatted. | [optional][default to &#39;classic&#39;] |
| **timestamp_format** | **String** | A timestamp format | [optional] |
| **compression_codec** | **String** | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] |
| **period** | **Integer** | How frequently log files are finalized so they can be available for reading (in seconds). | [optional][default to 3600] |
| **gzip_level** | **Integer** | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional][default to 0] |
| **path** | **String** | The path to upload logs to. | [optional][default to &#39;null&#39;] |
| **account_name** | **String** | The unique Azure Blob Storage namespace in which your data objects are stored. Required. | [optional] |
| **container** | **String** | The name of the Azure Blob Storage container in which to store logs. Required. | [optional] |
| **sas_token** | **String** | The Azure shared access signature providing write access to the blob service objects. Be sure to update your token before it expires or the logging functionality will not work. Required. | [optional] |
| **public_key** | **String** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional][default to &#39;null&#39;] |
| **file_max_bytes** | **Integer** | The maximum number of bytes for each uploaded file. A value of 0 can be used to indicate there is no limit on the size of uploaded files, otherwise the minimum value is 1048576 bytes (1 MiB). Note that Microsoft Azure Storage has [block size limits](https://learn.microsoft.com/en-us/rest/api/storageservices/put-block?tabs&#x3D;microsoft-entra-id#remarks). | [optional] |

### Return type

[**LoggingAzureblobResponse**](LoggingAzureblobResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_azure()`

```ruby
delete_log_azure(opts): <InlineResponse200> # Delete the Azure Blob Storage log endpoint
```

Delete the Azure Blob Storage logging endpoint for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingAzureblobApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_azureblob_name: 'logging_azureblob_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete the Azure Blob Storage log endpoint
  result = api_instance.delete_log_azure(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingAzureblobApi->delete_log_azure: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_azureblob_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_azure()`

```ruby
get_log_azure(opts): <LoggingAzureblobResponse> # Get an Azure Blob Storage log endpoint
```

Get the Azure Blob Storage logging endpoint for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingAzureblobApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_azureblob_name: 'logging_azureblob_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get an Azure Blob Storage log endpoint
  result = api_instance.get_log_azure(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingAzureblobApi->get_log_azure: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_azureblob_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingAzureblobResponse**](LoggingAzureblobResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_azure()`

```ruby
list_log_azure(opts): <Array<LoggingAzureblobResponse>> # List Azure Blob Storage log endpoints
```

List all of the Azure Blob Storage logging endpoints for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingAzureblobApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List Azure Blob Storage log endpoints
  result = api_instance.list_log_azure(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingAzureblobApi->list_log_azure: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingAzureblobResponse&gt;**](LoggingAzureblobResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_azure()`

```ruby
update_log_azure(opts): <LoggingAzureblobResponse> # Update an Azure Blob Storage log endpoint
```

Update the Azure Blob Storage logging endpoint for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingAzureblobApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_azureblob_name: 'logging_azureblob_name_example', # String | The name for the real-time logging configuration.
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
    path: 'path_example', # String | The path to upload logs to.
    account_name: 'account_name_example', # String | The unique Azure Blob Storage namespace in which your data objects are stored. Required.
    container: 'container_example', # String | The name of the Azure Blob Storage container in which to store logs. Required.
    sas_token: 'sas_token_example', # String | The Azure shared access signature providing write access to the blob service objects. Be sure to update your token before it expires or the logging functionality will not work. Required.
    public_key: 'public_key_example', # String | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
    file_max_bytes: 56, # Integer | The maximum number of bytes for each uploaded file. A value of 0 can be used to indicate there is no limit on the size of uploaded files, otherwise the minimum value is 1048576 bytes (1 MiB). Note that Microsoft Azure Storage has [block size limits](https://learn.microsoft.com/en-us/rest/api/storageservices/put-block?tabs=microsoft-entra-id#remarks).
}

begin
  # Update an Azure Blob Storage log endpoint
  result = api_instance.update_log_azure(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingAzureblobApi->update_log_azure: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_azureblob_name** | **String** | The name for the real-time logging configuration. |  |
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
| **path** | **String** | The path to upload logs to. | [optional][default to &#39;null&#39;] |
| **account_name** | **String** | The unique Azure Blob Storage namespace in which your data objects are stored. Required. | [optional] |
| **container** | **String** | The name of the Azure Blob Storage container in which to store logs. Required. | [optional] |
| **sas_token** | **String** | The Azure shared access signature providing write access to the blob service objects. Be sure to update your token before it expires or the logging functionality will not work. Required. | [optional] |
| **public_key** | **String** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional][default to &#39;null&#39;] |
| **file_max_bytes** | **Integer** | The maximum number of bytes for each uploaded file. A value of 0 can be used to indicate there is no limit on the size of uploaded files, otherwise the minimum value is 1048576 bytes (1 MiB). Note that Microsoft Azure Storage has [block size limits](https://learn.microsoft.com/en-us/rest/api/storageservices/put-block?tabs&#x3D;microsoft-entra-id#remarks). | [optional] |

### Return type

[**LoggingAzureblobResponse**](LoggingAzureblobResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
