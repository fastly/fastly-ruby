# Fastly::ProductWebsocketsApi


```ruby
require 'fastly'
api_instance = Fastly::ProductWebsocketsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_websockets**](ProductWebsocketsApi.md#disable_product_websockets) | **DELETE** /enabled-products/v1/websockets/services/{service_id} | Disable product
[**enable_product_websockets**](ProductWebsocketsApi.md#enable_product_websockets) | **PUT** /enabled-products/v1/websockets/services/{service_id} | Enable product
[**get_product_websockets**](ProductWebsocketsApi.md#get_product_websockets) | **GET** /enabled-products/v1/websockets/services/{service_id} | Get product enablement status
[**get_services_product_websockets**](ProductWebsocketsApi.md#get_services_product_websockets) | **GET** /enabled-products/v1/websockets/services | Get services with product enabled


## `disable_product_websockets()`

```ruby
disable_product_websockets(opts) # Disable product
```

Disable the Websockets product on a service.

### Examples

```ruby
api_instance = Fastly::ProductWebsocketsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Disable product
  api_instance.disable_product_websockets(opts)
rescue Fastly::ApiError => e
  puts "Error when calling ProductWebsocketsApi->disable_product_websockets: #{e}"
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
## `enable_product_websockets()`

```ruby
enable_product_websockets(opts): <WebsocketsResponseBodyEnable> # Enable product
```

Enable the WebSockets product on a service.

### Examples

```ruby
api_instance = Fastly::ProductWebsocketsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Enable product
  result = api_instance.enable_product_websockets(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductWebsocketsApi->enable_product_websockets: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**WebsocketsResponseBodyEnable**](WebsocketsResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_product_websockets()`

```ruby
get_product_websockets(opts): <WebsocketsResponseBodyEnable> # Get product enablement status
```

Get the enablement status of the WebSockets product on a service.

### Examples

```ruby
api_instance = Fastly::ProductWebsocketsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Get product enablement status
  result = api_instance.get_product_websockets(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductWebsocketsApi->get_product_websockets: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**WebsocketsResponseBodyEnable**](WebsocketsResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_services_product_websockets()`

```ruby
get_services_product_websockets: <WebsocketsResponseBodyGetAllServices> # Get services with product enabled
```

Get all the services which have the Websockets product enabled.

### Examples

```ruby
api_instance = Fastly::ProductWebsocketsApi.new

begin
  # Get services with product enabled
  result = api_instance.get_services_product_websockets
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductWebsocketsApi->get_services_product_websockets: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**WebsocketsResponseBodyGetAllServices**](WebsocketsResponseBodyGetAllServices.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
