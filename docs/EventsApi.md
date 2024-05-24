# Fastly::EventsApi


```ruby
require 'fastly'
api_instance = Fastly::EventsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_event**](EventsApi.md#get_event) | **GET** /events/{event_id} | Get an event
[**list_events**](EventsApi.md#list_events) | **GET** /events | List events


## `get_event()`

```ruby
get_event(opts): <EventResponse> # Get an event
```

Get a specific event.

### Examples

```ruby
api_instance = Fastly::EventsApi.new
opts = {
    event_id: 'event_id_example', # String | Alphanumeric string identifying an event.
}

begin
  # Get an event
  result = api_instance.get_event(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling EventsApi->get_event: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | Alphanumeric string identifying an event. |  |

### Return type

[**EventResponse**](EventResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_events()`

```ruby
list_events(opts): <EventsResponse> # List events
```

List all events for a particular customer. Events can be filtered by user, customer and event type. Events can be sorted by date.

### Examples

```ruby
api_instance = Fastly::EventsApi.new
opts = {
    filter_customer_id: 'x4xCwxxJxGCx123Rx5xTx', # String | Limit the results returned to a specific customer.
    filter_event_type: 'filter_event_type_example', # String | Limit the returned events to a specific `event_type`.
    filter_service_id: 'filter_service_id_example', # String | Limit the results returned to a specific service.
    filter_user_id: 'filter_user_id_example', # String | Limit the results returned to a specific user.
    filter_token_id: 'filter_token_id_example', # String | Limit the returned events to a specific token.
    filter_created_at: 'filter_created_at_example', # String | Limit the returned events to a specific time frame. Accepts sub-parameters: lt, lte, gt, gte (e.g., filter[created_at][gt]=2022-01-12). 
    filter_created_at_lte: 'filter_created_at_lte_example', # String | Return events on and before a date and time in ISO 8601 format. 
    filter_created_at_lt: 'filter_created_at_lt_example', # String | Return events before a date and time in ISO 8601 format. 
    filter_created_at_gte: 'filter_created_at_gte_example', # String | Return events on and after a date and time in ISO 8601 format. 
    filter_created_at_gt: 'filter_created_at_gt_example', # String | Return events after a date and time in ISO 8601 format. 
    page_number: 1, # Integer | Current page.
    page_size: 20, # Integer | Number of records per page.
    sort: 'created_at', # String | The order in which to list the results by creation date.
}

begin
  # List events
  result = api_instance.list_events(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling EventsApi->list_events: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_customer_id** | **String** | Limit the results returned to a specific customer. | [optional] |
| **filter_event_type** | **String** | Limit the returned events to a specific `event_type`. | [optional] |
| **filter_service_id** | **String** | Limit the results returned to a specific service. | [optional] |
| **filter_user_id** | **String** | Limit the results returned to a specific user. | [optional] |
| **filter_token_id** | **String** | Limit the returned events to a specific token. | [optional] |
| **filter_created_at** | **String** | Limit the returned events to a specific time frame. Accepts sub-parameters: lt, lte, gt, gte (e.g., filter[created_at][gt]&#x3D;2022-01-12).  | [optional] |
| **filter_created_at_lte** | **String** | Return events on and before a date and time in ISO 8601 format.  | [optional] |
| **filter_created_at_lt** | **String** | Return events before a date and time in ISO 8601 format.  | [optional] |
| **filter_created_at_gte** | **String** | Return events on and after a date and time in ISO 8601 format.  | [optional] |
| **filter_created_at_gt** | **String** | Return events after a date and time in ISO 8601 format.  | [optional] |
| **page_number** | **Integer** | Current page. | [optional] |
| **page_size** | **Integer** | Number of records per page. | [optional][default to 20] |
| **sort** | **String** | The order in which to list the results by creation date. | [optional][default to &#39;created_at&#39;] |

### Return type

[**EventsResponse**](EventsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
