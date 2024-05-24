# Fastly::WafRuleRevisionsApi


```ruby
require 'fastly'
api_instance = Fastly::WafRuleRevisionsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_waf_rule_revision**](WafRuleRevisionsApi.md#get_waf_rule_revision) | **GET** /waf/rules/{waf_rule_id}/revisions/{waf_rule_revision_number} | Get a revision of a rule
[**list_waf_rule_revisions**](WafRuleRevisionsApi.md#list_waf_rule_revisions) | **GET** /waf/rules/{waf_rule_id}/revisions | List revisions for a rule


## `get_waf_rule_revision()`

```ruby
get_waf_rule_revision(opts): <WafRuleRevisionResponse> # Get a revision of a rule
```

Get a specific rule revision.

### Examples

```ruby
api_instance = Fastly::WafRuleRevisionsApi.new
opts = {
    waf_rule_id: 'waf_rule_id_example', # String | Alphanumeric string identifying a WAF rule.
    waf_rule_revision_number: 56, # Integer | Revision number.
    include: 'source,vcl,waf_rule', # String | Include relationships. Optional, comma-separated values. Permitted values: `waf_rule`, `vcl`, and `source`. The `vcl` and `source` relationships show the WAF VCL and corresponding ModSecurity source. These fields are blank unless the relationship is included. 
}

begin
  # Get a revision of a rule
  result = api_instance.get_waf_rule_revision(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling WafRuleRevisionsApi->get_waf_rule_revision: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **waf_rule_id** | **String** | Alphanumeric string identifying a WAF rule. |  |
| **waf_rule_revision_number** | **Integer** | Revision number. |  |
| **include** | **String** | Include relationships. Optional, comma-separated values. Permitted values: `waf_rule`, `vcl`, and `source`. The `vcl` and `source` relationships show the WAF VCL and corresponding ModSecurity source. These fields are blank unless the relationship is included.  | [optional] |

### Return type

[**WafRuleRevisionResponse**](WafRuleRevisionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_waf_rule_revisions()`

```ruby
list_waf_rule_revisions(opts): <WafRuleRevisionsResponse> # List revisions for a rule
```

List all revisions for a specific rule. The `rule_id` provided can be the ModSecurity Rule ID or the Fastly generated rule ID.

### Examples

```ruby
api_instance = Fastly::WafRuleRevisionsApi.new
opts = {
    waf_rule_id: 'waf_rule_id_example', # String | Alphanumeric string identifying a WAF rule.
    page_number: 1, # Integer | Current page.
    page_size: 20, # Integer | Number of records per page.
    include: 'waf_rule', # String | Include relationships. Optional.
}

begin
  # List revisions for a rule
  result = api_instance.list_waf_rule_revisions(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling WafRuleRevisionsApi->list_waf_rule_revisions: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **waf_rule_id** | **String** | Alphanumeric string identifying a WAF rule. |  |
| **page_number** | **Integer** | Current page. | [optional] |
| **page_size** | **Integer** | Number of records per page. | [optional][default to 20] |
| **include** | **String** | Include relationships. Optional. | [optional][default to &#39;waf_rule&#39;] |

### Return type

[**WafRuleRevisionsResponse**](WafRuleRevisionsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
