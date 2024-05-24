# Fastly::IamUserGroupsApi


```ruby
require 'fastly'
api_instance = Fastly::IamUserGroupsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**add_user_group_members**](IamUserGroupsApi.md#add_user_group_members) | **POST** /user-groups/{user_group_id}/members | Add members to a user group
[**add_user_group_roles**](IamUserGroupsApi.md#add_user_group_roles) | **POST** /user-groups/{user_group_id}/roles | Add roles to a user group
[**add_user_group_service_groups**](IamUserGroupsApi.md#add_user_group_service_groups) | **POST** /user-groups/{user_group_id}/service-groups | Add service groups to a user group
[**create_a_user_group**](IamUserGroupsApi.md#create_a_user_group) | **POST** /user-groups | Create a user group
[**delete_a_user_group**](IamUserGroupsApi.md#delete_a_user_group) | **DELETE** /user-groups/{user_group_id} | Delete a user group
[**get_a_user_group**](IamUserGroupsApi.md#get_a_user_group) | **GET** /user-groups/{user_group_id} | Get a user group
[**list_user_group_members**](IamUserGroupsApi.md#list_user_group_members) | **GET** /user-groups/{user_group_id}/members | List members of a user group
[**list_user_group_roles**](IamUserGroupsApi.md#list_user_group_roles) | **GET** /user-groups/{user_group_id}/roles | List roles in a user group
[**list_user_group_service_groups**](IamUserGroupsApi.md#list_user_group_service_groups) | **GET** /user-groups/{user_group_id}/service-groups | List service groups in a user group
[**list_user_groups**](IamUserGroupsApi.md#list_user_groups) | **GET** /user-groups | List user groups
[**remove_user_group_members**](IamUserGroupsApi.md#remove_user_group_members) | **DELETE** /user-groups/{user_group_id}/members | Remove members of a user group
[**remove_user_group_roles**](IamUserGroupsApi.md#remove_user_group_roles) | **DELETE** /user-groups/{user_group_id}/roles | Remove roles from a user group
[**remove_user_group_service_groups**](IamUserGroupsApi.md#remove_user_group_service_groups) | **DELETE** /user-groups/{user_group_id}/service-groups | Remove service groups from a user group
[**update_a_user_group**](IamUserGroupsApi.md#update_a_user_group) | **PATCH** /user-groups/{user_group_id} | Update a user group


## `add_user_group_members()`

```ruby
add_user_group_members(opts): Object # Add members to a user group
```

Add members to a user group.

### Examples

```ruby
api_instance = Fastly::IamUserGroupsApi.new
opts = {
    user_group_id: 'user_group_id_example', # String | Alphanumeric string identifying the user group.
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Add members to a user group
  result = api_instance.add_user_group_members(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling IamUserGroupsApi->add_user_group_members: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_group_id** | **String** | Alphanumeric string identifying the user group. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `add_user_group_roles()`

```ruby
add_user_group_roles(opts): Object # Add roles to a user group
```

Add roles to a user group.

### Examples

```ruby
api_instance = Fastly::IamUserGroupsApi.new
opts = {
    user_group_id: 'user_group_id_example', # String | Alphanumeric string identifying the user group.
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Add roles to a user group
  result = api_instance.add_user_group_roles(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling IamUserGroupsApi->add_user_group_roles: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_group_id** | **String** | Alphanumeric string identifying the user group. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `add_user_group_service_groups()`

```ruby
add_user_group_service_groups(opts): Object # Add service groups to a user group
```

Add service groups to a user group.

### Examples

```ruby
api_instance = Fastly::IamUserGroupsApi.new
opts = {
    user_group_id: 'user_group_id_example', # String | Alphanumeric string identifying the user group.
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Add service groups to a user group
  result = api_instance.add_user_group_service_groups(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling IamUserGroupsApi->add_user_group_service_groups: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_group_id** | **String** | Alphanumeric string identifying the user group. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `create_a_user_group()`

```ruby
create_a_user_group(opts): Object # Create a user group
```

Create a user group.

### Examples

```ruby
api_instance = Fastly::IamUserGroupsApi.new
opts = {
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Create a user group
  result = api_instance.create_a_user_group(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling IamUserGroupsApi->create_a_user_group: #{e}"
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
## `remove_user_group_members()`

```ruby
remove_user_group_members(opts) # Remove members of a user group
```

Remove members of a user group

### Examples

```ruby
api_instance = Fastly::IamUserGroupsApi.new
opts = {
    user_group_id: 'user_group_id_example', # String | Alphanumeric string identifying the user group.
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Remove members of a user group
  api_instance.remove_user_group_members(opts)
rescue Fastly::ApiError => e
  puts "Error when calling IamUserGroupsApi->remove_user_group_members: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_group_id** | **String** | Alphanumeric string identifying the user group. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `remove_user_group_roles()`

```ruby
remove_user_group_roles(opts) # Remove roles from a user group
```

Remove roles from a user group.

### Examples

```ruby
api_instance = Fastly::IamUserGroupsApi.new
opts = {
    user_group_id: 'user_group_id_example', # String | Alphanumeric string identifying the user group.
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Remove roles from a user group
  api_instance.remove_user_group_roles(opts)
rescue Fastly::ApiError => e
  puts "Error when calling IamUserGroupsApi->remove_user_group_roles: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_group_id** | **String** | Alphanumeric string identifying the user group. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `remove_user_group_service_groups()`

```ruby
remove_user_group_service_groups(opts) # Remove service groups from a user group
```

Remove service groups from a user group.

### Examples

```ruby
api_instance = Fastly::IamUserGroupsApi.new
opts = {
    user_group_id: 'user_group_id_example', # String | Alphanumeric string identifying the user group.
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Remove service groups from a user group
  api_instance.remove_user_group_service_groups(opts)
rescue Fastly::ApiError => e
  puts "Error when calling IamUserGroupsApi->remove_user_group_service_groups: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_group_id** | **String** | Alphanumeric string identifying the user group. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_a_user_group()`

```ruby
update_a_user_group(opts): Object # Update a user group
```

Update a user group.

### Examples

```ruby
api_instance = Fastly::IamUserGroupsApi.new
opts = {
    user_group_id: 'user_group_id_example', # String | Alphanumeric string identifying the user group.
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Update a user group
  result = api_instance.update_a_user_group(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling IamUserGroupsApi->update_a_user_group: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_group_id** | **String** | Alphanumeric string identifying the user group. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
