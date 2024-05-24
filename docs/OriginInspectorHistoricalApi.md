# Fastly::OriginInspectorHistoricalApi


```ruby
require 'fastly'
api_instance = Fastly::OriginInspectorHistoricalApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_origin_inspector_historical**](OriginInspectorHistoricalApi.md#get_origin_inspector_historical) | **GET** /metrics/origins/services/{service_id} | Get historical origin data for a service


## `get_origin_inspector_historical()`

```ruby
get_origin_inspector_historical(opts): <HistoricalOriginsResponse> # Get historical origin data for a service
```

Fetches historical origin metrics for a given Fastly service, optionally filtering and grouping the results by origin host, region, or POP. 

### Examples

```ruby
api_instance = Fastly::OriginInspectorHistoricalApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    start: '2021-08-01T00:00:00.000Z', # String | A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided `downsample` value.
    _end: '2020-08-02T00:00:00.000Z', # String | A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided `downsample` value.
    downsample: 'hour', # String | Duration of sample windows.
    metric: 'resp_body_bytes,status_2xx', # String | The metrics to retrieve. Multiple values should be comma-separated.
    group_by: 'host', # String | Dimensions to return in the query. Multiple dimensions may be separated by commas. For example, `group_by=host` will return one timeseries for every origin host, as a total across all POPs. 
    limit: 'limit_example', # String | Number of results per page. The maximum is 200.
    cursor: 'cursor_example', # String | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    region: 'usa', # String | Limit query to one or more specific geographic regions. Values should be comma-separated. 
    datacenter: 'SJC,STP', # String | Limit query to one or more specific POPs. Values should be comma-separated.
    host: 'origin_1,origin_2', # String | Limit query to one or more specific origin hosts. Values should be comma-separated.
}

begin
  # Get historical origin data for a service
  result = api_instance.get_origin_inspector_historical(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling OriginInspectorHistoricalApi->get_origin_inspector_historical: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **start** | **String** | A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided `downsample` value. | [optional] |
| **_end** | **String** | A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided `downsample` value. | [optional] |
| **downsample** | **String** | Duration of sample windows. | [optional][default to &#39;hour&#39;] |
| **metric** | **String** | The metrics to retrieve. Multiple values should be comma-separated. | [optional][default to &#39;responses&#39;] |
| **group_by** | **String** | Dimensions to return in the query. Multiple dimensions may be separated by commas. For example, `group_by&#x3D;host` will return one timeseries for every origin host, as a total across all POPs.  | [optional] |
| **limit** | **String** | Number of results per page. The maximum is 200. | [optional][default to &#39;100&#39;] |
| **cursor** | **String** | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] |
| **region** | **String** | Limit query to one or more specific geographic regions. Values should be comma-separated.  | [optional] |
| **datacenter** | **String** | Limit query to one or more specific POPs. Values should be comma-separated. | [optional] |
| **host** | **String** | Limit query to one or more specific origin hosts. Values should be comma-separated. | [optional] |

### Return type

[**HistoricalOriginsResponse**](HistoricalOriginsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
