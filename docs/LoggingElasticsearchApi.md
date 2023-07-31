# Fastly::LoggingElasticsearchApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingElasticsearchApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_log_elasticsearch**](LoggingElasticsearchApi.md#create_log_elasticsearch) | **POST** /service/{service_id}/version/{version_id}/logging/elasticsearch | Create an Elasticsearch log endpoint |
| [**delete_log_elasticsearch**](LoggingElasticsearchApi.md#delete_log_elasticsearch) | **DELETE** /service/{service_id}/version/{version_id}/logging/elasticsearch/{logging_elasticsearch_name} | Delete an Elasticsearch log endpoint |
| [**get_log_elasticsearch**](LoggingElasticsearchApi.md#get_log_elasticsearch) | **GET** /service/{service_id}/version/{version_id}/logging/elasticsearch/{logging_elasticsearch_name} | Get an Elasticsearch log endpoint |
| [**list_log_elasticsearch**](LoggingElasticsearchApi.md#list_log_elasticsearch) | **GET** /service/{service_id}/version/{version_id}/logging/elasticsearch | List Elasticsearch log endpoints |
| [**update_log_elasticsearch**](LoggingElasticsearchApi.md#update_log_elasticsearch) | **PUT** /service/{service_id}/version/{version_id}/logging/elasticsearch/{logging_elasticsearch_name} | Update an Elasticsearch log endpoint |


## `create_log_elasticsearch()`

```ruby
create_log_elasticsearch(opts): <LoggingElasticsearchResponse> # Create an Elasticsearch log endpoint
```

Create a Elasticsearch logging endpoint for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingElasticsearchApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Elasticsearch can ingest.
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    tls_ca_cert: 'tls_ca_cert_example', # String | A secure certificate to authenticate a server with. Must be in PEM format.
    tls_client_cert: 'tls_client_cert_example', # String | The client certificate used to make authenticated requests. Must be in PEM format.
    tls_client_key: 'tls_client_key_example', # String | The client private key used to make authenticated requests. Must be in PEM format.
    tls_hostname: 'tls_hostname_example', # String | The hostname to verify the server's certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported.
    request_max_entries: 56, # Integer | The maximum number of logs sent in one request. Defaults `0` for unbounded.
    request_max_bytes: 56, # Integer | The maximum number of bytes sent in one request. Defaults `0` for unbounded.
    index: 'index_example', # String | The name of the Elasticsearch index to send documents (logs) to. The index must follow the Elasticsearch [index format rules](https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-create-index.html). We support [strftime](https://www.man7.org/linux/man-pages/man3/strftime.3.html) interpolated variables inside braces prefixed with a pound symbol. For example, `\\\#{%F}` will interpolate as `YYYY-MM-DD` with today's date.
    url: 'url_example', # String | The URL to stream logs to. Must use HTTPS.
    pipeline: 'pipeline_example', # String | The ID of the Elasticsearch ingest pipeline to apply pre-process transformations to before indexing. Learn more about creating a pipeline in the [Elasticsearch docs](https://www.elastic.co/guide/en/elasticsearch/reference/current/ingest.html).
    user: 'user_example', # String | Basic Auth username.
    password: 'password_example', # String | Basic Auth password.
}

begin
  # Create an Elasticsearch log endpoint
  result = api_instance.create_log_elasticsearch(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingElasticsearchApi->create_log_elasticsearch: #{e}"
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
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Elasticsearch can ingest. | [optional] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **tls_ca_cert** | **String** | A secure certificate to authenticate a server with. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_cert** | **String** | The client certificate used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_key** | **String** | The client private key used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_hostname** | **String** | The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. | [optional][default to &#39;null&#39;] |
| **request_max_entries** | **Integer** | The maximum number of logs sent in one request. Defaults `0` for unbounded. | [optional][default to 0] |
| **request_max_bytes** | **Integer** | The maximum number of bytes sent in one request. Defaults `0` for unbounded. | [optional][default to 0] |
| **index** | **String** | The name of the Elasticsearch index to send documents (logs) to. The index must follow the Elasticsearch [index format rules](https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-create-index.html). We support [strftime](https://www.man7.org/linux/man-pages/man3/strftime.3.html) interpolated variables inside braces prefixed with a pound symbol. For example, `\\\#{%F}` will interpolate as `YYYY-MM-DD` with today&#39;s date. | [optional] |
| **url** | **String** | The URL to stream logs to. Must use HTTPS. | [optional] |
| **pipeline** | **String** | The ID of the Elasticsearch ingest pipeline to apply pre-process transformations to before indexing. Learn more about creating a pipeline in the [Elasticsearch docs](https://www.elastic.co/guide/en/elasticsearch/reference/current/ingest.html). | [optional] |
| **user** | **String** | Basic Auth username. | [optional] |
| **password** | **String** | Basic Auth password. | [optional] |

### Return type

[**LoggingElasticsearchResponse**](LoggingElasticsearchResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_elasticsearch()`

```ruby
delete_log_elasticsearch(opts): <InlineResponse200> # Delete an Elasticsearch log endpoint
```

Delete the Elasticsearch logging endpoint for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingElasticsearchApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_elasticsearch_name: 'logging_elasticsearch_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete an Elasticsearch log endpoint
  result = api_instance.delete_log_elasticsearch(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingElasticsearchApi->delete_log_elasticsearch: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_elasticsearch_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_elasticsearch()`

```ruby
get_log_elasticsearch(opts): <LoggingElasticsearchResponse> # Get an Elasticsearch log endpoint
```

Get the Elasticsearch logging endpoint for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingElasticsearchApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_elasticsearch_name: 'logging_elasticsearch_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get an Elasticsearch log endpoint
  result = api_instance.get_log_elasticsearch(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingElasticsearchApi->get_log_elasticsearch: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_elasticsearch_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingElasticsearchResponse**](LoggingElasticsearchResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_elasticsearch()`

```ruby
list_log_elasticsearch(opts): <Array<LoggingElasticsearchResponse>> # List Elasticsearch log endpoints
```

List all of the Elasticsearch logging endpoints for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingElasticsearchApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List Elasticsearch log endpoints
  result = api_instance.list_log_elasticsearch(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingElasticsearchApi->list_log_elasticsearch: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingElasticsearchResponse&gt;**](LoggingElasticsearchResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_elasticsearch()`

```ruby
update_log_elasticsearch(opts): <LoggingElasticsearchResponse> # Update an Elasticsearch log endpoint
```

Update the Elasticsearch logging endpoint for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingElasticsearchApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_elasticsearch_name: 'logging_elasticsearch_name_example', # String | The name for the real-time logging configuration.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Elasticsearch can ingest.
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    tls_ca_cert: 'tls_ca_cert_example', # String | A secure certificate to authenticate a server with. Must be in PEM format.
    tls_client_cert: 'tls_client_cert_example', # String | The client certificate used to make authenticated requests. Must be in PEM format.
    tls_client_key: 'tls_client_key_example', # String | The client private key used to make authenticated requests. Must be in PEM format.
    tls_hostname: 'tls_hostname_example', # String | The hostname to verify the server's certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported.
    request_max_entries: 56, # Integer | The maximum number of logs sent in one request. Defaults `0` for unbounded.
    request_max_bytes: 56, # Integer | The maximum number of bytes sent in one request. Defaults `0` for unbounded.
    index: 'index_example', # String | The name of the Elasticsearch index to send documents (logs) to. The index must follow the Elasticsearch [index format rules](https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-create-index.html). We support [strftime](https://www.man7.org/linux/man-pages/man3/strftime.3.html) interpolated variables inside braces prefixed with a pound symbol. For example, `\\\#{%F}` will interpolate as `YYYY-MM-DD` with today's date.
    url: 'url_example', # String | The URL to stream logs to. Must use HTTPS.
    pipeline: 'pipeline_example', # String | The ID of the Elasticsearch ingest pipeline to apply pre-process transformations to before indexing. Learn more about creating a pipeline in the [Elasticsearch docs](https://www.elastic.co/guide/en/elasticsearch/reference/current/ingest.html).
    user: 'user_example', # String | Basic Auth username.
    password: 'password_example', # String | Basic Auth password.
}

begin
  # Update an Elasticsearch log endpoint
  result = api_instance.update_log_elasticsearch(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingElasticsearchApi->update_log_elasticsearch: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_elasticsearch_name** | **String** | The name for the real-time logging configuration. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Elasticsearch can ingest. | [optional] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **tls_ca_cert** | **String** | A secure certificate to authenticate a server with. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_cert** | **String** | The client certificate used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_key** | **String** | The client private key used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_hostname** | **String** | The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. | [optional][default to &#39;null&#39;] |
| **request_max_entries** | **Integer** | The maximum number of logs sent in one request. Defaults `0` for unbounded. | [optional][default to 0] |
| **request_max_bytes** | **Integer** | The maximum number of bytes sent in one request. Defaults `0` for unbounded. | [optional][default to 0] |
| **index** | **String** | The name of the Elasticsearch index to send documents (logs) to. The index must follow the Elasticsearch [index format rules](https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-create-index.html). We support [strftime](https://www.man7.org/linux/man-pages/man3/strftime.3.html) interpolated variables inside braces prefixed with a pound symbol. For example, `\\\#{%F}` will interpolate as `YYYY-MM-DD` with today&#39;s date. | [optional] |
| **url** | **String** | The URL to stream logs to. Must use HTTPS. | [optional] |
| **pipeline** | **String** | The ID of the Elasticsearch ingest pipeline to apply pre-process transformations to before indexing. Learn more about creating a pipeline in the [Elasticsearch docs](https://www.elastic.co/guide/en/elasticsearch/reference/current/ingest.html). | [optional] |
| **user** | **String** | Basic Auth username. | [optional] |
| **password** | **String** | Basic Auth password. | [optional] |

### Return type

[**LoggingElasticsearchResponse**](LoggingElasticsearchResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
