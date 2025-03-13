# Fastly::ObjectStorageAccessKeysApi


```ruby
require 'fastly'
api_instance = Fastly::ObjectStorageAccessKeysApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_access_key**](ObjectStorageAccessKeysApi.md#create_access_key) | **POST** /resources/object-storage/access-keys | Create an access key
[**delete_access_key**](ObjectStorageAccessKeysApi.md#delete_access_key) | **DELETE** /resources/object-storage/access-keys/{access_key} | Delete an access key
[**get_access_key**](ObjectStorageAccessKeysApi.md#get_access_key) | **GET** /resources/object-storage/access-keys/{access_key} | Get an access key
[**list_access_keys**](ObjectStorageAccessKeysApi.md#list_access_keys) | **GET** /resources/object-storage/access-keys | List access keys


## `create_access_key()`

```ruby
create_access_key(opts): <AccessKeyResponse> # Create an access key
```

Create an access key.

### Examples

```ruby
api_instance = Fastly::ObjectStorageAccessKeysApi.new
opts = {
    access_key: Fastly::AccessKey.new({description: 'description_example', permission: 'permission_example'}), # AccessKey | 
}

begin
  # Create an access key
  result = api_instance.create_access_key(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ObjectStorageAccessKeysApi->create_access_key: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_key** | [**AccessKey**](AccessKey.md) |  | [optional] |

### Return type

[**AccessKeyResponse**](AccessKeyResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_access_key()`

```ruby
delete_access_key(opts) # Delete an access key
```

Delete an access key.

### Examples

```ruby
api_instance = Fastly::ObjectStorageAccessKeysApi.new
opts = {
    access_key: 'access_key_example', # String | 
}

begin
  # Delete an access key
  api_instance.delete_access_key(opts)
rescue Fastly::ApiError => e
  puts "Error when calling ObjectStorageAccessKeysApi->delete_access_key: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_key** | **String** |  |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_access_key()`

```ruby
get_access_key(opts): <AccessKey> # Get an access key
```

Get an access key by its identifier.

### Examples

```ruby
api_instance = Fastly::ObjectStorageAccessKeysApi.new
opts = {
    access_key: 'access_key_example', # String | 
}

begin
  # Get an access key
  result = api_instance.get_access_key(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ObjectStorageAccessKeysApi->get_access_key: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_key** | **String** |  |  |

### Return type

[**AccessKey**](AccessKey.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_access_keys()`

```ruby
list_access_keys: <AccessKeyResponse> # List access keys
```

List access keys.

### Examples

```ruby
api_instance = Fastly::ObjectStorageAccessKeysApi.new

begin
  # List access keys
  result = api_instance.list_access_keys
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ObjectStorageAccessKeysApi->list_access_keys: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**AccessKeyResponse**](AccessKeyResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
