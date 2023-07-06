# Fastly::LegacyWafFirewallApi


```ruby
require 'fastly'
api_instance = Fastly::LegacyWafFirewallApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_legacy_waf_firewall_service**](LegacyWafFirewallApi.md#create_legacy_waf_firewall_service) | **POST** /service/{service_id}/version/{version_id}/wafs | Create a firewall |
| [**disable_legacy_waf_firewall**](LegacyWafFirewallApi.md#disable_legacy_waf_firewall) | **PATCH** /wafs/{firewall_id}/disable | Disable a firewall |
| [**enable_legacy_waf_firewall**](LegacyWafFirewallApi.md#enable_legacy_waf_firewall) | **PATCH** /wafs/{firewall_id}/enable | Enable a firewall |
| [**get_legacy_waf_firewall**](LegacyWafFirewallApi.md#get_legacy_waf_firewall) | **GET** /wafs/{firewall_id} | Get a firewall object |
| [**get_legacy_waf_firewall_service**](LegacyWafFirewallApi.md#get_legacy_waf_firewall_service) | **GET** /service/{service_id}/version/{version_id}/wafs/{firewall_id} | Get a firewall |
| [**list_legacy_waf_firewalls**](LegacyWafFirewallApi.md#list_legacy_waf_firewalls) | **GET** /wafs | List active firewalls |
| [**list_legacy_waf_firewalls_service**](LegacyWafFirewallApi.md#list_legacy_waf_firewalls_service) | **GET** /service/{service_id}/version/{version_id}/wafs | List firewalls |
| [**update_legacy_waf_firewall_service**](LegacyWafFirewallApi.md#update_legacy_waf_firewall_service) | **PATCH** /service/{service_id}/version/{version_id}/wafs/{firewall_id} | Update a firewall |


## `create_legacy_waf_firewall_service()`

```ruby
create_legacy_waf_firewall_service(opts): Object # Create a firewall
```

Create a firewall object for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LegacyWafFirewallApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Create a firewall
  result = api_instance.create_legacy_waf_firewall_service(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafFirewallApi->create_legacy_waf_firewall_service: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `disable_legacy_waf_firewall()`

```ruby
disable_legacy_waf_firewall(opts): Object # Disable a firewall
```

Disable a firewall for a particular service and version. This endpoint is intended to be used in an emergency. Disabling a firewall object for a specific service and version replaces your existing WAF ruleset with an empty ruleset. While disabled, your WAF ruleset will not be applied to your origin traffic. This endpoint is only available to users assigned the role of superuser or above. This is an asynchronous action. To check on the completion of this action, use the related link returned in the response to check on the Update Status of the action.

### Examples

```ruby
api_instance = Fastly::LegacyWafFirewallApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a Firewall.
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Disable a firewall
  result = api_instance.disable_legacy_waf_firewall(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafFirewallApi->disable_legacy_waf_firewall: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firewall_id** | **String** | Alphanumeric string identifying a Firewall. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `enable_legacy_waf_firewall()`

```ruby
enable_legacy_waf_firewall(opts): Object # Enable a firewall
```

Re-enable a firewall object for a particular service and version after it has been disabled. This endpoint is intended to be used in an emergency. When a firewall object is re-enabled, a newly generated WAF ruleset VCL based on the current WAF configuration is used to replace the empty ruleset. This endpoint is only available to users assigned the role of superuser or above. This is an asynchronous action. To check on the completion of this action, use the related link returned in the response to check on the Update Status of the action.

### Examples

```ruby
api_instance = Fastly::LegacyWafFirewallApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a Firewall.
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Enable a firewall
  result = api_instance.enable_legacy_waf_firewall(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafFirewallApi->enable_legacy_waf_firewall: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firewall_id** | **String** | Alphanumeric string identifying a Firewall. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_legacy_waf_firewall()`

```ruby
get_legacy_waf_firewall(opts): Object # Get a firewall object
```

Get a specific firewall object.

### Examples

```ruby
api_instance = Fastly::LegacyWafFirewallApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a Firewall.
    include: 'configuration_set', # String | Include relationships. Optional, comma separated values. Permitted values: `configuration_set`, `owasp`, `rules`, `rule_statuses`. 
}

begin
  # Get a firewall object
  result = api_instance.get_legacy_waf_firewall(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafFirewallApi->get_legacy_waf_firewall: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firewall_id** | **String** | Alphanumeric string identifying a Firewall. |  |
| **include** | **String** | Include relationships. Optional, comma separated values. Permitted values: `configuration_set`, `owasp`, `rules`, `rule_statuses`.  | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_legacy_waf_firewall_service()`

```ruby
get_legacy_waf_firewall_service(opts): Object # Get a firewall
```

Get a specific firewall object.

### Examples

```ruby
api_instance = Fastly::LegacyWafFirewallApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a Firewall.
}

begin
  # Get a firewall
  result = api_instance.get_legacy_waf_firewall_service(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafFirewallApi->get_legacy_waf_firewall_service: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **firewall_id** | **String** | Alphanumeric string identifying a Firewall. |  |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_legacy_waf_firewalls()`

```ruby
list_legacy_waf_firewalls(opts): Object # List active firewalls
```

List all active firewall objects.

### Examples

```ruby
api_instance = Fastly::LegacyWafFirewallApi.new
opts = {
    filter_rules_rule_id: 'filter_rules_rule_id_example', # String | Limit the returned firewalls to a specific rule ID.
    page_number: 1, # Integer | Current page.
    page_size: 20, # Integer | Number of records per page.
    include: 'configuration_set', # String | Include relationships. Optional, comma separated values. Permitted values: `configuration_set`, `owasp`. 
}

begin
  # List active firewalls
  result = api_instance.list_legacy_waf_firewalls(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafFirewallApi->list_legacy_waf_firewalls: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_rules_rule_id** | **String** | Limit the returned firewalls to a specific rule ID. | [optional] |
| **page_number** | **Integer** | Current page. | [optional] |
| **page_size** | **Integer** | Number of records per page. | [optional][default to 20] |
| **include** | **String** | Include relationships. Optional, comma separated values. Permitted values: `configuration_set`, `owasp`.  | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_legacy_waf_firewalls_service()`

```ruby
list_legacy_waf_firewalls_service(opts): Object # List firewalls
```

List all firewall objects for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LegacyWafFirewallApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    page_number: 1, # Integer | Current page.
    page_size: 20, # Integer | Number of records per page.
    include: 'configuration_set', # String | Include relationships. Optional, comma separated values. Permitted values: `configuration_set`, `owasp`. 
}

begin
  # List firewalls
  result = api_instance.list_legacy_waf_firewalls_service(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafFirewallApi->list_legacy_waf_firewalls_service: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **page_number** | **Integer** | Current page. | [optional] |
| **page_size** | **Integer** | Number of records per page. | [optional][default to 20] |
| **include** | **String** | Include relationships. Optional, comma separated values. Permitted values: `configuration_set`, `owasp`.  | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_legacy_waf_firewall_service()`

```ruby
update_legacy_waf_firewall_service(opts): Object # Update a firewall
```

Update a firewall object for a particular service and version. 

### Examples

```ruby
api_instance = Fastly::LegacyWafFirewallApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a Firewall.
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Update a firewall
  result = api_instance.update_legacy_waf_firewall_service(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafFirewallApi->update_legacy_waf_firewall_service: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **firewall_id** | **String** | Alphanumeric string identifying a Firewall. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
