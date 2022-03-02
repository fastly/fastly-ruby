# Fastly::VersionApi


```ruby
require 'fastly'
api_instance = Fastly::VersionApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**activate_service_version**](VersionApi.md#activate_service_version) | **PUT** /service/{service_id}/version/{version_id}/activate | Activate a service version |
| [**clone_service_version**](VersionApi.md#clone_service_version) | **PUT** /service/{service_id}/version/{version_id}/clone | Clone a service version |
| [**create_service_version**](VersionApi.md#create_service_version) | **POST** /service/{service_id}/version | Create a service version |
| [**deactivate_service_version**](VersionApi.md#deactivate_service_version) | **PUT** /service/{service_id}/version/{version_id}/deactivate | Deactivate a service version |
| [**get_service_version**](VersionApi.md#get_service_version) | **GET** /service/{service_id}/version/{version_id} | Get a version of a service |
| [**list_service_versions**](VersionApi.md#list_service_versions) | **GET** /service/{service_id}/version | List versions of a service |
| [**lock_service_version**](VersionApi.md#lock_service_version) | **PUT** /service/{service_id}/version/{version_id}/lock | Lock a service version |
| [**update_service_version**](VersionApi.md#update_service_version) | **PUT** /service/{service_id}/version/{version_id} | Update a service version |
| [**validate_service_version**](VersionApi.md#validate_service_version) | **GET** /service/{service_id}/version/{version_id}/validate | Validate a service version |


## `activate_service_version()`

```ruby
activate_service_version(opts): <VersionResponse> # Activate a service version
```

Activate the current version.

### Examples

```ruby
api_instance = Fastly::VersionApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # Activate a service version
  result = api_instance.activate_service_version(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling VersionApi->activate_service_version: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**VersionResponse**](VersionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `clone_service_version()`

```ruby
clone_service_version(opts): <Version> # Clone a service version
```

Clone the current configuration into a new version.

### Examples

```ruby
api_instance = Fastly::VersionApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # Clone a service version
  result = api_instance.clone_service_version(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling VersionApi->clone_service_version: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Version**](Version.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `create_service_version()`

```ruby
create_service_version(opts): <VersionCreateResponse> # Create a service version
```

Create a version for a particular service.

### Examples

```ruby
api_instance = Fastly::VersionApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Create a service version
  result = api_instance.create_service_version(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling VersionApi->create_service_version: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**VersionCreateResponse**](VersionCreateResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `deactivate_service_version()`

```ruby
deactivate_service_version(opts): <VersionResponse> # Deactivate a service version
```

Deactivate the current version.

### Examples

```ruby
api_instance = Fastly::VersionApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # Deactivate a service version
  result = api_instance.deactivate_service_version(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling VersionApi->deactivate_service_version: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**VersionResponse**](VersionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_service_version()`

```ruby
get_service_version(opts): <VersionResponse> # Get a version of a service
```

Get the version for a particular service.

### Examples

```ruby
api_instance = Fastly::VersionApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # Get a version of a service
  result = api_instance.get_service_version(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling VersionApi->get_service_version: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**VersionResponse**](VersionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_service_versions()`

```ruby
list_service_versions(opts): <Array<VersionResponse>> # List versions of a service
```

List the versions for a particular service.

### Examples

```ruby
api_instance = Fastly::VersionApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # List versions of a service
  result = api_instance.list_service_versions(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling VersionApi->list_service_versions: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**Array&lt;VersionResponse&gt;**](VersionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `lock_service_version()`

```ruby
lock_service_version(opts): <Version> # Lock a service version
```

Locks the specified version.

### Examples

```ruby
api_instance = Fastly::VersionApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # Lock a service version
  result = api_instance.lock_service_version(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling VersionApi->lock_service_version: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Version**](Version.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_service_version()`

```ruby
update_service_version(opts): <VersionResponse> # Update a service version
```

Update a particular version for a particular service.

### Examples

```ruby
api_instance = Fastly::VersionApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    active: true, # Boolean | Whether this is the active version or not.
    comment: 'comment_example', # String | A freeform descriptive note.
    deployed: true, # Boolean | Unused at this time.
    locked: true, # Boolean | Whether this version is locked or not. Objects can not be added or edited on locked versions.
    number: 56, # Integer | The number of this version.
    staging: true, # Boolean | Unused at this time.
    testing: true, # Boolean | Unused at this time.
}

begin
  # Update a service version
  result = api_instance.update_service_version(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling VersionApi->update_service_version: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **active** | **Boolean** | Whether this is the active version or not. | [optional][default to false] |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **deployed** | **Boolean** | Unused at this time. | [optional] |
| **locked** | **Boolean** | Whether this version is locked or not. Objects can not be added or edited on locked versions. | [optional][default to false] |
| **number** | **Integer** | The number of this version. | [optional] |
| **staging** | **Boolean** | Unused at this time. | [optional][default to false] |
| **testing** | **Boolean** | Unused at this time. | [optional][default to false] |

### Return type

[**VersionResponse**](VersionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `validate_service_version()`

```ruby
validate_service_version(opts): <InlineResponse200> # Validate a service version
```

Validate the version for a particular service and version.

### Examples

```ruby
api_instance = Fastly::VersionApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # Validate a service version
  result = api_instance.validate_service_version(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling VersionApi->validate_service_version: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
