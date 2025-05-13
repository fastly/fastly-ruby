# Fastly::ObservabilityAggregationsForLogsApi


```ruby
require 'fastly'
api_instance = Fastly::ObservabilityAggregationsForLogsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**log_aggregations_get**](ObservabilityAggregationsForLogsApi.md#log_aggregations_get) | **GET** /observability/aggregations | Retrieve aggregated log results


## `log_aggregations_get()`

```ruby
log_aggregations_get(opts): <LogAggregationsGetResponse> # Retrieve aggregated log results
```

Retrieves aggregated log results.

### Examples

```ruby
api_instance = Fastly::ObservabilityAggregationsForLogsApi.new
opts = {
    source: 'source_example', # String | 
    service_id: 'service_id_example', # String | 
    start: 'start_example', # String | 
    _end: '_end_example', # String | 
    series: 'series_example', # String | 
    limit: 8.14, # Float | 
    filter: 'filter_example', # String | 
    dimensions: 'dimensions_example', # String | 
    sort: 'sort_example', # String | 
}

begin
  # Retrieve aggregated log results
  result = api_instance.log_aggregations_get(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ObservabilityAggregationsForLogsApi->log_aggregations_get: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | **String** |  |  |
| **service_id** | **String** |  |  |
| **start** | **String** |  |  |
| **_end** | **String** |  |  |
| **limit** | **Float** |  | [optional] |
| **filter** | **String** |  | [optional] |
| **series** | **String** |  |  |
| **dimensions** | **String** |  | [optional] |
| **sort** | **String** |  | [optional] |

### Return type

[**LogAggregationsGetResponse**](LogAggregationsGetResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
