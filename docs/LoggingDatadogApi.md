# Fastly::LoggingDatadogApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingDatadogApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_log_datadog**](LoggingDatadogApi.md#create_log_datadog) | **POST** /service/{service_id}/version/{version_id}/logging/datadog | Create a Datadog log endpoint |
| [**delete_log_datadog**](LoggingDatadogApi.md#delete_log_datadog) | **DELETE** /service/{service_id}/version/{version_id}/logging/datadog/{logging_datadog_name} | Delete a Datadog log endpoint |
| [**get_log_datadog**](LoggingDatadogApi.md#get_log_datadog) | **GET** /service/{service_id}/version/{version_id}/logging/datadog/{logging_datadog_name} | Get a Datadog log endpoint |
| [**list_log_datadog**](LoggingDatadogApi.md#list_log_datadog) | **GET** /service/{service_id}/version/{version_id}/logging/datadog | List Datadog log endpoints |
| [**update_log_datadog**](LoggingDatadogApi.md#update_log_datadog) | **PUT** /service/{service_id}/version/{version_id}/logging/datadog/{logging_datadog_name} | Update a Datadog log endpoint |


## `create_log_datadog()`

```ruby
create_log_datadog(opts): <LoggingDatadogResponse> # Create a Datadog log endpoint
```

Create a Datadog logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingDatadogApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Datadog can ingest. 
    region: 'US', # String | The region that log data will be sent to.
    token: 'token_example', # String | The API key from your Datadog account. Required.
}

begin
  # Create a Datadog log endpoint
  result = api_instance.create_log_datadog(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingDatadogApi->create_log_datadog: #{e}"
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
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Datadog can ingest.  | [optional][default to &#39;{\&quot;ddsource\&quot;:\&quot;fastly\&quot;,\&quot;service\&quot;:\&quot;%{req.service_id}V\&quot;,\&quot;date\&quot;:\&quot;%{begin:%Y-%m-%dT%H:%M:%S%Z}t\&quot;,\&quot;time_start\&quot;:\&quot;%{begin:%Y-%m-%dT%H:%M:%S%Z}t\&quot;,\&quot;time_end\&quot;:\&quot;%{end:%Y-%m-%dT%H:%M:%S%Z}t\&quot;,\&quot;http\&quot;:{\&quot;request_time_ms\&quot;:\&quot;%D\&quot;,\&quot;method\&quot;:\&quot;%m\&quot;,\&quot;url\&quot;:\&quot;%{json.escape(req.url)}V\&quot;,\&quot;useragent\&quot;:\&quot;%{User-Agent}i\&quot;,\&quot;referer\&quot;:\&quot;%{Referer}i\&quot;,\&quot;protocol\&quot;:\&quot;%H\&quot;,\&quot;request_x_forwarded_for\&quot;:\&quot;%{X-Forwarded-For}i\&quot;,\&quot;status_code\&quot;:\&quot;%s\&quot;},\&quot;network\&quot;:{\&quot;client\&quot;:{\&quot;ip\&quot;:\&quot;%h\&quot;,\&quot;name\&quot;:\&quot;%{client.as.name}V\&quot;,\&quot;number\&quot;:\&quot;%{client.as.number}V\&quot;,\&quot;connection_speed\&quot;:\&quot;%{client.geo.conn_speed}V\&quot;},\&quot;destination\&quot;:{\&quot;ip\&quot;:\&quot;%A\&quot;},\&quot;geoip\&quot;:{\&quot;geo_city\&quot;:\&quot;%{client.geo.city.utf8}V\&quot;,\&quot;geo_country_code\&quot;:\&quot;%{client.geo.country_code}V\&quot;,\&quot;geo_continent_code\&quot;:\&quot;%{client.geo.continent_code}V\&quot;,\&quot;geo_region\&quot;:\&quot;%{client.geo.region}V\&quot;},\&quot;bytes_written\&quot;:\&quot;%B\&quot;,\&quot;bytes_read\&quot;:\&quot;%{req.body_bytes_read}V\&quot;},\&quot;host\&quot;:\&quot;%{Fastly-Orig-Host}i\&quot;,\&quot;origin_host\&quot;:\&quot;%v\&quot;,\&quot;is_ipv6\&quot;:\&quot;%{if(req.is_ipv6, \\\&quot;true\\\&quot;, \\\&quot;false\\\&quot;)}V\&quot;,\&quot;is_tls\&quot;:\&quot;%{if(req.is_ssl, \\\&quot;true\\\&quot;, \\\&quot;false\\\&quot;)}V\&quot;,\&quot;tls_client_protocol\&quot;:\&quot;%{json.escape(tls.client.protocol)}V\&quot;,\&quot;tls_client_servername\&quot;:\&quot;%{json.escape(tls.client.servername)}V\&quot;,\&quot;tls_client_cipher\&quot;:\&quot;%{json.escape(tls.client.cipher)}V\&quot;,\&quot;tls_client_cipher_sha\&quot;:\&quot;%{json.escape(tls.client.ciphers_sha)}V\&quot;,\&quot;tls_client_tlsexts_sha\&quot;:\&quot;%{json.escape(tls.client.tlsexts_sha)}V\&quot;,\&quot;is_h2\&quot;:\&quot;%{if(fastly_info.is_h2, \\\&quot;true\\\&quot;, \\\&quot;false\\\&quot;)}V\&quot;,\&quot;is_h2_push\&quot;:\&quot;%{if(fastly_info.h2.is_push, \\\&quot;true\\\&quot;, \\\&quot;false\\\&quot;)}V\&quot;,\&quot;h2_stream_id\&quot;:\&quot;%{fastly_info.h2.stream_id}V\&quot;,\&quot;request_accept_content\&quot;:\&quot;%{Accept}i\&quot;,\&quot;request_accept_language\&quot;:\&quot;%{Accept-Language}i\&quot;,\&quot;request_accept_encoding\&quot;:\&quot;%{Accept-Encoding}i\&quot;,\&quot;request_accept_charset\&quot;:\&quot;%{Accept-Charset}i\&quot;,\&quot;request_connection\&quot;:\&quot;%{Connection}i\&quot;,\&quot;request_dnt\&quot;:\&quot;%{DNT}i\&quot;,\&quot;request_forwarded\&quot;:\&quot;%{Forwarded}i\&quot;,\&quot;request_via\&quot;:\&quot;%{Via}i\&quot;,\&quot;request_cache_control\&quot;:\&quot;%{Cache-Control}i\&quot;,\&quot;request_x_requested_with\&quot;:\&quot;%{X-Requested-With}i\&quot;,\&quot;request_x_att_device_id\&quot;:\&quot;%{X-ATT-Device-Id}i\&quot;,\&quot;content_type\&quot;:\&quot;%{Content-Type}o\&quot;,\&quot;is_cacheable\&quot;:\&quot;%{if(fastly_info.state~\\\&quot;^(HIT|MISS)$\\\&quot;, \\\&quot;true\\\&quot;, \\\&quot;false\\\&quot;)}V\&quot;,\&quot;response_age\&quot;:\&quot;%{Age}o\&quot;,\&quot;response_cache_control\&quot;:\&quot;%{Cache-Control}o\&quot;,\&quot;response_expires\&quot;:\&quot;%{Expires}o\&quot;,\&quot;response_last_modified\&quot;:\&quot;%{Last-Modified}o\&quot;,\&quot;response_tsv\&quot;:\&quot;%{TSV}o\&quot;,\&quot;server_datacenter\&quot;:\&quot;%{server.datacenter}V\&quot;,\&quot;req_header_size\&quot;:\&quot;%{req.header_bytes_read}V\&quot;,\&quot;resp_header_size\&quot;:\&quot;%{resp.header_bytes_written}V\&quot;,\&quot;socket_cwnd\&quot;:\&quot;%{client.socket.cwnd}V\&quot;,\&quot;socket_nexthop\&quot;:\&quot;%{client.socket.nexthop}V\&quot;,\&quot;socket_tcpi_rcv_mss\&quot;:\&quot;%{client.socket.tcpi_rcv_mss}V\&quot;,\&quot;socket_tcpi_snd_mss\&quot;:\&quot;%{client.socket.tcpi_snd_mss}V\&quot;,\&quot;socket_tcpi_rtt\&quot;:\&quot;%{client.socket.tcpi_rtt}V\&quot;,\&quot;socket_tcpi_rttvar\&quot;:\&quot;%{client.socket.tcpi_rttvar}V\&quot;,\&quot;socket_tcpi_rcv_rtt\&quot;:\&quot;%{client.socket.tcpi_rcv_rtt}V\&quot;,\&quot;socket_tcpi_rcv_space\&quot;:\&quot;%{client.socket.tcpi_rcv_space}V\&quot;,\&quot;socket_tcpi_last_data_sent\&quot;:\&quot;%{client.socket.tcpi_last_data_sent}V\&quot;,\&quot;socket_tcpi_total_retrans\&quot;:\&quot;%{client.socket.tcpi_total_retrans}V\&quot;,\&quot;socket_tcpi_delta_retrans\&quot;:\&quot;%{client.socket.tcpi_delta_retrans}V\&quot;,\&quot;socket_ploss\&quot;:\&quot;%{client.socket.ploss}V\&quot;}&#39;] |
| **region** | **String** | The region that log data will be sent to. | [optional][default to &#39;US&#39;] |
| **token** | **String** | The API key from your Datadog account. Required. | [optional] |

### Return type

[**LoggingDatadogResponse**](LoggingDatadogResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_datadog()`

```ruby
delete_log_datadog(opts): <InlineResponse200> # Delete a Datadog log endpoint
```

Delete the Datadog logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingDatadogApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_datadog_name: 'logging_datadog_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete a Datadog log endpoint
  result = api_instance.delete_log_datadog(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingDatadogApi->delete_log_datadog: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_datadog_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_datadog()`

```ruby
get_log_datadog(opts): <LoggingDatadogResponse> # Get a Datadog log endpoint
```

Get the details for a Datadog logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingDatadogApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_datadog_name: 'logging_datadog_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get a Datadog log endpoint
  result = api_instance.get_log_datadog(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingDatadogApi->get_log_datadog: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_datadog_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingDatadogResponse**](LoggingDatadogResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_datadog()`

```ruby
list_log_datadog(opts): <Array<LoggingDatadogResponse>> # List Datadog log endpoints
```

List all of the Datadog logging objects for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingDatadogApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List Datadog log endpoints
  result = api_instance.list_log_datadog(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingDatadogApi->list_log_datadog: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingDatadogResponse&gt;**](LoggingDatadogResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_datadog()`

```ruby
update_log_datadog(opts): <LoggingDatadogResponse> # Update a Datadog log endpoint
```

Update the Datadog logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingDatadogApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_datadog_name: 'logging_datadog_name_example', # String | The name for the real-time logging configuration.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Datadog can ingest. 
    region: 'US', # String | The region that log data will be sent to.
    token: 'token_example', # String | The API key from your Datadog account. Required.
}

begin
  # Update a Datadog log endpoint
  result = api_instance.update_log_datadog(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingDatadogApi->update_log_datadog: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_datadog_name** | **String** | The name for the real-time logging configuration. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Datadog can ingest.  | [optional][default to &#39;{\&quot;ddsource\&quot;:\&quot;fastly\&quot;,\&quot;service\&quot;:\&quot;%{req.service_id}V\&quot;,\&quot;date\&quot;:\&quot;%{begin:%Y-%m-%dT%H:%M:%S%Z}t\&quot;,\&quot;time_start\&quot;:\&quot;%{begin:%Y-%m-%dT%H:%M:%S%Z}t\&quot;,\&quot;time_end\&quot;:\&quot;%{end:%Y-%m-%dT%H:%M:%S%Z}t\&quot;,\&quot;http\&quot;:{\&quot;request_time_ms\&quot;:\&quot;%D\&quot;,\&quot;method\&quot;:\&quot;%m\&quot;,\&quot;url\&quot;:\&quot;%{json.escape(req.url)}V\&quot;,\&quot;useragent\&quot;:\&quot;%{User-Agent}i\&quot;,\&quot;referer\&quot;:\&quot;%{Referer}i\&quot;,\&quot;protocol\&quot;:\&quot;%H\&quot;,\&quot;request_x_forwarded_for\&quot;:\&quot;%{X-Forwarded-For}i\&quot;,\&quot;status_code\&quot;:\&quot;%s\&quot;},\&quot;network\&quot;:{\&quot;client\&quot;:{\&quot;ip\&quot;:\&quot;%h\&quot;,\&quot;name\&quot;:\&quot;%{client.as.name}V\&quot;,\&quot;number\&quot;:\&quot;%{client.as.number}V\&quot;,\&quot;connection_speed\&quot;:\&quot;%{client.geo.conn_speed}V\&quot;},\&quot;destination\&quot;:{\&quot;ip\&quot;:\&quot;%A\&quot;},\&quot;geoip\&quot;:{\&quot;geo_city\&quot;:\&quot;%{client.geo.city.utf8}V\&quot;,\&quot;geo_country_code\&quot;:\&quot;%{client.geo.country_code}V\&quot;,\&quot;geo_continent_code\&quot;:\&quot;%{client.geo.continent_code}V\&quot;,\&quot;geo_region\&quot;:\&quot;%{client.geo.region}V\&quot;},\&quot;bytes_written\&quot;:\&quot;%B\&quot;,\&quot;bytes_read\&quot;:\&quot;%{req.body_bytes_read}V\&quot;},\&quot;host\&quot;:\&quot;%{Fastly-Orig-Host}i\&quot;,\&quot;origin_host\&quot;:\&quot;%v\&quot;,\&quot;is_ipv6\&quot;:\&quot;%{if(req.is_ipv6, \\\&quot;true\\\&quot;, \\\&quot;false\\\&quot;)}V\&quot;,\&quot;is_tls\&quot;:\&quot;%{if(req.is_ssl, \\\&quot;true\\\&quot;, \\\&quot;false\\\&quot;)}V\&quot;,\&quot;tls_client_protocol\&quot;:\&quot;%{json.escape(tls.client.protocol)}V\&quot;,\&quot;tls_client_servername\&quot;:\&quot;%{json.escape(tls.client.servername)}V\&quot;,\&quot;tls_client_cipher\&quot;:\&quot;%{json.escape(tls.client.cipher)}V\&quot;,\&quot;tls_client_cipher_sha\&quot;:\&quot;%{json.escape(tls.client.ciphers_sha)}V\&quot;,\&quot;tls_client_tlsexts_sha\&quot;:\&quot;%{json.escape(tls.client.tlsexts_sha)}V\&quot;,\&quot;is_h2\&quot;:\&quot;%{if(fastly_info.is_h2, \\\&quot;true\\\&quot;, \\\&quot;false\\\&quot;)}V\&quot;,\&quot;is_h2_push\&quot;:\&quot;%{if(fastly_info.h2.is_push, \\\&quot;true\\\&quot;, \\\&quot;false\\\&quot;)}V\&quot;,\&quot;h2_stream_id\&quot;:\&quot;%{fastly_info.h2.stream_id}V\&quot;,\&quot;request_accept_content\&quot;:\&quot;%{Accept}i\&quot;,\&quot;request_accept_language\&quot;:\&quot;%{Accept-Language}i\&quot;,\&quot;request_accept_encoding\&quot;:\&quot;%{Accept-Encoding}i\&quot;,\&quot;request_accept_charset\&quot;:\&quot;%{Accept-Charset}i\&quot;,\&quot;request_connection\&quot;:\&quot;%{Connection}i\&quot;,\&quot;request_dnt\&quot;:\&quot;%{DNT}i\&quot;,\&quot;request_forwarded\&quot;:\&quot;%{Forwarded}i\&quot;,\&quot;request_via\&quot;:\&quot;%{Via}i\&quot;,\&quot;request_cache_control\&quot;:\&quot;%{Cache-Control}i\&quot;,\&quot;request_x_requested_with\&quot;:\&quot;%{X-Requested-With}i\&quot;,\&quot;request_x_att_device_id\&quot;:\&quot;%{X-ATT-Device-Id}i\&quot;,\&quot;content_type\&quot;:\&quot;%{Content-Type}o\&quot;,\&quot;is_cacheable\&quot;:\&quot;%{if(fastly_info.state~\\\&quot;^(HIT|MISS)$\\\&quot;, \\\&quot;true\\\&quot;, \\\&quot;false\\\&quot;)}V\&quot;,\&quot;response_age\&quot;:\&quot;%{Age}o\&quot;,\&quot;response_cache_control\&quot;:\&quot;%{Cache-Control}o\&quot;,\&quot;response_expires\&quot;:\&quot;%{Expires}o\&quot;,\&quot;response_last_modified\&quot;:\&quot;%{Last-Modified}o\&quot;,\&quot;response_tsv\&quot;:\&quot;%{TSV}o\&quot;,\&quot;server_datacenter\&quot;:\&quot;%{server.datacenter}V\&quot;,\&quot;req_header_size\&quot;:\&quot;%{req.header_bytes_read}V\&quot;,\&quot;resp_header_size\&quot;:\&quot;%{resp.header_bytes_written}V\&quot;,\&quot;socket_cwnd\&quot;:\&quot;%{client.socket.cwnd}V\&quot;,\&quot;socket_nexthop\&quot;:\&quot;%{client.socket.nexthop}V\&quot;,\&quot;socket_tcpi_rcv_mss\&quot;:\&quot;%{client.socket.tcpi_rcv_mss}V\&quot;,\&quot;socket_tcpi_snd_mss\&quot;:\&quot;%{client.socket.tcpi_snd_mss}V\&quot;,\&quot;socket_tcpi_rtt\&quot;:\&quot;%{client.socket.tcpi_rtt}V\&quot;,\&quot;socket_tcpi_rttvar\&quot;:\&quot;%{client.socket.tcpi_rttvar}V\&quot;,\&quot;socket_tcpi_rcv_rtt\&quot;:\&quot;%{client.socket.tcpi_rcv_rtt}V\&quot;,\&quot;socket_tcpi_rcv_space\&quot;:\&quot;%{client.socket.tcpi_rcv_space}V\&quot;,\&quot;socket_tcpi_last_data_sent\&quot;:\&quot;%{client.socket.tcpi_last_data_sent}V\&quot;,\&quot;socket_tcpi_total_retrans\&quot;:\&quot;%{client.socket.tcpi_total_retrans}V\&quot;,\&quot;socket_tcpi_delta_retrans\&quot;:\&quot;%{client.socket.tcpi_delta_retrans}V\&quot;,\&quot;socket_ploss\&quot;:\&quot;%{client.socket.ploss}V\&quot;}&#39;] |
| **region** | **String** | The region that log data will be sent to. | [optional][default to &#39;US&#39;] |
| **token** | **String** | The API key from your Datadog account. Required. | [optional] |

### Return type

[**LoggingDatadogResponse**](LoggingDatadogResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
