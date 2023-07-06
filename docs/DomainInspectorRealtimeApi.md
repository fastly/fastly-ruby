# Fastly::DomainInspectorRealtimeApi


```ruby
require 'fastly'
api_instance = Fastly::DomainInspectorRealtimeApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_domain_inspector_last120_seconds**](DomainInspectorRealtimeApi.md#get_domain_inspector_last120_seconds) | **GET** /v1/domains/{service_id}/ts/h | Get real-time domain data for the last 120 seconds |
| [**get_domain_inspector_last_max_entries**](DomainInspectorRealtimeApi.md#get_domain_inspector_last_max_entries) | **GET** /v1/domains/{service_id}/ts/h/limit/{max_entries} | Get a limited number of real-time domain data entries |
| [**get_domain_inspector_last_second**](DomainInspectorRealtimeApi.md#get_domain_inspector_last_second) | **GET** /v1/domains/{service_id}/ts/{start_timestamp} | Get real-time domain data from a specified time |


## `get_domain_inspector_last120_seconds()`

```ruby
get_domain_inspector_last120_seconds(opts): <DomainInspector> # Get real-time domain data for the last 120 seconds
```

Get data for the 120 seconds preceding the latest timestamp available for a service.

### Examples

```ruby
api_instance = Fastly::DomainInspectorRealtimeApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Get real-time domain data for the last 120 seconds
  result = api_instance.get_domain_inspector_last120_seconds(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DomainInspectorRealtimeApi->get_domain_inspector_last120_seconds: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**DomainInspector**](DomainInspector.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_domain_inspector_last_max_entries()`

```ruby
get_domain_inspector_last_max_entries(opts): <DomainInspector> # Get a limited number of real-time domain data entries
```

Get data for the `max_entries` seconds preceding the latest timestamp available for a service, up to a maximum of 120 entries.

### Examples

```ruby
api_instance = Fastly::DomainInspectorRealtimeApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    max_entries: 1, # Integer | Maximum number of results to show.
}

begin
  # Get a limited number of real-time domain data entries
  result = api_instance.get_domain_inspector_last_max_entries(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DomainInspectorRealtimeApi->get_domain_inspector_last_max_entries: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **max_entries** | **Integer** | Maximum number of results to show. |  |

### Return type

[**DomainInspector**](DomainInspector.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_domain_inspector_last_second()`

```ruby
get_domain_inspector_last_second(opts): <DomainInspector> # Get real-time domain data from a specified time
```

Get real-time domain data for the specified reporting period. Specify `0` to get a single entry for the last complete second. The `Timestamp` field included in the response provides the time index of the latest entry in the dataset and can be provided as the `start_timestamp` of the next request for a seamless continuation of the dataset from one request to the next. Due to processing latency, the earliest entry in the response dataset may be earlier than `start_timestamp` by the value of `AggregateDelay`. 

### Examples

```ruby
api_instance = Fastly::DomainInspectorRealtimeApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    start_timestamp: 56, # Integer | Timestamp in seconds (Unix epoch time).
}

begin
  # Get real-time domain data from a specified time
  result = api_instance.get_domain_inspector_last_second(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DomainInspectorRealtimeApi->get_domain_inspector_last_second: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **start_timestamp** | **Integer** | Timestamp in seconds (Unix epoch time). |  |

### Return type

[**DomainInspector**](DomainInspector.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
