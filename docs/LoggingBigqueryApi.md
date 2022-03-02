# Fastly::LoggingBigqueryApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingBigqueryApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_log_bigquery**](LoggingBigqueryApi.md#create_log_bigquery) | **POST** /service/{service_id}/version/{version_id}/logging/bigquery | Create a BigQuery log endpoint |
| [**delete_log_bigquery**](LoggingBigqueryApi.md#delete_log_bigquery) | **DELETE** /service/{service_id}/version/{version_id}/logging/bigquery/{logging_bigquery_name} | Delete a BigQuery log endpoint |
| [**get_log_bigquery**](LoggingBigqueryApi.md#get_log_bigquery) | **GET** /service/{service_id}/version/{version_id}/logging/bigquery/{logging_bigquery_name} | Get a BigQuery log endpoint |
| [**list_log_bigquery**](LoggingBigqueryApi.md#list_log_bigquery) | **GET** /service/{service_id}/version/{version_id}/logging/bigquery | List BigQuery log endpoints |
| [**update_log_bigquery**](LoggingBigqueryApi.md#update_log_bigquery) | **PUT** /service/{service_id}/version/{version_id}/logging/bigquery/{logging_bigquery_name} | Update a BigQuery log endpoint |


## `create_log_bigquery()`

```ruby
create_log_bigquery(opts): <LoggingBigqueryResponse> # Create a BigQuery log endpoint
```

Create a BigQuery logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingBigqueryApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name of the BigQuery logging object. Used as a primary key for API access.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce JSON that matches the schema of your BigQuery table.
    user: 'user_example', # String | Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Required.
    secret_key: 'secret_key_example', # String | Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Required.
    dataset: 'dataset_example', # String | Your BigQuery dataset.
    table: 'table_example', # String | Your BigQuery table.
    template_suffix: 'template_suffix_example', # String | BigQuery table name suffix template. Optional.
    project_id: 'project_id_example', # String | Your Google Cloud Platform project ID. Required
}

begin
  # Create a BigQuery log endpoint
  result = api_instance.create_log_bigquery(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingBigqueryApi->create_log_bigquery: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **name** | **String** | The name of the BigQuery logging object. Used as a primary key for API access. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.   | [optional][default to FORMAT_VERSION::v2] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce JSON that matches the schema of your BigQuery table. | [optional] |
| **user** | **String** | Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Required. | [optional] |
| **secret_key** | **String** | Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Required. | [optional] |
| **dataset** | **String** | Your BigQuery dataset. | [optional] |
| **table** | **String** | Your BigQuery table. | [optional] |
| **template_suffix** | **String** | BigQuery table name suffix template. Optional. | [optional] |
| **project_id** | **String** | Your Google Cloud Platform project ID. Required | [optional] |

### Return type

[**LoggingBigqueryResponse**](LoggingBigqueryResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_bigquery()`

```ruby
delete_log_bigquery(opts): <InlineResponse200> # Delete a BigQuery log endpoint
```

Delete a BigQuery logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingBigqueryApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_bigquery_name: 'logging_bigquery_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete a BigQuery log endpoint
  result = api_instance.delete_log_bigquery(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingBigqueryApi->delete_log_bigquery: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_bigquery_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_bigquery()`

```ruby
get_log_bigquery(opts): <LoggingBigqueryResponse> # Get a BigQuery log endpoint
```

Get the details for a BigQuery logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingBigqueryApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_bigquery_name: 'logging_bigquery_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get a BigQuery log endpoint
  result = api_instance.get_log_bigquery(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingBigqueryApi->get_log_bigquery: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_bigquery_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingBigqueryResponse**](LoggingBigqueryResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_bigquery()`

```ruby
list_log_bigquery(opts): <Array<LoggingBigqueryResponse>> # List BigQuery log endpoints
```

List all of the BigQuery logging objects for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingBigqueryApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List BigQuery log endpoints
  result = api_instance.list_log_bigquery(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingBigqueryApi->list_log_bigquery: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingBigqueryResponse&gt;**](LoggingBigqueryResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_bigquery()`

```ruby
update_log_bigquery(opts): <LoggingBigqueryResponse> # Update a BigQuery log endpoint
```

Update a BigQuery logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingBigqueryApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_bigquery_name: 'logging_bigquery_name_example', # String | The name for the real-time logging configuration.
    name: 'name_example', # String | The name of the BigQuery logging object. Used as a primary key for API access.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce JSON that matches the schema of your BigQuery table.
    user: 'user_example', # String | Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Required.
    secret_key: 'secret_key_example', # String | Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Required.
    dataset: 'dataset_example', # String | Your BigQuery dataset.
    table: 'table_example', # String | Your BigQuery table.
    template_suffix: 'template_suffix_example', # String | BigQuery table name suffix template. Optional.
    project_id: 'project_id_example', # String | Your Google Cloud Platform project ID. Required
}

begin
  # Update a BigQuery log endpoint
  result = api_instance.update_log_bigquery(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingBigqueryApi->update_log_bigquery: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_bigquery_name** | **String** | The name for the real-time logging configuration. |  |
| **name** | **String** | The name of the BigQuery logging object. Used as a primary key for API access. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.   | [optional][default to FORMAT_VERSION::v2] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce JSON that matches the schema of your BigQuery table. | [optional] |
| **user** | **String** | Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Required. | [optional] |
| **secret_key** | **String** | Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Required. | [optional] |
| **dataset** | **String** | Your BigQuery dataset. | [optional] |
| **table** | **String** | Your BigQuery table. | [optional] |
| **template_suffix** | **String** | BigQuery table name suffix template. Optional. | [optional] |
| **project_id** | **String** | Your Google Cloud Platform project ID. Required | [optional] |

### Return type

[**LoggingBigqueryResponse**](LoggingBigqueryResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
