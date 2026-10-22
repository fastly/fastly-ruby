# Fastly::AiRuntimeControlSessionsApi


```ruby
require 'fastly'
api_instance = Fastly::AiRuntimeControlSessionsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**arc_get_session_logs**](AiRuntimeControlSessionsApi.md#arc_get_session_logs) | **GET** /ai-runtime-control/v1/sessions | Get session logs


## `arc_get_session_logs()`

```ruby
arc_get_session_logs(opts): <ArcSessionsResponse> # Get session logs
```

Returns session logs, including request and response data and metadata, for debugging and audit purposes.

### Examples

```ruby
api_instance = Fastly::AiRuntimeControlSessionsApi.new
opts = {
    key: '7fVVQb1nZaJgnzCn4B4v3B', # String | Filter results to a specific virtual key ID.
    provider: 'pTfnUUBcU1yv8SoRJn5PZ2', # String | Filter results by AI provider connection ID.
    model: 'claude-sonnet-4-20250514', # String | Filter results by AI model identifier.
    from: Time.parse('2026-09-01T00:00Z'), # Time | The start of the time range, in RFC 3339 format.
    to: Time.parse('2026-09-22T00:00Z'), # Time | The end of the time range, in RFC 3339 format. Defaults to `now`.
    cursor: 'MTAwOjA', # String | Cursor for pagination. Use the `next_cursor` value from a previous response to request the next page of results, or the `prev_cursor` value to request the previous page. 
    limit: 100, # Integer | Limit how many results are returned.
    sort: 'created_at', # String | Sort field. Prefix with `-` for descending order (e.g., `sort=-created_at`). 
}

begin
  # Get session logs
  result = api_instance.arc_get_session_logs(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AiRuntimeControlSessionsApi->arc_get_session_logs: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Filter results to a specific virtual key ID. | [optional] |
| **provider** | **String** | Filter results by AI provider connection ID. | [optional] |
| **model** | **String** | Filter results by AI model identifier. | [optional] |
| **from** | **Time** | The start of the time range, in RFC 3339 format. | [optional] |
| **to** | **Time** | The end of the time range, in RFC 3339 format. Defaults to `now`. | [optional] |
| **cursor** | **String** | Cursor for pagination. Use the `next_cursor` value from a previous response to request the next page of results, or the `prev_cursor` value to request the previous page.  | [optional] |
| **limit** | **Integer** | Limit how many results are returned. | [optional][default to 100] |
| **sort** | **String** | Sort field. Prefix with `-` for descending order (e.g., `sort&#x3D;-created_at`).  | [optional][default to &#39;created_at&#39;] |

### Return type

[**ArcSessionsResponse**](ArcSessionsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
