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
[**get_service_level_usage**](BillingUsageMetricsApi.md#get_service_level_usage) | **GET** /billing/v2/account_customers/{customer_id}/service-usage-metrics | Retrieve service-level usage metrics for a product.
[**get_service_level_usage_types**](BillingUsageMetricsApi.md#get_service_level_usage_types) | **GET** /billing/v2/account_customers/{customer_id}/service-usage-types | Retrieve product usage types for a customer.


## `get_service_level_usage()`

```ruby
get_service_level_usage(opts): <Serviceusagemetrics> # Retrieve service-level usage metrics for a product.
```

Returns product usage, broken down by service.

### Examples

```ruby
api_instance = Fastly::BillingUsageMetricsApi.new
opts = {
    customer_id: 'customer_id_example', # String | Alphanumeric string identifying the customer.
    product_id: 'product_id_example', # String | The product identifier for the metrics returned (e.g., `cdn_usage`). This field is not required for CSV requests.
    usage_type_name: 'usage_type_name_example', # String | The usage type name for the metrics returned (e.g., `North America Requests`). This field is not required for CSV requests.
    time_granularity: 'time_granularity_example', # String | 
    start_date: '2023-01-01', # String | 
    end_date: '2023-01-31', # String | 
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
| **customer_id** | **String** | Alphanumeric string identifying the customer. |  |
| **product_id** | **String** | The product identifier for the metrics returned (e.g., `cdn_usage`). This field is not required for CSV requests. |  |
| **usage_type_name** | **String** | The usage type name for the metrics returned (e.g., `North America Requests`). This field is not required for CSV requests. |  |
| **time_granularity** | **String** |  |  |
| **start_date** | **String** |  | [optional] |
| **end_date** | **String** |  | [optional] |
| **start_month** | **String** |  | [optional] |
| **end_month** | **String** |  | [optional] |
| **limit** | **String** | Number of results per page. The maximum is 100. | [optional][default to &#39;5&#39;] |
| **cursor** | **String** | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] |

### Return type

[**Serviceusagemetrics**](Serviceusagemetrics.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_service_level_usage_types()`

```ruby
get_service_level_usage_types(opts): <Serviceusagetypes> # Retrieve product usage types for a customer.
```

Returns product usage types reported by the customer's services.

### Examples

```ruby
api_instance = Fastly::BillingUsageMetricsApi.new
opts = {
    customer_id: 'customer_id_example', # String | Alphanumeric string identifying the customer.
}

begin
  # Retrieve product usage types for a customer.
  result = api_instance.get_service_level_usage_types(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BillingUsageMetricsApi->get_service_level_usage_types: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Alphanumeric string identifying the customer. |  |

### Return type

[**Serviceusagetypes**](Serviceusagetypes.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
