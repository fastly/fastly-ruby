# Fastly::ObservabilityCustomDashboardsApi


```ruby
require 'fastly'
api_instance = Fastly::ObservabilityCustomDashboardsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_dashboard**](ObservabilityCustomDashboardsApi.md#create_dashboard) | **POST** /observability/dashboards | Create a new dashboard
[**delete_dashboard**](ObservabilityCustomDashboardsApi.md#delete_dashboard) | **DELETE** /observability/dashboards/{dashboard_id} | Delete an existing dashboard
[**get_dashboard**](ObservabilityCustomDashboardsApi.md#get_dashboard) | **GET** /observability/dashboards/{dashboard_id} | Retrieve a dashboard by ID
[**list_dashboards**](ObservabilityCustomDashboardsApi.md#list_dashboards) | **GET** /observability/dashboards | List all custom dashboards
[**update_dashboard**](ObservabilityCustomDashboardsApi.md#update_dashboard) | **PATCH** /observability/dashboards/{dashboard_id} | Update an existing dashboard


## `create_dashboard()`

```ruby
create_dashboard(opts): <Dashboard> # Create a new dashboard
```

Create a new dashboard

### Examples

```ruby
api_instance = Fastly::ObservabilityCustomDashboardsApi.new
opts = {
    create_dashboard_request: Fastly::CreateDashboardRequest.new({name: 'name_example'}), # CreateDashboardRequest | 
}

begin
  # Create a new dashboard
  result = api_instance.create_dashboard(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ObservabilityCustomDashboardsApi->create_dashboard: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_dashboard_request** | [**CreateDashboardRequest**](CreateDashboardRequest.md) |  | [optional] |

### Return type

[**Dashboard**](Dashboard.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_dashboard()`

```ruby
delete_dashboard(opts) # Delete an existing dashboard
```

Delete an existing dashboard

### Examples

```ruby
api_instance = Fastly::ObservabilityCustomDashboardsApi.new
opts = {
    dashboard_id: '2eGFXF4F4kTxd4gU39Bg3e', # String | 
}

begin
  # Delete an existing dashboard
  api_instance.delete_dashboard(opts)
rescue Fastly::ApiError => e
  puts "Error when calling ObservabilityCustomDashboardsApi->delete_dashboard: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dashboard_id** | **String** |  |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_dashboard()`

```ruby
get_dashboard(opts): <Dashboard> # Retrieve a dashboard by ID
```

Retrieve a dashboard by ID

### Examples

```ruby
api_instance = Fastly::ObservabilityCustomDashboardsApi.new
opts = {
    dashboard_id: '2eGFXF4F4kTxd4gU39Bg3e', # String | 
}

begin
  # Retrieve a dashboard by ID
  result = api_instance.get_dashboard(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ObservabilityCustomDashboardsApi->get_dashboard: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dashboard_id** | **String** |  |  |

### Return type

[**Dashboard**](Dashboard.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_dashboards()`

```ruby
list_dashboards: <ListDashboardsResponse> # List all custom dashboards
```

List all custom dashboards

### Examples

```ruby
api_instance = Fastly::ObservabilityCustomDashboardsApi.new

begin
  # List all custom dashboards
  result = api_instance.list_dashboards
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ObservabilityCustomDashboardsApi->list_dashboards: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**ListDashboardsResponse**](ListDashboardsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_dashboard()`

```ruby
update_dashboard(opts): <Dashboard> # Update an existing dashboard
```

Update an existing dashboard

### Examples

```ruby
api_instance = Fastly::ObservabilityCustomDashboardsApi.new
opts = {
    dashboard_id: '2eGFXF4F4kTxd4gU39Bg3e', # String | 
    update_dashboard_request: Fastly::UpdateDashboardRequest.new, # UpdateDashboardRequest | 
}

begin
  # Update an existing dashboard
  result = api_instance.update_dashboard(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ObservabilityCustomDashboardsApi->update_dashboard: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dashboard_id** | **String** |  |  |
| **update_dashboard_request** | [**UpdateDashboardRequest**](UpdateDashboardRequest.md) |  | [optional] |

### Return type

[**Dashboard**](Dashboard.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
