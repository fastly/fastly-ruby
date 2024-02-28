# Fastly::PublishApi


```ruby
require 'fastly'
api_instance = Fastly::PublishApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**publish**](PublishApi.md#publish) | **POST** /service/{service_id}/publish/ | Send messages to Fanout subscribers |


## `publish()`

```ruby
publish(opts): String # Send messages to Fanout subscribers
```

Send one or more messages to [Fanout](https://www.fastly.com/documentation/learning/concepts/real-time-messaging/fanout) subscribers. Each message specifies a channel, and Fanout will deliver the message to all subscribers of its channel. > **IMPORTANT:** For compatibility with GRIP, this endpoint requires a trailing slash, and the API token may be provided in the `Authorization` header (instead of the `Fastly-Key` header) using the `Bearer` scheme. 

### Examples

```ruby
api_instance = Fastly::PublishApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    publish_request: Fastly::PublishRequest.new({items: [Fastly::PublishItem.new({channel: 'channel_example', formats: Fastly::PublishItemFormats.new})]}), # PublishRequest | 
}

begin
  # Send messages to Fanout subscribers
  result = api_instance.publish(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling PublishApi->publish: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **publish_request** | [**PublishRequest**](PublishRequest.md) |  | [optional] |

### Return type

**String**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
