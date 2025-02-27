# Fastly::BillingUsageMetricsApi


```ruby
require 'fastly'
api_instance = Fastly::BillingUsageMetricsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_service_level_usage**](BillingUsageMetricsApi.md#get_service_level_usage) | **GET** /billing/v3/service-usage-metrics | Retrieve service-level usage metrics for a product.
[**get_usage_metrics**](BillingUsageMetricsApi.md#get_usage_metrics) | **GET** /billing/v3/usage-metrics | Get monthly usage metrics


## `get_service_level_usage()`

```ruby
get_service_level_usage(opts): <Serviceusagemetrics> # Retrieve service-level usage metrics for a product.
```

Returns product usage, broken down by service.

### Examples

```ruby
api_instance = Fastly::BillingUsageMetricsApi.new
opts = {
    product_id: 'product_id_example', # String | The product identifier for the metrics returned (e.g., `cdn_usage`).
    usage_type_name: 'usage_type_name_example', # String | The usage type name for the metrics returned (e.g., `North America Requests`).
    start_month: '2023-01', # String | 
    end_month: '2023-03', # String | 
    limit: 'limit_example', # String | Number of results per page. The maximum is 100.
    cursor: 'cursor_example', # String | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
}

begin
  # Retrieve service-level usage metrics for a product.
  result = api_instance.get_service_level_usage(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BillingUsageMetricsApi->get_service_level_usage: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | The product identifier for the metrics returned (e.g., `cdn_usage`). | [optional] |
| **usage_type_name** | **String** | The usage type name for the metrics returned (e.g., `North America Requests`). | [optional] |
| **start_month** | **String** |  | [optional] |
| **end_month** | **String** |  | [optional] |
| **limit** | **String** | Number of results per page. The maximum is 100. | [optional][default to &#39;5&#39;] |
| **cursor** | **String** | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] |

### Return type

[**Serviceusagemetrics**](Serviceusagemetrics.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_usage_metrics()`

```ruby
get_usage_metrics(opts): <Usagemetric> # Get monthly usage metrics
```

Returns monthly usage metrics for customer by product.

### Examples

```ruby
api_instance = Fastly::BillingUsageMetricsApi.new
opts = {
    start_month: '2024-05', # String | 
    end_month: '2024-06', # String | 
}

begin
  # Get monthly usage metrics
  result = api_instance.get_usage_metrics(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BillingUsageMetricsApi->get_usage_metrics: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_month** | **String** |  |  |
| **end_month** | **String** |  |  |

### Return type

[**Usagemetric**](Usagemetric.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
