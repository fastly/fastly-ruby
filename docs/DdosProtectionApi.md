# Fastly::DdosProtectionApi


```ruby
require 'fastly'
api_instance = Fastly::DdosProtectionApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**ddos_protection_event_get**](DdosProtectionApi.md#ddos_protection_event_get) | **GET** /ddos-protection/v1/events/{event_id} | Get event by ID
[**ddos_protection_event_list**](DdosProtectionApi.md#ddos_protection_event_list) | **GET** /ddos-protection/v1/events | Get events
[**ddos_protection_event_rule_list**](DdosProtectionApi.md#ddos_protection_event_rule_list) | **GET** /ddos-protection/v1/events/{event_id}/rules | Get all rules for an event
[**ddos_protection_rule_get**](DdosProtectionApi.md#ddos_protection_rule_get) | **GET** /ddos-protection/v1/rules/{rule_id} | Get a rule by ID
[**ddos_protection_rule_patch**](DdosProtectionApi.md#ddos_protection_rule_patch) | **PATCH** /ddos-protection/v1/rules/{rule_id} | Update rule
[**ddos_protection_traffic_stats_rule_get**](DdosProtectionApi.md#ddos_protection_traffic_stats_rule_get) | **GET** /ddos-protection/v1/events/{event_id}/rules/{rule_id}/traffic-stats | Get traffic stats for a rule


## `ddos_protection_event_get()`

```ruby
ddos_protection_event_get(opts): <DdosProtectionEvent> # Get event by ID
```

Get event by ID.

### Examples

```ruby
api_instance = Fastly::DdosProtectionApi.new
opts = {
    event_id: 'event_id_example', # String | Unique ID of the event.
}

begin
  # Get event by ID
  result = api_instance.ddos_protection_event_get(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DdosProtectionApi->ddos_protection_event_get: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | Unique ID of the event. |  |

### Return type

[**DdosProtectionEvent**](DdosProtectionEvent.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `ddos_protection_event_list()`

```ruby
ddos_protection_event_list(opts): <InlineResponse2002> # Get events
```

Get events.

### Examples

```ruby
api_instance = Fastly::DdosProtectionApi.new
opts = {
    cursor: 'cursor_example', # String | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    limit: 56, # Integer | Limit how many results are returned.
    service_id: 'service_id_example', # String | Filter results based on a service_id.
    from: Time.parse('2023-01-01T02:30Z'), # Time | Represents the start of a date-time range expressed in RFC 3339 format.
    to: Time.parse('2023-01-01T02:30Z'), # Time | Represents the end of a date-time range expressed in RFC 3339 format.
    name: 'name_example', # String | 
}

begin
  # Get events
  result = api_instance.ddos_protection_event_list(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DdosProtectionApi->ddos_protection_event_list: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] |
| **limit** | **Integer** | Limit how many results are returned. | [optional][default to 20] |
| **service_id** | **String** | Filter results based on a service_id. | [optional] |
| **from** | **Time** | Represents the start of a date-time range expressed in RFC 3339 format. | [optional] |
| **to** | **Time** | Represents the end of a date-time range expressed in RFC 3339 format. | [optional] |
| **name** | **String** |  | [optional] |

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `ddos_protection_event_rule_list()`

```ruby
ddos_protection_event_rule_list(opts): <InlineResponse2003> # Get all rules for an event
```

Get all rules for an event.

### Examples

```ruby
api_instance = Fastly::DdosProtectionApi.new
opts = {
    event_id: 'event_id_example', # String | Unique ID of the event.
    cursor: 'cursor_example', # String | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    limit: 56, # Integer | Limit how many results are returned.
    include: 'include_example', # String | Include relationships. Optional. Comma-separated values.
}

begin
  # Get all rules for an event
  result = api_instance.ddos_protection_event_rule_list(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DdosProtectionApi->ddos_protection_event_rule_list: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | Unique ID of the event. |  |
| **cursor** | **String** | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] |
| **limit** | **Integer** | Limit how many results are returned. | [optional][default to 20] |
| **include** | **String** | Include relationships. Optional. Comma-separated values. | [optional] |

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `ddos_protection_rule_get()`

```ruby
ddos_protection_rule_get(opts): <DdosProtectionRule> # Get a rule by ID
```

Get a rule by ID.

### Examples

```ruby
api_instance = Fastly::DdosProtectionApi.new
opts = {
    rule_id: 'rule_id_example', # String | Unique ID of the rule.
}

begin
  # Get a rule by ID
  result = api_instance.ddos_protection_rule_get(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DdosProtectionApi->ddos_protection_rule_get: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** | Unique ID of the rule. |  |

### Return type

[**DdosProtectionRule**](DdosProtectionRule.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `ddos_protection_rule_patch()`

```ruby
ddos_protection_rule_patch(opts): <DdosProtectionRule> # Update rule
```

Update rule.

### Examples

```ruby
api_instance = Fastly::DdosProtectionApi.new
opts = {
    rule_id: 'rule_id_example', # String | Unique ID of the rule.
    ddos_protection_rule_patch: Fastly::DdosProtectionRulePatch.new, # DdosProtectionRulePatch | 
}

begin
  # Update rule
  result = api_instance.ddos_protection_rule_patch(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DdosProtectionApi->ddos_protection_rule_patch: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** | Unique ID of the rule. |  |
| **ddos_protection_rule_patch** | [**DdosProtectionRulePatch**](DdosProtectionRulePatch.md) |  | [optional] |

### Return type

[**DdosProtectionRule**](DdosProtectionRule.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `ddos_protection_traffic_stats_rule_get()`

```ruby
ddos_protection_traffic_stats_rule_get(opts): <DdosProtectionTrafficStats> # Get traffic stats for a rule
```

Get traffic stats for a rule.

### Examples

```ruby
api_instance = Fastly::DdosProtectionApi.new
opts = {
    event_id: 'event_id_example', # String | Unique ID of the event.
    rule_id: 'rule_id_example', # String | Unique ID of the rule.
}

begin
  # Get traffic stats for a rule
  result = api_instance.ddos_protection_traffic_stats_rule_get(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DdosProtectionApi->ddos_protection_traffic_stats_rule_get: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | Unique ID of the event. |  |
| **rule_id** | **String** | Unique ID of the rule. |  |

### Return type

[**DdosProtectionTrafficStats**](DdosProtectionTrafficStats.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
