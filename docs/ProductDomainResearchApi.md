# Fastly::ProductDomainResearchApi


```ruby
require 'fastly'
api_instance = Fastly::ProductDomainResearchApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**disable_product_domain_research**](ProductDomainResearchApi.md#disable_product_domain_research) | **DELETE** /enabled-products/v1/domain_research | Disable product
[**enable_domain_research**](ProductDomainResearchApi.md#enable_domain_research) | **PUT** /enabled-products/v1/domain_research | Enable product
[**get_domain_research**](ProductDomainResearchApi.md#get_domain_research) | **GET** /enabled-products/v1/domain_research | Get product enablement status


## `disable_product_domain_research()`

```ruby
disable_product_domain_research # Disable product
```

Disable the Domain Research product.

### Examples

```ruby
api_instance = Fastly::ProductDomainResearchApi.new

begin
  # Disable product
  api_instance.disable_product_domain_research
rescue Fastly::ApiError => e
  puts "Error when calling ProductDomainResearchApi->disable_product_domain_research: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `enable_domain_research()`

```ruby
enable_domain_research: <DomainResearchResponseBodyEnable> # Enable product
```

Enable the Domain Research product.

### Examples

```ruby
api_instance = Fastly::ProductDomainResearchApi.new

begin
  # Enable product
  result = api_instance.enable_domain_research
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductDomainResearchApi->enable_domain_research: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**DomainResearchResponseBodyEnable**](DomainResearchResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_domain_research()`

```ruby
get_domain_research: <DomainResearchResponseBodyEnable> # Get product enablement status
```

Get the enablement status of the Domain Research product.

### Examples

```ruby
api_instance = Fastly::ProductDomainResearchApi.new

begin
  # Get product enablement status
  result = api_instance.get_domain_research
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ProductDomainResearchApi->get_domain_research: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**DomainResearchResponseBodyEnable**](DomainResearchResponseBodyEnable.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
