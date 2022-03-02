# Fastly::DocsApi


```ruby
require 'fastly'
api_instance = Fastly::DocsApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_docs**](DocsApi.md#get_docs) | **GET** /docs | Get Fastly API docs as structured data |
| [**get_docs_section**](DocsApi.md#get_docs_section) | **GET** /docs/section/{section} | Get API docs matching a section filter |
| [**get_docs_subject**](DocsApi.md#get_docs_subject) | **GET** /docs/subject/{subject} | Get API docs for a single subject |


## `get_docs()`

```ruby
get_docs: Array&lt;Object&gt; # Get Fastly API docs as structured data
```

Gets all documentation associated with the Fastly API.

### Examples

```ruby
api_instance = Fastly::DocsApi.new

begin
  # Get Fastly API docs as structured data
  result = api_instance.get_docs
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DocsApi->get_docs: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

**Array&lt;Object&gt;**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_docs_section()`

```ruby
get_docs_section(opts) # Get API docs matching a section filter
```

Gets all documentation associated with a given Categorical Section where `section` is a regular_expression. Passing `invert=true` will force a return of everything that does not match the given regular expression.

### Examples

```ruby
api_instance = Fastly::DocsApi.new
opts = {
    section: 'backend', # String | The section to search for. Supports regular expressions.
    invert: 'invert_example', # String | Get everything that does not match section.
}

begin
  # Get API docs matching a section filter
  api_instance.get_docs_section(opts)
rescue Fastly::ApiError => e
  puts "Error when calling DocsApi->get_docs_section: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **section** | **String** | The section to search for. Supports regular expressions. |  |
| **invert** | **String** | Get everything that does not match section. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_docs_subject()`

```ruby
get_docs_subject(opts) # Get API docs for a single subject
```

Gets all documentation relating to a given 'Subject'.

### Examples

```ruby
api_instance = Fastly::DocsApi.new
opts = {
    subject: 'backend', # String | The subject to search for. Supports regular expressions.
}

begin
  # Get API docs for a single subject
  api_instance.get_docs_subject(opts)
rescue Fastly::ApiError => e
  puts "Error when calling DocsApi->get_docs_subject: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject** | **String** | The subject to search for. Supports regular expressions. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
