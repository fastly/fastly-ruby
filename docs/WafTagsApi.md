# Fastly::WafTagsApi


```ruby
require 'fastly'
api_instance = Fastly::WafTagsApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_waf_tags**](WafTagsApi.md#list_waf_tags) | **GET** /waf/tags | List tags |


## `list_waf_tags()`

```ruby
list_waf_tags(opts): <WafTagsResponse> # List tags
```

List all tags.

### Examples

```ruby
api_instance = Fastly::WafTagsApi.new
opts = {
    filter_name: 'filter_name_example', # String | Limit the returned tags to a specific name.
    page_number: 1, # Integer | Current page.
    page_size: 20, # Integer | Number of records per page.
    include: 'waf_rules', # String | Include relationships. Optional.
}

begin
  # List tags
  result = api_instance.list_waf_tags(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling WafTagsApi->list_waf_tags: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_name** | **String** | Limit the returned tags to a specific name. | [optional] |
| **page_number** | **Integer** | Current page. | [optional] |
| **page_size** | **Integer** | Number of records per page. | [optional][default to 20] |
| **include** | **String** | Include relationships. Optional. | [optional][default to &#39;waf_rules&#39;] |

### Return type

[**WafTagsResponse**](WafTagsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
