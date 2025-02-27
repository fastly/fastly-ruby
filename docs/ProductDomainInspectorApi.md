# Fastly::ProductDomainInspectorApi


```ruby
require 'fastly'
api_instance = Fastly::ProductDomainInspectorApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_domain_inspector**](ProductDomainInspectorApi.md#disable_product_domain_inspector) | **DELETE** /enabled-products/v1/domain_inspector/services/{service_id} | Disable product
[**enable_product_domain_inspector**](ProductDomainInspectorApi.md#enable_product_domain_inspector) | **PUT** /enabled-products/v1/domain_inspector/services/{service_id} | Enable product
[**get_product_domain_inspector**](ProductDomainInspectorApi.md#get_product_domain_inspector) | **GET** /enabled-products/v1/domain_inspector/services/{service_id} | Get product enablement status


## `disable_product_domain_inspector()`

```ruby
disable_product_domain_inspector(opts) # Disable product
```

Disable the Domain Inspector product on a service.

### Examples

```ruby
api_instance = Fastly::ProductDomainInspectorApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Disable product
  api_instance.disable_product_domain_inspector(opts)
rescue Fastly::ApiError => e
  puts "Error when calling ProductDomainInspectorApi->disable_product_domain_inspector: #{e}"
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
## `enable_product_domain_inspector()`

```ruby
enable_product_domain_inspector(opts): <DomainInspectorResponseBodyEnable> # Enable product
```

Enable the Domain Inspector product on a service.

### Examples

```ruby
api_instance = Fastly::ProductDomainInspectorApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Enable product
  result = api_instance.enable_product_domain_inspector(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductDomainInspectorApi->enable_product_domain_inspector: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**DomainInspectorResponseBodyEnable**](DomainInspectorResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_product_domain_inspector()`

```ruby
get_product_domain_inspector(opts): <DomainInspectorResponseBodyEnable> # Get product enablement status
```

Get the enablement status of the Domain Inspector product on a service.

### Examples

```ruby
api_instance = Fastly::ProductDomainInspectorApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Get product enablement status
  result = api_instance.get_product_domain_inspector(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductDomainInspectorApi->get_product_domain_inspector: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**DomainInspectorResponseBodyEnable**](DomainInspectorResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
