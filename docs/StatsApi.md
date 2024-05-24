# Fastly::StatsApi


```ruby
require 'fastly'
api_instance = Fastly::StatsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_service_stats**](StatsApi.md#get_service_stats) | **GET** /service/{service_id}/stats/summary | Get stats for a service


## `get_service_stats()`

```ruby
get_service_stats(opts): <Stats> # Get stats for a service
```

Get the stats from a service for a block of time. This lists all stats by PoP location, starting with AMS. This call requires parameters to select block of time to query. Use either a timestamp range (using start_time and end_time) or a specified month/year combo (using month and year).

### Examples

```ruby
api_instance = Fastly::StatsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    month: '05', # String | 2-digit month.
    year: '2020', # String | 4-digit year.
    start_time: 1608560817, # Integer | Epoch timestamp. Limits the results returned.
    end_time: 1608560817, # Integer | Epoch timestamp. Limits the results returned.
}

begin
  # Get stats for a service
  result = api_instance.get_service_stats(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling StatsApi->get_service_stats: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **month** | **String** | 2-digit month. | [optional] |
| **year** | **String** | 4-digit year. | [optional] |
| **start_time** | **Integer** | Epoch timestamp. Limits the results returned. | [optional] |
| **end_time** | **Integer** | Epoch timestamp. Limits the results returned. | [optional] |

### Return type

[**Stats**](Stats.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
