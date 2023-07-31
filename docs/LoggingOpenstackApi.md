# Fastly::LoggingOpenstackApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingOpenstackApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_log_openstack**](LoggingOpenstackApi.md#create_log_openstack) | **POST** /service/{service_id}/version/{version_id}/logging/openstack | Create an OpenStack log endpoint |
| [**delete_log_openstack**](LoggingOpenstackApi.md#delete_log_openstack) | **DELETE** /service/{service_id}/version/{version_id}/logging/openstack/{logging_openstack_name} | Delete an OpenStack log endpoint |
| [**get_log_openstack**](LoggingOpenstackApi.md#get_log_openstack) | **GET** /service/{service_id}/version/{version_id}/logging/openstack/{logging_openstack_name} | Get an OpenStack log endpoint |
| [**list_log_openstack**](LoggingOpenstackApi.md#list_log_openstack) | **GET** /service/{service_id}/version/{version_id}/logging/openstack | List OpenStack log endpoints |
| [**update_log_openstack**](LoggingOpenstackApi.md#update_log_openstack) | **PUT** /service/{service_id}/version/{version_id}/logging/openstack/{logging_openstack_name} | Update an OpenStack log endpoint |


## `create_log_openstack()`

```ruby
create_log_openstack(opts): <LoggingOpenstackResponse> # Create an OpenStack log endpoint
```

Create a openstack for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingOpenstackApi.new
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
    access_key: 'access_key_example', # String | Your OpenStack account access key.
    bucket_name: 'bucket_name_example', # String | The name of your OpenStack container.
    path: 'path_example', # String | The path to upload logs to.
    public_key: 'public_key_example', # String | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
    url: 'url_example', # String | Your OpenStack auth url.
    user: 'user_example', # String | The username for your OpenStack account.
}

begin
  # Create an OpenStack log endpoint
  result = api_instance.create_log_openstack(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingOpenstackApi->create_log_openstack: #{e}"
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
| **access_key** | **String** | Your OpenStack account access key. | [optional] |
| **bucket_name** | **String** | The name of your OpenStack container. | [optional] |
| **path** | **String** | The path to upload logs to. | [optional][default to &#39;null&#39;] |
| **public_key** | **String** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional][default to &#39;null&#39;] |
| **url** | **String** | Your OpenStack auth url. | [optional] |
| **user** | **String** | The username for your OpenStack account. | [optional] |

### Return type

[**LoggingOpenstackResponse**](LoggingOpenstackResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_openstack()`

```ruby
delete_log_openstack(opts): <InlineResponse200> # Delete an OpenStack log endpoint
```

Delete the openstack for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingOpenstackApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_openstack_name: 'logging_openstack_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete an OpenStack log endpoint
  result = api_instance.delete_log_openstack(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingOpenstackApi->delete_log_openstack: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_openstack_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_openstack()`

```ruby
get_log_openstack(opts): <LoggingOpenstackResponse> # Get an OpenStack log endpoint
```

Get the openstack for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingOpenstackApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_openstack_name: 'logging_openstack_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get an OpenStack log endpoint
  result = api_instance.get_log_openstack(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingOpenstackApi->get_log_openstack: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_openstack_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingOpenstackResponse**](LoggingOpenstackResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_openstack()`

```ruby
list_log_openstack(opts): <Array<LoggingOpenstackResponse>> # List OpenStack log endpoints
```

List all of the openstacks for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingOpenstackApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List OpenStack log endpoints
  result = api_instance.list_log_openstack(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingOpenstackApi->list_log_openstack: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingOpenstackResponse&gt;**](LoggingOpenstackResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_openstack()`

```ruby
update_log_openstack(opts): <LoggingOpenstackResponse> # Update an OpenStack log endpoint
```

Update the openstack for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingOpenstackApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_openstack_name: 'logging_openstack_name_example', # String | The name for the real-time logging configuration.
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
    access_key: 'access_key_example', # String | Your OpenStack account access key.
    bucket_name: 'bucket_name_example', # String | The name of your OpenStack container.
    path: 'path_example', # String | The path to upload logs to.
    public_key: 'public_key_example', # String | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
    url: 'url_example', # String | Your OpenStack auth url.
    user: 'user_example', # String | The username for your OpenStack account.
}

begin
  # Update an OpenStack log endpoint
  result = api_instance.update_log_openstack(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingOpenstackApi->update_log_openstack: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_openstack_name** | **String** | The name for the real-time logging configuration. |  |
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
| **access_key** | **String** | Your OpenStack account access key. | [optional] |
| **bucket_name** | **String** | The name of your OpenStack container. | [optional] |
| **path** | **String** | The path to upload logs to. | [optional][default to &#39;null&#39;] |
| **public_key** | **String** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional][default to &#39;null&#39;] |
| **url** | **String** | Your OpenStack auth url. | [optional] |
| **user** | **String** | The username for your OpenStack account. | [optional] |

### Return type

[**LoggingOpenstackResponse**](LoggingOpenstackResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
