# Fastly::HeaderApi


```ruby
require 'fastly'
api_instance = Fastly::HeaderApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_header_object**](HeaderApi.md#create_header_object) | **POST** /service/{service_id}/version/{version_id}/header | Create a Header object
[**delete_header_object**](HeaderApi.md#delete_header_object) | **DELETE** /service/{service_id}/version/{version_id}/header/{header_name} | Delete a Header object
[**get_header_object**](HeaderApi.md#get_header_object) | **GET** /service/{service_id}/version/{version_id}/header/{header_name} | Get a Header object
[**list_header_objects**](HeaderApi.md#list_header_objects) | **GET** /service/{service_id}/version/{version_id}/header | List Header objects
[**update_header_object**](HeaderApi.md#update_header_object) | **PUT** /service/{service_id}/version/{version_id}/header/{header_name} | Update a Header object


## `create_header_object()`

```ruby
create_header_object(opts): <HeaderResponse> # Create a Header object
```

Creates a new Header object.

### Examples

```ruby
api_instance = Fastly::HeaderApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    action: 'set', # String | Accepts a string value.
    cache_condition: 'cache_condition_example', # String | Name of the cache condition controlling when this configuration applies.
    dst: 'dst_example', # String | Header to set.
    name: 'name_example', # String | A handle to refer to this Header object.
    regex: 'regex_example', # String | Regular expression to use. Only applies to `regex` and `regex_repeat` actions.
    request_condition: 'request_condition_example', # String | Condition which, if met, will select this configuration during a request. Optional.
    response_condition: 'response_condition_example', # String | Optional name of a response condition to apply.
    src: 'src_example', # String | Variable to be used as a source for the header content. Does not apply to `delete` action.
    substitution: 'substitution_example', # String | Value to substitute in place of regular expression. Only applies to `regex` and `regex_repeat` actions.
    type: 'request', # String | Accepts a string value.
    ignore_if_set: 56, # Integer | Don't add the header if it is added already. Only applies to 'set' action.
    priority: 56, # Integer | Priority determines execution order. Lower numbers execute first.
}

begin
  # Create a Header object
  result = api_instance.create_header_object(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling HeaderApi->create_header_object: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **action** | **String** | Accepts a string value. | [optional] |
| **cache_condition** | **String** | Name of the cache condition controlling when this configuration applies. | [optional] |
| **dst** | **String** | Header to set. | [optional] |
| **name** | **String** | A handle to refer to this Header object. | [optional] |
| **regex** | **String** | Regular expression to use. Only applies to `regex` and `regex_repeat` actions. | [optional] |
| **request_condition** | **String** | Condition which, if met, will select this configuration during a request. Optional. | [optional] |
| **response_condition** | **String** | Optional name of a response condition to apply. | [optional] |
| **src** | **String** | Variable to be used as a source for the header content. Does not apply to `delete` action. | [optional] |
| **substitution** | **String** | Value to substitute in place of regular expression. Only applies to `regex` and `regex_repeat` actions. | [optional] |
| **type** | **String** | Accepts a string value. | [optional] |
| **ignore_if_set** | **Integer** | Don&#39;t add the header if it is added already. Only applies to &#39;set&#39; action. | [optional] |
| **priority** | **Integer** | Priority determines execution order. Lower numbers execute first. | [optional][default to 100] |

### Return type

[**HeaderResponse**](HeaderResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_header_object()`

```ruby
delete_header_object(opts): <InlineResponse200> # Delete a Header object
```

Deletes a Header object by name.

### Examples

```ruby
api_instance = Fastly::HeaderApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    header_name: 'header_name_example', # String | A handle to refer to this Header object.
}

begin
  # Delete a Header object
  result = api_instance.delete_header_object(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling HeaderApi->delete_header_object: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **header_name** | **String** | A handle to refer to this Header object. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_header_object()`

```ruby
get_header_object(opts): <HeaderResponse> # Get a Header object
```

Retrieves a Header object by name.

### Examples

```ruby
api_instance = Fastly::HeaderApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    header_name: 'header_name_example', # String | A handle to refer to this Header object.
}

begin
  # Get a Header object
  result = api_instance.get_header_object(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling HeaderApi->get_header_object: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **header_name** | **String** | A handle to refer to this Header object. |  |

### Return type

[**HeaderResponse**](HeaderResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_header_objects()`

```ruby
list_header_objects(opts): <Array<HeaderResponse>> # List Header objects
```

Retrieves all Header objects for a particular Version of a Service.

### Examples

```ruby
api_instance = Fastly::HeaderApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List Header objects
  result = api_instance.list_header_objects(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling HeaderApi->list_header_objects: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;HeaderResponse&gt;**](HeaderResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_header_object()`

```ruby
update_header_object(opts): <HeaderResponse> # Update a Header object
```

Modifies an existing Header object by name.

### Examples

```ruby
api_instance = Fastly::HeaderApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    header_name: 'header_name_example', # String | A handle to refer to this Header object.
    action: 'set', # String | Accepts a string value.
    cache_condition: 'cache_condition_example', # String | Name of the cache condition controlling when this configuration applies.
    dst: 'dst_example', # String | Header to set.
    name: 'name_example', # String | A handle to refer to this Header object.
    regex: 'regex_example', # String | Regular expression to use. Only applies to `regex` and `regex_repeat` actions.
    request_condition: 'request_condition_example', # String | Condition which, if met, will select this configuration during a request. Optional.
    response_condition: 'response_condition_example', # String | Optional name of a response condition to apply.
    src: 'src_example', # String | Variable to be used as a source for the header content. Does not apply to `delete` action.
    substitution: 'substitution_example', # String | Value to substitute in place of regular expression. Only applies to `regex` and `regex_repeat` actions.
    type: 'request', # String | Accepts a string value.
    ignore_if_set: 56, # Integer | Don't add the header if it is added already. Only applies to 'set' action.
    priority: 56, # Integer | Priority determines execution order. Lower numbers execute first.
}

begin
  # Update a Header object
  result = api_instance.update_header_object(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling HeaderApi->update_header_object: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **header_name** | **String** | A handle to refer to this Header object. |  |
| **action** | **String** | Accepts a string value. | [optional] |
| **cache_condition** | **String** | Name of the cache condition controlling when this configuration applies. | [optional] |
| **dst** | **String** | Header to set. | [optional] |
| **name** | **String** | A handle to refer to this Header object. | [optional] |
| **regex** | **String** | Regular expression to use. Only applies to `regex` and `regex_repeat` actions. | [optional] |
| **request_condition** | **String** | Condition which, if met, will select this configuration during a request. Optional. | [optional] |
| **response_condition** | **String** | Optional name of a response condition to apply. | [optional] |
| **src** | **String** | Variable to be used as a source for the header content. Does not apply to `delete` action. | [optional] |
| **substitution** | **String** | Value to substitute in place of regular expression. Only applies to `regex` and `regex_repeat` actions. | [optional] |
| **type** | **String** | Accepts a string value. | [optional] |
| **ignore_if_set** | **Integer** | Don&#39;t add the header if it is added already. Only applies to &#39;set&#39; action. | [optional] |
| **priority** | **Integer** | Priority determines execution order. Lower numbers execute first. | [optional][default to 100] |

### Return type

[**HeaderResponse**](HeaderResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
