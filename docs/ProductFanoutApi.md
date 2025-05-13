# Fastly::ProductFanoutApi


```ruby
require 'fastly'
api_instance = Fastly::ProductFanoutApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_fanout**](ProductFanoutApi.md#disable_product_fanout) | **DELETE** /enabled-products/v1/fanout/services/{service_id} | Disable product
[**enable_product_fanout**](ProductFanoutApi.md#enable_product_fanout) | **PUT** /enabled-products/v1/fanout/services/{service_id} | Enable product
[**get_product_fanout**](ProductFanoutApi.md#get_product_fanout) | **GET** /enabled-products/v1/fanout/services/{service_id} | Get product enablement status
[**get_services_product_fanout**](ProductFanoutApi.md#get_services_product_fanout) | **GET** /enabled-products/v1/fanout/services | Get services with product enabled


## `disable_product_fanout()`

```ruby
disable_product_fanout(opts) # Disable product
```

Disable the Fanout product on a service.

### Examples

```ruby
api_instance = Fastly::ProductFanoutApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Disable product
  api_instance.disable_product_fanout(opts)
rescue Fastly::ApiError => e
  puts "Error when calling ProductFanoutApi->disable_product_fanout: #{e}"
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
## `enable_product_fanout()`

```ruby
enable_product_fanout(opts): <FanoutResponseBodyEnable> # Enable product
```

Enable the Fanout product on a service.

### Examples

```ruby
api_instance = Fastly::ProductFanoutApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Enable product
  result = api_instance.enable_product_fanout(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductFanoutApi->enable_product_fanout: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**FanoutResponseBodyEnable**](FanoutResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_product_fanout()`

```ruby
get_product_fanout(opts): <FanoutResponseBodyEnable> # Get product enablement status
```

Get the enablement status of the Fanout product on a service.

### Examples

```ruby
api_instance = Fastly::ProductFanoutApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Get product enablement status
  result = api_instance.get_product_fanout(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductFanoutApi->get_product_fanout: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**FanoutResponseBodyEnable**](FanoutResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_services_product_fanout()`

```ruby
get_services_product_fanout: <FanoutResponseBodyGetAllServices> # Get services with product enabled
```

Get all the services which have the Fanout product enabled.

### Examples

```ruby
api_instance = Fastly::ProductFanoutApi.new

begin
  # Get services with product enabled
  result = api_instance.get_services_product_fanout
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductFanoutApi->get_services_product_fanout: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**FanoutResponseBodyGetAllServices**](FanoutResponseBodyGetAllServices.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
