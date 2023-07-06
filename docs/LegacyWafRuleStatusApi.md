# Fastly::LegacyWafRuleStatusApi


```ruby
require 'fastly'
api_instance = Fastly::LegacyWafRuleStatusApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_waf_firewall_rule_status**](LegacyWafRuleStatusApi.md#get_waf_firewall_rule_status) | **GET** /service/{service_id}/wafs/{firewall_id}/rules/{waf_rule_id}/rule_status | Get the status of a rule on a firewall |
| [**list_waf_firewall_rule_statuses**](LegacyWafRuleStatusApi.md#list_waf_firewall_rule_statuses) | **GET** /service/{service_id}/wafs/{firewall_id}/rule_statuses | List rule statuses |
| [**update_waf_firewall_rule_status**](LegacyWafRuleStatusApi.md#update_waf_firewall_rule_status) | **PATCH** /service/{service_id}/wafs/{firewall_id}/rules/{waf_rule_id}/rule_status | Update the status of a rule |
| [**update_waf_firewall_rule_statuses_tag**](LegacyWafRuleStatusApi.md#update_waf_firewall_rule_statuses_tag) | **POST** /service/{service_id}/wafs/{firewall_id}/rule_statuses | Create or update status of a tagged group of rules |


## `get_waf_firewall_rule_status()`

```ruby
get_waf_firewall_rule_status(opts): Object # Get the status of a rule on a firewall
```

Get a specific rule status object for a particular service, firewall, and rule.

### Examples

```ruby
api_instance = Fastly::LegacyWafRuleStatusApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a Firewall.
    waf_rule_id: 'waf_rule_id_example', # String | Alphanumeric string identifying a WAF rule.
}

begin
  # Get the status of a rule on a firewall
  result = api_instance.get_waf_firewall_rule_status(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafRuleStatusApi->get_waf_firewall_rule_status: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **firewall_id** | **String** | Alphanumeric string identifying a Firewall. |  |
| **waf_rule_id** | **String** | Alphanumeric string identifying a WAF rule. |  |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_waf_firewall_rule_statuses()`

```ruby
list_waf_firewall_rule_statuses(opts): Object # List rule statuses
```

List all rule statuses for a particular service and firewall.

### Examples

```ruby
api_instance = Fastly::LegacyWafRuleStatusApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a Firewall.
    filter_status: 'filter_status_example', # String | Limit results to rule statuses with the specified status.
    filter_rule_message: 'filter_rule_message_example', # String | Limit results to rule statuses whose rules have the specified message.
    filter_rule_rule_id: 'filter_rule_rule_id_example', # String | Limit results to rule statuses whose rules represent the specified ModSecurity rule_id.
    filter_rule_tags: 'filter_rule_tags_example', # String | Limit results to rule statuses whose rules relate to the specified tag IDs.
    filter_rule_tags_name: 'application-FBC Market', # String | Limit results to rule statuses whose rules related to the named tags.
    include: 'include_example', # String | Include relationships. Optional, comma separated values. Permitted values: `tags`. 
    page_number: 1, # Integer | Current page.
    page_size: 20, # Integer | Number of records per page.
}

begin
  # List rule statuses
  result = api_instance.list_waf_firewall_rule_statuses(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafRuleStatusApi->list_waf_firewall_rule_statuses: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **firewall_id** | **String** | Alphanumeric string identifying a Firewall. |  |
| **filter_status** | **String** | Limit results to rule statuses with the specified status. | [optional] |
| **filter_rule_message** | **String** | Limit results to rule statuses whose rules have the specified message. | [optional] |
| **filter_rule_rule_id** | **String** | Limit results to rule statuses whose rules represent the specified ModSecurity rule_id. | [optional] |
| **filter_rule_tags** | **String** | Limit results to rule statuses whose rules relate to the specified tag IDs. | [optional] |
| **filter_rule_tags_name** | **String** | Limit results to rule statuses whose rules related to the named tags. | [optional] |
| **include** | **String** | Include relationships. Optional, comma separated values. Permitted values: `tags`.  | [optional] |
| **page_number** | **Integer** | Current page. | [optional] |
| **page_size** | **Integer** | Number of records per page. | [optional][default to 20] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_waf_firewall_rule_status()`

```ruby
update_waf_firewall_rule_status(opts): Object # Update the status of a rule
```

Update a rule status for a particular service, firewall, and rule.

### Examples

```ruby
api_instance = Fastly::LegacyWafRuleStatusApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a Firewall.
    waf_rule_id: 'waf_rule_id_example', # String | Alphanumeric string identifying a WAF rule.
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Update the status of a rule
  result = api_instance.update_waf_firewall_rule_status(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafRuleStatusApi->update_waf_firewall_rule_status: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **firewall_id** | **String** | Alphanumeric string identifying a Firewall. |  |
| **waf_rule_id** | **String** | Alphanumeric string identifying a WAF rule. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_waf_firewall_rule_statuses_tag()`

```ruby
update_waf_firewall_rule_statuses_tag(opts): Object # Create or update status of a tagged group of rules
```

Create or update all rule statuses for a particular service and firewall, based on tag name. By default, only rule status for enabled rules (with status log or block) will be updated. To update rule statuses for disabled rules under the specified tag, use the force attribute.

### Examples

```ruby
api_instance = Fastly::LegacyWafRuleStatusApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a Firewall.
    name: 'name_example', # String | The tag name to use to determine the set of rules to update. For example, OWASP or language-php.
    force: 'force_example', # String | Whether or not to update rule statuses for disabled rules. Optional.
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Create or update status of a tagged group of rules
  result = api_instance.update_waf_firewall_rule_statuses_tag(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafRuleStatusApi->update_waf_firewall_rule_statuses_tag: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **firewall_id** | **String** | Alphanumeric string identifying a Firewall. |  |
| **name** | **String** | The tag name to use to determine the set of rules to update. For example, OWASP or language-php. | [optional] |
| **force** | **String** | Whether or not to update rule statuses for disabled rules. Optional. | [optional] |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
