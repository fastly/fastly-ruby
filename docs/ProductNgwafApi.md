# Fastly::ProductNgwafApi


```ruby
require 'fastly'
api_instance = Fastly::ProductNgwafApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_ngwaf**](ProductNgwafApi.md#disable_product_ngwaf) | **DELETE** /enabled-products/v1/ngwaf/services/{service_id} | Disable product
[**enable_product_ngwaf**](ProductNgwafApi.md#enable_product_ngwaf) | **PUT** /enabled-products/v1/ngwaf/services/{service_id} | Enable product
[**get_product_ngwaf**](ProductNgwafApi.md#get_product_ngwaf) | **GET** /enabled-products/v1/ngwaf/services/{service_id} | Get product enablement status
[**get_product_ngwaf_configuration**](ProductNgwafApi.md#get_product_ngwaf_configuration) | **GET** /enabled-products/v1/ngwaf/services/{service_id}/configuration | Get configuration
[**get_services_product_ngwaf**](ProductNgwafApi.md#get_services_product_ngwaf) | **GET** /enabled-products/v1/ngwaf/services | Get services with product enabled
[**set_product_ngwaf_configuration**](ProductNgwafApi.md#set_product_ngwaf_configuration) | **PATCH** /enabled-products/v1/ngwaf/services/{service_id}/configuration | Update configuration


## `disable_product_ngwaf()`

```ruby
disable_product_ngwaf(opts) # Disable product
```

Disable the Next-Gen WAF product on a service.

### Examples

```ruby
api_instance = Fastly::ProductNgwafApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Disable product
  api_instance.disable_product_ngwaf(opts)
rescue Fastly::ApiError => e
  puts "Error when calling ProductNgwafApi->disable_product_ngwaf: #{e}"
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
## `enable_product_ngwaf()`

```ruby
enable_product_ngwaf(opts): <NgwafResponseEnable> # Enable product
```

Enable the Next-Gen WAF product on a service.

### Examples

```ruby
api_instance = Fastly::ProductNgwafApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    ngwaf_request_enable: Fastly::NgwafRequestEnable.new({workspace_id: 'workspace_id_example'}), # NgwafRequestEnable | 
}

begin
  # Enable product
  result = api_instance.enable_product_ngwaf(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductNgwafApi->enable_product_ngwaf: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **ngwaf_request_enable** | [**NgwafRequestEnable**](NgwafRequestEnable.md) |  | [optional] |

### Return type

[**NgwafResponseEnable**](NgwafResponseEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_product_ngwaf()`

```ruby
get_product_ngwaf(opts): <NgwafResponseEnable> # Get product enablement status
```

Get the enablement status of the Next-Gen WAF product on a service.

### Examples

```ruby
api_instance = Fastly::ProductNgwafApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Get product enablement status
  result = api_instance.get_product_ngwaf(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductNgwafApi->get_product_ngwaf: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**NgwafResponseEnable**](NgwafResponseEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_product_ngwaf_configuration()`

```ruby
get_product_ngwaf_configuration(opts): <NgwafResponseConfigure> # Get configuration
```

Get configuration of the Next-Gen WAF product on a service.

### Examples

```ruby
api_instance = Fastly::ProductNgwafApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Get configuration
  result = api_instance.get_product_ngwaf_configuration(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductNgwafApi->get_product_ngwaf_configuration: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**NgwafResponseConfigure**](NgwafResponseConfigure.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_services_product_ngwaf()`

```ruby
get_services_product_ngwaf: <NgwafResponseBodyGetAllServices> # Get services with product enabled
```

Get all the services which have the Next-Gen WAF product enabled.

### Examples

```ruby
api_instance = Fastly::ProductNgwafApi.new

begin
  # Get services with product enabled
  result = api_instance.get_services_product_ngwaf
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductNgwafApi->get_services_product_ngwaf: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**NgwafResponseBodyGetAllServices**](NgwafResponseBodyGetAllServices.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `set_product_ngwaf_configuration()`

```ruby
set_product_ngwaf_configuration(opts): <NgwafResponseConfigure> # Update configuration
```

Update configuration of the Next-Gen WAF product on a service.

### Examples

```ruby
api_instance = Fastly::ProductNgwafApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    ngwaf_request_update_configuration: Fastly::NgwafRequestUpdateConfiguration.new, # NgwafRequestUpdateConfiguration | 
}

begin
  # Update configuration
  result = api_instance.set_product_ngwaf_configuration(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductNgwafApi->set_product_ngwaf_configuration: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **ngwaf_request_update_configuration** | [**NgwafRequestUpdateConfiguration**](NgwafRequestUpdateConfiguration.md) |  | [optional] |

### Return type

[**NgwafResponseConfigure**](NgwafResponseConfigure.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
