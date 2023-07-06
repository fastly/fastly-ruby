# Fastly::LegacyWafRulesetApi


```ruby
require 'fastly'
api_instance = Fastly::LegacyWafRulesetApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_waf_ruleset**](LegacyWafRulesetApi.md#get_waf_ruleset) | **GET** /service/{service_id}/wafs/{firewall_id}/ruleset | Get a WAF ruleset |
| [**get_waf_ruleset_vcl**](LegacyWafRulesetApi.md#get_waf_ruleset_vcl) | **GET** /service/{service_id}/wafs/{firewall_id}/ruleset/preview | Generate WAF ruleset VCL |
| [**update_waf_ruleset**](LegacyWafRulesetApi.md#update_waf_ruleset) | **PATCH** /service/{service_id}/wafs/{firewall_id}/ruleset | Update a WAF ruleset |


## `get_waf_ruleset()`

```ruby
get_waf_ruleset(opts): Object # Get a WAF ruleset
```

Get a WAF ruleset for a particular service and firewall object.

### Examples

```ruby
api_instance = Fastly::LegacyWafRulesetApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a Firewall.
}

begin
  # Get a WAF ruleset
  result = api_instance.get_waf_ruleset(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafRulesetApi->get_waf_ruleset: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **firewall_id** | **String** | Alphanumeric string identifying a Firewall. |  |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_waf_ruleset_vcl()`

```ruby
get_waf_ruleset_vcl(opts): Object # Generate WAF ruleset VCL
```

Get a preview of the WAF ruleset VCL for a particular service and firewall object based on changes to WAF configuration before deploying the ruleset. The response will include a link to status of the background VCL generation job. Once the background job is completed, the preview WAF ruleset VCL can be retrieved from the status response.

### Examples

```ruby
api_instance = Fastly::LegacyWafRulesetApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a Firewall.
}

begin
  # Generate WAF ruleset VCL
  result = api_instance.get_waf_ruleset_vcl(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafRulesetApi->get_waf_ruleset_vcl: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **firewall_id** | **String** | Alphanumeric string identifying a Firewall. |  |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_waf_ruleset()`

```ruby
update_waf_ruleset(opts): Object # Update a WAF ruleset
```

Update the WAF ruleset for a particular service and firewall object. Use the URL in the response to view the WAF ruleset deploy status.

### Examples

```ruby
api_instance = Fastly::LegacyWafRulesetApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a Firewall.
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Update a WAF ruleset
  result = api_instance.update_waf_ruleset(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafRulesetApi->update_waf_ruleset: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **firewall_id** | **String** | Alphanumeric string identifying a Firewall. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
