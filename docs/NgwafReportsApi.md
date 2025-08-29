# Fastly::NgwafReportsApi


```ruby
require 'fastly'
api_instance = Fastly::NgwafReportsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_attacks_report**](NgwafReportsApi.md#get_attacks_report) | **GET** /ngwaf/v1/reports/attacks | Get attacks report
[**get_signals_report**](NgwafReportsApi.md#get_signals_report) | **GET** /ngwaf/v1/reports/signals | Get signals report


## `get_attacks_report()`

```ruby
get_attacks_report(opts): <ListAttackReport> # Get attacks report
```

Get attacks report

### Examples

```ruby
api_instance = Fastly::NgwafReportsApi.new
opts = {
    from: Time.parse('2019-08-20T18:07:33Z'), # Time | The start of a time range in RFC 3339 format.
    to: Time.parse('2019-08-21T18:07:33Z'), # Time | The end of a time range in RFC 3339 format. Defaults to the current time.
}

begin
  # Get attacks report
  result = api_instance.get_attacks_report(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling NgwafReportsApi->get_attacks_report: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Time** | The start of a time range in RFC 3339 format. |  |
| **to** | **Time** | The end of a time range in RFC 3339 format. Defaults to the current time. | [optional] |

### Return type

[**ListAttackReport**](ListAttackReport.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_signals_report()`

```ruby
get_signals_report(opts): <ListSignalReport> # Get signals report
```

Get signals report

### Examples

```ruby
api_instance = Fastly::NgwafReportsApi.new
opts = {
    from: Time.parse('2019-08-20T18:07:33Z'), # Time | The start of a time range in RFC 3339 format.
    to: Time.parse('2019-08-21T18:07:33Z'), # Time | The end of a time range in RFC 3339 format. Defaults to the current time.
    signal_type: 'account', # String | The type of signal
}

begin
  # Get signals report
  result = api_instance.get_signals_report(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling NgwafReportsApi->get_signals_report: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Time** | The start of a time range in RFC 3339 format. |  |
| **to** | **Time** | The end of a time range in RFC 3339 format. Defaults to the current time. | [optional] |
| **signal_type** | **String** | The type of signal | [optional] |

### Return type

[**ListSignalReport**](ListSignalReport.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
