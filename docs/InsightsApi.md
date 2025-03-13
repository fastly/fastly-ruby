# Fastly::InsightsApi


```ruby
require 'fastly'
api_instance = Fastly::InsightsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_log_insights**](InsightsApi.md#get_log_insights) | **GET** /observability/log-insights | Retrieve log insights


## `get_log_insights()`

```ruby
get_log_insights(opts): <GetLogInsightsResponse> # Retrieve log insights
```

Retrieves statistics from sampled log records.

### Examples

```ruby
api_instance = Fastly::InsightsApi.new
opts = {
    visualization: 'top-url-by-bandwidth', # String | 
    service_id: 'service_id_example', # String | 
    start: 'start_example', # String | 
    _end: '_end_example', # String | 
    pops: 'pops_example', # String | 
    domain: 'domain_example', # String | 
    domain_exact_match: true, # Boolean | 
    limit: 8.14, # Float | 
}

begin
  # Retrieve log insights
  result = api_instance.get_log_insights(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling InsightsApi->get_log_insights: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **visualization** | **String** |  |  |
| **service_id** | **String** |  |  |
| **start** | **String** |  |  |
| **_end** | **String** |  |  |
| **pops** | **String** |  | [optional] |
| **domain** | **String** |  | [optional] |
| **domain_exact_match** | **Boolean** |  | [optional] |
| **limit** | **Float** |  | [optional] |

### Return type

[**GetLogInsightsResponse**](GetLogInsightsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
