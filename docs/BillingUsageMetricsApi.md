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
[**get_service_level_usage**](BillingUsageMetricsApi.md#get_service_level_usage) | **GET** /billing/v3/service-usage-metrics | Retrieve service-level usage metrics for services with non-zero usage units.
[**get_usage_metrics**](BillingUsageMetricsApi.md#get_usage_metrics) | **GET** /billing/v3/usage-metrics | Get monthly usage metrics


## `get_service_level_usage()`

```ruby
get_service_level_usage(opts): <Serviceusagemetrics> # Retrieve service-level usage metrics for services with non-zero usage units.
```

Returns product usage, broken down by service.

### Examples

```ruby
api_instance = Fastly::BillingUsageMetricsApi.new
opts = {
    product_id: 'product_id_example', # String | The product identifier for the metrics returned (e.g., `cdn_usage`). This should be used along with `usage_type_name`.
    service: 'service_example', # String | The service identifier for the metrics being requested.
    usage_type_name: 'usage_type_name_example', # String | The usage type name for the metrics returned (e.g., `North America Requests`). This should be used along with `product_id`.
    start_month: '2023-01', # String | 
    end_month: '2023-03', # String | 
    limit: 'limit_example', # String | Number of results per page. The maximum is 10000.
    cursor: 'cursor_example', # String | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
}

begin
  # Retrieve service-level usage metrics for services with non-zero usage units.
  result = api_instance.get_service_level_usage(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BillingUsageMetricsApi->get_service_level_usage: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | The product identifier for the metrics returned (e.g., `cdn_usage`). This should be used along with `usage_type_name`. | [optional] |
| **service** | **String** | The service identifier for the metrics being requested. | [optional] |
| **usage_type_name** | **String** | The usage type name for the metrics returned (e.g., `North America Requests`). This should be used along with `product_id`. | [optional] |
| **start_month** | **String** |  | [optional] |
| **end_month** | **String** |  | [optional] |
| **limit** | **String** | Number of results per page. The maximum is 10000. | [optional][default to &#39;1000&#39;] |
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
