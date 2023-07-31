# Fastly::LoggingNewrelicApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingNewrelicApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_log_newrelic**](LoggingNewrelicApi.md#create_log_newrelic) | **POST** /service/{service_id}/version/{version_id}/logging/newrelic | Create a New Relic log endpoint |
| [**delete_log_newrelic**](LoggingNewrelicApi.md#delete_log_newrelic) | **DELETE** /service/{service_id}/version/{version_id}/logging/newrelic/{logging_newrelic_name} | Delete a New Relic log endpoint |
| [**get_log_newrelic**](LoggingNewrelicApi.md#get_log_newrelic) | **GET** /service/{service_id}/version/{version_id}/logging/newrelic/{logging_newrelic_name} | Get a New Relic log endpoint |
| [**list_log_newrelic**](LoggingNewrelicApi.md#list_log_newrelic) | **GET** /service/{service_id}/version/{version_id}/logging/newrelic | List New Relic log endpoints |
| [**update_log_newrelic**](LoggingNewrelicApi.md#update_log_newrelic) | **PUT** /service/{service_id}/version/{version_id}/logging/newrelic/{logging_newrelic_name} | Update a New Relic log endpoint |


## `create_log_newrelic()`

```ruby
create_log_newrelic(opts): <LoggingNewrelicResponse> # Create a New Relic log endpoint
```

Create a New Relic Logs logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingNewrelicApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that New Relic Logs can ingest.
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    token: 'token_example', # String | The Insert API key from the Account page of your New Relic account. Required.
    region: 'US', # String | The region to which to stream logs.
}

begin
  # Create a New Relic log endpoint
  result = api_instance.create_log_newrelic(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingNewrelicApi->create_log_newrelic: #{e}"
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
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that New Relic Logs can ingest. | [optional][default to &#39;{\&quot;timestamp\&quot;:\&quot;%{begin:%Y-%m-%dT%H:%M:%S}t\&quot;,\&quot;time_elapsed\&quot;:\&quot;%{time.elapsed.usec}V\&quot;,\&quot;is_tls\&quot;:\&quot;%{if(req.is_ssl, \\\&quot;true\\\&quot;, \\\&quot;false\\\&quot;)}V\&quot;,\&quot;client_ip\&quot;:\&quot;%{req.http.Fastly-Client-IP}V\&quot;,\&quot;geo_city\&quot;:\&quot;%{client.geo.city}V\&quot;,\&quot;geo_country_code\&quot;:\&quot;%{client.geo.country_code}V\&quot;,\&quot;request\&quot;:\&quot;%{req.request}V\&quot;,\&quot;host\&quot;:\&quot;%{req.http.Fastly-Orig-Host}V\&quot;,\&quot;url\&quot;:\&quot;%{json.escape(req.url)}V\&quot;,\&quot;request_referer\&quot;:\&quot;%{json.escape(req.http.Referer)}V\&quot;,\&quot;request_user_agent\&quot;:\&quot;%{json.escape(req.http.User-Agent)}V\&quot;,\&quot;request_accept_language\&quot;:\&quot;%{json.escape(req.http.Accept-Language)}V\&quot;,\&quot;request_accept_charset\&quot;:\&quot;%{json.escape(req.http.Accept-Charset)}V\&quot;,\&quot;cache_status\&quot;:\&quot;%{regsub(fastly_info.state, \\\&quot;^(HIT-(SYNTH)|(HITPASS|HIT|MISS|PASS|ERROR|PIPE)).*\\\&quot;, \\\&quot;\\\\2\\\\3\\\&quot;) }V\&quot;}&#39;] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **token** | **String** | The Insert API key from the Account page of your New Relic account. Required. | [optional] |
| **region** | **String** | The region to which to stream logs. | [optional][default to &#39;US&#39;] |

### Return type

[**LoggingNewrelicResponse**](LoggingNewrelicResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_newrelic()`

```ruby
delete_log_newrelic(opts): <InlineResponse200> # Delete a New Relic log endpoint
```

Delete the New Relic Logs logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingNewrelicApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_newrelic_name: 'logging_newrelic_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete a New Relic log endpoint
  result = api_instance.delete_log_newrelic(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingNewrelicApi->delete_log_newrelic: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_newrelic_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_newrelic()`

```ruby
get_log_newrelic(opts): <LoggingNewrelicResponse> # Get a New Relic log endpoint
```

Get the details of a New Relic Logs logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingNewrelicApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_newrelic_name: 'logging_newrelic_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get a New Relic log endpoint
  result = api_instance.get_log_newrelic(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingNewrelicApi->get_log_newrelic: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_newrelic_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingNewrelicResponse**](LoggingNewrelicResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_newrelic()`

```ruby
list_log_newrelic(opts): <Array<LoggingNewrelicResponse>> # List New Relic log endpoints
```

List all of the New Relic Logs logging objects for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingNewrelicApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List New Relic log endpoints
  result = api_instance.list_log_newrelic(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingNewrelicApi->list_log_newrelic: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingNewrelicResponse&gt;**](LoggingNewrelicResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_newrelic()`

```ruby
update_log_newrelic(opts): <LoggingNewrelicResponse> # Update a New Relic log endpoint
```

Update a New Relic Logs logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingNewrelicApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_newrelic_name: 'logging_newrelic_name_example', # String | The name for the real-time logging configuration.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that New Relic Logs can ingest.
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    token: 'token_example', # String | The Insert API key from the Account page of your New Relic account. Required.
    region: 'US', # String | The region to which to stream logs.
}

begin
  # Update a New Relic log endpoint
  result = api_instance.update_log_newrelic(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingNewrelicApi->update_log_newrelic: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_newrelic_name** | **String** | The name for the real-time logging configuration. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that New Relic Logs can ingest. | [optional][default to &#39;{\&quot;timestamp\&quot;:\&quot;%{begin:%Y-%m-%dT%H:%M:%S}t\&quot;,\&quot;time_elapsed\&quot;:\&quot;%{time.elapsed.usec}V\&quot;,\&quot;is_tls\&quot;:\&quot;%{if(req.is_ssl, \\\&quot;true\\\&quot;, \\\&quot;false\\\&quot;)}V\&quot;,\&quot;client_ip\&quot;:\&quot;%{req.http.Fastly-Client-IP}V\&quot;,\&quot;geo_city\&quot;:\&quot;%{client.geo.city}V\&quot;,\&quot;geo_country_code\&quot;:\&quot;%{client.geo.country_code}V\&quot;,\&quot;request\&quot;:\&quot;%{req.request}V\&quot;,\&quot;host\&quot;:\&quot;%{req.http.Fastly-Orig-Host}V\&quot;,\&quot;url\&quot;:\&quot;%{json.escape(req.url)}V\&quot;,\&quot;request_referer\&quot;:\&quot;%{json.escape(req.http.Referer)}V\&quot;,\&quot;request_user_agent\&quot;:\&quot;%{json.escape(req.http.User-Agent)}V\&quot;,\&quot;request_accept_language\&quot;:\&quot;%{json.escape(req.http.Accept-Language)}V\&quot;,\&quot;request_accept_charset\&quot;:\&quot;%{json.escape(req.http.Accept-Charset)}V\&quot;,\&quot;cache_status\&quot;:\&quot;%{regsub(fastly_info.state, \\\&quot;^(HIT-(SYNTH)|(HITPASS|HIT|MISS|PASS|ERROR|PIPE)).*\\\&quot;, \\\&quot;\\\\2\\\\3\\\&quot;) }V\&quot;}&#39;] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **token** | **String** | The Insert API key from the Account page of your New Relic account. Required. | [optional] |
| **region** | **String** | The region to which to stream logs. | [optional][default to &#39;US&#39;] |

### Return type

[**LoggingNewrelicResponse**](LoggingNewrelicResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
