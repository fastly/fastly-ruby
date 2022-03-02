# Fastly::IamServiceGroupsApi


```ruby
require 'fastly'
api_instance = Fastly::IamServiceGroupsApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_service_group_services**](IamServiceGroupsApi.md#add_service_group_services) | **POST** /service-groups/{service_group_id}/services | Add services in a service group |
| [**create_a_service_group**](IamServiceGroupsApi.md#create_a_service_group) | **POST** /service-groups | Create a service group |
| [**delete_a_service_group**](IamServiceGroupsApi.md#delete_a_service_group) | **DELETE** /service-groups/{service_group_id} | Delete a service group |
| [**get_a_service_group**](IamServiceGroupsApi.md#get_a_service_group) | **GET** /service-groups/{service_group_id} | Get a service group |
| [**list_service_group_services**](IamServiceGroupsApi.md#list_service_group_services) | **GET** /service-groups/{service_group_id}/services | List services to a service group |
| [**list_service_groups**](IamServiceGroupsApi.md#list_service_groups) | **GET** /service-groups | List service groups |
| [**remove_service_group_services**](IamServiceGroupsApi.md#remove_service_group_services) | **DELETE** /service-groups/{service_group_id}/services | Remove services from a service group |
| [**update_a_service_group**](IamServiceGroupsApi.md#update_a_service_group) | **PATCH** /service-groups/{service_group_id} | Update a service group |


## `add_service_group_services()`

```ruby
add_service_group_services(opts): Object # Add services in a service group
```

Add services in a service group.

### Examples

```ruby
api_instance = Fastly::IamServiceGroupsApi.new
opts = {
    service_group_id: 'service_group_id_example', # String | Alphanumeric string identifying the service group.
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Add services in a service group
  result = api_instance.add_service_group_services(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling IamServiceGroupsApi->add_service_group_services: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_group_id** | **String** | Alphanumeric string identifying the service group. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `create_a_service_group()`

```ruby
create_a_service_group(opts): Object # Create a service group
```

Create a service group.

### Examples

```ruby
api_instance = Fastly::IamServiceGroupsApi.new
opts = {
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Create a service group
  result = api_instance.create_a_service_group(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling IamServiceGroupsApi->create_a_service_group: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
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
## `remove_service_group_services()`

```ruby
remove_service_group_services(opts) # Remove services from a service group
```

Remove services from a service group.

### Examples

```ruby
api_instance = Fastly::IamServiceGroupsApi.new
opts = {
    service_group_id: 'service_group_id_example', # String | Alphanumeric string identifying the service group.
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Remove services from a service group
  api_instance.remove_service_group_services(opts)
rescue Fastly::ApiError => e
  puts "Error when calling IamServiceGroupsApi->remove_service_group_services: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_group_id** | **String** | Alphanumeric string identifying the service group. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_a_service_group()`

```ruby
update_a_service_group(opts): Object # Update a service group
```

Update a service group.

### Examples

```ruby
api_instance = Fastly::IamServiceGroupsApi.new
opts = {
    service_group_id: 'service_group_id_example', # String | Alphanumeric string identifying the service group.
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Update a service group
  result = api_instance.update_a_service_group(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling IamServiceGroupsApi->update_a_service_group: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_group_id** | **String** | Alphanumeric string identifying the service group. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
