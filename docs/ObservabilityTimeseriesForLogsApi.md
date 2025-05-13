# Fastly::ObservabilityTimeseriesForLogsApi


```ruby
require 'fastly'
api_instance = Fastly::ObservabilityTimeseriesForLogsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**log_timeseries_get**](ObservabilityTimeseriesForLogsApi.md#log_timeseries_get) | **GET** /observability/timeseries | Retrieve log data as time series


## `log_timeseries_get()`

```ruby
log_timeseries_get(opts): <LogTimeseriesGetResponse> # Retrieve log data as time series
```

Retrieves log data as time series.

### Examples

```ruby
api_instance = Fastly::ObservabilityTimeseriesForLogsApi.new
opts = {
    source: 'source_example', # String | 
    service_id: 'service_id_example', # String | 
    start: 'start_example', # String | 
    _end: '_end_example', # String | 
    granularity: 'second', # String | 
    series: 'series_example', # String | 
    filter: 'filter_example', # String | 
}

begin
  # Retrieve log data as time series
  result = api_instance.log_timeseries_get(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ObservabilityTimeseriesForLogsApi->log_timeseries_get: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | **String** |  |  |
| **service_id** | **String** |  |  |
| **start** | **String** |  |  |
| **_end** | **String** |  |  |
| **granularity** | **String** |  |  |
| **filter** | **String** |  | [optional] |
| **series** | **String** |  |  |

### Return type

[**LogTimeseriesGetResponse**](LogTimeseriesGetResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
