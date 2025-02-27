# Fastly::ProductBotManagementApi


```ruby
require 'fastly'
api_instance = Fastly::ProductBotManagementApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_bot_management**](ProductBotManagementApi.md#disable_product_bot_management) | **DELETE** /enabled-products/v1/bot_management/services/{service_id} | Disable product
[**enable_product_bot_management**](ProductBotManagementApi.md#enable_product_bot_management) | **PUT** /enabled-products/v1/bot_management/services/{service_id} | Enable product
[**get_product_bot_management**](ProductBotManagementApi.md#get_product_bot_management) | **GET** /enabled-products/v1/bot_management/services/{service_id} | Get product enablement status


## `disable_product_bot_management()`

```ruby
disable_product_bot_management(opts) # Disable product
```

Disable the Bot Management product on a service.

### Examples

```ruby
api_instance = Fastly::ProductBotManagementApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Disable product
  api_instance.disable_product_bot_management(opts)
rescue Fastly::ApiError => e
  puts "Error when calling ProductBotManagementApi->disable_product_bot_management: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `enable_product_bot_management()`

```ruby
enable_product_bot_management(opts): <BotManagementResponseBodyEnable> # Enable product
```

Enable the Bot Management product on a service.

### Examples

```ruby
api_instance = Fastly::ProductBotManagementApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Enable product
  result = api_instance.enable_product_bot_management(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductBotManagementApi->enable_product_bot_management: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**BotManagementResponseBodyEnable**](BotManagementResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_product_bot_management()`

```ruby
get_product_bot_management(opts): <BotManagementResponseBodyEnable> # Get product enablement status
```

Get the enablement status of the Bot Management product on a service.

### Examples

```ruby
api_instance = Fastly::ProductBotManagementApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Get product enablement status
  result = api_instance.get_product_bot_management(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductBotManagementApi->get_product_bot_management: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**BotManagementResponseBodyEnable**](BotManagementResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
