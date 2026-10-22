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
[**get_platform_metrics_aggregate_historical**](MetricsPlatformApi.md#get_platform_metrics_aggregate_historical) | **GET** /metrics/v2/platform/aggregate/{granularity} | Get aggregated historical time series metrics for all entities
[**get_platform_metrics_entity_historical**](MetricsPlatformApi.md#get_platform_metrics_entity_historical) | **GET** /metrics/v2/platform/entities/{entity_id}/{granularity} | Get historical time series metrics for a single entity.


## `get_platform_metrics_aggregate_historical()`

```ruby
get_platform_metrics_aggregate_historical(opts): <PlatformMetricsResponse> # Get aggregated historical time series metrics for all entities
```

Fetches historical metrics for all entities for a customer for a given granularity. Entity in this context refers to an instance of a Fastly resource, such as a VCL service, Compute service, or NGWAF workspace.

### Examples

```ruby
api_instance = Fastly::MetricsPlatformApi.new
opts = {
    granularity: 'minutely', # String | Duration of sample windows.
    from: '2025-06-08T00:00:00.000Z', # String | A valid RFC-8339-formatted date and time indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided `granularity` value.
    to: '2025-08-02T00:00:00.000Z', # String | A valid RFC-8339-formatted date and time indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided `granularity` value.
    metric: 'status_4xx,status_5xx,ipv6,http3', # String | One or more metrics to retrieve. Multiple values should be comma-separated.
    metric_set: 'delivery_traffic_flow', # String | One or more metric sets to retrieve. Multiple values should be comma-separated. A metric set expands to a list of metrics; see the Metric Sets section above for the metrics in each set. A metric that appears in more than one requested set is returned once. 
    group_by: 'datacenter', # String | Field to group_by in the query. For example, `group_by=region` will return entries for grouped by timestamp and region. 
    region: 'africa_std', # String | Limit query to one or more specific geographic regions. Values should be comma-separated. 
    datacenter: 'SJC,STP', # String | Limit query to one or more specific POPs. Values should be comma-separated.
    cursor: 'cursor_example', # String | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    limit: 'limit_example', # String | Number of results per page. The maximum is 10000.
}

begin
  # Get aggregated historical time series metrics for all entities
  result = api_instance.get_platform_metrics_aggregate_historical(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling MetricsPlatformApi->get_platform_metrics_aggregate_historical: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **granularity** | **String** | Duration of sample windows. |  |
| **from** | **String** | A valid RFC-8339-formatted date and time indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided `granularity` value. | [optional] |
| **to** | **String** | A valid RFC-8339-formatted date and time indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided `granularity` value. | [optional] |
| **metric** | **String** | One or more metrics to retrieve. Multiple values should be comma-separated. | [optional] |
| **metric_set** | **String** | One or more metric sets to retrieve. Multiple values should be comma-separated. A metric set expands to a list of metrics; see the Metric Sets section above for the metrics in each set. A metric that appears in more than one requested set is returned once.  | [optional] |
| **group_by** | **String** | Field to group_by in the query. For example, `group_by&#x3D;region` will return entries for grouped by timestamp and region.  | [optional] |
| **region** | **String** | Limit query to one or more specific geographic regions. Values should be comma-separated.  | [optional] |
| **datacenter** | **String** | Limit query to one or more specific POPs. Values should be comma-separated. | [optional] |
| **cursor** | **String** | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] |
| **limit** | **String** | Number of results per page. The maximum is 10000. | [optional][default to &#39;1000&#39;] |

### Return type

[**PlatformMetricsResponse**](PlatformMetricsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_platform_metrics_entity_historical()`

```ruby
get_platform_metrics_entity_historical(opts): <PlatformMetricsResponse> # Get historical time series metrics for a single entity.
```

Fetches historical metrics for a single entity for a given granularity. Entity in this context refers to an instance of a Fastly resource, such as a VCL service, Compute service, or NGWAF workspace.

### Examples

```ruby
api_instance = Fastly::MetricsPlatformApi.new
opts = {
    entity_id: 'l4c2G719JnG5z0qbt512fG', # String | Alphanumeric string identifying the entity.
    granularity: 'minutely', # String | Duration of sample windows.
    from: '2025-06-08T00:00:00.000Z', # String | A valid RFC-8339-formatted date and time indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided `granularity` value.
    to: '2025-08-02T00:00:00.000Z', # String | A valid RFC-8339-formatted date and time indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided `granularity` value.
    metric: 'status_4xx,status_5xx,ipv6,http3', # String | One or more metrics to retrieve. Multiple values should be comma-separated.
    metric_set: 'delivery_traffic_flow', # String | One or more metric sets to retrieve. Multiple values should be comma-separated. A metric set expands to a list of metrics; see the Metric Sets section above for the metrics in each set. A metric that appears in more than one requested set is returned once. 
    group_by: 'datacenter', # String | Field to group_by in the query. For example, `group_by=region` will return entries for grouped by timestamp and region. 
    region: 'africa_std', # String | Limit query to one or more specific geographic regions. Values should be comma-separated. 
    datacenter: 'SJC,STP', # String | Limit query to one or more specific POPs. Values should be comma-separated.
    cursor: 'cursor_example', # String | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    limit: 'limit_example', # String | Number of results per page. The maximum is 10000.
}

begin
  # Get historical time series metrics for a single entity.
  result = api_instance.get_platform_metrics_entity_historical(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling MetricsPlatformApi->get_platform_metrics_entity_historical: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **String** | Alphanumeric string identifying the entity. |  |
| **granularity** | **String** | Duration of sample windows. |  |
| **from** | **String** | A valid RFC-8339-formatted date and time indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided `granularity` value. | [optional] |
| **to** | **String** | A valid RFC-8339-formatted date and time indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided `granularity` value. | [optional] |
| **metric** | **String** | One or more metrics to retrieve. Multiple values should be comma-separated. | [optional] |
| **metric_set** | **String** | One or more metric sets to retrieve. Multiple values should be comma-separated. A metric set expands to a list of metrics; see the Metric Sets section above for the metrics in each set. A metric that appears in more than one requested set is returned once.  | [optional] |
| **group_by** | **String** | Field to group_by in the query. For example, `group_by&#x3D;region` will return entries for grouped by timestamp and region.  | [optional] |
| **region** | **String** | Limit query to one or more specific geographic regions. Values should be comma-separated.  | [optional] |
| **datacenter** | **String** | Limit query to one or more specific POPs. Values should be comma-separated. | [optional] |
| **cursor** | **String** | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] |
| **limit** | **String** | Number of results per page. The maximum is 10000. | [optional][default to &#39;1000&#39;] |

### Return type

[**PlatformMetricsResponse**](PlatformMetricsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
