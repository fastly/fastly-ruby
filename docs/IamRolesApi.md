# Fastly::IamRolesApi


```ruby
require 'fastly'
api_instance = Fastly::IamRolesApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**iam_v1_roles_get**](IamRolesApi.md#iam_v1_roles_get) | **GET** /iam/v1/roles/{role_id} | Get IAM role by ID
[**iam_v1_roles_list**](IamRolesApi.md#iam_v1_roles_list) | **GET** /iam/v1/roles | List IAM roles


## `iam_v1_roles_get()`

```ruby
iam_v1_roles_get(opts): <IamV1RoleResponse> # Get IAM role by ID
```

Retrieve a single IAM role by its unique identifier. 

### Examples

```ruby
api_instance = Fastly::IamRolesApi.new
opts = {
    role_id: 'Q4rXe9vN1szK8a2fUjYtWp', # String | Alphanumeric string identifying the role.
    include: 'permissions', # String | Include related data (i.e., permissions).
}

begin
  # Get IAM role by ID
  result = api_instance.iam_v1_roles_get(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling IamRolesApi->iam_v1_roles_get: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_id** | **String** | Alphanumeric string identifying the role. |  |
| **include** | **String** | Include related data (i.e., permissions). | [optional] |

### Return type

[**IamV1RoleResponse**](IamV1RoleResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `iam_v1_roles_list()`

```ruby
iam_v1_roles_list(opts): <IamV1RoleListResponse> # List IAM roles
```

Retrieve a paginated list of IAM roles available in the account. 

### Examples

```ruby
api_instance = Fastly::IamRolesApi.new
opts = {
    limit: 56, # Integer | Number of results per page. The maximum is 1000.
    cursor: 'cursor_example', # String | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
}

begin
  # List IAM roles
  result = api_instance.iam_v1_roles_list(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling IamRolesApi->iam_v1_roles_list: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of results per page. The maximum is 1000. | [optional][default to 100] |
| **cursor** | **String** | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] |

### Return type

[**IamV1RoleListResponse**](IamV1RoleListResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
