# Fastly::DmDomainsApi


```ruby
require 'fastly'
api_instance = Fastly::DmDomainsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_dm_domain**](DmDomainsApi.md#create_dm_domain) | **POST** /domain-management/v1/domains | Create a domain
[**delete_dm_domain**](DmDomainsApi.md#delete_dm_domain) | **DELETE** /domain-management/v1/domains/{domain_id} | Delete a domain
[**get_dm_domain**](DmDomainsApi.md#get_dm_domain) | **GET** /domain-management/v1/domains/{domain_id} | Get a domain
[**list_dm_domains**](DmDomainsApi.md#list_dm_domains) | **GET** /domain-management/v1/domains | List domains
[**update_dm_domain**](DmDomainsApi.md#update_dm_domain) | **PATCH** /domain-management/v1/domains/{domain_id} | Update a domain


## `create_dm_domain()`

```ruby
create_dm_domain(opts): <SuccessfulResponseAsObject> # Create a domain
```

Create a domain

### Examples

```ruby
api_instance = Fastly::DmDomainsApi.new
opts = {
    request_body_for_create: Fastly::RequestBodyForCreate.new({fqdn: 'fqdn_example'}), # RequestBodyForCreate | 
}

begin
  # Create a domain
  result = api_instance.create_dm_domain(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DmDomainsApi->create_dm_domain: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body_for_create** | [**RequestBodyForCreate**](RequestBodyForCreate.md) |  | [optional] |

### Return type

[**SuccessfulResponseAsObject**](SuccessfulResponseAsObject.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_dm_domain()`

```ruby
delete_dm_domain(opts) # Delete a domain
```

Delete a domain

### Examples

```ruby
api_instance = Fastly::DmDomainsApi.new
opts = {
    domain_id: 'domain_id_example', # String | 
}

begin
  # Delete a domain
  api_instance.delete_dm_domain(opts)
rescue Fastly::ApiError => e
  puts "Error when calling DmDomainsApi->delete_dm_domain: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_id** | **String** |  |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_dm_domain()`

```ruby
get_dm_domain(opts): <SuccessfulResponseAsObject> # Get a domain
```

Show a domain

### Examples

```ruby
api_instance = Fastly::DmDomainsApi.new
opts = {
    domain_id: 'domain_id_example', # String | 
}

begin
  # Get a domain
  result = api_instance.get_dm_domain(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DmDomainsApi->get_dm_domain: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_id** | **String** |  |  |

### Return type

[**SuccessfulResponseAsObject**](SuccessfulResponseAsObject.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_dm_domains()`

```ruby
list_dm_domains(opts): <InlineResponse2004> # List domains
```

List all domains

### Examples

```ruby
api_instance = Fastly::DmDomainsApi.new
opts = {
    fqdn: 'fqdn_example', # String | 
    service_id: 'service_id_example', # String | Filter results based on a service_id.
    sort: 'fqdn', # String | The order in which to list the results.
    activated: true, # Boolean | 
    verified: true, # Boolean | 
    cursor: 'cursor_example', # String | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    limit: 56, # Integer | Limit how many results are returned.
}

begin
  # List domains
  result = api_instance.list_dm_domains(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DmDomainsApi->list_dm_domains: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fqdn** | **String** |  | [optional] |
| **service_id** | **String** | Filter results based on a service_id. | [optional] |
| **sort** | **String** | The order in which to list the results. | [optional][default to &#39;fqdn&#39;] |
| **activated** | **Boolean** |  | [optional] |
| **verified** | **Boolean** |  | [optional] |
| **cursor** | **String** | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] |
| **limit** | **Integer** | Limit how many results are returned. | [optional][default to 20] |

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_dm_domain()`

```ruby
update_dm_domain(opts): <SuccessfulResponseAsObject> # Update a domain
```

Update a domain

### Examples

```ruby
api_instance = Fastly::DmDomainsApi.new
opts = {
    domain_id: 'domain_id_example', # String | 
    request_body_for_update: Fastly::RequestBodyForUpdate.new, # RequestBodyForUpdate | 
}

begin
  # Update a domain
  result = api_instance.update_dm_domain(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DmDomainsApi->update_dm_domain: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_id** | **String** |  |  |
| **request_body_for_update** | [**RequestBodyForUpdate**](RequestBodyForUpdate.md) |  | [optional] |

### Return type

[**SuccessfulResponseAsObject**](SuccessfulResponseAsObject.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
