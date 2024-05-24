# Fastly::ServiceAuthorizationsApi


```ruby
require 'fastly'
api_instance = Fastly::ServiceAuthorizationsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_service_authorization**](ServiceAuthorizationsApi.md#create_service_authorization) | **POST** /service-authorizations | Create service authorization
[**delete_service_authorization**](ServiceAuthorizationsApi.md#delete_service_authorization) | **DELETE** /service-authorizations/{service_authorization_id} | Delete service authorization
[**delete_service_authorization2**](ServiceAuthorizationsApi.md#delete_service_authorization2) | **DELETE** /service-authorizations | Delete service authorizations
[**list_service_authorization**](ServiceAuthorizationsApi.md#list_service_authorization) | **GET** /service-authorizations | List service authorizations
[**show_service_authorization**](ServiceAuthorizationsApi.md#show_service_authorization) | **GET** /service-authorizations/{service_authorization_id} | Show service authorization
[**update_service_authorization**](ServiceAuthorizationsApi.md#update_service_authorization) | **PATCH** /service-authorizations/{service_authorization_id} | Update service authorization
[**update_service_authorization2**](ServiceAuthorizationsApi.md#update_service_authorization2) | **PATCH** /service-authorizations | Update service authorizations


## `create_service_authorization()`

```ruby
create_service_authorization(opts): <ServiceAuthorizationResponse> # Create service authorization
```

Create service authorization.

### Examples

```ruby
api_instance = Fastly::ServiceAuthorizationsApi.new
opts = {
    service_authorization: Fastly::ServiceAuthorization.new, # ServiceAuthorization | 
}

begin
  # Create service authorization
  result = api_instance.create_service_authorization(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ServiceAuthorizationsApi->create_service_authorization: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_authorization** | [**ServiceAuthorization**](ServiceAuthorization.md) |  | [optional] |

### Return type

[**ServiceAuthorizationResponse**](ServiceAuthorizationResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_service_authorization()`

```ruby
delete_service_authorization(opts) # Delete service authorization
```

Delete service authorization.

### Examples

```ruby
api_instance = Fastly::ServiceAuthorizationsApi.new
opts = {
    service_authorization_id: 'service_authorization_id_example', # String | Alphanumeric string identifying a service authorization.
}

begin
  # Delete service authorization
  api_instance.delete_service_authorization(opts)
rescue Fastly::ApiError => e
  puts "Error when calling ServiceAuthorizationsApi->delete_service_authorization: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_authorization_id** | **String** | Alphanumeric string identifying a service authorization. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_service_authorization2()`

```ruby
delete_service_authorization2(opts): <InlineResponse2007> # Delete service authorizations
```

Delete service authorizations.

### Examples

```ruby
api_instance = Fastly::ServiceAuthorizationsApi.new
opts = {
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Delete service authorizations
  result = api_instance.delete_service_authorization2(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ServiceAuthorizationsApi->delete_service_authorization2: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_service_authorization()`

```ruby
list_service_authorization(opts): <ServiceAuthorizationsResponse> # List service authorizations
```

List service authorizations.

### Examples

```ruby
api_instance = Fastly::ServiceAuthorizationsApi.new
opts = {
    page_number: 1, # Integer | Current page.
    page_size: 20, # Integer | Number of records per page.
}

begin
  # List service authorizations
  result = api_instance.list_service_authorization(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ServiceAuthorizationsApi->list_service_authorization: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_number** | **Integer** | Current page. | [optional] |
| **page_size** | **Integer** | Number of records per page. | [optional][default to 20] |

### Return type

[**ServiceAuthorizationsResponse**](ServiceAuthorizationsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `show_service_authorization()`

```ruby
show_service_authorization(opts): <ServiceAuthorizationResponse> # Show service authorization
```

Show service authorization.

### Examples

```ruby
api_instance = Fastly::ServiceAuthorizationsApi.new
opts = {
    service_authorization_id: 'service_authorization_id_example', # String | Alphanumeric string identifying a service authorization.
}

begin
  # Show service authorization
  result = api_instance.show_service_authorization(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ServiceAuthorizationsApi->show_service_authorization: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_authorization_id** | **String** | Alphanumeric string identifying a service authorization. |  |

### Return type

[**ServiceAuthorizationResponse**](ServiceAuthorizationResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_service_authorization()`

```ruby
update_service_authorization(opts): <ServiceAuthorizationResponse> # Update service authorization
```

Update service authorization.

### Examples

```ruby
api_instance = Fastly::ServiceAuthorizationsApi.new
opts = {
    service_authorization_id: 'service_authorization_id_example', # String | Alphanumeric string identifying a service authorization.
    service_authorization: Fastly::ServiceAuthorization.new, # ServiceAuthorization | 
}

begin
  # Update service authorization
  result = api_instance.update_service_authorization(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ServiceAuthorizationsApi->update_service_authorization: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_authorization_id** | **String** | Alphanumeric string identifying a service authorization. |  |
| **service_authorization** | [**ServiceAuthorization**](ServiceAuthorization.md) |  | [optional] |

### Return type

[**ServiceAuthorizationResponse**](ServiceAuthorizationResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_service_authorization2()`

```ruby
update_service_authorization2(opts): <ServiceAuthorizationsResponse> # Update service authorizations
```

Update service authorizations.

### Examples

```ruby
api_instance = Fastly::ServiceAuthorizationsApi.new
opts = {
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Update service authorizations
  result = api_instance.update_service_authorization2(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ServiceAuthorizationsApi->update_service_authorization2: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

[**ServiceAuthorizationsResponse**](ServiceAuthorizationsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
