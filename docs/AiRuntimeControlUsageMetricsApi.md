# Fastly::AiRuntimeControlUsageMetricsApi


```ruby
require 'fastly'
api_instance = Fastly::AiRuntimeControlUsageMetricsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**arc_export_usage_metrics**](AiRuntimeControlUsageMetricsApi.md#arc_export_usage_metrics) | **GET** /ai-runtime-control/v1/usage-metrics/export | Export usage metrics
[**arc_get_usage_metrics**](AiRuntimeControlUsageMetricsApi.md#arc_get_usage_metrics) | **GET** /ai-runtime-control/v1/usage-metrics | Get usage metrics


## `arc_export_usage_metrics()`

```ruby
arc_export_usage_metrics(opts): <ArcUsageMetricsResponse> # Export usage metrics
```

Returns usage metrics for AI Runtime Control requests. Accepts the same filter parameters as [get usage metrics](#arc-get-usage-metrics), except `sort` and `granularity`, which aren't supported here.  Set the `Accept` header to `text/csv` to receive a CSV file download instead of a JSON response. In the CSV output, the column named `time` corresponds to the `date` field in the JSON response. 

### Examples

```ruby
api_instance = Fastly::AiRuntimeControlUsageMetricsApi.new
opts = {
    key: '7fVVQb1nZaJgnzCn4B4v3B', # String | Filter results to a specific virtual key ID.
    provider: 'pTfnUUBcU1yv8SoRJn5PZ2', # String | Filter results by AI provider connection ID.
    model: 'claude-sonnet-4-20250514', # String | Filter results by AI model identifier.
    from: Time.parse('2026-09-01T00:00Z'), # Time | The start of the time range, in RFC 3339 format.
    to: Time.parse('2026-09-22T00:00Z'), # Time | The end of the time range, in RFC 3339 format. Defaults to now.
}

begin
  # Export usage metrics
  result = api_instance.arc_export_usage_metrics(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AiRuntimeControlUsageMetricsApi->arc_export_usage_metrics: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Filter results to a specific virtual key ID. | [optional] |
| **provider** | **String** | Filter results by AI provider connection ID. | [optional] |
| **model** | **String** | Filter results by AI model identifier. | [optional] |
| **from** | **Time** | The start of the time range, in RFC 3339 format. | [optional] |
| **to** | **Time** | The end of the time range, in RFC 3339 format. Defaults to now. | [optional] |

### Return type

[**ArcUsageMetricsResponse**](ArcUsageMetricsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `arc_get_usage_metrics()`

```ruby
arc_get_usage_metrics(opts): <ArcUsageMetricsResponse> # Get usage metrics
```

Returns usage metrics for AI Runtime Control requests, including request counts, session counts, input token counts, and output token counts.

### Examples

```ruby
api_instance = Fastly::AiRuntimeControlUsageMetricsApi.new
opts = {
    key: '7fVVQb1nZaJgnzCn4B4v3B', # String | Filter results to a specific virtual key ID.
    provider: 'pTfnUUBcU1yv8SoRJn5PZ2', # String | Filter results by AI provider connection ID.
    model: 'claude-sonnet-4-20250514', # String | Filter results by AI model identifier.
    from: Time.parse('2026-09-01T00:00Z'), # Time | The start of the time range, in RFC 3339 format.
    to: Time.parse('2026-09-22T00:00Z'), # Time | The end of the time range, in RFC 3339 format. Defaults to now.
    granularity: 'daily', # String | The time granularity to aggregate usage by.
    sort: 'date', # String | Sort field. Prefix with `-` for descending order (e.g., `sort=-date`). 
}

begin
  # Get usage metrics
  result = api_instance.arc_get_usage_metrics(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AiRuntimeControlUsageMetricsApi->arc_get_usage_metrics: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Filter results to a specific virtual key ID. | [optional] |
| **provider** | **String** | Filter results by AI provider connection ID. | [optional] |
| **model** | **String** | Filter results by AI model identifier. | [optional] |
| **from** | **Time** | The start of the time range, in RFC 3339 format. | [optional] |
| **to** | **Time** | The end of the time range, in RFC 3339 format. Defaults to now. | [optional] |
| **granularity** | **String** | The time granularity to aggregate usage by. | [optional][default to &#39;daily&#39;] |
| **sort** | **String** | Sort field. Prefix with `-` for descending order (e.g., `sort&#x3D;-date`).  | [optional][default to &#39;date&#39;] |

### Return type

[**ArcUsageMetricsResponse**](ArcUsageMetricsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
