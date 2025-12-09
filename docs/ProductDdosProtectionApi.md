# Fastly::ProductDdosProtectionApi


```ruby
require 'fastly'
api_instance = Fastly::ProductDdosProtectionApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_ddos_protection**](ProductDdosProtectionApi.md#disable_product_ddos_protection) | **DELETE** /enabled-products/v1/ddos_protection/services/{service_id} | Disable product
[**enable_product_ddos_protection**](ProductDdosProtectionApi.md#enable_product_ddos_protection) | **PUT** /enabled-products/v1/ddos_protection/services/{service_id} | Enable product
[**get_product_ddos_protection**](ProductDdosProtectionApi.md#get_product_ddos_protection) | **GET** /enabled-products/v1/ddos_protection/services/{service_id} | Get product enablement status
[**get_product_ddos_protection_configuration**](ProductDdosProtectionApi.md#get_product_ddos_protection_configuration) | **GET** /enabled-products/v1/ddos_protection/services/{service_id}/configuration | Get configuration
[**get_services_product_ddos_protection**](ProductDdosProtectionApi.md#get_services_product_ddos_protection) | **GET** /enabled-products/v1/ddos_protection/services | Get services with product enabled
[**set_product_ddos_protection_configuration**](ProductDdosProtectionApi.md#set_product_ddos_protection_configuration) | **PATCH** /enabled-products/v1/ddos_protection/services/{service_id}/configuration | Update configuration


## `disable_product_ddos_protection()`

```ruby
disable_product_ddos_protection(opts) # Disable product
```

Disable the DDoS Protection product on a service.

### Examples

```ruby
api_instance = Fastly::ProductDdosProtectionApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Disable product
  api_instance.disable_product_ddos_protection(opts)
rescue Fastly::ApiError => e
  puts "Error when calling ProductDdosProtectionApi->disable_product_ddos_protection: #{e}"
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
## `enable_product_ddos_protection()`

```ruby
enable_product_ddos_protection(opts): <DdosProtectionResponseEnable> # Enable product
```

Enable the DDoS Protection product on a service in default 'log' mode unless otherwise specified in the request body.

### Examples

```ruby
api_instance = Fastly::ProductDdosProtectionApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    ddos_protection_request_enable_mode: Fastly::DdosProtectionRequestEnableMode.new, # DdosProtectionRequestEnableMode | 
}

begin
  # Enable product
  result = api_instance.enable_product_ddos_protection(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductDdosProtectionApi->enable_product_ddos_protection: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **ddos_protection_request_enable_mode** | [**DdosProtectionRequestEnableMode**](DdosProtectionRequestEnableMode.md) |  | [optional] |

### Return type

[**DdosProtectionResponseEnable**](DdosProtectionResponseEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_product_ddos_protection()`

```ruby
get_product_ddos_protection(opts): <DdosProtectionResponseEnable> # Get product enablement status
```

Get the enablement status of the DDoS Protection product on a service.

### Examples

```ruby
api_instance = Fastly::ProductDdosProtectionApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Get product enablement status
  result = api_instance.get_product_ddos_protection(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductDdosProtectionApi->get_product_ddos_protection: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**DdosProtectionResponseEnable**](DdosProtectionResponseEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_product_ddos_protection_configuration()`

```ruby
get_product_ddos_protection_configuration(opts): <DdosProtectionResponseConfigure> # Get configuration
```

Get configuration of the DDoS Protection product on a service.

### Examples

```ruby
api_instance = Fastly::ProductDdosProtectionApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Get configuration
  result = api_instance.get_product_ddos_protection_configuration(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductDdosProtectionApi->get_product_ddos_protection_configuration: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**DdosProtectionResponseConfigure**](DdosProtectionResponseConfigure.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_services_product_ddos_protection()`

```ruby
get_services_product_ddos_protection: <DdosProtectionResponseBodyGetAllServices> # Get services with product enabled
```

Get all the services which have the DDoS Protection product enabled.

### Examples

```ruby
api_instance = Fastly::ProductDdosProtectionApi.new

begin
  # Get services with product enabled
  result = api_instance.get_services_product_ddos_protection
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductDdosProtectionApi->get_services_product_ddos_protection: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**DdosProtectionResponseBodyGetAllServices**](DdosProtectionResponseBodyGetAllServices.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `set_product_ddos_protection_configuration()`

```ruby
set_product_ddos_protection_configuration(opts): <DdosProtectionResponseConfigure> # Update configuration
```

Update configuration of the DDoS Protection product on a service.

### Examples

```ruby
api_instance = Fastly::ProductDdosProtectionApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    ddos_protection_request_update_configuration: Fastly::DdosProtectionRequestUpdateConfiguration.new({mode: 'false'}), # DdosProtectionRequestUpdateConfiguration | 
}

begin
  # Update configuration
  result = api_instance.set_product_ddos_protection_configuration(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductDdosProtectionApi->set_product_ddos_protection_configuration: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **ddos_protection_request_update_configuration** | [**DdosProtectionRequestUpdateConfiguration**](DdosProtectionRequestUpdateConfiguration.md) |  | [optional] |

### Return type

[**DdosProtectionResponseConfigure**](DdosProtectionResponseConfigure.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
