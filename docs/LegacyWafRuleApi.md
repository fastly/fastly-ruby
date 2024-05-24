# Fastly::LegacyWafRuleApi


```ruby
require 'fastly'
api_instance = Fastly::LegacyWafRuleApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_legacy_waf_firewall_rule_vcl**](LegacyWafRuleApi.md#get_legacy_waf_firewall_rule_vcl) | **GET** /wafs/{firewall_id}/rules/{waf_rule_id}/vcl | Get VCL for a rule associated with a firewall
[**get_legacy_waf_rule**](LegacyWafRuleApi.md#get_legacy_waf_rule) | **GET** /wafs/rules/{waf_rule_id} | Get a rule
[**get_legacy_waf_rule_vcl**](LegacyWafRuleApi.md#get_legacy_waf_rule_vcl) | **GET** /wafs/rules/{waf_rule_id}/vcl | Get VCL for a rule
[**list_legacy_waf_rules**](LegacyWafRuleApi.md#list_legacy_waf_rules) | **GET** /wafs/rules | List rules in the latest configuration set


## `get_legacy_waf_firewall_rule_vcl()`

```ruby
get_legacy_waf_firewall_rule_vcl(opts): Object # Get VCL for a rule associated with a firewall
```

Get associated VCL for a specific rule associated with a specific firewall.

### Examples

```ruby
api_instance = Fastly::LegacyWafRuleApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a Firewall.
    waf_rule_id: 'waf_rule_id_example', # String | Alphanumeric string identifying a WAF rule.
}

begin
  # Get VCL for a rule associated with a firewall
  result = api_instance.get_legacy_waf_firewall_rule_vcl(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafRuleApi->get_legacy_waf_firewall_rule_vcl: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firewall_id** | **String** | Alphanumeric string identifying a Firewall. |  |
| **waf_rule_id** | **String** | Alphanumeric string identifying a WAF rule. |  |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_legacy_waf_rule()`

```ruby
get_legacy_waf_rule(opts): Object # Get a rule
```

Get a specific rule.

### Examples

```ruby
api_instance = Fastly::LegacyWafRuleApi.new
opts = {
    waf_rule_id: 'waf_rule_id_example', # String | Alphanumeric string identifying a WAF rule.
    filter_configuration_set_id: 'filter_configuration_set_id_example', # String | Optional. Limit rule to a specific configuration set or pass \"all\" to search all configuration sets, including stale ones.
    include: 'tags', # String | Include relationships. Optional. Comma separated values. Permitted values: `tags`, `rule_statuses`, `source`, and `vcl`. 
}

begin
  # Get a rule
  result = api_instance.get_legacy_waf_rule(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafRuleApi->get_legacy_waf_rule: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_configuration_set_id** | **String** | Optional. Limit rule to a specific configuration set or pass \&quot;all\&quot; to search all configuration sets, including stale ones. | [optional] |
| **include** | **String** | Include relationships. Optional. Comma separated values. Permitted values: `tags`, `rule_statuses`, `source`, and `vcl`.  | [optional] |
| **waf_rule_id** | **String** | Alphanumeric string identifying a WAF rule. |  |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_legacy_waf_rule_vcl()`

```ruby
get_legacy_waf_rule_vcl(opts): Object # Get VCL for a rule
```

Get associated VCL for a specific rule.

### Examples

```ruby
api_instance = Fastly::LegacyWafRuleApi.new
opts = {
    waf_rule_id: 'waf_rule_id_example', # String | Alphanumeric string identifying a WAF rule.
}

begin
  # Get VCL for a rule
  result = api_instance.get_legacy_waf_rule_vcl(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafRuleApi->get_legacy_waf_rule_vcl: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **waf_rule_id** | **String** | Alphanumeric string identifying a WAF rule. |  |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_legacy_waf_rules()`

```ruby
list_legacy_waf_rules(opts): Array&lt;Object&gt; # List rules in the latest configuration set
```

List all rules in the latest configuration set.

### Examples

```ruby
api_instance = Fastly::LegacyWafRuleApi.new
opts = {
    filter_rule_id: 'filter_rule_id_example', # String | Limit the returned rules to a specific rule ID.
    filter_severity: 'filter_severity_example', # String | Limit the returned rules to a specific severity.
    filter_tags_name: 'filter_tags_name_example', # String | Limit the returned rules to a set linked to a tag by name.
    filter_configuration_set_id: 'filter_configuration_set_id_example', # String | Optional. Limit rules to specific configuration set or pass \"all\" to search all configuration sets, including stale ones.
    page_number: 1, # Integer | Current page.
    page_size: 20, # Integer | Number of records per page.
    include: 'include_example', # String | Include relationships. Optional. Comma separated values. Permitted values: `tags`, `rule_statuses`, and `source`. 
}

begin
  # List rules in the latest configuration set
  result = api_instance.list_legacy_waf_rules(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafRuleApi->list_legacy_waf_rules: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_rule_id** | **String** | Limit the returned rules to a specific rule ID. | [optional] |
| **filter_severity** | **String** | Limit the returned rules to a specific severity. | [optional] |
| **filter_tags_name** | **String** | Limit the returned rules to a set linked to a tag by name. | [optional] |
| **filter_configuration_set_id** | **String** | Optional. Limit rules to specific configuration set or pass \&quot;all\&quot; to search all configuration sets, including stale ones. | [optional] |
| **page_number** | **Integer** | Current page. | [optional] |
| **page_size** | **Integer** | Number of records per page. | [optional][default to 20] |
| **include** | **String** | Include relationships. Optional. Comma separated values. Permitted values: `tags`, `rule_statuses`, and `source`.  | [optional] |

### Return type

**Array&lt;Object&gt;**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
