# Fastly::UserApi


```ruby
require 'fastly'
api_instance = Fastly::UserApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_user**](UserApi.md#create_user) | **POST** /user | Create a user |
| [**delete_user**](UserApi.md#delete_user) | **DELETE** /user/{user_id} | Delete a user |
| [**get_current_user**](UserApi.md#get_current_user) | **GET** /current_user | Get the current user |
| [**get_user**](UserApi.md#get_user) | **GET** /user/{user_id} | Get a user |
| [**request_password_reset**](UserApi.md#request_password_reset) | **POST** /user/{user_login}/password/request_reset | Request a password reset |
| [**update_user**](UserApi.md#update_user) | **PUT** /user/{user_id} | Update a user |
| [**update_user_password**](UserApi.md#update_user_password) | **POST** /current_user/password | Update the user&#39;s password |


## `create_user()`

```ruby
create_user(opts): <UserResponse> # Create a user
```

Create a user.

### Examples

```ruby
api_instance = Fastly::UserApi.new
opts = {
    login: 'login_example', # String | 
    name: 'name_example', # String | The real life name of the user.
    limit_services: true, # Boolean | Indicates that the user has limited access to the customer's services.
    locked: true, # Boolean | Indicates whether the is account is locked for editing or not.
    require_new_password: true, # Boolean | Indicates if a new password is required at next login.
    role: Fastly::RoleUser::USER, # RoleUser | 
    two_factor_auth_enabled: true, # Boolean | Indicates if 2FA is enabled on the user.
    two_factor_setup_required: true, # Boolean | Indicates if 2FA is required by the user's customer account.
}

begin
  # Create a user
  result = api_instance.create_user(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling UserApi->create_user: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **login** | **String** |  | [optional] |
| **name** | **String** | The real life name of the user. | [optional] |
| **limit_services** | **Boolean** | Indicates that the user has limited access to the customer&#39;s services. | [optional] |
| **locked** | **Boolean** | Indicates whether the is account is locked for editing or not. | [optional] |
| **require_new_password** | **Boolean** | Indicates if a new password is required at next login. | [optional] |
| **role** | [**RoleUser**](RoleUser.md) |  | [optional] |
| **two_factor_auth_enabled** | **Boolean** | Indicates if 2FA is enabled on the user. | [optional] |
| **two_factor_setup_required** | **Boolean** | Indicates if 2FA is required by the user&#39;s customer account. | [optional] |

### Return type

[**UserResponse**](UserResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_user()`

```ruby
delete_user(opts): <InlineResponse200> # Delete a user
```

Delete a user.

### Examples

```ruby
api_instance = Fastly::UserApi.new
opts = {
    user_id: 'user_id_example', # String | Alphanumeric string identifying the user.
}

begin
  # Delete a user
  result = api_instance.delete_user(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling UserApi->delete_user: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | Alphanumeric string identifying the user. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_current_user()`

```ruby
get_current_user: <UserResponse> # Get the current user
```

Get the logged in user.

### Examples

```ruby
api_instance = Fastly::UserApi.new

begin
  # Get the current user
  result = api_instance.get_current_user
  p result
rescue Fastly::ApiError => e
  puts "Error when calling UserApi->get_current_user: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**UserResponse**](UserResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_user()`

```ruby
get_user(opts): <UserResponse> # Get a user
```

Get a specific user.

### Examples

```ruby
api_instance = Fastly::UserApi.new
opts = {
    user_id: 'user_id_example', # String | Alphanumeric string identifying the user.
}

begin
  # Get a user
  result = api_instance.get_user(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling UserApi->get_user: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | Alphanumeric string identifying the user. |  |

### Return type

[**UserResponse**](UserResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `request_password_reset()`

```ruby
request_password_reset(opts): <InlineResponse200> # Request a password reset
```

Requests a password reset for the specified user.

### Examples

```ruby
api_instance = Fastly::UserApi.new
opts = {
    user_login: 'user_login_example', # String | The login associated with the user (typically, an email address).
}

begin
  # Request a password reset
  result = api_instance.request_password_reset(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling UserApi->request_password_reset: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_login** | **String** | The login associated with the user (typically, an email address). |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_user()`

```ruby
update_user(opts): <UserResponse> # Update a user
```

Update a user. Only users with the role of `superuser` can make changes to other users on the account. Non-superusers may use this endpoint to make changes to their own account. Two-factor attributes are not editable via this endpoint.

### Examples

```ruby
api_instance = Fastly::UserApi.new
opts = {
    user_id: 'user_id_example', # String | Alphanumeric string identifying the user.
    login: 'login_example', # String | 
    name: 'name_example', # String | The real life name of the user.
    limit_services: true, # Boolean | Indicates that the user has limited access to the customer's services.
    locked: true, # Boolean | Indicates whether the is account is locked for editing or not.
    require_new_password: true, # Boolean | Indicates if a new password is required at next login.
    role: Fastly::RoleUser::USER, # RoleUser | 
    two_factor_auth_enabled: true, # Boolean | Indicates if 2FA is enabled on the user.
    two_factor_setup_required: true, # Boolean | Indicates if 2FA is required by the user's customer account.
}

begin
  # Update a user
  result = api_instance.update_user(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling UserApi->update_user: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | Alphanumeric string identifying the user. |  |
| **login** | **String** |  | [optional] |
| **name** | **String** | The real life name of the user. | [optional] |
| **limit_services** | **Boolean** | Indicates that the user has limited access to the customer&#39;s services. | [optional] |
| **locked** | **Boolean** | Indicates whether the is account is locked for editing or not. | [optional] |
| **require_new_password** | **Boolean** | Indicates if a new password is required at next login. | [optional] |
| **role** | [**RoleUser**](RoleUser.md) |  | [optional] |
| **two_factor_auth_enabled** | **Boolean** | Indicates if 2FA is enabled on the user. | [optional] |
| **two_factor_setup_required** | **Boolean** | Indicates if 2FA is required by the user&#39;s customer account. | [optional] |

### Return type

[**UserResponse**](UserResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_user_password()`

```ruby
update_user_password(opts): <UserResponse> # Update the user's password
```

Update the user's password to a new one.

### Examples

```ruby
api_instance = Fastly::UserApi.new
opts = {
    old_password: 'old_password_example', # String | The user's current password.
    new_password: 'new_password_example', # String | The user's new password.
}

begin
  # Update the user's password
  result = api_instance.update_user_password(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling UserApi->update_user_password: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **old_password** | **String** | The user&#39;s current password. | [optional] |
| **new_password** | **String** | The user&#39;s new password. | [optional] |

### Return type

[**UserResponse**](UserResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
