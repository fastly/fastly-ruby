# Fastly::IamRolesApi


```ruby
require 'fastly'
api_instance = Fastly::IamRolesApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_a_role**](IamRolesApi.md#delete_a_role) | **DELETE** /roles/{role_id} | Delete a role |
| [**get_a_role**](IamRolesApi.md#get_a_role) | **GET** /roles/{role_id} | Get a role |
| [**list_role_permissions**](IamRolesApi.md#list_role_permissions) | **GET** /roles/{role_id}/permissions | List permissions in a role |
| [**list_roles**](IamRolesApi.md#list_roles) | **GET** /roles | List roles |


## `delete_a_role()`

```ruby
delete_a_role(opts) # Delete a role
```

Delete a role.

### Examples

```ruby
api_instance = Fastly::IamRolesApi.new
opts = {
    role_id: 'role_id_example', # String | Alphanumeric string identifying the role.
}

begin
  # Delete a role
  api_instance.delete_a_role(opts)
rescue Fastly::ApiError => e
  puts "Error when calling IamRolesApi->delete_a_role: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_id** | **String** | Alphanumeric string identifying the role. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_a_role()`

```ruby
get_a_role(opts): Object # Get a role
```

Get a role.

### Examples

```ruby
api_instance = Fastly::IamRolesApi.new
opts = {
    role_id: 'role_id_example', # String | Alphanumeric string identifying the role.
}

begin
  # Get a role
  result = api_instance.get_a_role(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling IamRolesApi->get_a_role: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_id** | **String** | Alphanumeric string identifying the role. |  |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_role_permissions()`

```ruby
list_role_permissions(opts): Object # List permissions in a role
```

List all permissions in a role.

### Examples

```ruby
api_instance = Fastly::IamRolesApi.new
opts = {
    role_id: 'role_id_example', # String | Alphanumeric string identifying the role.
}

begin
  # List permissions in a role
  result = api_instance.list_role_permissions(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling IamRolesApi->list_role_permissions: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_id** | **String** | Alphanumeric string identifying the role. |  |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_roles()`

```ruby
list_roles(opts): Object # List roles
```

List all roles.

### Examples

```ruby
api_instance = Fastly::IamRolesApi.new
opts = {
    per_page: 20, # Integer | Number of records per page.
    page: 1, # Integer | Current page.
}

begin
  # List roles
  result = api_instance.list_roles(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling IamRolesApi->list_roles: #{e}"
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
