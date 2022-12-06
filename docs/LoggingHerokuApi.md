# Fastly::LoggingHerokuApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingHerokuApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_log_heroku**](LoggingHerokuApi.md#create_log_heroku) | **POST** /service/{service_id}/version/{version_id}/logging/heroku | Create a Heroku log endpoint |
| [**delete_log_heroku**](LoggingHerokuApi.md#delete_log_heroku) | **DELETE** /service/{service_id}/version/{version_id}/logging/heroku/{logging_heroku_name} | Delete the Heroku log endpoint |
| [**get_log_heroku**](LoggingHerokuApi.md#get_log_heroku) | **GET** /service/{service_id}/version/{version_id}/logging/heroku/{logging_heroku_name} | Get a Heroku log endpoint |
| [**list_log_heroku**](LoggingHerokuApi.md#list_log_heroku) | **GET** /service/{service_id}/version/{version_id}/logging/heroku | List Heroku log endpoints |
| [**update_log_heroku**](LoggingHerokuApi.md#update_log_heroku) | **PUT** /service/{service_id}/version/{version_id}/logging/heroku/{logging_heroku_name} | Update the Heroku log endpoint |


## `create_log_heroku()`

```ruby
create_log_heroku(opts): <LoggingHerokuResponse> # Create a Heroku log endpoint
```

Create a Heroku for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingHerokuApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    token: 'token_example', # String | The token to use for authentication ([https://devcenter.heroku.com/articles/add-on-partner-log-integration](https://devcenter.heroku.com/articles/add-on-partner-log-integration)).
    url: 'url_example', # String | The URL to stream logs to.
}

begin
  # Create a Heroku log endpoint
  result = api_instance.create_log_heroku(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingHerokuApi->create_log_heroku: #{e}"
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
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional][default to &#39;%h %l %u %t \&quot;%r\&quot; %&amp;gt;s %b&#39;] |
| **token** | **String** | The token to use for authentication ([https://devcenter.heroku.com/articles/add-on-partner-log-integration](https://devcenter.heroku.com/articles/add-on-partner-log-integration)). | [optional] |
| **url** | **String** | The URL to stream logs to. | [optional] |

### Return type

[**LoggingHerokuResponse**](LoggingHerokuResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_heroku()`

```ruby
delete_log_heroku(opts): <InlineResponse200> # Delete the Heroku log endpoint
```

Delete the Heroku for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingHerokuApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_heroku_name: 'logging_heroku_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete the Heroku log endpoint
  result = api_instance.delete_log_heroku(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingHerokuApi->delete_log_heroku: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_heroku_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_heroku()`

```ruby
get_log_heroku(opts): <LoggingHerokuResponse> # Get a Heroku log endpoint
```

Get the Heroku for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingHerokuApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_heroku_name: 'logging_heroku_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get a Heroku log endpoint
  result = api_instance.get_log_heroku(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingHerokuApi->get_log_heroku: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_heroku_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingHerokuResponse**](LoggingHerokuResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_heroku()`

```ruby
list_log_heroku(opts): <Array<LoggingHerokuResponse>> # List Heroku log endpoints
```

List all of the Herokus for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingHerokuApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List Heroku log endpoints
  result = api_instance.list_log_heroku(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingHerokuApi->list_log_heroku: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingHerokuResponse&gt;**](LoggingHerokuResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_heroku()`

```ruby
update_log_heroku(opts): <LoggingHerokuResponse> # Update the Heroku log endpoint
```

Update the Heroku for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingHerokuApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_heroku_name: 'logging_heroku_name_example', # String | The name for the real-time logging configuration.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    token: 'token_example', # String | The token to use for authentication ([https://devcenter.heroku.com/articles/add-on-partner-log-integration](https://devcenter.heroku.com/articles/add-on-partner-log-integration)).
    url: 'url_example', # String | The URL to stream logs to.
}

begin
  # Update the Heroku log endpoint
  result = api_instance.update_log_heroku(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingHerokuApi->update_log_heroku: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_heroku_name** | **String** | The name for the real-time logging configuration. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional][default to &#39;%h %l %u %t \&quot;%r\&quot; %&amp;gt;s %b&#39;] |
| **token** | **String** | The token to use for authentication ([https://devcenter.heroku.com/articles/add-on-partner-log-integration](https://devcenter.heroku.com/articles/add-on-partner-log-integration)). | [optional] |
| **url** | **String** | The URL to stream logs to. | [optional] |

### Return type

[**LoggingHerokuResponse**](LoggingHerokuResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
