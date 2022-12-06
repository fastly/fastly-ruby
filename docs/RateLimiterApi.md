# Fastly::RateLimiterApi


```ruby
require 'fastly'
api_instance = Fastly::RateLimiterApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_rate_limiter**](RateLimiterApi.md#delete_rate_limiter) | **DELETE** /rate-limiters/{rate_limiter_id} | Delete a rate limiter |
| [**get_rate_limiter**](RateLimiterApi.md#get_rate_limiter) | **GET** /rate-limiters/{rate_limiter_id} | Get a rate limiter |
| [**list_rate_limiters**](RateLimiterApi.md#list_rate_limiters) | **GET** /service/{service_id}/version/{version_id}/rate-limiters | List rate limiters |


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
