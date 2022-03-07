# Fastly::IamServiceGroupsApi


```ruby
require 'fastly'
api_instance = Fastly::IamServiceGroupsApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_a_service_group**](IamServiceGroupsApi.md#delete_a_service_group) | **DELETE** /service-groups/{service_group_id} | Delete a service group |
| [**get_a_service_group**](IamServiceGroupsApi.md#get_a_service_group) | **GET** /service-groups/{service_group_id} | Get a service group |
| [**list_service_group_services**](IamServiceGroupsApi.md#list_service_group_services) | **GET** /service-groups/{service_group_id}/services | List services to a service group |
| [**list_service_groups**](IamServiceGroupsApi.md#list_service_groups) | **GET** /service-groups | List service groups |


## `delete_a_service_group()`

```ruby
delete_a_service_group(opts) # Delete a service group
```

Delete a service group.

### Examples

```ruby
api_instance = Fastly::IamServiceGroupsApi.new
opts = {
    service_group_id: 'service_group_id_example', # String | Alphanumeric string identifying the service group.
}

begin
  # Delete a service group
  api_instance.delete_a_service_group(opts)
rescue Fastly::ApiError => e
  puts "Error when calling IamServiceGroupsApi->delete_a_service_group: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_group_id** | **String** | Alphanumeric string identifying the service group. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_a_service_group()`

```ruby
get_a_service_group(opts): Object # Get a service group
```

Get a service group.

### Examples

```ruby
api_instance = Fastly::IamServiceGroupsApi.new
opts = {
    service_group_id: 'service_group_id_example', # String | Alphanumeric string identifying the service group.
}

begin
  # Get a service group
  result = api_instance.get_a_service_group(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling IamServiceGroupsApi->get_a_service_group: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_group_id** | **String** | Alphanumeric string identifying the service group. |  |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_service_group_services()`

```ruby
list_service_group_services(opts): Object # List services to a service group
```

List services to a service group.

### Examples

```ruby
api_instance = Fastly::IamServiceGroupsApi.new
opts = {
    service_group_id: 'service_group_id_example', # String | Alphanumeric string identifying the service group.
    per_page: 20, # Integer | Number of records per page.
    page: 1, # Integer | Current page.
}

begin
  # List services to a service group
  result = api_instance.list_service_group_services(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling IamServiceGroupsApi->list_service_group_services: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_group_id** | **String** | Alphanumeric string identifying the service group. |  |
| **per_page** | **Integer** | Number of records per page. | [optional][default to 20] |
| **page** | **Integer** | Current page. | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_service_groups()`

```ruby
list_service_groups(opts): Object # List service groups
```

List all service groups.

### Examples

```ruby
api_instance = Fastly::IamServiceGroupsApi.new
opts = {
    per_page: 20, # Integer | Number of records per page.
    page: 1, # Integer | Current page.
}

begin
  # List service groups
  result = api_instance.list_service_groups(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling IamServiceGroupsApi->list_service_groups: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **per_page** | **Integer** | Number of records per page. | [optional][default to 20] |
| **page** | **Integer** | Current page. | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
