# Fastly::MetricsPlatformApi


```ruby
require 'fastly'
api_instance = Fastly::MetricsPlatformApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_platform_metrics_service_historical**](MetricsPlatformApi.md#get_platform_metrics_service_historical) | **GET** /metrics/platform/services/{service_id}/{granularity} | Get historical time series metrics for a single service


## `get_platform_metrics_service_historical()`

```ruby
get_platform_metrics_service_historical(opts): <PlatformMetricsResponse> # Get historical time series metrics for a single service
```

Fetches historical metrics for a single service for a given granularity.

### Examples

```ruby
api_instance = Fastly::MetricsPlatformApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    granularity: 'minutely', # String | Duration of sample windows.
    from: '2025-06-08T00:00:00.000Z', # String | A valid RFC-8339-formatted date and time indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided `granularity` value.
    to: '2025-08-02T00:00:00.000Z', # String | A valid RFC-8339-formatted date and time indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided `granularity` value.
    metric: 'ttfb_edge_p95_us,ttfb_edge_p99_us', # String | The metric(s) to retrieve. Multiple values should be comma-separated.
    metric_set: 'ttfb', # String | The metric set(s) to retrieve. Multiple values should be comma-separated.
    group_by: 'datacenter', # String | Field to group_by in the query. For example, `group_by=region` will return entries for grouped by timestamp and region. 
    region: 'africa_std', # String | Limit query to one or more specific geographic regions. Values should be comma-separated. 
    datacenter: 'SJC,STP', # String | Limit query to one or more specific POPs. Values should be comma-separated.
    cursor: 'cursor_example', # String | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    limit: 'limit_example', # String | Number of results per page. The maximum is 10000.
}

begin
  # Get historical time series metrics for a single service
  result = api_instance.get_platform_metrics_service_historical(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling MetricsPlatformApi->get_platform_metrics_service_historical: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **granularity** | **String** | Duration of sample windows. |  |
| **from** | **String** | A valid RFC-8339-formatted date and time indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided `granularity` value. | [optional] |
| **to** | **String** | A valid RFC-8339-formatted date and time indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided `granularity` value. | [optional] |
| **metric** | **String** | The metric(s) to retrieve. Multiple values should be comma-separated. | [optional] |
| **metric_set** | **String** | The metric set(s) to retrieve. Multiple values should be comma-separated. | [optional] |
| **group_by** | **String** | Field to group_by in the query. For example, `group_by&#x3D;region` will return entries for grouped by timestamp and region.  | [optional] |
| **region** | **String** | Limit query to one or more specific geographic regions. Values should be comma-separated.  | [optional] |
| **datacenter** | **String** | Limit query to one or more specific POPs. Values should be comma-separated. | [optional] |
| **cursor** | **String** | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] |
| **limit** | **String** | Number of results per page. The maximum is 10000. | [optional][default to &#39;1000&#39;] |

### Return type

[**PlatformMetricsResponse**](PlatformMetricsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
