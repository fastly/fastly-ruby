# Fastly::LoggingPubsubApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingPubsubApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_log_gcp_pubsub**](LoggingPubsubApi.md#create_log_gcp_pubsub) | **POST** /service/{service_id}/version/{version_id}/logging/pubsub | Create a GCP Cloud Pub/Sub log endpoint
[**delete_log_gcp_pubsub**](LoggingPubsubApi.md#delete_log_gcp_pubsub) | **DELETE** /service/{service_id}/version/{version_id}/logging/pubsub/{logging_google_pubsub_name} | Delete a GCP Cloud Pub/Sub log endpoint
[**get_log_gcp_pubsub**](LoggingPubsubApi.md#get_log_gcp_pubsub) | **GET** /service/{service_id}/version/{version_id}/logging/pubsub/{logging_google_pubsub_name} | Get a GCP Cloud Pub/Sub log endpoint
[**list_log_gcp_pubsub**](LoggingPubsubApi.md#list_log_gcp_pubsub) | **GET** /service/{service_id}/version/{version_id}/logging/pubsub | List GCP Cloud Pub/Sub log endpoints
[**update_log_gcp_pubsub**](LoggingPubsubApi.md#update_log_gcp_pubsub) | **PUT** /service/{service_id}/version/{version_id}/logging/pubsub/{logging_google_pubsub_name} | Update a GCP Cloud Pub/Sub log endpoint


## `create_log_gcp_pubsub()`

```ruby
create_log_gcp_pubsub(opts): <LoggingGooglePubsubResponse> # Create a GCP Cloud Pub/Sub log endpoint
```

Create a Pub/Sub logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingPubsubApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    user: 'user_example', # String | Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Not required if `account_name` is specified.
    secret_key: 'secret_key_example', # String | Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Not required if `account_name` is specified.
    account_name: 'account_name_example', # String | The name of the Google Cloud Platform service account associated with the target log collection service. Not required if `user` and `secret_key` are provided.
    topic: 'topic_example', # String | The Google Cloud Pub/Sub topic to which logs will be published. Required.
    project_id: 'project_id_example', # String | Your Google Cloud Platform project ID. Required
}

begin
  # Create a GCP Cloud Pub/Sub log endpoint
  result = api_instance.create_log_gcp_pubsub(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingPubsubApi->create_log_gcp_pubsub: #{e}"
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
| **user** | **String** | Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Not required if `account_name` is specified. | [optional] |
| **secret_key** | **String** | Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Not required if `account_name` is specified. | [optional] |
| **account_name** | **String** | The name of the Google Cloud Platform service account associated with the target log collection service. Not required if `user` and `secret_key` are provided. | [optional] |
| **topic** | **String** | The Google Cloud Pub/Sub topic to which logs will be published. Required. | [optional] |
| **project_id** | **String** | Your Google Cloud Platform project ID. Required | [optional] |

### Return type

[**LoggingGooglePubsubResponse**](LoggingGooglePubsubResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_gcp_pubsub()`

```ruby
delete_log_gcp_pubsub(opts): <InlineResponse200> # Delete a GCP Cloud Pub/Sub log endpoint
```

Delete a Pub/Sub logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingPubsubApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_google_pubsub_name: 'logging_google_pubsub_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete a GCP Cloud Pub/Sub log endpoint
  result = api_instance.delete_log_gcp_pubsub(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingPubsubApi->delete_log_gcp_pubsub: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_google_pubsub_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_gcp_pubsub()`

```ruby
get_log_gcp_pubsub(opts): <LoggingGooglePubsubResponse> # Get a GCP Cloud Pub/Sub log endpoint
```

Get the details for a Pub/Sub logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingPubsubApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_google_pubsub_name: 'logging_google_pubsub_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get a GCP Cloud Pub/Sub log endpoint
  result = api_instance.get_log_gcp_pubsub(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingPubsubApi->get_log_gcp_pubsub: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_google_pubsub_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingGooglePubsubResponse**](LoggingGooglePubsubResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_gcp_pubsub()`

```ruby
list_log_gcp_pubsub(opts): <Array<LoggingGooglePubsubResponse>> # List GCP Cloud Pub/Sub log endpoints
```

List all of the Pub/Sub logging objects for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingPubsubApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List GCP Cloud Pub/Sub log endpoints
  result = api_instance.list_log_gcp_pubsub(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingPubsubApi->list_log_gcp_pubsub: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingGooglePubsubResponse&gt;**](LoggingGooglePubsubResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_gcp_pubsub()`

```ruby
update_log_gcp_pubsub(opts): <LoggingGooglePubsubResponse> # Update a GCP Cloud Pub/Sub log endpoint
```

Update a Pub/Sub logging object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingPubsubApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_google_pubsub_name: 'logging_google_pubsub_name_example', # String | The name for the real-time logging configuration.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    user: 'user_example', # String | Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Not required if `account_name` is specified.
    secret_key: 'secret_key_example', # String | Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Not required if `account_name` is specified.
    account_name: 'account_name_example', # String | The name of the Google Cloud Platform service account associated with the target log collection service. Not required if `user` and `secret_key` are provided.
    topic: 'topic_example', # String | The Google Cloud Pub/Sub topic to which logs will be published. Required.
    project_id: 'project_id_example', # String | Your Google Cloud Platform project ID. Required
}

begin
  # Update a GCP Cloud Pub/Sub log endpoint
  result = api_instance.update_log_gcp_pubsub(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingPubsubApi->update_log_gcp_pubsub: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_google_pubsub_name** | **String** | The name for the real-time logging configuration. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional][default to &#39;%h %l %u %t \&quot;%r\&quot; %&amp;gt;s %b&#39;] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **user** | **String** | Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Not required if `account_name` is specified. | [optional] |
| **secret_key** | **String** | Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Not required if `account_name` is specified. | [optional] |
| **account_name** | **String** | The name of the Google Cloud Platform service account associated with the target log collection service. Not required if `user` and `secret_key` are provided. | [optional] |
| **topic** | **String** | The Google Cloud Pub/Sub topic to which logs will be published. Required. | [optional] |
| **project_id** | **String** | Your Google Cloud Platform project ID. Required | [optional] |

### Return type

[**LoggingGooglePubsubResponse**](LoggingGooglePubsubResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
