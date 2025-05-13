# Fastly::ProductLogExplorerInsightsApi


```ruby
require 'fastly'
api_instance = Fastly::ProductLogExplorerInsightsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_log_explorer_insights**](ProductLogExplorerInsightsApi.md#disable_product_log_explorer_insights) | **DELETE** /enabled-products/v1/log_explorer_insights/services/{service_id} | Disable product
[**enable_product_log_explorer_insights**](ProductLogExplorerInsightsApi.md#enable_product_log_explorer_insights) | **PUT** /enabled-products/v1/log_explorer_insights/services/{service_id} | Enable product
[**get_product_log_explorer_insights**](ProductLogExplorerInsightsApi.md#get_product_log_explorer_insights) | **GET** /enabled-products/v1/log_explorer_insights/services/{service_id} | Get product enablement status
[**get_services_product_log_explorer_insights**](ProductLogExplorerInsightsApi.md#get_services_product_log_explorer_insights) | **GET** /enabled-products/v1/log_explorer_insights/services | Get services with product enabled


## `disable_product_log_explorer_insights()`

```ruby
disable_product_log_explorer_insights(opts) # Disable product
```

Disable the Log Explorer & Insights product on a service.

### Examples

```ruby
api_instance = Fastly::ProductLogExplorerInsightsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Disable product
  api_instance.disable_product_log_explorer_insights(opts)
rescue Fastly::ApiError => e
  puts "Error when calling ProductLogExplorerInsightsApi->disable_product_log_explorer_insights: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `enable_product_log_explorer_insights()`

```ruby
enable_product_log_explorer_insights(opts): <LogExplorerInsightsResponseBodyEnable> # Enable product
```

Enable the Log Explorer & Insights product on a service.

### Examples

```ruby
api_instance = Fastly::ProductLogExplorerInsightsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Enable product
  result = api_instance.enable_product_log_explorer_insights(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductLogExplorerInsightsApi->enable_product_log_explorer_insights: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**LogExplorerInsightsResponseBodyEnable**](LogExplorerInsightsResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_product_log_explorer_insights()`

```ruby
get_product_log_explorer_insights(opts): <LogExplorerInsightsResponseBodyEnable> # Get product enablement status
```

Get the enablement status of the Log Explorer & Insights product on a service.

### Examples

```ruby
api_instance = Fastly::ProductLogExplorerInsightsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Get product enablement status
  result = api_instance.get_product_log_explorer_insights(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductLogExplorerInsightsApi->get_product_log_explorer_insights: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**LogExplorerInsightsResponseBodyEnable**](LogExplorerInsightsResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_services_product_log_explorer_insights()`

```ruby
get_services_product_log_explorer_insights: <LogExplorerInsightsResponseBodyGetAllServices> # Get services with product enabled
```

Get all the services which have the Log Explorer & Insights product enabled.

### Examples

```ruby
api_instance = Fastly::ProductLogExplorerInsightsApi.new

begin
  # Get services with product enabled
  result = api_instance.get_services_product_log_explorer_insights
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductLogExplorerInsightsApi->get_services_product_log_explorer_insights: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**LogExplorerInsightsResponseBodyGetAllServices**](LogExplorerInsightsResponseBodyGetAllServices.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
