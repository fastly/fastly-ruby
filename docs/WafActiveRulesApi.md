# Fastly::WafActiveRulesApi


```ruby
require 'fastly'
api_instance = Fastly::WafActiveRulesApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bulk_delete_waf_active_rules**](WafActiveRulesApi.md#bulk_delete_waf_active_rules) | **DELETE** /waf/firewalls/{firewall_id}/versions/{version_id}/active-rules | Delete multiple active rules from a WAF |
| [**bulk_update_waf_active_rules**](WafActiveRulesApi.md#bulk_update_waf_active_rules) | **PATCH** /waf/firewalls/{firewall_id}/versions/{version_id}/active-rules/bulk | Update multiple active rules |
| [**create_waf_active_rule**](WafActiveRulesApi.md#create_waf_active_rule) | **POST** /waf/firewalls/{firewall_id}/versions/{version_id}/active-rules | Add a rule to a WAF as an active rule |
| [**create_waf_active_rules_tag**](WafActiveRulesApi.md#create_waf_active_rules_tag) | **POST** /waf/firewalls/{firewall_id}/versions/{version_id}/tags/{waf_tag_name}/active-rules | Create active rules by tag |
| [**delete_waf_active_rule**](WafActiveRulesApi.md#delete_waf_active_rule) | **DELETE** /waf/firewalls/{firewall_id}/versions/{version_id}/active-rules/{waf_rule_id} | Delete an active rule |
| [**get_waf_active_rule**](WafActiveRulesApi.md#get_waf_active_rule) | **GET** /waf/firewalls/{firewall_id}/versions/{version_id}/active-rules/{waf_rule_id} | Get an active WAF rule object |
| [**list_waf_active_rules**](WafActiveRulesApi.md#list_waf_active_rules) | **GET** /waf/firewalls/{firewall_id}/versions/{version_id}/active-rules | List active rules on a WAF |
| [**update_waf_active_rule**](WafActiveRulesApi.md#update_waf_active_rule) | **PATCH** /waf/firewalls/{firewall_id}/versions/{version_id}/active-rules/{waf_rule_id} | Update an active rule |


## `bulk_delete_waf_active_rules()`

```ruby
bulk_delete_waf_active_rules(opts) # Delete multiple active rules from a WAF
```

Delete many active rules on a particular firewall version using the active rule ID. Limited to 500 rules per request.

### Examples

```ruby
api_instance = Fastly::WafActiveRulesApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a WAF Firewall.
    version_id: 56, # Integer | Integer identifying a service version.
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Delete multiple active rules from a WAF
  api_instance.bulk_delete_waf_active_rules(opts)
rescue Fastly::ApiError => e
  puts "Error when calling WafActiveRulesApi->bulk_delete_waf_active_rules: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firewall_id** | **String** | Alphanumeric string identifying a WAF Firewall. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `bulk_update_waf_active_rules()`

```ruby
bulk_update_waf_active_rules(opts) # Update multiple active rules
```

Bulk update all active rules on a [firewall version](https://www.fastly.com/documentation/reference/api/waf/firewall-version/). This endpoint will not add new active rules, only update existing active rules.

### Examples

```ruby
api_instance = Fastly::WafActiveRulesApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a WAF Firewall.
    version_id: 56, # Integer | Integer identifying a service version.
    body: {"type":"waf_active_rule","attributes":{"revision":"latest"}}, # WafActiveRuleData | 
}

begin
  # Update multiple active rules
  api_instance.bulk_update_waf_active_rules(opts)
rescue Fastly::ApiError => e
  puts "Error when calling WafActiveRulesApi->bulk_update_waf_active_rules: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firewall_id** | **String** | Alphanumeric string identifying a WAF Firewall. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **body** | **WafActiveRuleData** |  | [optional] |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `create_waf_active_rule()`

```ruby
create_waf_active_rule(opts): <WafActiveRuleCreationResponse> # Add a rule to a WAF as an active rule
```

Create an active rule for a particular firewall version.

### Examples

```ruby
api_instance = Fastly::WafActiveRulesApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a WAF Firewall.
    version_id: 56, # Integer | Integer identifying a service version.
    waf_active_rule: Fastly::WafActiveRule.new, # WafActiveRule | 
}

begin
  # Add a rule to a WAF as an active rule
  result = api_instance.create_waf_active_rule(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling WafActiveRulesApi->create_waf_active_rule: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firewall_id** | **String** | Alphanumeric string identifying a WAF Firewall. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **waf_active_rule** | [**WafActiveRule**](WafActiveRule.md) |  | [optional] |

### Return type

[**WafActiveRuleCreationResponse**](WafActiveRuleCreationResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `create_waf_active_rules_tag()`

```ruby
create_waf_active_rules_tag(opts) # Create active rules by tag
```

Create active rules by tag. This endpoint will create active rules using the latest revision available for each rule.

### Examples

```ruby
api_instance = Fastly::WafActiveRulesApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a WAF Firewall.
    version_id: 56, # Integer | Integer identifying a service version.
    waf_tag_name: 'waf_tag_name_example', # String | Name of the tag.
    waf_active_rule: Fastly::WafActiveRule.new, # WafActiveRule | 
}

begin
  # Create active rules by tag
  api_instance.create_waf_active_rules_tag(opts)
rescue Fastly::ApiError => e
  puts "Error when calling WafActiveRulesApi->create_waf_active_rules_tag: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firewall_id** | **String** | Alphanumeric string identifying a WAF Firewall. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **waf_tag_name** | **String** | Name of the tag. |  |
| **waf_active_rule** | [**WafActiveRule**](WafActiveRule.md) |  | [optional] |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_waf_active_rule()`

```ruby
delete_waf_active_rule(opts) # Delete an active rule
```

Delete an active rule for a particular firewall version.

### Examples

```ruby
api_instance = Fastly::WafActiveRulesApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a WAF Firewall.
    version_id: 56, # Integer | Integer identifying a service version.
    waf_rule_id: 'waf_rule_id_example', # String | Alphanumeric string identifying a WAF rule.
}

begin
  # Delete an active rule
  api_instance.delete_waf_active_rule(opts)
rescue Fastly::ApiError => e
  puts "Error when calling WafActiveRulesApi->delete_waf_active_rule: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firewall_id** | **String** | Alphanumeric string identifying a WAF Firewall. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **waf_rule_id** | **String** | Alphanumeric string identifying a WAF rule. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_waf_active_rule()`

```ruby
get_waf_active_rule(opts): <WafActiveRuleResponse> # Get an active WAF rule object
```

Get a specific active rule object. Includes details of the rule revision associated with the active rule object by default.

### Examples

```ruby
api_instance = Fastly::WafActiveRulesApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a WAF Firewall.
    version_id: 56, # Integer | Integer identifying a service version.
    waf_rule_id: 'waf_rule_id_example', # String | Alphanumeric string identifying a WAF rule.
    include: 'waf_rule_revision,waf_firewall_version', # String | Include relationships. Optional, comma-separated values. Permitted values: `waf_rule_revision` and `waf_firewall_version`. 
}

begin
  # Get an active WAF rule object
  result = api_instance.get_waf_active_rule(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling WafActiveRulesApi->get_waf_active_rule: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Include relationships. Optional, comma-separated values. Permitted values: `waf_rule_revision` and `waf_firewall_version`.  | [optional] |
| **firewall_id** | **String** | Alphanumeric string identifying a WAF Firewall. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **waf_rule_id** | **String** | Alphanumeric string identifying a WAF rule. |  |

### Return type

[**WafActiveRuleResponse**](WafActiveRuleResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_waf_active_rules()`

```ruby
list_waf_active_rules(opts): <WafActiveRulesResponse> # List active rules on a WAF
```

List all active rules for a particular firewall version.

### Examples

```ruby
api_instance = Fastly::WafActiveRulesApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a WAF Firewall.
    version_id: 56, # Integer | Integer identifying a service version.
    filter_status: 'filter_status_example', # String | Limit results to active rules with the specified status.
    filter_waf_rule_revision_message: 'filter_waf_rule_revision_message_example', # String | Limit results to active rules with the specified message.
    filter_waf_rule_revision_modsec_rule_id: 'filter_waf_rule_revision_modsec_rule_id_example', # String | Limit results to active rules that represent the specified ModSecurity modsec_rule_id.
    filter_outdated: 'filter_outdated_example', # String | Limit results to active rules referencing an outdated rule revision.
    include: 'waf_rule_revision,waf_firewall_version', # String | Include relationships. Optional, comma-separated values. Permitted values: `waf_rule_revision` and `waf_firewall_version`. 
    page_number: 1, # Integer | Current page.
    page_size: 20, # Integer | Number of records per page.
}

begin
  # List active rules on a WAF
  result = api_instance.list_waf_active_rules(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling WafActiveRulesApi->list_waf_active_rules: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_status** | **String** | Limit results to active rules with the specified status. | [optional] |
| **filter_waf_rule_revision_message** | **String** | Limit results to active rules with the specified message. | [optional] |
| **filter_waf_rule_revision_modsec_rule_id** | **String** | Limit results to active rules that represent the specified ModSecurity modsec_rule_id. | [optional] |
| **filter_outdated** | **String** | Limit results to active rules referencing an outdated rule revision. | [optional] |
| **include** | **String** | Include relationships. Optional, comma-separated values. Permitted values: `waf_rule_revision` and `waf_firewall_version`.  | [optional] |
| **page_number** | **Integer** | Current page. | [optional] |
| **page_size** | **Integer** | Number of records per page. | [optional][default to 20] |
| **firewall_id** | **String** | Alphanumeric string identifying a WAF Firewall. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**WafActiveRulesResponse**](WafActiveRulesResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_waf_active_rule()`

```ruby
update_waf_active_rule(opts): <WafActiveRuleResponse> # Update an active rule
```

Update an active rule's status for a particular firewall version.

### Examples

```ruby
api_instance = Fastly::WafActiveRulesApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a WAF Firewall.
    version_id: 56, # Integer | Integer identifying a service version.
    waf_rule_id: 'waf_rule_id_example', # String | Alphanumeric string identifying a WAF rule.
    waf_active_rule: Fastly::WafActiveRule.new, # WafActiveRule | 
}

begin
  # Update an active rule
  result = api_instance.update_waf_active_rule(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling WafActiveRulesApi->update_waf_active_rule: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firewall_id** | **String** | Alphanumeric string identifying a WAF Firewall. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **waf_rule_id** | **String** | Alphanumeric string identifying a WAF rule. |  |
| **waf_active_rule** | [**WafActiveRule**](WafActiveRule.md) |  | [optional] |

### Return type

[**WafActiveRuleResponse**](WafActiveRuleResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
