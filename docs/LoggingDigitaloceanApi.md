# Fastly::LoggingDigitaloceanApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingDigitaloceanApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_log_digocean**](LoggingDigitaloceanApi.md#create_log_digocean) | **POST** /service/{service_id}/version/{version_id}/logging/digitalocean | Create a DigitalOcean Spaces log endpoint |
| [**delete_log_digocean**](LoggingDigitaloceanApi.md#delete_log_digocean) | **DELETE** /service/{service_id}/version/{version_id}/logging/digitalocean/{logging_digitalocean_name} | Delete a DigitalOcean Spaces log endpoint |
| [**get_log_digocean**](LoggingDigitaloceanApi.md#get_log_digocean) | **GET** /service/{service_id}/version/{version_id}/logging/digitalocean/{logging_digitalocean_name} | Get a DigitalOcean Spaces log endpoint |
| [**list_log_digocean**](LoggingDigitaloceanApi.md#list_log_digocean) | **GET** /service/{service_id}/version/{version_id}/logging/digitalocean | List DigitalOcean Spaces log endpoints |
| [**update_log_digocean**](LoggingDigitaloceanApi.md#update_log_digocean) | **PUT** /service/{service_id}/version/{version_id}/logging/digitalocean/{logging_digitalocean_name} | Update a DigitalOcean Spaces log endpoint |


## `create_log_digocean()`

```ruby
create_log_digocean(opts): <LoggingDigitaloceanResponse> # Create a DigitalOcean Spaces log endpoint
```

Create a DigitalOcean Space for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingDigitaloceanApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    message_type: 'classic', # String | How the message should be formatted.
    timestamp_format: 'timestamp_format_example', # String | A timestamp format
    period: 56, # Integer | How frequently log files are finalized so they can be available for reading (in seconds).
    gzip_level: 56, # Integer | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
    compression_codec: 'zstd', # String | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
    bucket_name: 'bucket_name_example', # String | The name of the DigitalOcean Space.
    access_key: 'access_key_example', # String | Your DigitalOcean Spaces account access key.
    secret_key: 'secret_key_example', # String | Your DigitalOcean Spaces account secret key.
    domain: 'domain_example', # String | The domain of the DigitalOcean Spaces endpoint.
    path: 'path_example', # String | The path to upload logs to.
    public_key: 'public_key_example', # String | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
}

begin
  # Create a DigitalOcean Spaces log endpoint
  result = api_instance.create_log_digocean(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingDigitaloceanApi->create_log_digocean: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional][default to &#39;%h %l %u %t \&quot;%r\&quot; %&amp;gt;s %b&#39;] |
| **message_type** | **String** | How the message should be formatted. | [optional][default to &#39;classic&#39;] |
| **timestamp_format** | **String** | A timestamp format | [optional] |
| **period** | **Integer** | How frequently log files are finalized so they can be available for reading (in seconds). | [optional][default to 3600] |
| **gzip_level** | **Integer** | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional][default to 0] |
| **compression_codec** | **String** | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] |
| **bucket_name** | **String** | The name of the DigitalOcean Space. | [optional] |
| **access_key** | **String** | Your DigitalOcean Spaces account access key. | [optional] |
| **secret_key** | **String** | Your DigitalOcean Spaces account secret key. | [optional] |
| **domain** | **String** | The domain of the DigitalOcean Spaces endpoint. | [optional][default to &#39;nyc3.digitaloceanspaces.com&#39;] |
| **path** | **String** | The path to upload logs to. | [optional][default to &#39;null&#39;] |
| **public_key** | **String** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional][default to &#39;null&#39;] |

### Return type

[**LoggingDigitaloceanResponse**](LoggingDigitaloceanResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_digocean()`

```ruby
delete_log_digocean(opts): <InlineResponse200> # Delete a DigitalOcean Spaces log endpoint
```

Delete the DigitalOcean Space for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingDigitaloceanApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_digitalocean_name: 'logging_digitalocean_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete a DigitalOcean Spaces log endpoint
  result = api_instance.delete_log_digocean(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingDigitaloceanApi->delete_log_digocean: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_digitalocean_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_digocean()`

```ruby
get_log_digocean(opts): <LoggingDigitaloceanResponse> # Get a DigitalOcean Spaces log endpoint
```

Get the DigitalOcean Space for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingDigitaloceanApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_digitalocean_name: 'logging_digitalocean_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get a DigitalOcean Spaces log endpoint
  result = api_instance.get_log_digocean(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingDigitaloceanApi->get_log_digocean: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_digitalocean_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingDigitaloceanResponse**](LoggingDigitaloceanResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_digocean()`

```ruby
list_log_digocean(opts): <Array<LoggingDigitaloceanResponse>> # List DigitalOcean Spaces log endpoints
```

List all of the DigitalOcean Spaces for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingDigitaloceanApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List DigitalOcean Spaces log endpoints
  result = api_instance.list_log_digocean(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingDigitaloceanApi->list_log_digocean: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingDigitaloceanResponse&gt;**](LoggingDigitaloceanResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_digocean()`

```ruby
update_log_digocean(opts): <LoggingDigitaloceanResponse> # Update a DigitalOcean Spaces log endpoint
```

Update the DigitalOcean Space for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingDigitaloceanApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_digitalocean_name: 'logging_digitalocean_name_example', # String | The name for the real-time logging configuration.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    message_type: 'classic', # String | How the message should be formatted.
    timestamp_format: 'timestamp_format_example', # String | A timestamp format
    period: 56, # Integer | How frequently log files are finalized so they can be available for reading (in seconds).
    gzip_level: 56, # Integer | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
    compression_codec: 'zstd', # String | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
    bucket_name: 'bucket_name_example', # String | The name of the DigitalOcean Space.
    access_key: 'access_key_example', # String | Your DigitalOcean Spaces account access key.
    secret_key: 'secret_key_example', # String | Your DigitalOcean Spaces account secret key.
    domain: 'domain_example', # String | The domain of the DigitalOcean Spaces endpoint.
    path: 'path_example', # String | The path to upload logs to.
    public_key: 'public_key_example', # String | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
}

begin
  # Update a DigitalOcean Spaces log endpoint
  result = api_instance.update_log_digocean(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingDigitaloceanApi->update_log_digocean: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_digitalocean_name** | **String** | The name for the real-time logging configuration. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional][default to &#39;%h %l %u %t \&quot;%r\&quot; %&amp;gt;s %b&#39;] |
| **message_type** | **String** | How the message should be formatted. | [optional][default to &#39;classic&#39;] |
| **timestamp_format** | **String** | A timestamp format | [optional] |
| **period** | **Integer** | How frequently log files are finalized so they can be available for reading (in seconds). | [optional][default to 3600] |
| **gzip_level** | **Integer** | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional][default to 0] |
| **compression_codec** | **String** | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] |
| **bucket_name** | **String** | The name of the DigitalOcean Space. | [optional] |
| **access_key** | **String** | Your DigitalOcean Spaces account access key. | [optional] |
| **secret_key** | **String** | Your DigitalOcean Spaces account secret key. | [optional] |
| **domain** | **String** | The domain of the DigitalOcean Spaces endpoint. | [optional][default to &#39;nyc3.digitaloceanspaces.com&#39;] |
| **path** | **String** | The path to upload logs to. | [optional][default to &#39;null&#39;] |
| **public_key** | **String** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional][default to &#39;null&#39;] |

### Return type

[**LoggingDigitaloceanResponse**](LoggingDigitaloceanResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
