# Fastly::WafRulesApi


```ruby
require 'fastly'
api_instance = Fastly::WafRulesApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_waf_rule**](WafRulesApi.md#get_waf_rule) | **GET** /waf/rules/{waf_rule_id} | Get a rule |
| [**list_waf_rules**](WafRulesApi.md#list_waf_rules) | **GET** /waf/rules | List available WAF rules |


## `get_waf_rule()`

```ruby
get_waf_rule(opts): <WafRuleResponse> # Get a rule
```

Get a specific rule. The `id` provided can be the ModSecurity Rule ID or the Fastly generated rule ID.

### Examples

```ruby
api_instance = Fastly::WafRulesApi.new
opts = {
    waf_rule_id: 'waf_rule_id_example', # String | Alphanumeric string identifying a WAF rule.
    include: 'waf_tags,waf_rule_revisions', # String | Include relationships. Optional, comma-separated values. Permitted values: `waf_tags` and `waf_rule_revisions`. 
}

begin
  # Get a rule
  result = api_instance.get_waf_rule(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling WafRulesApi->get_waf_rule: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **waf_rule_id** | **String** | Alphanumeric string identifying a WAF rule. |  |
| **include** | **String** | Include relationships. Optional, comma-separated values. Permitted values: `waf_tags` and `waf_rule_revisions`.  | [optional] |

### Return type

[**WafRuleResponse**](WafRuleResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_waf_rules()`

```ruby
list_waf_rules(opts): <WafRulesResponse> # List available WAF rules
```

List all available WAF rules.

### Examples

```ruby
api_instance = Fastly::WafRulesApi.new
opts = {
    filter_modsec_rule_id: 'filter_modsec_rule_id_example', # String | Limit the returned rules to a specific ModSecurity rule ID.
    filter_waf_tags_name: 'filter_waf_tags_name_example', # String | Limit the returned rules to a set linked to a tag by name.
    filter_waf_rule_revisions_source: 'filter_waf_rule_revisions_source_example', # String | Limit the returned rules to a set linked to a source.
    filter_waf_firewall_id_not_match: 'filter_waf_firewall_id_not_match_example', # String | Limit the returned rules to a set not included in the active firewall version for a firewall.
    page_number: 1, # Integer | Current page.
    page_size: 20, # Integer | Number of records per page.
    include: 'waf_tags,waf_rule_revisions', # String | Include relationships. Optional, comma-separated values. Permitted values: `waf_tags` and `waf_rule_revisions`. 
}

begin
  # List available WAF rules
  result = api_instance.list_waf_rules(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling WafRulesApi->list_waf_rules: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_modsec_rule_id** | **String** | Limit the returned rules to a specific ModSecurity rule ID. | [optional] |
| **filter_waf_tags_name** | **String** | Limit the returned rules to a set linked to a tag by name. | [optional] |
| **filter_waf_rule_revisions_source** | **String** | Limit the returned rules to a set linked to a source. | [optional] |
| **filter_waf_firewall_id_not_match** | **String** | Limit the returned rules to a set not included in the active firewall version for a firewall. | [optional] |
| **page_number** | **Integer** | Current page. | [optional] |
| **page_size** | **Integer** | Number of records per page. | [optional][default to 20] |
| **include** | **String** | Include relationships. Optional, comma-separated values. Permitted values: `waf_tags` and `waf_rule_revisions`.  | [optional] |

### Return type

[**WafRulesResponse**](WafRulesResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
