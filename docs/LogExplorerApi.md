# Fastly::LogExplorerApi


```ruby
require 'fastly'
api_instance = Fastly::LogExplorerApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_log_records**](LogExplorerApi.md#get_log_records) | **GET** /observability/log-explorer | Retrieve log records


## `get_log_records()`

```ruby
get_log_records(opts): <GetLogRecordsResponse> # Retrieve log records
```

Retrieves log records.

### Examples

```ruby
api_instance = Fastly::LogExplorerApi.new
opts = {
    service_id: '1jlmtMz1ncwA0KC3TBGD0X', # String | 
    start: 'start_example', # String | 
    _end: '_end_example', # String | 
    limit: 8.14, # Float | 
    next_cursor: 'next_cursor_example', # String | 
    filter: 'filter_example', # String | 
}

begin
  # Retrieve log records
  result = api_instance.get_log_records(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LogExplorerApi->get_log_records: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** |  |  |
| **start** | **String** |  |  |
| **_end** | **String** |  |  |
| **limit** | **Float** |  | [optional] |
| **next_cursor** | **String** |  | [optional] |
| **filter** | **String** |  | [optional] |

### Return type

[**GetLogRecordsResponse**](GetLogRecordsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
