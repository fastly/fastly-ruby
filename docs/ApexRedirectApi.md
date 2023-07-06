# Fastly::ApexRedirectApi


```ruby
require 'fastly'
api_instance = Fastly::ApexRedirectApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_apex_redirect**](ApexRedirectApi.md#create_apex_redirect) | **POST** /service/{service_id}/version/{version_id}/apex-redirects | Create an apex redirect |
| [**delete_apex_redirect**](ApexRedirectApi.md#delete_apex_redirect) | **DELETE** /apex-redirects/{apex_redirect_id} | Delete an apex redirect |
| [**get_apex_redirect**](ApexRedirectApi.md#get_apex_redirect) | **GET** /apex-redirects/{apex_redirect_id} | Get an apex redirect |
| [**list_apex_redirects**](ApexRedirectApi.md#list_apex_redirects) | **GET** /service/{service_id}/version/{version_id}/apex-redirects | List apex redirects |
| [**update_apex_redirect**](ApexRedirectApi.md#update_apex_redirect) | **PUT** /apex-redirects/{apex_redirect_id} | Update an apex redirect |


## `create_apex_redirect()`

```ruby
create_apex_redirect(opts): <ApexRedirect> # Create an apex redirect
```

Create an apex redirect for a particular service and version.

### Examples

```ruby
api_instance = Fastly::ApexRedirectApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    service_id: 'service_id_example', # String | 
    version: 56, # Integer | 
    created_at: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Date and time in ISO 8601 format.
    deleted_at: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Date and time in ISO 8601 format.
    updated_at: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Date and time in ISO 8601 format.
    status_code: 301, # Integer | HTTP status code used to redirect the client.
    domains: ['inner_example'], # Array<String> | Array of apex domains that should redirect to their WWW subdomain.
    feature_revision: 56, # Integer | Revision number of the apex redirect feature implementation. Defaults to the most recent revision.
}

begin
  # Create an apex redirect
  result = api_instance.create_apex_redirect(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ApexRedirectApi->create_apex_redirect: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **service_id** | **String** |  | [optional] |
| **version** | **Integer** |  | [optional] |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional] |
| **status_code** | **Integer** | HTTP status code used to redirect the client. | [optional] |
| **domains** | [**Array&lt;String&gt;**](String.md) | Array of apex domains that should redirect to their WWW subdomain. | [optional] |
| **feature_revision** | **Integer** | Revision number of the apex redirect feature implementation. Defaults to the most recent revision. | [optional] |

### Return type

[**ApexRedirect**](ApexRedirect.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_apex_redirect()`

```ruby
delete_apex_redirect(opts): <InlineResponse200> # Delete an apex redirect
```

Delete an apex redirect by its ID.

### Examples

```ruby
api_instance = Fastly::ApexRedirectApi.new
opts = {
    apex_redirect_id: '6QI9o6ZZrSP3y9gI0OhMwZ', # String | 
}

begin
  # Delete an apex redirect
  result = api_instance.delete_apex_redirect(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ApexRedirectApi->delete_apex_redirect: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **apex_redirect_id** | **String** |  |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_apex_redirect()`

```ruby
get_apex_redirect(opts): <ApexRedirect> # Get an apex redirect
```

Get an apex redirect by its ID.

### Examples

```ruby
api_instance = Fastly::ApexRedirectApi.new
opts = {
    apex_redirect_id: '6QI9o6ZZrSP3y9gI0OhMwZ', # String | 
}

begin
  # Get an apex redirect
  result = api_instance.get_apex_redirect(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ApexRedirectApi->get_apex_redirect: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **apex_redirect_id** | **String** |  |  |

### Return type

[**ApexRedirect**](ApexRedirect.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_apex_redirects()`

```ruby
list_apex_redirects(opts): <Array<ApexRedirect>> # List apex redirects
```

List all apex redirects for a particular service and version.

### Examples

```ruby
api_instance = Fastly::ApexRedirectApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List apex redirects
  result = api_instance.list_apex_redirects(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ApexRedirectApi->list_apex_redirects: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;ApexRedirect&gt;**](ApexRedirect.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_apex_redirect()`

```ruby
update_apex_redirect(opts): <ApexRedirect> # Update an apex redirect
```

Update an apex redirect by its ID.

### Examples

```ruby
api_instance = Fastly::ApexRedirectApi.new
opts = {
    apex_redirect_id: '6QI9o6ZZrSP3y9gI0OhMwZ', # String | 
    service_id: 'service_id_example', # String | 
    version: 56, # Integer | 
    created_at: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Date and time in ISO 8601 format.
    deleted_at: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Date and time in ISO 8601 format.
    updated_at: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Date and time in ISO 8601 format.
    status_code: 301, # Integer | HTTP status code used to redirect the client.
    domains: ['inner_example'], # Array<String> | Array of apex domains that should redirect to their WWW subdomain.
    feature_revision: 56, # Integer | Revision number of the apex redirect feature implementation. Defaults to the most recent revision.
}

begin
  # Update an apex redirect
  result = api_instance.update_apex_redirect(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ApexRedirectApi->update_apex_redirect: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **apex_redirect_id** | **String** |  |  |
| **service_id** | **String** |  | [optional] |
| **version** | **Integer** |  | [optional] |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional] |
| **status_code** | **Integer** | HTTP status code used to redirect the client. | [optional] |
| **domains** | [**Array&lt;String&gt;**](String.md) | Array of apex domains that should redirect to their WWW subdomain. | [optional] |
| **feature_revision** | **Integer** | Revision number of the apex redirect feature implementation. Defaults to the most recent revision. | [optional] |

### Return type

[**ApexRedirect**](ApexRedirect.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
