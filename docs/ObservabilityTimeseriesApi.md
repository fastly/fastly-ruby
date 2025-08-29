# Fastly::ObservabilityTimeseriesApi


```ruby
require 'fastly'
api_instance = Fastly::ObservabilityTimeseriesApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**timeseries_get**](ObservabilityTimeseriesApi.md#timeseries_get) | **GET** /observability/timeseries | Retrieve observability data as a time series


## `timeseries_get()`

```ruby
timeseries_get(opts): <TimeseriesGetResponse> # Retrieve observability data as a time series
```

Retrieves observability data as a time series.

### Examples

```ruby
api_instance = Fastly::ObservabilityTimeseriesApi.new
opts = {
    source: 'logs', # String | 
    from: '2024-01-03T16:00:00Z', # String | 
    to: '2024-01-03T18:00:00Z', # String | 
    granularity: 'hour', # String | 
    series: 'avg[response_time],p99[response_time]', # String | 
    dimensions: 'dimensions_example', # String | 
    filter: 'filter[response_status]=200', # String | 
}

begin
  # Retrieve observability data as a time series
  result = api_instance.timeseries_get(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ObservabilityTimeseriesApi->timeseries_get: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | **String** |  |  |
| **from** | **String** |  |  |
| **to** | **String** |  |  |
| **granularity** | **String** |  |  |
| **dimensions** | **String** |  | [optional] |
| **filter** | **String** |  | [optional] |
| **series** | **String** |  |  |

### Return type

[**TimeseriesGetResponse**](TimeseriesGetResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
