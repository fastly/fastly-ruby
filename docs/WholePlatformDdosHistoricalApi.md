# Fastly::WholePlatformDdosHistoricalApi


```ruby
require 'fastly'
api_instance = Fastly::WholePlatformDdosHistoricalApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_platform_ddos_historical**](WholePlatformDdosHistoricalApi.md#get_platform_ddos_historical) | **GET** /metrics/platform/ddos | Get historical DDoS metrics for the entire Fastly platform |


## `get_platform_ddos_historical()`

```ruby
get_platform_ddos_historical(opts): <PlatformDdosResponse> # Get historical DDoS metrics for the entire Fastly platform
```

Fetches historical DDoS metrics for the entire Fastly platform.

### Examples

```ruby
api_instance = Fastly::WholePlatformDdosHistoricalApi.new
opts = {
    start: '2021-08-01T00:00:00.000Z', # String | A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided `downsample` value.
    _end: '2020-08-02T00:00:00.000Z', # String | A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided `downsample` value.
    downsample: 'hour', # String | Duration of sample windows.
}

begin
  # Get historical DDoS metrics for the entire Fastly platform
  result = api_instance.get_platform_ddos_historical(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling WholePlatformDdosHistoricalApi->get_platform_ddos_historical: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **String** | A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided `downsample` value. | [optional] |
| **_end** | **String** | A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided `downsample` value. | [optional] |
| **downsample** | **String** | Duration of sample windows. | [optional][default to &#39;hour&#39;] |

### Return type

[**PlatformDdosResponse**](PlatformDdosResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
