# Fastly::RealtimeApi


```ruby
require 'fastly'
api_instance = Fastly::RealtimeApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_stats_last120_seconds**](RealtimeApi.md#get_stats_last120_seconds) | **GET** /v1/channel/{service_id}/ts/h | Get real-time data for the last 120 seconds
[**get_stats_last120_seconds_limit_entries**](RealtimeApi.md#get_stats_last120_seconds_limit_entries) | **GET** /v1/channel/{service_id}/ts/h/limit/{max_entries} | Get a limited number of real-time data entries
[**get_stats_last_second**](RealtimeApi.md#get_stats_last_second) | **GET** /v1/channel/{service_id}/ts/{timestamp_in_seconds} | Get real-time data from specified time


## `get_stats_last120_seconds()`

```ruby
get_stats_last120_seconds(opts): <Realtime> # Get real-time data for the last 120 seconds
```

Get data for the 120 seconds preceding the latest timestamp available for a service.

### Examples

```ruby
api_instance = Fastly::RealtimeApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Get real-time data for the last 120 seconds
  result = api_instance.get_stats_last120_seconds(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling RealtimeApi->get_stats_last120_seconds: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**Realtime**](Realtime.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_stats_last120_seconds_limit_entries()`

```ruby
get_stats_last120_seconds_limit_entries(opts): <Realtime> # Get a limited number of real-time data entries
```

Get data for the 120 seconds preceding the latest timestamp available for a service, up to a maximum of `max_entries` entries.

### Examples

```ruby
api_instance = Fastly::RealtimeApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    max_entries: 1, # Integer | Maximum number of results to show.
}

begin
  # Get a limited number of real-time data entries
  result = api_instance.get_stats_last120_seconds_limit_entries(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling RealtimeApi->get_stats_last120_seconds_limit_entries: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **max_entries** | **Integer** | Maximum number of results to show. |  |

### Return type

[**Realtime**](Realtime.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_stats_last_second()`

```ruby
get_stats_last_second(opts): <Realtime> # Get real-time data from specified time
```

Get real-time data for the specified reporting period. Specify `0` to get a single entry for the last complete second. The `Timestamp` field included in the response provides the time index of the latest entry in the dataset and can be provided as the `start_timestamp` of the next request for a seamless continuation of the dataset from one request to the next.

### Examples

```ruby
api_instance = Fastly::RealtimeApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    timestamp_in_seconds: 56, # Integer | Timestamp in seconds (Unix epoch time).
}

begin
  # Get real-time data from specified time
  result = api_instance.get_stats_last_second(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling RealtimeApi->get_stats_last_second: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **timestamp_in_seconds** | **Integer** | Timestamp in seconds (Unix epoch time). |  |

### Return type

[**Realtime**](Realtime.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
