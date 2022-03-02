# Fastly::ServiceApi


```ruby
require 'fastly'
api_instance = Fastly::ServiceApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_service**](ServiceApi.md#create_service) | **POST** /service | Create a service |
| [**delete_service**](ServiceApi.md#delete_service) | **DELETE** /service/{service_id} | Delete a service |
| [**get_service**](ServiceApi.md#get_service) | **GET** /service/{service_id} | Get a service |
| [**get_service_detail**](ServiceApi.md#get_service_detail) | **GET** /service/{service_id}/details | Get service details |
| [**list_service_domains**](ServiceApi.md#list_service_domains) | **GET** /service/{service_id}/domain | List the domains within a service |
| [**list_services**](ServiceApi.md#list_services) | **GET** /service | List services |
| [**search_service**](ServiceApi.md#search_service) | **GET** /service/search | Search for a service by name |
| [**update_service**](ServiceApi.md#update_service) | **PUT** /service/{service_id} | Update a service |


## `create_service()`

```ruby
create_service(opts): <ServiceResponse> # Create a service
```

Create a service.

### Examples

```ruby
api_instance = Fastly::ServiceApi.new
opts = {
    comment: 'comment_example', # String | A freeform descriptive note.
    name: 'name_example', # String | The name of the service.
    customer_id: TODO, # String | 
    type: 'vcl', # String | The type of this service.
}

begin
  # Create a service
  result = api_instance.create_service(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ServiceApi->create_service: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **name** | **String** | The name of the service. | [optional] |
| **customer_id** | [**String**](String.md) |  | [optional] |
| **type** | **String** | The type of this service. | [optional] |

### Return type

[**ServiceResponse**](ServiceResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_service()`

```ruby
delete_service(opts): <InlineResponse200> # Delete a service
```

Delete a service.

### Examples

```ruby
api_instance = Fastly::ServiceApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Delete a service
  result = api_instance.delete_service(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ServiceApi->delete_service: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_service()`

```ruby
get_service(opts): <ServiceResponse> # Get a service
```

Get a specific service by id.

### Examples

```ruby
api_instance = Fastly::ServiceApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Get a service
  result = api_instance.get_service(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ServiceApi->get_service: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**ServiceResponse**](ServiceResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_service_detail()`

```ruby
get_service_detail(opts): <ServiceDetail> # Get service details
```

List detailed information on a specified service.

### Examples

```ruby
api_instance = Fastly::ServiceApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version: 56, # Integer | Number identifying a version of the service.
}

begin
  # Get service details
  result = api_instance.get_service_detail(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ServiceApi->get_service_detail: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version** | **Integer** | Number identifying a version of the service. | [optional] |

### Return type

[**ServiceDetail**](ServiceDetail.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_service_domains()`

```ruby
list_service_domains(opts): <Array<DomainResponse>> # List the domains within a service
```

List the domains within a service.

### Examples

```ruby
api_instance = Fastly::ServiceApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # List the domains within a service
  result = api_instance.list_service_domains(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ServiceApi->list_service_domains: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**Array&lt;DomainResponse&gt;**](DomainResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_services()`

```ruby
list_services(opts): <Array<ServiceListResponse>> # List services
```

List services.

### Examples

```ruby
api_instance = Fastly::ServiceApi.new
opts = {
    page: 1, # Integer | Current page.
    per_page: 20, # Integer | Number of records per page.
    sort: 'created', # String | Field on which to sort.
    direction: 'ascend', # String | Direction in which to sort results.
}

begin
  # List services
  result = api_instance.list_services(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ServiceApi->list_services: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Current page. | [optional] |
| **per_page** | **Integer** | Number of records per page. | [optional][default to 20] |
| **sort** | **String** | Field on which to sort. | [optional][default to &#39;created&#39;] |
| **direction** | **String** | Direction in which to sort results. | [optional][default to &#39;ascend&#39;] |

### Return type

[**Array&lt;ServiceListResponse&gt;**](ServiceListResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `search_service()`

```ruby
search_service(opts): <ServiceResponse> # Search for a service by name
```

Get a specific service by name.

### Examples

```ruby
api_instance = Fastly::ServiceApi.new
opts = {
    name: 'name_example', # String | The name of the service.
}

begin
  # Search for a service by name
  result = api_instance.search_service(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ServiceApi->search_service: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the service. |  |

### Return type

[**ServiceResponse**](ServiceResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_service()`

```ruby
update_service(opts): <ServiceResponse> # Update a service
```

Update a service.

### Examples

```ruby
api_instance = Fastly::ServiceApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    comment: 'comment_example', # String | A freeform descriptive note.
    name: 'name_example', # String | The name of the service.
    customer_id: TODO, # String | 
}

begin
  # Update a service
  result = api_instance.update_service(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ServiceApi->update_service: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **name** | **String** | The name of the service. | [optional] |
| **customer_id** | [**String**](String.md) |  | [optional] |

### Return type

[**ServiceResponse**](ServiceResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
