# Fastly::LoggingGrafanacloudlogsApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingGrafanacloudlogsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_log_grafanacloudlogs**](LoggingGrafanacloudlogsApi.md#create_log_grafanacloudlogs) | **POST** /service/{service_id}/version/{version_id}/logging/grafanacloudlogs | Create a Grafana Cloud Logs log endpoint
[**delete_log_grafanacloudlogs**](LoggingGrafanacloudlogsApi.md#delete_log_grafanacloudlogs) | **DELETE** /service/{service_id}/version/{version_id}/logging/grafanacloudlogs/{logging_grafanacloudlogs_name} | Delete the Grafana Cloud Logs log endpoint
[**get_log_grafanacloudlogs**](LoggingGrafanacloudlogsApi.md#get_log_grafanacloudlogs) | **GET** /service/{service_id}/version/{version_id}/logging/grafanacloudlogs/{logging_grafanacloudlogs_name} | Get a Grafana Cloud Logs log endpoint
[**list_log_grafanacloudlogs**](LoggingGrafanacloudlogsApi.md#list_log_grafanacloudlogs) | **GET** /service/{service_id}/version/{version_id}/logging/grafanacloudlogs | List Grafana Cloud Logs log endpoints
[**update_log_grafanacloudlogs**](LoggingGrafanacloudlogsApi.md#update_log_grafanacloudlogs) | **PUT** /service/{service_id}/version/{version_id}/logging/grafanacloudlogs/{logging_grafanacloudlogs_name} | Update a Grafana Cloud Logs log endpoint


## `create_log_grafanacloudlogs()`

```ruby
create_log_grafanacloudlogs(opts): <LoggingGrafanacloudlogsResponse> # Create a Grafana Cloud Logs log endpoint
```

Create a Grafana Cloud Logs logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingGrafanacloudlogsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    user: 'user_example', # String | The Grafana Cloud Logs Dataset you want to log to.
    url: 'url_example', # String | The URL of the Loki instance in your Grafana stack.
    token: 'token_example', # String | The Grafana Access Policy token with `logs:write` access scoped to your Loki instance.
    index: 'index_example', # String | The Stream Labels, a JSON string used to identify the stream.
}

begin
  # Create a Grafana Cloud Logs log endpoint
  result = api_instance.create_log_grafanacloudlogs(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingGrafanacloudlogsApi->create_log_grafanacloudlogs: #{e}"
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
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **user** | **String** | The Grafana Cloud Logs Dataset you want to log to. | [optional] |
| **url** | **String** | The URL of the Loki instance in your Grafana stack. | [optional] |
| **token** | **String** | The Grafana Access Policy token with `logs:write` access scoped to your Loki instance. | [optional] |
| **index** | **String** | The Stream Labels, a JSON string used to identify the stream. | [optional] |

### Return type

[**LoggingGrafanacloudlogsResponse**](LoggingGrafanacloudlogsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_grafanacloudlogs()`

```ruby
delete_log_grafanacloudlogs(opts): <InlineResponse200> # Delete the Grafana Cloud Logs log endpoint
```

Delete the Grafana Cloud Logs logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingGrafanacloudlogsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_grafanacloudlogs_name: 'logging_grafanacloudlogs_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete the Grafana Cloud Logs log endpoint
  result = api_instance.delete_log_grafanacloudlogs(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingGrafanacloudlogsApi->delete_log_grafanacloudlogs: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_grafanacloudlogs_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_grafanacloudlogs()`

```ruby
get_log_grafanacloudlogs(opts): <LoggingGrafanacloudlogsResponse> # Get a Grafana Cloud Logs log endpoint
```

Get the details of a Grafana Cloud Logs logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingGrafanacloudlogsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_grafanacloudlogs_name: 'logging_grafanacloudlogs_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get a Grafana Cloud Logs log endpoint
  result = api_instance.get_log_grafanacloudlogs(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingGrafanacloudlogsApi->get_log_grafanacloudlogs: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_grafanacloudlogs_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingGrafanacloudlogsResponse**](LoggingGrafanacloudlogsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_grafanacloudlogs()`

```ruby
list_log_grafanacloudlogs(opts): <Array<LoggingGrafanacloudlogsResponse>> # List Grafana Cloud Logs log endpoints
```

List all of the Grafana Cloud Logs logging objects for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingGrafanacloudlogsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List Grafana Cloud Logs log endpoints
  result = api_instance.list_log_grafanacloudlogs(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingGrafanacloudlogsApi->list_log_grafanacloudlogs: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingGrafanacloudlogsResponse&gt;**](LoggingGrafanacloudlogsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_grafanacloudlogs()`

```ruby
update_log_grafanacloudlogs(opts): <LoggingGrafanacloudlogsResponse> # Update a Grafana Cloud Logs log endpoint
```

Update a Grafana Cloud Logs logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingGrafanacloudlogsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_grafanacloudlogs_name: 'logging_grafanacloudlogs_name_example', # String | The name for the real-time logging configuration.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    user: 'user_example', # String | The Grafana Cloud Logs Dataset you want to log to.
    url: 'url_example', # String | The URL of the Loki instance in your Grafana stack.
    token: 'token_example', # String | The Grafana Access Policy token with `logs:write` access scoped to your Loki instance.
    index: 'index_example', # String | The Stream Labels, a JSON string used to identify the stream.
}

begin
  # Update a Grafana Cloud Logs log endpoint
  result = api_instance.update_log_grafanacloudlogs(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingGrafanacloudlogsApi->update_log_grafanacloudlogs: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_grafanacloudlogs_name** | **String** | The name for the real-time logging configuration. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **user** | **String** | The Grafana Cloud Logs Dataset you want to log to. | [optional] |
| **url** | **String** | The URL of the Loki instance in your Grafana stack. | [optional] |
| **token** | **String** | The Grafana Access Policy token with `logs:write` access scoped to your Loki instance. | [optional] |
| **index** | **String** | The Stream Labels, a JSON string used to identify the stream. | [optional] |

### Return type

[**LoggingGrafanacloudlogsResponse**](LoggingGrafanacloudlogsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
