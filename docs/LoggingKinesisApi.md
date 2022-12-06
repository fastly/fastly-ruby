# Fastly::LoggingKinesisApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingKinesisApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_log_kinesis**](LoggingKinesisApi.md#create_log_kinesis) | **POST** /service/{service_id}/version/{version_id}/logging/kinesis | Create  an Amazon Kinesis log endpoint |
| [**delete_log_kinesis**](LoggingKinesisApi.md#delete_log_kinesis) | **DELETE** /service/{service_id}/version/{version_id}/logging/kinesis/{logging_kinesis_name} | Delete the Amazon Kinesis log endpoint |
| [**get_log_kinesis**](LoggingKinesisApi.md#get_log_kinesis) | **GET** /service/{service_id}/version/{version_id}/logging/kinesis/{logging_kinesis_name} | Get an Amazon Kinesis log endpoint |
| [**list_log_kinesis**](LoggingKinesisApi.md#list_log_kinesis) | **GET** /service/{service_id}/version/{version_id}/logging/kinesis | List Amazon Kinesis log endpoints |


## `create_log_kinesis()`

```ruby
create_log_kinesis(opts): <LoggingKinesisResponse> # Create  an Amazon Kinesis log endpoint
```

Create an Amazon Kinesis Data Streams logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingKinesisApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: Fastly::LoggingPlacement::NONE, # LoggingPlacement | 
    format_version: Fastly::LoggingFormatVersion::v1, # LoggingFormatVersion | 
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Kinesis can ingest.
    topic: 'topic_example', # String | The Amazon Kinesis stream to send logs to. Required.
    region: Fastly::AwsRegion::US_EAST_1, # AwsRegion | 
    secret_key: 'secret_key_example', # String | The secret key associated with the target Amazon Kinesis stream. Not required if `iam_role` is specified.
    access_key: 'access_key_example', # String | The access key associated with the target Amazon Kinesis stream. Not required if `iam_role` is specified.
    iam_role: 'iam_role_example', # String | The ARN for an IAM role granting Fastly access to the target Amazon Kinesis stream. Not required if `access_key` and `secret_key` are provided.
}

begin
  # Create  an Amazon Kinesis log endpoint
  result = api_instance.create_log_kinesis(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingKinesisApi->create_log_kinesis: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | [**LoggingPlacement**](LoggingPlacement.md) |  | [optional] |
| **format_version** | [**LoggingFormatVersion**](LoggingFormatVersion.md) |  | [optional][default to 2] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Kinesis can ingest. | [optional][default to &#39;{\&quot;timestamp\&quot;:\&quot;%{begin:%Y-%m-%dT%H:%M:%S}t\&quot;,\&quot;time_elapsed\&quot;:\&quot;%{time.elapsed.usec}V\&quot;,\&quot;is_tls\&quot;:\&quot;%{if(req.is_ssl, \\\&quot;true\\\&quot;, \\\&quot;false\\\&quot;)}V\&quot;,\&quot;client_ip\&quot;:\&quot;%{req.http.Fastly-Client-IP}V\&quot;,\&quot;geo_city\&quot;:\&quot;%{client.geo.city}V\&quot;,\&quot;geo_country_code\&quot;:\&quot;%{client.geo.country_code}V\&quot;,\&quot;request\&quot;:\&quot;%{req.request}V\&quot;,\&quot;host\&quot;:\&quot;%{req.http.Fastly-Orig-Host}V\&quot;,\&quot;url\&quot;:\&quot;%{json.escape(req.url)}V\&quot;,\&quot;request_referer\&quot;:\&quot;%{json.escape(req.http.Referer)}V\&quot;,\&quot;request_user_agent\&quot;:\&quot;%{json.escape(req.http.User-Agent)}V\&quot;,\&quot;request_accept_language\&quot;:\&quot;%{json.escape(req.http.Accept-Language)}V\&quot;,\&quot;request_accept_charset\&quot;:\&quot;%{json.escape(req.http.Accept-Charset)}V\&quot;,\&quot;cache_status\&quot;:\&quot;%{regsub(fastly_info.state, \\\&quot;^(HIT-(SYNTH)|(HITPASS|HIT|MISS|PASS|ERROR|PIPE)).*\\\&quot;, \\\&quot;\\\\2\\\\3\\\&quot;) }V\&quot;}&#39;] |
| **topic** | **String** | The Amazon Kinesis stream to send logs to. Required. | [optional] |
| **region** | [**AwsRegion**](AwsRegion.md) |  | [optional] |
| **secret_key** | **String** | The secret key associated with the target Amazon Kinesis stream. Not required if `iam_role` is specified. | [optional] |
| **access_key** | **String** | The access key associated with the target Amazon Kinesis stream. Not required if `iam_role` is specified. | [optional] |
| **iam_role** | **String** | The ARN for an IAM role granting Fastly access to the target Amazon Kinesis stream. Not required if `access_key` and `secret_key` are provided. | [optional] |

### Return type

[**LoggingKinesisResponse**](LoggingKinesisResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_kinesis()`

```ruby
delete_log_kinesis(opts): <InlineResponse200> # Delete the Amazon Kinesis log endpoint
```

Delete an Amazon Kinesis Data Streams logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingKinesisApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_kinesis_name: 'logging_kinesis_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete the Amazon Kinesis log endpoint
  result = api_instance.delete_log_kinesis(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingKinesisApi->delete_log_kinesis: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_kinesis_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_kinesis()`

```ruby
get_log_kinesis(opts): <LoggingKinesisResponse> # Get an Amazon Kinesis log endpoint
```

Get the details for an Amazon Kinesis Data Streams logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingKinesisApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_kinesis_name: 'logging_kinesis_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get an Amazon Kinesis log endpoint
  result = api_instance.get_log_kinesis(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingKinesisApi->get_log_kinesis: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_kinesis_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingKinesisResponse**](LoggingKinesisResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_kinesis()`

```ruby
list_log_kinesis(opts): <Array<LoggingKinesisResponse>> # List Amazon Kinesis log endpoints
```

List all of the Amazon Kinesis Data Streams logging objects for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingKinesisApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List Amazon Kinesis log endpoints
  result = api_instance.list_log_kinesis(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingKinesisApi->list_log_kinesis: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingKinesisResponse&gt;**](LoggingKinesisResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
