# Fastly::WafFirewallsApi


```ruby
require 'fastly'
api_instance = Fastly::WafFirewallsApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_waf_firewall**](WafFirewallsApi.md#create_waf_firewall) | **POST** /waf/firewalls | Create a firewall |
| [**delete_waf_firewall**](WafFirewallsApi.md#delete_waf_firewall) | **DELETE** /waf/firewalls/{firewall_id} | Delete a firewall |
| [**get_waf_firewall**](WafFirewallsApi.md#get_waf_firewall) | **GET** /waf/firewalls/{firewall_id} | Get a firewall |
| [**list_waf_firewalls**](WafFirewallsApi.md#list_waf_firewalls) | **GET** /waf/firewalls | List firewalls |
| [**update_waf_firewall**](WafFirewallsApi.md#update_waf_firewall) | **PATCH** /waf/firewalls/{firewall_id} | Update a firewall |


## `create_waf_firewall()`

```ruby
create_waf_firewall(opts): <WafFirewallResponse> # Create a firewall
```

Create a firewall object for a particular service and service version using a defined `prefetch_condition` and `response`. If the `prefetch_condition` or the `response` is missing from the request body, Fastly will generate a default object on your service. 

### Examples

```ruby
api_instance = Fastly::WafFirewallsApi.new
opts = {
    waf_firewall: Fastly::WafFirewall.new, # WafFirewall | 
}

begin
  # Create a firewall
  result = api_instance.create_waf_firewall(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling WafFirewallsApi->create_waf_firewall: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **waf_firewall** | [**WafFirewall**](WafFirewall.md) |  | [optional] |

### Return type

[**WafFirewallResponse**](WafFirewallResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_waf_firewall()`

```ruby
delete_waf_firewall(opts) # Delete a firewall
```

Delete the firewall object for a particular service and service version. 

### Examples

```ruby
api_instance = Fastly::WafFirewallsApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a WAF Firewall.
    waf_firewall: Fastly::WafFirewall.new, # WafFirewall | 
}

begin
  # Delete a firewall
  api_instance.delete_waf_firewall(opts)
rescue Fastly::ApiError => e
  puts "Error when calling WafFirewallsApi->delete_waf_firewall: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firewall_id** | **String** | Alphanumeric string identifying a WAF Firewall. |  |
| **waf_firewall** | [**WafFirewall**](WafFirewall.md) |  | [optional] |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_waf_firewall()`

```ruby
get_waf_firewall(opts): <WafFirewallResponse> # Get a firewall
```

Get a specific firewall object.

### Examples

```ruby
api_instance = Fastly::WafFirewallsApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a WAF Firewall.
    filter_service_version_number: 'filter_service_version_number_example', # String | Limit the results returned to a specific service version.
    include: 'waf_firewall_versions', # String | Include related objects. Optional.
}

begin
  # Get a firewall
  result = api_instance.get_waf_firewall(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling WafFirewallsApi->get_waf_firewall: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firewall_id** | **String** | Alphanumeric string identifying a WAF Firewall. |  |
| **filter_service_version_number** | **String** | Limit the results returned to a specific service version. | [optional] |
| **include** | **String** | Include related objects. Optional. | [optional][default to &#39;waf_firewall_versions&#39;] |

### Return type

[**WafFirewallResponse**](WafFirewallResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_waf_firewalls()`

```ruby
list_waf_firewalls(opts): <WafFirewallsResponse> # List firewalls
```

List all firewall objects.

### Examples

```ruby
api_instance = Fastly::WafFirewallsApi.new
opts = {
    page_number: 1, # Integer | Current page.
    page_size: 20, # Integer | Number of records per page.
    filter_service_id: 'filter_service_id_example', # String | Limit the results returned to a specific service.
    filter_service_version_number: 'filter_service_version_number_example', # String | Limit the results returned to a specific service version.
    include: 'waf_firewall_versions', # String | Include related objects. Optional.
}

begin
  # List firewalls
  result = api_instance.list_waf_firewalls(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling WafFirewallsApi->list_waf_firewalls: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_number** | **Integer** | Current page. | [optional] |
| **page_size** | **Integer** | Number of records per page. | [optional][default to 20] |
| **filter_service_id** | **String** | Limit the results returned to a specific service. | [optional] |
| **filter_service_version_number** | **String** | Limit the results returned to a specific service version. | [optional] |
| **include** | **String** | Include related objects. Optional. | [optional][default to &#39;waf_firewall_versions&#39;] |

### Return type

[**WafFirewallsResponse**](WafFirewallsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_waf_firewall()`

```ruby
update_waf_firewall(opts): <WafFirewallResponse> # Update a firewall
```

Update a firewall object for a particular service and service version. Specifying a `service_version_number` is required. 

### Examples

```ruby
api_instance = Fastly::WafFirewallsApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a WAF Firewall.
    waf_firewall: Fastly::WafFirewall.new, # WafFirewall | 
}

begin
  # Update a firewall
  result = api_instance.update_waf_firewall(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling WafFirewallsApi->update_waf_firewall: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firewall_id** | **String** | Alphanumeric string identifying a WAF Firewall. |  |
| **waf_firewall** | [**WafFirewall**](WafFirewall.md) |  | [optional] |

### Return type

[**WafFirewallResponse**](WafFirewallResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
