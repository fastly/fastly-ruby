# Fastly::AclsInComputeApi


```ruby
require 'fastly'
api_instance = Fastly::AclsInComputeApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**compute_acl_create_acls**](AclsInComputeApi.md#compute_acl_create_acls) | **POST** /resources/acls | Create a new ACL
[**compute_acl_delete_s_acl_id**](AclsInComputeApi.md#compute_acl_delete_s_acl_id) | **DELETE** /resources/acls/{acl_id} | Delete an ACL
[**compute_acl_list_acl_entries**](AclsInComputeApi.md#compute_acl_list_acl_entries) | **GET** /resources/acls/{acl_id}/entries | List an ACL
[**compute_acl_list_acls**](AclsInComputeApi.md#compute_acl_list_acls) | **GET** /resources/acls | List ACLs
[**compute_acl_list_acls_s_acl_id**](AclsInComputeApi.md#compute_acl_list_acls_s_acl_id) | **GET** /resources/acls/{acl_id} | Describe an ACL
[**compute_acl_lookup_acls**](AclsInComputeApi.md#compute_acl_lookup_acls) | **GET** /resources/acls/{acl_id}/entry/{acl_ip} | Lookup an ACL
[**compute_acl_update_acls**](AclsInComputeApi.md#compute_acl_update_acls) | **PATCH** /resources/acls/{acl_id}/entries | Update an ACL


## `compute_acl_create_acls()`

```ruby
compute_acl_create_acls(opts): <ComputeAclCreateAclsResponse> # Create a new ACL
```

Create a new ACL.

### Examples

```ruby
api_instance = Fastly::AclsInComputeApi.new
opts = {
    compute_acl_create_acls_request: Fastly::ComputeAclCreateAclsRequest.new, # ComputeAclCreateAclsRequest | 
}

begin
  # Create a new ACL
  result = api_instance.compute_acl_create_acls(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AclsInComputeApi->compute_acl_create_acls: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **compute_acl_create_acls_request** | [**ComputeAclCreateAclsRequest**](ComputeAclCreateAclsRequest.md) |  | [optional] |

### Return type

[**ComputeAclCreateAclsResponse**](ComputeAclCreateAclsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `compute_acl_delete_s_acl_id()`

```ruby
compute_acl_delete_s_acl_id(opts) # Delete an ACL
```

Delete an ACL.

### Examples

```ruby
api_instance = Fastly::AclsInComputeApi.new
opts = {
    acl_id: 'acl_id_example', # String | 
}

begin
  # Delete an ACL
  api_instance.compute_acl_delete_s_acl_id(opts)
rescue Fastly::ApiError => e
  puts "Error when calling AclsInComputeApi->compute_acl_delete_s_acl_id: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acl_id** | **String** |  |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `compute_acl_list_acl_entries()`

```ruby
compute_acl_list_acl_entries(opts): <ComputeAclListEntries> # List an ACL
```

List an ACL.

### Examples

```ruby
api_instance = Fastly::AclsInComputeApi.new
opts = {
    acl_id: 'acl_id_example', # String | 
    cursor: 'cursor_example', # String | 
    limit: 56, # Integer | 
}

begin
  # List an ACL
  result = api_instance.compute_acl_list_acl_entries(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AclsInComputeApi->compute_acl_list_acl_entries: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acl_id** | **String** |  |  |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**ComputeAclListEntries**](ComputeAclListEntries.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `compute_acl_list_acls()`

```ruby
compute_acl_list_acls: <Array<ComputeAclCreateAclsResponse>> # List ACLs
```

List all ACLs.

### Examples

```ruby
api_instance = Fastly::AclsInComputeApi.new

begin
  # List ACLs
  result = api_instance.compute_acl_list_acls
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AclsInComputeApi->compute_acl_list_acls: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**Array&lt;ComputeAclCreateAclsResponse&gt;**](ComputeAclCreateAclsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `compute_acl_list_acls_s_acl_id()`

```ruby
compute_acl_list_acls_s_acl_id(opts): <ComputeAclCreateAclsResponse> # Describe an ACL
```

Describe an ACL.

### Examples

```ruby
api_instance = Fastly::AclsInComputeApi.new
opts = {
    acl_id: 'acl_id_example', # String | 
}

begin
  # Describe an ACL
  result = api_instance.compute_acl_list_acls_s_acl_id(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AclsInComputeApi->compute_acl_list_acls_s_acl_id: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acl_id** | **String** |  |  |

### Return type

[**ComputeAclCreateAclsResponse**](ComputeAclCreateAclsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `compute_acl_lookup_acls()`

```ruby
compute_acl_lookup_acls(opts): <ComputeAclLookup> # Lookup an ACL
```

Find a matching ACL entry for an IP address.

### Examples

```ruby
api_instance = Fastly::AclsInComputeApi.new
opts = {
    acl_id: 'acl_id_example', # String | 
    acl_ip: 'acl_ip_example', # String | 
}

begin
  # Lookup an ACL
  result = api_instance.compute_acl_lookup_acls(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AclsInComputeApi->compute_acl_lookup_acls: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acl_id** | **String** |  |  |
| **acl_ip** | **String** |  |  |

### Return type

[**ComputeAclLookup**](ComputeAclLookup.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `compute_acl_update_acls()`

```ruby
compute_acl_update_acls(opts) # Update an ACL
```

Update an ACL.

### Examples

```ruby
api_instance = Fastly::AclsInComputeApi.new
opts = {
    acl_id: 'acl_id_example', # String | 
    compute_acl_update: Fastly::ComputeAclUpdate.new, # ComputeAclUpdate | 
}

begin
  # Update an ACL
  api_instance.compute_acl_update_acls(opts)
rescue Fastly::ApiError => e
  puts "Error when calling AclsInComputeApi->compute_acl_update_acls: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acl_id** | **String** |  |  |
| **compute_acl_update** | [**ComputeAclUpdate**](ComputeAclUpdate.md) |  | [optional] |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
