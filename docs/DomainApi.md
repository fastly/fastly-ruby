# Fastly::DomainApi


```ruby
require 'fastly'
api_instance = Fastly::DomainApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**check_domain**](DomainApi.md#check_domain) | **GET** /service/{service_id}/version/{version_id}/domain/{domain_name}/check | Validate DNS configuration for a single domain on a service |
| [**check_domains**](DomainApi.md#check_domains) | **GET** /service/{service_id}/version/{version_id}/domain/check_all | Validate DNS configuration for all domains on a service |
| [**create_domain**](DomainApi.md#create_domain) | **POST** /service/{service_id}/version/{version_id}/domain | Add a domain name to a service |
| [**delete_domain**](DomainApi.md#delete_domain) | **DELETE** /service/{service_id}/version/{version_id}/domain/{domain_name} | Remove a domain from a service |
| [**get_domain**](DomainApi.md#get_domain) | **GET** /service/{service_id}/version/{version_id}/domain/{domain_name} | Describe a domain |
| [**list_domains**](DomainApi.md#list_domains) | **GET** /service/{service_id}/version/{version_id}/domain | List domains |
| [**update_domain**](DomainApi.md#update_domain) | **PUT** /service/{service_id}/version/{version_id}/domain/{domain_name} | Update a domain |


## `check_domain()`

```ruby
check_domain(opts): Array&lt;Object&gt; # Validate DNS configuration for a single domain on a service
```

Checks the status of a specific domain's DNS record for a Service Version. Returns an array in the same format as domain/check_all.

### Examples

```ruby
api_instance = Fastly::DomainApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    domain_name: 'domain_name_example', # String | The name of the domain or domains associated with this service.
}

begin
  # Validate DNS configuration for a single domain on a service
  result = api_instance.check_domain(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DomainApi->check_domain: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **domain_name** | **String** | The name of the domain or domains associated with this service. |  |

### Return type

**Array&lt;Object&gt;**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `check_domains()`

```ruby
check_domains(opts): Array&lt;Array&gt; # Validate DNS configuration for all domains on a service
```

Checks the status of all domains' DNS records for a Service Version. Returns an array of 3 items for each domain; the first is the details for the domain, the second is the current CNAME of the domain, and the third is a boolean indicating whether or not it has been properly setup to use Fastly.

### Examples

```ruby
api_instance = Fastly::DomainApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # Validate DNS configuration for all domains on a service
  result = api_instance.check_domains(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DomainApi->check_domains: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

**Array&lt;Array&gt;**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `create_domain()`

```ruby
create_domain(opts): <DomainResponse> # Add a domain name to a service
```

Create a domain for a particular service and version.

### Examples

```ruby
api_instance = Fastly::DomainApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    comment: 'comment_example', # String | A freeform descriptive note.
    name: 'name_example', # String | The name of the domain or domains associated with this service.
}

begin
  # Add a domain name to a service
  result = api_instance.create_domain(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DomainApi->create_domain: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **name** | **String** | The name of the domain or domains associated with this service. | [optional] |

### Return type

[**DomainResponse**](DomainResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_domain()`

```ruby
delete_domain(opts): <InlineResponse200> # Remove a domain from a service
```

Delete the domain for a particular service and versions.

### Examples

```ruby
api_instance = Fastly::DomainApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    domain_name: 'domain_name_example', # String | The name of the domain or domains associated with this service.
}

begin
  # Remove a domain from a service
  result = api_instance.delete_domain(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DomainApi->delete_domain: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **domain_name** | **String** | The name of the domain or domains associated with this service. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_domain()`

```ruby
get_domain(opts): <DomainResponse> # Describe a domain
```

Get the domain for a particular service and version.

### Examples

```ruby
api_instance = Fastly::DomainApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    domain_name: 'domain_name_example', # String | The name of the domain or domains associated with this service.
}

begin
  # Describe a domain
  result = api_instance.get_domain(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DomainApi->get_domain: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **domain_name** | **String** | The name of the domain or domains associated with this service. |  |

### Return type

[**DomainResponse**](DomainResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_domains()`

```ruby
list_domains(opts): <Array<DomainResponse>> # List domains
```

List all the domains for a particular service and version.

### Examples

```ruby
api_instance = Fastly::DomainApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List domains
  result = api_instance.list_domains(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DomainApi->list_domains: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;DomainResponse&gt;**](DomainResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_domain()`

```ruby
update_domain(opts): <DomainResponse> # Update a domain
```

Update the domain for a particular service and version.

### Examples

```ruby
api_instance = Fastly::DomainApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    domain_name: 'domain_name_example', # String | The name of the domain or domains associated with this service.
    comment: 'comment_example', # String | A freeform descriptive note.
    name: 'name_example', # String | The name of the domain or domains associated with this service.
}

begin
  # Update a domain
  result = api_instance.update_domain(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DomainApi->update_domain: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **domain_name** | **String** | The name of the domain or domains associated with this service. |  |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **name** | **String** | The name of the domain or domains associated with this service. | [optional] |

### Return type

[**DomainResponse**](DomainResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
