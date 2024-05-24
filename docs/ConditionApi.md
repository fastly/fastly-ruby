# Fastly::ConditionApi


```ruby
require 'fastly'
api_instance = Fastly::ConditionApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_condition**](ConditionApi.md#create_condition) | **POST** /service/{service_id}/version/{version_id}/condition | Create a condition
[**delete_condition**](ConditionApi.md#delete_condition) | **DELETE** /service/{service_id}/version/{version_id}/condition/{condition_name} | Delete a condition
[**get_condition**](ConditionApi.md#get_condition) | **GET** /service/{service_id}/version/{version_id}/condition/{condition_name} | Describe a condition
[**list_conditions**](ConditionApi.md#list_conditions) | **GET** /service/{service_id}/version/{version_id}/condition | List conditions
[**update_condition**](ConditionApi.md#update_condition) | **PUT** /service/{service_id}/version/{version_id}/condition/{condition_name} | Update a condition


## `create_condition()`

```ruby
create_condition(opts): <ConditionResponse> # Create a condition
```

Creates a new condition.

### Examples

```ruby
api_instance = Fastly::ConditionApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    comment: 'comment_example', # String | A freeform descriptive note.
    name: 'name_example', # String | Name of the condition. Required.
    priority: 'priority_example', # String | A numeric string. Priority determines execution order. Lower numbers execute first.
    statement: 'statement_example', # String | A conditional expression in VCL used to determine if the condition is met.
    service_id: 'service_id_example', # String | 
    version: 'version_example', # String | A numeric string that represents the service version.
    type: 'REQUEST', # String | Type of the condition. Required.
}

begin
  # Create a condition
  result = api_instance.create_condition(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ConditionApi->create_condition: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **name** | **String** | Name of the condition. Required. | [optional] |
| **priority** | **String** | A numeric string. Priority determines execution order. Lower numbers execute first. | [optional][default to &#39;100&#39;] |
| **statement** | **String** | A conditional expression in VCL used to determine if the condition is met. | [optional] |
| **service_id** | **String** |  | [optional] |
| **version** | **String** | A numeric string that represents the service version. | [optional] |
| **type** | **String** | Type of the condition. Required. | [optional] |

### Return type

[**ConditionResponse**](ConditionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_condition()`

```ruby
delete_condition(opts): <InlineResponse200> # Delete a condition
```

Deletes the specified condition.

### Examples

```ruby
api_instance = Fastly::ConditionApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    condition_name: 'condition_name_example', # String | Name of the condition. Required.
}

begin
  # Delete a condition
  result = api_instance.delete_condition(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ConditionApi->delete_condition: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **condition_name** | **String** | Name of the condition. Required. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_condition()`

```ruby
get_condition(opts): <ConditionResponse> # Describe a condition
```

Gets the specified condition.

### Examples

```ruby
api_instance = Fastly::ConditionApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    condition_name: 'condition_name_example', # String | Name of the condition. Required.
}

begin
  # Describe a condition
  result = api_instance.get_condition(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ConditionApi->get_condition: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **condition_name** | **String** | Name of the condition. Required. |  |

### Return type

[**ConditionResponse**](ConditionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_conditions()`

```ruby
list_conditions(opts): <Array<ConditionResponse>> # List conditions
```

Gets all conditions for a particular service and version.

### Examples

```ruby
api_instance = Fastly::ConditionApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List conditions
  result = api_instance.list_conditions(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ConditionApi->list_conditions: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;ConditionResponse&gt;**](ConditionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_condition()`

```ruby
update_condition(opts): <ConditionResponse> # Update a condition
```

Updates the specified condition.

### Examples

```ruby
api_instance = Fastly::ConditionApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    condition_name: 'condition_name_example', # String | Name of the condition. Required.
    comment: 'comment_example', # String | A freeform descriptive note.
    name: 'name_example', # String | Name of the condition. Required.
    priority: 'priority_example', # String | A numeric string. Priority determines execution order. Lower numbers execute first.
    statement: 'statement_example', # String | A conditional expression in VCL used to determine if the condition is met.
    service_id: 'service_id_example', # String | 
    version: 'version_example', # String | A numeric string that represents the service version.
    type: 'REQUEST', # String | Type of the condition. Required.
}

begin
  # Update a condition
  result = api_instance.update_condition(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ConditionApi->update_condition: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **condition_name** | **String** | Name of the condition. Required. |  |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **name** | **String** | Name of the condition. Required. | [optional] |
| **priority** | **String** | A numeric string. Priority determines execution order. Lower numbers execute first. | [optional][default to &#39;100&#39;] |
| **statement** | **String** | A conditional expression in VCL used to determine if the condition is met. | [optional] |
| **service_id** | **String** |  | [optional] |
| **version** | **String** | A numeric string that represents the service version. | [optional] |
| **type** | **String** | Type of the condition. Required. | [optional] |

### Return type

[**ConditionResponse**](ConditionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
