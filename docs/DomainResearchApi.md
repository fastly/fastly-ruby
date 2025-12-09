# Fastly::DomainResearchApi


```ruby
require 'fastly'
api_instance = Fastly::DomainResearchApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**domain_status**](DomainResearchApi.md#domain_status) | **GET** /domain-management/v1/tools/status | Domain status
[**suggest_domains**](DomainResearchApi.md#suggest_domains) | **GET** /domain-management/v1/tools/suggest | Suggest domains


## `domain_status()`

```ruby
domain_status(opts): <Status> # Domain status
```

The `Status` method checks the availability status of a single domain name.

### Examples

```ruby
api_instance = Fastly::DomainResearchApi.new
opts = {
    domain: 'acmecoffee.shop', # String | 
    scope: 'estimate', # String | 
}

begin
  # Domain status
  result = api_instance.domain_status(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DomainResearchApi->domain_status: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** |  |  |
| **scope** | **String** |  | [optional] |

### Return type

[**Status**](Status.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `suggest_domains()`

```ruby
suggest_domains(opts): <InlineResponse2006> # Suggest domains
```

The `Suggest` method performs a real-time query of the search term(s) against the [known zone database](http://zonedb.org), making recommendations, stemming, and applying Unicode folding, IDN normalization, registrar supported-zone restrictions, and other refinements. **Note:** `Suggest` method responses do not include domain availability status. 

### Examples

```ruby
api_instance = Fastly::DomainResearchApi.new
opts = {
    query: 'foo%20bar', # String | 
    defaults: 'club', # String | 
    keywords: 'food,kitchen', # String | 
    location: 'de', # String | 
    vendor: 'dnsimple.com', # String | 
}

begin
  # Suggest domains
  result = api_instance.suggest_domains(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DomainResearchApi->suggest_domains: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** |  |  |
| **defaults** | **String** |  | [optional] |
| **keywords** | **String** |  | [optional] |
| **location** | **String** |  | [optional] |
| **vendor** | **String** |  | [optional] |

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
