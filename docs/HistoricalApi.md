# Fastly::HistoricalApi


```ruby
require 'fastly'
api_instance = Fastly::HistoricalApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_hist_stats**](HistoricalApi.md#get_hist_stats) | **GET** /stats | Get historical stats |
| [**get_hist_stats_aggregated**](HistoricalApi.md#get_hist_stats_aggregated) | **GET** /stats/aggregate | Get aggregated historical stats |
| [**get_hist_stats_field**](HistoricalApi.md#get_hist_stats_field) | **GET** /stats/field/{field} | Get historical stats for a single field |
| [**get_hist_stats_service**](HistoricalApi.md#get_hist_stats_service) | **GET** /stats/service/{service_id} | Get historical stats for a single service |
| [**get_hist_stats_service_field**](HistoricalApi.md#get_hist_stats_service_field) | **GET** /stats/service/{service_id}/field/{field} | Get historical stats for a single service/field combination |
| [**get_regions**](HistoricalApi.md#get_regions) | **GET** /stats/regions | Get region codes |
| [**get_usage**](HistoricalApi.md#get_usage) | **GET** /stats/usage | Get usage statistics |
| [**get_usage_month**](HistoricalApi.md#get_usage_month) | **GET** /stats/usage_by_month | Get month-to-date usage statistics |
| [**get_usage_service**](HistoricalApi.md#get_usage_service) | **GET** /stats/usage_by_service | Get usage statistics per service |


## `get_hist_stats()`

```ruby
get_hist_stats(opts): <HistoricalStatsByServiceResponse> # Get historical stats
```

Fetches historical stats for each of your Fastly services and groups the results by service ID.

### Examples

```ruby
api_instance = Fastly::HistoricalApi.new
opts = {
    from: '2020-04-09T18:14:30Z', # String | Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as 'yesterday', or 'two weeks ago'. Default varies based on the value of `by`. 
    to: '2020-04-09T18:14:30Z', # String | Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`. 
    by: 'hour', # String | Duration of sample windows. One of:   * `hour` - Group data by hour.   * `minute` - Group data by minute.   * `day` - Group data by day. 
    region: 'usa', # String | Limit query to a specific geographic region. One of:   * `usa` - North America.   * `europe` - Europe.   * `anzac` - Australia and New Zealand.   * `asia` - Asia.   * `asia_india` - India.   * `asia_southkorea` - South Korea.   * `africa_std` - Africa.   * `southamerica_std` - South America. 
}

begin
  # Get historical stats
  result = api_instance.get_hist_stats(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling HistoricalApi->get_hist_stats: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of `by`.  | [optional] |
| **to** | **String** | Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`.  | [optional][default to &#39;now&#39;] |
| **by** | **String** | Duration of sample windows. One of:   * `hour` - Group data by hour.   * `minute` - Group data by minute.   * `day` - Group data by day.  | [optional][default to &#39;day&#39;] |
| **region** | **String** | Limit query to a specific geographic region. One of:   * `usa` - North America.   * `europe` - Europe.   * `anzac` - Australia and New Zealand.   * `asia` - Asia.   * `asia_india` - India.   * `asia_southkorea` - South Korea.   * `africa_std` - Africa.   * `southamerica_std` - South America.  | [optional] |

### Return type

[**HistoricalStatsByServiceResponse**](HistoricalStatsByServiceResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_hist_stats_aggregated()`

```ruby
get_hist_stats_aggregated(opts): <HistoricalStatsAggregatedResponse> # Get aggregated historical stats
```

Fetches historical stats information aggregated across all of your Fastly services.

### Examples

```ruby
api_instance = Fastly::HistoricalApi.new
opts = {
    from: '2020-04-09T18:14:30Z', # String | Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as 'yesterday', or 'two weeks ago'. Default varies based on the value of `by`. 
    to: '2020-04-09T18:14:30Z', # String | Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`. 
    by: 'hour', # String | Duration of sample windows. One of:   * `hour` - Group data by hour.   * `minute` - Group data by minute.   * `day` - Group data by day. 
    region: 'usa', # String | Limit query to a specific geographic region. One of:   * `usa` - North America.   * `europe` - Europe.   * `anzac` - Australia and New Zealand.   * `asia` - Asia.   * `asia_india` - India.   * `asia_southkorea` - South Korea.   * `africa_std` - Africa.   * `southamerica_std` - South America. 
}

begin
  # Get aggregated historical stats
  result = api_instance.get_hist_stats_aggregated(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling HistoricalApi->get_hist_stats_aggregated: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of `by`.  | [optional] |
| **to** | **String** | Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`.  | [optional][default to &#39;now&#39;] |
| **by** | **String** | Duration of sample windows. One of:   * `hour` - Group data by hour.   * `minute` - Group data by minute.   * `day` - Group data by day.  | [optional][default to &#39;day&#39;] |
| **region** | **String** | Limit query to a specific geographic region. One of:   * `usa` - North America.   * `europe` - Europe.   * `anzac` - Australia and New Zealand.   * `asia` - Asia.   * `asia_india` - India.   * `asia_southkorea` - South Korea.   * `africa_std` - Africa.   * `southamerica_std` - South America.  | [optional] |

### Return type

[**HistoricalStatsAggregatedResponse**](HistoricalStatsAggregatedResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_hist_stats_field()`

```ruby
get_hist_stats_field(opts): <HistoricalStatsByServiceResponse> # Get historical stats for a single field
```

Fetches the specified field from the historical stats for each of your services and groups the results by service ID.

### Examples

```ruby
api_instance = Fastly::HistoricalApi.new
opts = {
    field: 'hit_ratio', # String | Name of the stats field.
    from: '2020-04-09T18:14:30Z', # String | Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as 'yesterday', or 'two weeks ago'. Default varies based on the value of `by`. 
    to: '2020-04-09T18:14:30Z', # String | Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`. 
    by: 'hour', # String | Duration of sample windows. One of:   * `hour` - Group data by hour.   * `minute` - Group data by minute.   * `day` - Group data by day. 
    region: 'usa', # String | Limit query to a specific geographic region. One of:   * `usa` - North America.   * `europe` - Europe.   * `anzac` - Australia and New Zealand.   * `asia` - Asia.   * `asia_india` - India.   * `asia_southkorea` - South Korea.   * `africa_std` - Africa.   * `southamerica_std` - South America. 
}

begin
  # Get historical stats for a single field
  result = api_instance.get_hist_stats_field(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling HistoricalApi->get_hist_stats_field: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** | Name of the stats field. |  |
| **from** | **String** | Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of `by`.  | [optional] |
| **to** | **String** | Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`.  | [optional][default to &#39;now&#39;] |
| **by** | **String** | Duration of sample windows. One of:   * `hour` - Group data by hour.   * `minute` - Group data by minute.   * `day` - Group data by day.  | [optional][default to &#39;day&#39;] |
| **region** | **String** | Limit query to a specific geographic region. One of:   * `usa` - North America.   * `europe` - Europe.   * `anzac` - Australia and New Zealand.   * `asia` - Asia.   * `asia_india` - India.   * `asia_southkorea` - South Korea.   * `africa_std` - Africa.   * `southamerica_std` - South America.  | [optional] |

### Return type

[**HistoricalStatsByServiceResponse**](HistoricalStatsByServiceResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_hist_stats_service()`

```ruby
get_hist_stats_service(opts): <HistoricalStatsAggregatedResponse> # Get historical stats for a single service
```

Fetches historical stats for a given service.

### Examples

```ruby
api_instance = Fastly::HistoricalApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    from: '2020-04-09T18:14:30Z', # String | Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as 'yesterday', or 'two weeks ago'. Default varies based on the value of `by`. 
    to: '2020-04-09T18:14:30Z', # String | Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`. 
    by: 'hour', # String | Duration of sample windows. One of:   * `hour` - Group data by hour.   * `minute` - Group data by minute.   * `day` - Group data by day. 
    region: 'usa', # String | Limit query to a specific geographic region. One of:   * `usa` - North America.   * `europe` - Europe.   * `anzac` - Australia and New Zealand.   * `asia` - Asia.   * `asia_india` - India.   * `asia_southkorea` - South Korea.   * `africa_std` - Africa.   * `southamerica_std` - South America. 
}

begin
  # Get historical stats for a single service
  result = api_instance.get_hist_stats_service(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling HistoricalApi->get_hist_stats_service: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **from** | **String** | Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of `by`.  | [optional] |
| **to** | **String** | Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`.  | [optional][default to &#39;now&#39;] |
| **by** | **String** | Duration of sample windows. One of:   * `hour` - Group data by hour.   * `minute` - Group data by minute.   * `day` - Group data by day.  | [optional][default to &#39;day&#39;] |
| **region** | **String** | Limit query to a specific geographic region. One of:   * `usa` - North America.   * `europe` - Europe.   * `anzac` - Australia and New Zealand.   * `asia` - Asia.   * `asia_india` - India.   * `asia_southkorea` - South Korea.   * `africa_std` - Africa.   * `southamerica_std` - South America.  | [optional] |

### Return type

[**HistoricalStatsAggregatedResponse**](HistoricalStatsAggregatedResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_hist_stats_service_field()`

```ruby
get_hist_stats_service_field(opts): <HistoricalStatsAggregatedResponse> # Get historical stats for a single service/field combination
```

Fetches the specified field from the historical stats for a given service.

### Examples

```ruby
api_instance = Fastly::HistoricalApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    field: 'hit_ratio', # String | Name of the stats field.
    from: '2020-04-09T18:14:30Z', # String | Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as 'yesterday', or 'two weeks ago'. Default varies based on the value of `by`. 
    to: '2020-04-09T18:14:30Z', # String | Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`. 
    by: 'hour', # String | Duration of sample windows. One of:   * `hour` - Group data by hour.   * `minute` - Group data by minute.   * `day` - Group data by day. 
    region: 'usa', # String | Limit query to a specific geographic region. One of:   * `usa` - North America.   * `europe` - Europe.   * `anzac` - Australia and New Zealand.   * `asia` - Asia.   * `asia_india` - India.   * `asia_southkorea` - South Korea.   * `africa_std` - Africa.   * `southamerica_std` - South America. 
}

begin
  # Get historical stats for a single service/field combination
  result = api_instance.get_hist_stats_service_field(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling HistoricalApi->get_hist_stats_service_field: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **field** | **String** | Name of the stats field. |  |
| **from** | **String** | Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of `by`.  | [optional] |
| **to** | **String** | Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`.  | [optional][default to &#39;now&#39;] |
| **by** | **String** | Duration of sample windows. One of:   * `hour` - Group data by hour.   * `minute` - Group data by minute.   * `day` - Group data by day.  | [optional][default to &#39;day&#39;] |
| **region** | **String** | Limit query to a specific geographic region. One of:   * `usa` - North America.   * `europe` - Europe.   * `anzac` - Australia and New Zealand.   * `asia` - Asia.   * `asia_india` - India.   * `asia_southkorea` - South Korea.   * `africa_std` - Africa.   * `southamerica_std` - South America.  | [optional] |

### Return type

[**HistoricalStatsAggregatedResponse**](HistoricalStatsAggregatedResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_regions()`

```ruby
get_regions: <HistoricalRegionsResponse> # Get region codes
```

Fetches the list of codes for regions that are covered by the Fastly CDN service.

### Examples

```ruby
api_instance = Fastly::HistoricalApi.new

begin
  # Get region codes
  result = api_instance.get_regions
  p result
rescue Fastly::ApiError => e
  puts "Error when calling HistoricalApi->get_regions: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**HistoricalRegionsResponse**](HistoricalRegionsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_usage()`

```ruby
get_usage(opts): <HistoricalUsageAggregatedResponse> # Get usage statistics
```

Returns usage information aggregated across all Fastly services and grouped by region. To aggregate across all Fastly services by time period, see [`/stats/aggregate`](#get-hist-stats-aggregated).

### Examples

```ruby
api_instance = Fastly::HistoricalApi.new
opts = {
    from: '2020-04-09T18:14:30Z', # String | Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as 'yesterday', or 'two weeks ago'. Default varies based on the value of `by`. 
    to: '2020-04-09T18:14:30Z', # String | Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`. 
}

begin
  # Get usage statistics
  result = api_instance.get_usage(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling HistoricalApi->get_usage: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of `by`.  | [optional] |
| **to** | **String** | Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`.  | [optional][default to &#39;now&#39;] |

### Return type

[**HistoricalUsageAggregatedResponse**](HistoricalUsageAggregatedResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_usage_month()`

```ruby
get_usage_month(opts): <HistoricalUsageMonthResponse> # Get month-to-date usage statistics
```

Returns month-to-date usage details for a given month and year. Usage details are aggregated by service and across all Fastly services, and then grouped by region. This endpoint does not use the `from` or `to` fields for selecting the date for which data is requested. Instead, it uses `month` and `year` integer fields. Both fields are optional and default to the current month and year respectively. When set, an optional `billable_units` field will convert bandwidth to GB and divide requests by 10,000.

### Examples

```ruby
api_instance = Fastly::HistoricalApi.new
opts = {
    year: '2020', # String | 4-digit year.
    month: '05', # String | 2-digit month.
    billable_units: true, # Boolean | If `true`, return results as billable units.
}

begin
  # Get month-to-date usage statistics
  result = api_instance.get_usage_month(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling HistoricalApi->get_usage_month: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **year** | **String** | 4-digit year. | [optional] |
| **month** | **String** | 2-digit month. | [optional] |
| **billable_units** | **Boolean** | If `true`, return results as billable units. | [optional] |

### Return type

[**HistoricalUsageMonthResponse**](HistoricalUsageMonthResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_usage_service()`

```ruby
get_usage_service(opts): <HistoricalUsageServiceResponse> # Get usage statistics per service
```

Returns usage information aggregated by service and grouped by service and region. For service stats by time period, see [`/stats`](#get-hist-stats) and [`/stats/field/:field`](#get-hist-stats-field).

### Examples

```ruby
api_instance = Fastly::HistoricalApi.new
opts = {
    from: '2020-04-09T18:14:30Z', # String | Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as 'yesterday', or 'two weeks ago'. Default varies based on the value of `by`. 
    to: '2020-04-09T18:14:30Z', # String | Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`. 
}

begin
  # Get usage statistics per service
  result = api_instance.get_usage_service(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling HistoricalApi->get_usage_service: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of `by`.  | [optional] |
| **to** | **String** | Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as `from`.  | [optional][default to &#39;now&#39;] |

### Return type

[**HistoricalUsageServiceResponse**](HistoricalUsageServiceResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
