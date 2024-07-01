# Fastly::LoggingKafkaApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingKafkaApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_log_kafka**](LoggingKafkaApi.md#create_log_kafka) | **POST** /service/{service_id}/version/{version_id}/logging/kafka | Create a Kafka log endpoint
[**delete_log_kafka**](LoggingKafkaApi.md#delete_log_kafka) | **DELETE** /service/{service_id}/version/{version_id}/logging/kafka/{logging_kafka_name} | Delete the Kafka log endpoint
[**get_log_kafka**](LoggingKafkaApi.md#get_log_kafka) | **GET** /service/{service_id}/version/{version_id}/logging/kafka/{logging_kafka_name} | Get a Kafka log endpoint
[**list_log_kafka**](LoggingKafkaApi.md#list_log_kafka) | **GET** /service/{service_id}/version/{version_id}/logging/kafka | List Kafka log endpoints
[**update_log_kafka**](LoggingKafkaApi.md#update_log_kafka) | **PUT** /service/{service_id}/version/{version_id}/logging/kafka/{logging_kafka_name} | Update the Kafka log endpoint


## `create_log_kafka()`

```ruby
create_log_kafka(opts): <LoggingKafkaResponsePost> # Create a Kafka log endpoint
```

Create a Kafka logging endpoint for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingKafkaApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    tls_ca_cert: 'tls_ca_cert_example', # String | A secure certificate to authenticate a server with. Must be in PEM format.
    tls_client_cert: 'tls_client_cert_example', # String | The client certificate used to make authenticated requests. Must be in PEM format.
    tls_client_key: 'tls_client_key_example', # String | The client private key used to make authenticated requests. Must be in PEM format.
    tls_hostname: 'tls_hostname_example', # String | The hostname to verify the server's certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported.
    topic: 'topic_example', # String | The Kafka topic to send logs to. Required.
    brokers: 'brokers_example', # String | A comma-separated list of IP addresses or hostnames of Kafka brokers. Required.
    compression_codec: 'gzip', # String | The codec used for compression of your logs.
    required_acks: 1, # Integer | The number of acknowledgements a leader must receive before a write is considered successful.
    request_max_bytes: 56, # Integer | The maximum number of bytes sent in one request. Defaults `0` (no limit).
    parse_log_keyvals: true, # Boolean | Enables parsing of key=value tuples from the beginning of a logline, turning them into [record headers](https://cwiki.apache.org/confluence/display/KAFKA/KIP-82+-+Add+Record+Headers).
    auth_method: 'plain', # String | SASL authentication method.
    user: 'user_example', # String | SASL user.
    password: 'password_example', # String | SASL password.
    use_tls: Fastly::LoggingUseTlsString::no_tls, # LoggingUseTlsString | 
}

begin
  # Create a Kafka log endpoint
  result = api_instance.create_log_kafka(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingKafkaApi->create_log_kafka: #{e}"
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
| **tls_ca_cert** | **String** | A secure certificate to authenticate a server with. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_cert** | **String** | The client certificate used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_key** | **String** | The client private key used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_hostname** | **String** | The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. | [optional][default to &#39;null&#39;] |
| **topic** | **String** | The Kafka topic to send logs to. Required. | [optional] |
| **brokers** | **String** | A comma-separated list of IP addresses or hostnames of Kafka brokers. Required. | [optional] |
| **compression_codec** | **String** | The codec used for compression of your logs. | [optional] |
| **required_acks** | **Integer** | The number of acknowledgements a leader must receive before a write is considered successful. | [optional][default to 1] |
| **request_max_bytes** | **Integer** | The maximum number of bytes sent in one request. Defaults `0` (no limit). | [optional][default to 0] |
| **parse_log_keyvals** | **Boolean** | Enables parsing of key&#x3D;value tuples from the beginning of a logline, turning them into [record headers](https://cwiki.apache.org/confluence/display/KAFKA/KIP-82+-+Add+Record+Headers). | [optional] |
| **auth_method** | **String** | SASL authentication method. | [optional] |
| **user** | **String** | SASL user. | [optional] |
| **password** | **String** | SASL password. | [optional] |
| **use_tls** | [**LoggingUseTlsString**](LoggingUseTlsString.md) |  | [optional][default to &#39;0&#39;] |

### Return type

[**LoggingKafkaResponsePost**](LoggingKafkaResponsePost.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_kafka()`

```ruby
delete_log_kafka(opts): <InlineResponse200> # Delete the Kafka log endpoint
```

Delete the Kafka logging endpoint for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingKafkaApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_kafka_name: 'logging_kafka_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete the Kafka log endpoint
  result = api_instance.delete_log_kafka(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingKafkaApi->delete_log_kafka: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_kafka_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_kafka()`

```ruby
get_log_kafka(opts): <LoggingKafkaResponse> # Get a Kafka log endpoint
```

Get the Kafka logging endpoint for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingKafkaApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_kafka_name: 'logging_kafka_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get a Kafka log endpoint
  result = api_instance.get_log_kafka(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingKafkaApi->get_log_kafka: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_kafka_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingKafkaResponse**](LoggingKafkaResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_kafka()`

```ruby
list_log_kafka(opts): <Array<LoggingKafkaResponse>> # List Kafka log endpoints
```

List all of the Kafka logging endpoints for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingKafkaApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List Kafka log endpoints
  result = api_instance.list_log_kafka(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingKafkaApi->list_log_kafka: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingKafkaResponse&gt;**](LoggingKafkaResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_kafka()`

```ruby
update_log_kafka(opts): <LoggingKafkaResponse> # Update the Kafka log endpoint
```

Update the Kafka logging endpoint for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingKafkaApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_kafka_name: 'logging_kafka_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Update the Kafka log endpoint
  result = api_instance.update_log_kafka(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingKafkaApi->update_log_kafka: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_kafka_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingKafkaResponse**](LoggingKafkaResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
