# Fastly::RateLimiterApi


```ruby
require 'fastly'
api_instance = Fastly::RateLimiterApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_rate_limiter**](RateLimiterApi.md#create_rate_limiter) | **POST** /service/{service_id}/version/{version_id}/rate-limiters | Create a rate limiter
[**delete_rate_limiter**](RateLimiterApi.md#delete_rate_limiter) | **DELETE** /rate-limiters/{rate_limiter_id} | Delete a rate limiter
[**get_rate_limiter**](RateLimiterApi.md#get_rate_limiter) | **GET** /rate-limiters/{rate_limiter_id} | Get a rate limiter
[**list_rate_limiters**](RateLimiterApi.md#list_rate_limiters) | **GET** /service/{service_id}/version/{version_id}/rate-limiters | List rate limiters
[**update_rate_limiter**](RateLimiterApi.md#update_rate_limiter) | **PUT** /rate-limiters/{rate_limiter_id} | Update a rate limiter


## `create_rate_limiter()`

```ruby
create_rate_limiter(opts): <RateLimiterResponse> # Create a rate limiter
```

Create a rate limiter for a particular service and version.

### Examples

```ruby
api_instance = Fastly::RateLimiterApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | A human readable name for the rate limiting rule.
    uri_dictionary_name: 'uri_dictionary_name_example', # String | The name of an Edge Dictionary containing URIs as keys. If not defined or `null`, all origin URIs will be rate limited.
    http_methods: ['HEAD'], # Array<String> | Array of HTTP methods to apply rate limiting to.
    rps_limit: 56, # Integer | Upper limit of requests per second allowed by the rate limiter.
    window_size: 1, # Integer | Number of seconds during which the RPS limit must be exceeded in order to trigger a violation.
    client_key: ['inner_example'], # Array<String> | Array of VCL variables used to generate a counter key to identify a client. Example variables include `req.http.Fastly-Client-IP`, `req.http.User-Agent`, or a custom header like `req.http.API-Key`.
    penalty_box_duration: 56, # Integer | Length of time in minutes that the rate limiter is in effect after the initial violation is detected.
    action: 'response', # String | The action to take when a rate limiter violation is detected.
    response_object_name: 'response_object_name_example', # String | Name of existing response object. Required if `action` is `response_object`. Note that the rate limiter response is only updated to reflect the response object content when saving the rate limiter configuration.
    logger_type: 'azureblob', # String | Name of the type of logging endpoint to be used when action is `log_only`. The logging endpoint type is used to determine the appropriate log format to use when emitting log entries.
    feature_revision: 56, # Integer | Revision number of the rate limiting feature implementation. Defaults to the most recent revision.
}

begin
  # Create a rate limiter
  result = api_instance.create_rate_limiter(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling RateLimiterApi->create_rate_limiter: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **name** | **String** | A human readable name for the rate limiting rule. | [optional] |
| **uri_dictionary_name** | **String** | The name of an Edge Dictionary containing URIs as keys. If not defined or `null`, all origin URIs will be rate limited. | [optional] |
| **http_methods** | [**Array&lt;String&gt;**](String.md) | Array of HTTP methods to apply rate limiting to. | [optional] |
| **rps_limit** | **Integer** | Upper limit of requests per second allowed by the rate limiter. | [optional] |
| **window_size** | **Integer** | Number of seconds during which the RPS limit must be exceeded in order to trigger a violation. | [optional] |
| **client_key** | [**Array&lt;String&gt;**](String.md) | Array of VCL variables used to generate a counter key to identify a client. Example variables include `req.http.Fastly-Client-IP`, `req.http.User-Agent`, or a custom header like `req.http.API-Key`. | [optional] |
| **penalty_box_duration** | **Integer** | Length of time in minutes that the rate limiter is in effect after the initial violation is detected. | [optional] |
| **action** | **String** | The action to take when a rate limiter violation is detected. | [optional] |
| **response_object_name** | **String** | Name of existing response object. Required if `action` is `response_object`. Note that the rate limiter response is only updated to reflect the response object content when saving the rate limiter configuration. | [optional] |
| **logger_type** | **String** | Name of the type of logging endpoint to be used when action is `log_only`. The logging endpoint type is used to determine the appropriate log format to use when emitting log entries. | [optional] |
| **feature_revision** | **Integer** | Revision number of the rate limiting feature implementation. Defaults to the most recent revision. | [optional] |

### Return type

[**RateLimiterResponse**](RateLimiterResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_rate_limiter()`

```ruby
delete_rate_limiter(opts): <InlineResponse200> # Delete a rate limiter
```

Delete a rate limiter by its ID.

### Examples

```ruby
api_instance = Fastly::RateLimiterApi.new
opts = {
    rate_limiter_id: 'rate_limiter_id_example', # String | Alphanumeric string identifying the rate limiter.
}

begin
  # Delete a rate limiter
  result = api_instance.delete_rate_limiter(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling RateLimiterApi->delete_rate_limiter: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rate_limiter_id** | **String** | Alphanumeric string identifying the rate limiter. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_rate_limiter()`

```ruby
get_rate_limiter(opts): <RateLimiterResponse> # Get a rate limiter
```

Get a rate limiter by its ID.

### Examples

```ruby
api_instance = Fastly::RateLimiterApi.new
opts = {
    rate_limiter_id: 'rate_limiter_id_example', # String | Alphanumeric string identifying the rate limiter.
}

begin
  # Get a rate limiter
  result = api_instance.get_rate_limiter(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling RateLimiterApi->get_rate_limiter: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rate_limiter_id** | **String** | Alphanumeric string identifying the rate limiter. |  |

### Return type

[**RateLimiterResponse**](RateLimiterResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_rate_limiters()`

```ruby
list_rate_limiters(opts): <Array<RateLimiterResponse>> # List rate limiters
```

List all rate limiters for a particular service and version.

### Examples

```ruby
api_instance = Fastly::RateLimiterApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List rate limiters
  result = api_instance.list_rate_limiters(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling RateLimiterApi->list_rate_limiters: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;RateLimiterResponse&gt;**](RateLimiterResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_rate_limiter()`

```ruby
update_rate_limiter(opts): <RateLimiterResponse> # Update a rate limiter
```

Update a rate limiter by its ID.

### Examples

```ruby
api_instance = Fastly::RateLimiterApi.new
opts = {
    rate_limiter_id: 'rate_limiter_id_example', # String | Alphanumeric string identifying the rate limiter.
    name: 'name_example', # String | A human readable name for the rate limiting rule.
    uri_dictionary_name: 'uri_dictionary_name_example', # String | The name of an Edge Dictionary containing URIs as keys. If not defined or `null`, all origin URIs will be rate limited.
    http_methods: ['HEAD'], # Array<String> | Array of HTTP methods to apply rate limiting to.
    rps_limit: 56, # Integer | Upper limit of requests per second allowed by the rate limiter.
    window_size: 1, # Integer | Number of seconds during which the RPS limit must be exceeded in order to trigger a violation.
    client_key: ['inner_example'], # Array<String> | Array of VCL variables used to generate a counter key to identify a client. Example variables include `req.http.Fastly-Client-IP`, `req.http.User-Agent`, or a custom header like `req.http.API-Key`.
    penalty_box_duration: 56, # Integer | Length of time in minutes that the rate limiter is in effect after the initial violation is detected.
    action: 'response', # String | The action to take when a rate limiter violation is detected.
    response_object_name: 'response_object_name_example', # String | Name of existing response object. Required if `action` is `response_object`. Note that the rate limiter response is only updated to reflect the response object content when saving the rate limiter configuration.
    logger_type: 'azureblob', # String | Name of the type of logging endpoint to be used when action is `log_only`. The logging endpoint type is used to determine the appropriate log format to use when emitting log entries.
    feature_revision: 56, # Integer | Revision number of the rate limiting feature implementation. Defaults to the most recent revision.
}

begin
  # Update a rate limiter
  result = api_instance.update_rate_limiter(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling RateLimiterApi->update_rate_limiter: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rate_limiter_id** | **String** | Alphanumeric string identifying the rate limiter. |  |
| **name** | **String** | A human readable name for the rate limiting rule. | [optional] |
| **uri_dictionary_name** | **String** | The name of an Edge Dictionary containing URIs as keys. If not defined or `null`, all origin URIs will be rate limited. | [optional] |
| **http_methods** | [**Array&lt;String&gt;**](String.md) | Array of HTTP methods to apply rate limiting to. | [optional] |
| **rps_limit** | **Integer** | Upper limit of requests per second allowed by the rate limiter. | [optional] |
| **window_size** | **Integer** | Number of seconds during which the RPS limit must be exceeded in order to trigger a violation. | [optional] |
| **client_key** | [**Array&lt;String&gt;**](String.md) | Array of VCL variables used to generate a counter key to identify a client. Example variables include `req.http.Fastly-Client-IP`, `req.http.User-Agent`, or a custom header like `req.http.API-Key`. | [optional] |
| **penalty_box_duration** | **Integer** | Length of time in minutes that the rate limiter is in effect after the initial violation is detected. | [optional] |
| **action** | **String** | The action to take when a rate limiter violation is detected. | [optional] |
| **response_object_name** | **String** | Name of existing response object. Required if `action` is `response_object`. Note that the rate limiter response is only updated to reflect the response object content when saving the rate limiter configuration. | [optional] |
| **logger_type** | **String** | Name of the type of logging endpoint to be used when action is `log_only`. The logging endpoint type is used to determine the appropriate log format to use when emitting log entries. | [optional] |
| **feature_revision** | **Integer** | Revision number of the rate limiting feature implementation. Defaults to the most recent revision. | [optional] |

### Return type

[**RateLimiterResponse**](RateLimiterResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
