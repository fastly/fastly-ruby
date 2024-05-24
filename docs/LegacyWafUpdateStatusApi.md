# Fastly::LegacyWafUpdateStatusApi


```ruby
require 'fastly'
api_instance = Fastly::LegacyWafUpdateStatusApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_waf_update_status**](LegacyWafUpdateStatusApi.md#get_waf_update_status) | **GET** /service/{service_id}/wafs/{firewall_id}/update_statuses/{update_status_id} | Get the status of a WAF update
[**list_waf_update_statuses**](LegacyWafUpdateStatusApi.md#list_waf_update_statuses) | **GET** /service/{service_id}/wafs/{firewall_id}/update_statuses | List update statuses


## `get_waf_update_status()`

```ruby
get_waf_update_status(opts): Object # Get the status of a WAF update
```

Get a specific update status object for a particular service and firewall object.

### Examples

```ruby
api_instance = Fastly::LegacyWafUpdateStatusApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a Firewall.
    update_status_id: 'update_status_id_example', # String | Alphanumeric string identifying a WAF update status.
}

begin
  # Get the status of a WAF update
  result = api_instance.get_waf_update_status(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafUpdateStatusApi->get_waf_update_status: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **firewall_id** | **String** | Alphanumeric string identifying a Firewall. |  |
| **update_status_id** | **String** | Alphanumeric string identifying a WAF update status. |  |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_waf_update_statuses()`

```ruby
list_waf_update_statuses(opts): Object # List update statuses
```

List all update statuses for a particular service and firewall object.

### Examples

```ruby
api_instance = Fastly::LegacyWafUpdateStatusApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a Firewall.
    page_number: 1, # Integer | Current page.
    page_size: 20, # Integer | Number of records per page.
    include: 'waf', # String | Include relationships. Optional, comma separated values. Permitted values: `waf`. 
}

begin
  # List update statuses
  result = api_instance.list_waf_update_statuses(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafUpdateStatusApi->list_waf_update_statuses: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_number** | **Integer** | Current page. | [optional] |
| **page_size** | **Integer** | Number of records per page. | [optional][default to 20] |
| **include** | **String** | Include relationships. Optional, comma separated values. Permitted values: `waf`.  | [optional] |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **firewall_id** | **String** | Alphanumeric string identifying a Firewall. |  |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
