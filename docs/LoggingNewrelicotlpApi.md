# Fastly::LoggingNewrelicotlpApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingNewrelicotlpApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_log_newrelicotlp**](LoggingNewrelicotlpApi.md#create_log_newrelicotlp) | **POST** /service/{service_id}/version/{version_id}/logging/newrelicotlp | Create a New Relic OTLP endpoint |
| [**delete_log_newrelicotlp**](LoggingNewrelicotlpApi.md#delete_log_newrelicotlp) | **DELETE** /service/{service_id}/version/{version_id}/logging/newrelicotlp/{logging_newrelicotlp_name} | Delete a New Relic OTLP endpoint |
| [**get_log_newrelicotlp**](LoggingNewrelicotlpApi.md#get_log_newrelicotlp) | **GET** /service/{service_id}/version/{version_id}/logging/newrelicotlp/{logging_newrelicotlp_name} | Get a New Relic OTLP endpoint |
| [**list_log_newrelicotlp**](LoggingNewrelicotlpApi.md#list_log_newrelicotlp) | **GET** /service/{service_id}/version/{version_id}/logging/newrelicotlp | List New Relic OTLP endpoints |
| [**update_log_newrelicotlp**](LoggingNewrelicotlpApi.md#update_log_newrelicotlp) | **PUT** /service/{service_id}/version/{version_id}/logging/newrelicotlp/{logging_newrelicotlp_name} | Update a New Relic log endpoint |


## `create_log_newrelicotlp()`

```ruby
create_log_newrelicotlp(opts): <LoggingNewrelicotlpResponse> # Create a New Relic OTLP endpoint
```

Create a New Relic OTLP logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingNewrelicotlpApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    token: 'token_example', # String | The Insert API key from the Account page of your New Relic account. Required.
    region: 'US', # String | The region to which to stream logs.
    url: 'url_example', # String | (Optional) URL of the New Relic Trace Observer, if you are using New Relic Infinite Tracing.
}

begin
  # Create a New Relic OTLP endpoint
  result = api_instance.create_log_newrelicotlp(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingNewrelicotlpApi->create_log_newrelicotlp: #{e}"
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
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional][default to &#39;{\&quot;timestamp\&quot;:\&quot;%{begin:%Y-%m-%dT%H:%M:%S}t\&quot;,\&quot;time_elapsed\&quot;:\&quot;%{time.elapsed.usec}V\&quot;,\&quot;is_tls\&quot;:\&quot;%{if(req.is_ssl, \\\&quot;true\\\&quot;, \\\&quot;false\\\&quot;)}V\&quot;,\&quot;client_ip\&quot;:\&quot;%{req.http.Fastly-Client-IP}V\&quot;,\&quot;geo_city\&quot;:\&quot;%{client.geo.city}V\&quot;,\&quot;geo_country_code\&quot;:\&quot;%{client.geo.country_code}V\&quot;,\&quot;request\&quot;:\&quot;%{req.request}V\&quot;,\&quot;host\&quot;:\&quot;%{req.http.Fastly-Orig-Host}V\&quot;,\&quot;url\&quot;:\&quot;%{json.escape(req.url)}V\&quot;,\&quot;request_referer\&quot;:\&quot;%{json.escape(req.http.Referer)}V\&quot;,\&quot;request_user_agent\&quot;:\&quot;%{json.escape(req.http.User-Agent)}V\&quot;,\&quot;request_accept_language\&quot;:\&quot;%{json.escape(req.http.Accept-Language)}V\&quot;,\&quot;request_accept_charset\&quot;:\&quot;%{json.escape(req.http.Accept-Charset)}V\&quot;,\&quot;cache_status\&quot;:\&quot;%{regsub(fastly_info.state, \\\&quot;^(HIT-(SYNTH)|(HITPASS|HIT|MISS|PASS|ERROR|PIPE)).*\\\&quot;, \\\&quot;\\\\2\\\\3\\\&quot;) }V\&quot;}&#39;] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **token** | **String** | The Insert API key from the Account page of your New Relic account. Required. | [optional] |
| **region** | **String** | The region to which to stream logs. | [optional][default to &#39;US&#39;] |
| **url** | **String** | (Optional) URL of the New Relic Trace Observer, if you are using New Relic Infinite Tracing. | [optional][default to &#39;null&#39;] |

### Return type

[**LoggingNewrelicotlpResponse**](LoggingNewrelicotlpResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_newrelicotlp()`

```ruby
delete_log_newrelicotlp(opts): <InlineResponse200> # Delete a New Relic OTLP endpoint
```

Delete the New Relic OTLP logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingNewrelicotlpApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_newrelicotlp_name: 'logging_newrelicotlp_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete a New Relic OTLP endpoint
  result = api_instance.delete_log_newrelicotlp(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingNewrelicotlpApi->delete_log_newrelicotlp: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_newrelicotlp_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_newrelicotlp()`

```ruby
get_log_newrelicotlp(opts): <LoggingNewrelicotlpResponse> # Get a New Relic OTLP endpoint
```

Get the details of a New Relic OTLP logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingNewrelicotlpApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_newrelicotlp_name: 'logging_newrelicotlp_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get a New Relic OTLP endpoint
  result = api_instance.get_log_newrelicotlp(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingNewrelicotlpApi->get_log_newrelicotlp: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_newrelicotlp_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingNewrelicotlpResponse**](LoggingNewrelicotlpResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_newrelicotlp()`

```ruby
list_log_newrelicotlp(opts): <Array<LoggingNewrelicotlpResponse>> # List New Relic OTLP endpoints
```

List all of the New Relic OTLP logging objects for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingNewrelicotlpApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List New Relic OTLP endpoints
  result = api_instance.list_log_newrelicotlp(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingNewrelicotlpApi->list_log_newrelicotlp: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingNewrelicotlpResponse&gt;**](LoggingNewrelicotlpResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_newrelicotlp()`

```ruby
update_log_newrelicotlp(opts): <LoggingNewrelicotlpResponse> # Update a New Relic log endpoint
```

Update a New Relic OTLP logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingNewrelicotlpApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_newrelicotlp_name: 'logging_newrelicotlp_name_example', # String | The name for the real-time logging configuration.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    token: 'token_example', # String | The Insert API key from the Account page of your New Relic account. Required.
    region: 'US', # String | The region to which to stream logs.
    url: 'url_example', # String | (Optional) URL of the New Relic Trace Observer, if you are using New Relic Infinite Tracing.
}

begin
  # Update a New Relic log endpoint
  result = api_instance.update_log_newrelicotlp(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingNewrelicotlpApi->update_log_newrelicotlp: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_newrelicotlp_name** | **String** | The name for the real-time logging configuration. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional][default to &#39;{\&quot;timestamp\&quot;:\&quot;%{begin:%Y-%m-%dT%H:%M:%S}t\&quot;,\&quot;time_elapsed\&quot;:\&quot;%{time.elapsed.usec}V\&quot;,\&quot;is_tls\&quot;:\&quot;%{if(req.is_ssl, \\\&quot;true\\\&quot;, \\\&quot;false\\\&quot;)}V\&quot;,\&quot;client_ip\&quot;:\&quot;%{req.http.Fastly-Client-IP}V\&quot;,\&quot;geo_city\&quot;:\&quot;%{client.geo.city}V\&quot;,\&quot;geo_country_code\&quot;:\&quot;%{client.geo.country_code}V\&quot;,\&quot;request\&quot;:\&quot;%{req.request}V\&quot;,\&quot;host\&quot;:\&quot;%{req.http.Fastly-Orig-Host}V\&quot;,\&quot;url\&quot;:\&quot;%{json.escape(req.url)}V\&quot;,\&quot;request_referer\&quot;:\&quot;%{json.escape(req.http.Referer)}V\&quot;,\&quot;request_user_agent\&quot;:\&quot;%{json.escape(req.http.User-Agent)}V\&quot;,\&quot;request_accept_language\&quot;:\&quot;%{json.escape(req.http.Accept-Language)}V\&quot;,\&quot;request_accept_charset\&quot;:\&quot;%{json.escape(req.http.Accept-Charset)}V\&quot;,\&quot;cache_status\&quot;:\&quot;%{regsub(fastly_info.state, \\\&quot;^(HIT-(SYNTH)|(HITPASS|HIT|MISS|PASS|ERROR|PIPE)).*\\\&quot;, \\\&quot;\\\\2\\\\3\\\&quot;) }V\&quot;}&#39;] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **token** | **String** | The Insert API key from the Account page of your New Relic account. Required. | [optional] |
| **region** | **String** | The region to which to stream logs. | [optional][default to &#39;US&#39;] |
| **url** | **String** | (Optional) URL of the New Relic Trace Observer, if you are using New Relic Infinite Tracing. | [optional][default to &#39;null&#39;] |

### Return type

[**LoggingNewrelicotlpResponse**](LoggingNewrelicotlpResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
