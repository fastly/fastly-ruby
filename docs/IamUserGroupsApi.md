# Fastly::IamUserGroupsApi


```ruby
require 'fastly'
api_instance = Fastly::IamUserGroupsApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_a_user_group**](IamUserGroupsApi.md#delete_a_user_group) | **DELETE** /user-groups/{user_group_id} | Delete a user group |
| [**get_a_user_group**](IamUserGroupsApi.md#get_a_user_group) | **GET** /user-groups/{user_group_id} | Get a user group |
| [**list_user_group_members**](IamUserGroupsApi.md#list_user_group_members) | **GET** /user-groups/{user_group_id}/members | List members of a user group |
| [**list_user_group_roles**](IamUserGroupsApi.md#list_user_group_roles) | **GET** /user-groups/{user_group_id}/roles | List roles in a user group |
| [**list_user_group_service_groups**](IamUserGroupsApi.md#list_user_group_service_groups) | **GET** /user-groups/{user_group_id}/service-groups | List service groups in a user group |
| [**list_user_groups**](IamUserGroupsApi.md#list_user_groups) | **GET** /user-groups | List user groups |


## `delete_a_user_group()`

```ruby
delete_a_user_group(opts) # Delete a user group
```

Delete a user group.

### Examples

```ruby
api_instance = Fastly::IamUserGroupsApi.new
opts = {
    user_group_id: 'user_group_id_example', # String | Alphanumeric string identifying the user group.
}

begin
  # Delete a user group
  api_instance.delete_a_user_group(opts)
rescue Fastly::ApiError => e
  puts "Error when calling IamUserGroupsApi->delete_a_user_group: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_group_id** | **String** | Alphanumeric string identifying the user group. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_a_user_group()`

```ruby
get_a_user_group(opts): Object # Get a user group
```

Get a user group.

### Examples

```ruby
api_instance = Fastly::IamUserGroupsApi.new
opts = {
    user_group_id: 'user_group_id_example', # String | Alphanumeric string identifying the user group.
}

begin
  # Get a user group
  result = api_instance.get_a_user_group(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling IamUserGroupsApi->get_a_user_group: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_group_id** | **String** | Alphanumeric string identifying the user group. |  |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_user_group_members()`

```ruby
list_user_group_members(opts): Object # List members of a user group
```

List members of a user group.

### Examples

```ruby
api_instance = Fastly::IamUserGroupsApi.new
opts = {
    user_group_id: 'user_group_id_example', # String | Alphanumeric string identifying the user group.
    per_page: 20, # Integer | Number of records per page.
    page: 1, # Integer | Current page.
}

begin
  # List members of a user group
  result = api_instance.list_user_group_members(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling IamUserGroupsApi->list_user_group_members: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_group_id** | **String** | Alphanumeric string identifying the user group. |  |
| **per_page** | **Integer** | Number of records per page. | [optional][default to 20] |
| **page** | **Integer** | Current page. | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_user_group_roles()`

```ruby
list_user_group_roles(opts): Object # List roles in a user group
```

List roles in a user group.

### Examples

```ruby
api_instance = Fastly::IamUserGroupsApi.new
opts = {
    user_group_id: 'user_group_id_example', # String | Alphanumeric string identifying the user group.
    per_page: 20, # Integer | Number of records per page.
    page: 1, # Integer | Current page.
}

begin
  # List roles in a user group
  result = api_instance.list_user_group_roles(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling IamUserGroupsApi->list_user_group_roles: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_group_id** | **String** | Alphanumeric string identifying the user group. |  |
| **per_page** | **Integer** | Number of records per page. | [optional][default to 20] |
| **page** | **Integer** | Current page. | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_user_group_service_groups()`

```ruby
list_user_group_service_groups(opts): Object # List service groups in a user group
```

List service groups in a user group.

### Examples

```ruby
api_instance = Fastly::IamUserGroupsApi.new
opts = {
    user_group_id: 'user_group_id_example', # String | Alphanumeric string identifying the user group.
    per_page: 20, # Integer | Number of records per page.
    page: 1, # Integer | Current page.
}

begin
  # List service groups in a user group
  result = api_instance.list_user_group_service_groups(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling IamUserGroupsApi->list_user_group_service_groups: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_group_id** | **String** | Alphanumeric string identifying the user group. |  |
| **per_page** | **Integer** | Number of records per page. | [optional][default to 20] |
| **page** | **Integer** | Current page. | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_user_groups()`

```ruby
list_user_groups(opts): Object # List user groups
```

List all user groups.

### Examples

```ruby
api_instance = Fastly::IamUserGroupsApi.new
opts = {
    per_page: 20, # Integer | Number of records per page.
    page: 1, # Integer | Current page.
}

begin
  # List user groups
  result = api_instance.list_user_groups(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling IamUserGroupsApi->list_user_groups: #{e}"
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
