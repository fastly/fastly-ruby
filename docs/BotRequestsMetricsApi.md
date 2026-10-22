# Fastly::BotRequestsMetricsApi


```ruby
require 'fastly'
api_instance = Fastly::BotRequestsMetricsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_bot_request_metrics_service_historical**](BotRequestsMetricsApi.md#get_bot_request_metrics_service_historical) | **GET** /metrics/bots/entities/{service_id}/{granularity} | Get per-service historical time series metrics for bot requests broken down by bot-type.


## `get_bot_request_metrics_service_historical()`

```ruby
get_bot_request_metrics_service_historical(opts): <BotRequestMetricsResponse> # Get per-service historical time series metrics for bot requests broken down by bot-type.
```

Return historical time series metrics for bot requests broken down by bot-type.

### Examples

```ruby
api_instance = Fastly::BotRequestsMetricsApi.new
opts = {
    granularity: 'minutely', # String | Duration of sample windows.
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    from: '2025-06-08T00:00:00.000Z', # String | A valid RFC-8339-formatted date and time indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided `granularity` value.
    to: '2025-08-02T00:00:00.000Z', # String | A valid RFC-8339-formatted date and time indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided `granularity` value.
    group_by: 'datacenter', # String | Field to group by in the query. For example, `group_by=bot_id` will return entries grouped by `timestamp` and `bot_id`. 
    datacenter: 'SJC,STP', # String | Limit query to one or more specific POPs. Values should be comma-separated.
    bot: 'bot_example', # String | Filter results based by Bot ID.
    region: 'africa_std', # String | Limit query to one or more specific geographic regions. Values should be comma-separated. 
    cursor: 'cursor_example', # String | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    metric: 'status_4xx,status_5xx,ipv6,http3', # String | One or more metrics to retrieve. Multiple values should be comma-separated.
    metric_set: 'content_guard', # String | The metric set to retrieve.
    limit: 'limit_example', # String | Number of results per page. The maximum is 10000.
}

begin
  # Get per-service historical time series metrics for bot requests broken down by bot-type.
  result = api_instance.get_bot_request_metrics_service_historical(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BotRequestsMetricsApi->get_bot_request_metrics_service_historical: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **granularity** | **String** | Duration of sample windows. |  |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **from** | **String** | A valid RFC-8339-formatted date and time indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided `granularity` value. | [optional] |
| **to** | **String** | A valid RFC-8339-formatted date and time indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided `granularity` value. | [optional] |
| **group_by** | **String** | Field to group by in the query. For example, `group_by&#x3D;bot_id` will return entries grouped by `timestamp` and `bot_id`.  | [optional] |
| **datacenter** | **String** | Limit query to one or more specific POPs. Values should be comma-separated. | [optional] |
| **bot** | **String** | Filter results based by Bot ID. | [optional] |
| **region** | **String** | Limit query to one or more specific geographic regions. Values should be comma-separated.  | [optional] |
| **cursor** | **String** | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] |
| **metric** | **String** | One or more metrics to retrieve. Multiple values should be comma-separated. | [optional] |
| **metric_set** | **String** | The metric set to retrieve. | [optional] |
| **limit** | **String** | Number of results per page. The maximum is 10000. | [optional][default to &#39;1000&#39;] |

### Return type

[**BotRequestMetricsResponse**](BotRequestMetricsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
