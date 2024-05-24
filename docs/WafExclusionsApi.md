# Fastly::WafExclusionsApi


```ruby
require 'fastly'
api_instance = Fastly::WafExclusionsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_waf_rule_exclusion**](WafExclusionsApi.md#create_waf_rule_exclusion) | **POST** /waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions | Create a WAF rule exclusion
[**delete_waf_rule_exclusion**](WafExclusionsApi.md#delete_waf_rule_exclusion) | **DELETE** /waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions/{exclusion_number} | Delete a WAF rule exclusion
[**get_waf_rule_exclusion**](WafExclusionsApi.md#get_waf_rule_exclusion) | **GET** /waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions/{exclusion_number} | Get a WAF rule exclusion
[**list_waf_rule_exclusions**](WafExclusionsApi.md#list_waf_rule_exclusions) | **GET** /waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions | List WAF rule exclusions
[**update_waf_rule_exclusion**](WafExclusionsApi.md#update_waf_rule_exclusion) | **PATCH** /waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions/{exclusion_number} | Update a WAF rule exclusion


## `create_waf_rule_exclusion()`

```ruby
create_waf_rule_exclusion(opts): <WafExclusionResponse> # Create a WAF rule exclusion
```

Create a WAF exclusion for a particular firewall version.

### Examples

```ruby
api_instance = Fastly::WafExclusionsApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a WAF Firewall.
    firewall_version_number: 56, # Integer | Integer identifying a WAF firewall version.
    waf_exclusion: Fastly::WafExclusion.new, # WafExclusion | 
}

begin
  # Create a WAF rule exclusion
  result = api_instance.create_waf_rule_exclusion(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling WafExclusionsApi->create_waf_rule_exclusion: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firewall_id** | **String** | Alphanumeric string identifying a WAF Firewall. |  |
| **firewall_version_number** | **Integer** | Integer identifying a WAF firewall version. |  |
| **waf_exclusion** | [**WafExclusion**](WafExclusion.md) |  | [optional] |

### Return type

[**WafExclusionResponse**](WafExclusionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_waf_rule_exclusion()`

```ruby
delete_waf_rule_exclusion(opts) # Delete a WAF rule exclusion
```

Delete a WAF exclusion for a particular firewall version.

### Examples

```ruby
api_instance = Fastly::WafExclusionsApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a WAF Firewall.
    firewall_version_number: 56, # Integer | Integer identifying a WAF firewall version.
    exclusion_number: 56, # Integer | A numeric ID identifying a WAF exclusion.
}

begin
  # Delete a WAF rule exclusion
  api_instance.delete_waf_rule_exclusion(opts)
rescue Fastly::ApiError => e
  puts "Error when calling WafExclusionsApi->delete_waf_rule_exclusion: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firewall_id** | **String** | Alphanumeric string identifying a WAF Firewall. |  |
| **firewall_version_number** | **Integer** | Integer identifying a WAF firewall version. |  |
| **exclusion_number** | **Integer** | A numeric ID identifying a WAF exclusion. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_waf_rule_exclusion()`

```ruby
get_waf_rule_exclusion(opts): <WafExclusionResponse> # Get a WAF rule exclusion
```

Get a specific WAF exclusion object.

### Examples

```ruby
api_instance = Fastly::WafExclusionsApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a WAF Firewall.
    firewall_version_number: 56, # Integer | Integer identifying a WAF firewall version.
    exclusion_number: 56, # Integer | A numeric ID identifying a WAF exclusion.
}

begin
  # Get a WAF rule exclusion
  result = api_instance.get_waf_rule_exclusion(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling WafExclusionsApi->get_waf_rule_exclusion: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firewall_id** | **String** | Alphanumeric string identifying a WAF Firewall. |  |
| **firewall_version_number** | **Integer** | Integer identifying a WAF firewall version. |  |
| **exclusion_number** | **Integer** | A numeric ID identifying a WAF exclusion. |  |

### Return type

[**WafExclusionResponse**](WafExclusionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_waf_rule_exclusions()`

```ruby
list_waf_rule_exclusions(opts): <WafExclusionsResponse> # List WAF rule exclusions
```

List all exclusions for a particular firewall version.

### Examples

```ruby
api_instance = Fastly::WafExclusionsApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a WAF Firewall.
    firewall_version_number: 56, # Integer | Integer identifying a WAF firewall version.
    filter_exclusion_type: 'rule', # String | Filters the results based on this exclusion type.
    filter_name: 'filter_name_example', # String | Filters the results based on name.
    filter_waf_rules_modsec_rule_id: 56, # Integer | Filters the results based on this ModSecurity rule ID.
    page_number: 1, # Integer | Current page.
    page_size: 20, # Integer | Number of records per page.
    include: 'waf_rules', # String | Include relationships. Optional, comma-separated values. Permitted values: `waf_rules` and `waf_rule_revisions`. 
}

begin
  # List WAF rule exclusions
  result = api_instance.list_waf_rule_exclusions(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling WafExclusionsApi->list_waf_rule_exclusions: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_exclusion_type** | **String** | Filters the results based on this exclusion type. | [optional] |
| **filter_name** | **String** | Filters the results based on name. | [optional] |
| **filter_waf_rules_modsec_rule_id** | **Integer** | Filters the results based on this ModSecurity rule ID. | [optional] |
| **page_number** | **Integer** | Current page. | [optional] |
| **page_size** | **Integer** | Number of records per page. | [optional][default to 20] |
| **include** | **String** | Include relationships. Optional, comma-separated values. Permitted values: `waf_rules` and `waf_rule_revisions`.  | [optional] |
| **firewall_id** | **String** | Alphanumeric string identifying a WAF Firewall. |  |
| **firewall_version_number** | **Integer** | Integer identifying a WAF firewall version. |  |

### Return type

[**WafExclusionsResponse**](WafExclusionsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_waf_rule_exclusion()`

```ruby
update_waf_rule_exclusion(opts): <WafExclusionResponse> # Update a WAF rule exclusion
```

Update a WAF exclusion for a particular firewall version.

### Examples

```ruby
api_instance = Fastly::WafExclusionsApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a WAF Firewall.
    firewall_version_number: 56, # Integer | Integer identifying a WAF firewall version.
    exclusion_number: 56, # Integer | A numeric ID identifying a WAF exclusion.
    waf_exclusion: Fastly::WafExclusion.new, # WafExclusion | 
}

begin
  # Update a WAF rule exclusion
  result = api_instance.update_waf_rule_exclusion(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling WafExclusionsApi->update_waf_rule_exclusion: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firewall_id** | **String** | Alphanumeric string identifying a WAF Firewall. |  |
| **firewall_version_number** | **Integer** | Integer identifying a WAF firewall version. |  |
| **exclusion_number** | **Integer** | A numeric ID identifying a WAF exclusion. |  |
| **waf_exclusion** | [**WafExclusion**](WafExclusion.md) |  | [optional] |

### Return type

[**WafExclusionResponse**](WafExclusionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
