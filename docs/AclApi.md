# Fastly::AclApi


```ruby
require 'fastly'
api_instance = Fastly::AclApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_acl**](AclApi.md#create_acl) | **POST** /service/{service_id}/version/{version_id}/acl | Create a new ACL |
| [**delete_acl**](AclApi.md#delete_acl) | **DELETE** /service/{service_id}/version/{version_id}/acl/{acl_name} | Delete an ACL |
| [**get_acl**](AclApi.md#get_acl) | **GET** /service/{service_id}/version/{version_id}/acl/{acl_name} | Describe an ACL |
| [**list_acls**](AclApi.md#list_acls) | **GET** /service/{service_id}/version/{version_id}/acl | List ACLs |
| [**update_acl**](AclApi.md#update_acl) | **PUT** /service/{service_id}/version/{version_id}/acl/{acl_name} | Update an ACL |


## `create_acl()`

```ruby
create_acl(opts): <AclResponse> # Create a new ACL
```

Create a new ACL attached to the specified service version. A new, empty ACL must be attached to a draft version of a service. The version associated with the ACL must be activated to be used.

### Examples

```ruby
api_instance = Fastly::AclApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace.
}

begin
  # Create a new ACL
  result = api_instance.create_acl(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AclApi->create_acl: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **name** | **String** | Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace. | [optional] |

### Return type

[**AclResponse**](AclResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_acl()`

```ruby
delete_acl(opts): <InlineResponse200> # Delete an ACL
```

Delete an ACL from the specified service version. To remove an ACL from use, the ACL must be deleted from a draft version and the version without the ACL must be activated.

### Examples

```ruby
api_instance = Fastly::AclApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    acl_name: 'acl_name_example', # String | Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace.
}

begin
  # Delete an ACL
  result = api_instance.delete_acl(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AclApi->delete_acl: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **acl_name** | **String** | Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_acl()`

```ruby
get_acl(opts): <AclResponse> # Describe an ACL
```

Retrieve a single ACL by name for the version and service.

### Examples

```ruby
api_instance = Fastly::AclApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    acl_name: 'acl_name_example', # String | Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace.
}

begin
  # Describe an ACL
  result = api_instance.get_acl(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AclApi->get_acl: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **acl_name** | **String** | Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace. |  |

### Return type

[**AclResponse**](AclResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_acls()`

```ruby
list_acls(opts): <Array<AclResponse>> # List ACLs
```

List ACLs.

### Examples

```ruby
api_instance = Fastly::AclApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List ACLs
  result = api_instance.list_acls(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AclApi->list_acls: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;AclResponse&gt;**](AclResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_acl()`

```ruby
update_acl(opts): <AclResponse> # Update an ACL
```

Update an ACL for a particular service and version.

### Examples

```ruby
api_instance = Fastly::AclApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    acl_name: 'acl_name_example', # String | Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace.
    name: 'name_example', # String | Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace.
}

begin
  # Update an ACL
  result = api_instance.update_acl(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AclApi->update_acl: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **acl_name** | **String** | Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace. |  |
| **name** | **String** | Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace. | [optional] |

### Return type

[**AclResponse**](AclResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
