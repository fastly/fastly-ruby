# Fastly::LoggingEndpointErrorsApi


```ruby
require 'fastly'
api_instance = Fastly::LoggingEndpointErrorsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_log_endpoint_errors**](LoggingEndpointErrorsApi.md#get_log_endpoint_errors) | **GET** /observability/service/{service_id}/logging/errors | Stream Log Endpoint Errors


## `get_log_endpoint_errors()`

```ruby
get_log_endpoint_errors(opts): String # Stream Log Endpoint Errors
```

Provides a near real-time stream of log errors through a hybrid short-polling model. A client should make an initial request using the `from` parameter to specify a start time. The `to` parameter should be used alongside the `from` parameter since the default bucket is 10 seconds.  For pagination, use the URLs provided in the Link header of the response. These contain updated `from` timestamps for retrieving the next or previous page of logs.  Defaults to `application/x-ndjson` format. Use `Accept: application/json` header to request standard JSON array format instead. 

### Examples

```ruby
api_instance = Fastly::LoggingEndpointErrorsApi.new
opts = {
    service_id: 'SU1Z0isxPaozGVKXdv0eY', # String | 
    from: 1756123200, # Integer | 
    to: 1756209600, # Integer | 
    filter_endpoint: 'MyS3,BigQuery', # String | 
}

begin
  # Stream Log Endpoint Errors
  result = api_instance.get_log_endpoint_errors(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingEndpointErrorsApi->get_log_endpoint_errors: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** |  |  |
| **from** | **Integer** |  | [optional] |
| **to** | **Integer** |  | [optional] |
| **filter_endpoint** | **String** |  | [optional] |

### Return type

**String**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
