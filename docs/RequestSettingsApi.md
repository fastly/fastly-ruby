# Fastly::RequestSettingsApi


```ruby
require 'fastly'
api_instance = Fastly::RequestSettingsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_request_settings**](RequestSettingsApi.md#create_request_settings) | **POST** /service/{service_id}/version/{version_id}/request_settings | Create a Request Settings object
[**delete_request_settings**](RequestSettingsApi.md#delete_request_settings) | **DELETE** /service/{service_id}/version/{version_id}/request_settings/{request_settings_name} | Delete a Request Settings object
[**get_request_settings**](RequestSettingsApi.md#get_request_settings) | **GET** /service/{service_id}/version/{version_id}/request_settings/{request_settings_name} | Get a Request Settings object
[**list_request_settings**](RequestSettingsApi.md#list_request_settings) | **GET** /service/{service_id}/version/{version_id}/request_settings | List Request Settings objects
[**update_request_settings**](RequestSettingsApi.md#update_request_settings) | **PUT** /service/{service_id}/version/{version_id}/request_settings/{request_settings_name} | Update a Request Settings object


## `create_request_settings()`

```ruby
create_request_settings(opts): <RequestSettingsResponse> # Create a Request Settings object
```

Creates a new Request Settings object.

### Examples

```ruby
api_instance = Fastly::RequestSettingsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # Create a Request Settings object
  result = api_instance.create_request_settings(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling RequestSettingsApi->create_request_settings: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**RequestSettingsResponse**](RequestSettingsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_request_settings()`

```ruby
delete_request_settings(opts): <InlineResponse200> # Delete a Request Settings object
```

Removes the specified Request Settings object.

### Examples

```ruby
api_instance = Fastly::RequestSettingsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    request_settings_name: 'request_settings_name_example', # String | Name for the request settings.
}

begin
  # Delete a Request Settings object
  result = api_instance.delete_request_settings(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling RequestSettingsApi->delete_request_settings: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **request_settings_name** | **String** | Name for the request settings. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_request_settings()`

```ruby
get_request_settings(opts): <RequestSettingsResponse> # Get a Request Settings object
```

Gets the specified Request Settings object.

### Examples

```ruby
api_instance = Fastly::RequestSettingsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    request_settings_name: 'request_settings_name_example', # String | Name for the request settings.
}

begin
  # Get a Request Settings object
  result = api_instance.get_request_settings(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling RequestSettingsApi->get_request_settings: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **request_settings_name** | **String** | Name for the request settings. |  |

### Return type

[**RequestSettingsResponse**](RequestSettingsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_request_settings()`

```ruby
list_request_settings(opts): <Array<RequestSettingsResponse>> # List Request Settings objects
```

Returns a list of all Request Settings objects for the given service and version.

### Examples

```ruby
api_instance = Fastly::RequestSettingsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List Request Settings objects
  result = api_instance.list_request_settings(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling RequestSettingsApi->list_request_settings: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;RequestSettingsResponse&gt;**](RequestSettingsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_request_settings()`

```ruby
update_request_settings(opts): <RequestSettingsResponse> # Update a Request Settings object
```

Updates the specified Request Settings object.

### Examples

```ruby
api_instance = Fastly::RequestSettingsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    request_settings_name: 'request_settings_name_example', # String | Name for the request settings.
    action: 'lookup', # String | Allows you to terminate request handling and immediately perform an action.
    default_host: 'default_host_example', # String | Sets the host header.
    hash_keys: 'hash_keys_example', # String | Comma separated list of varnish request object fields that should be in the hash key.
    name: 'name_example', # String | Name for the request settings.
    request_condition: 'request_condition_example', # String | Condition which, if met, will select this configuration during a request. Optional.
    xff: 'clear', # String | Short for X-Forwarded-For.
    bypass_busy_wait: 56, # Integer | Disable collapsed forwarding, so you don't wait for other objects to origin.
    force_miss: 56, # Integer | Allows you to force a cache miss for the request. Replaces the item in the cache if the content is cacheable.
    force_ssl: 56, # Integer | Forces the request use SSL (redirects a non-SSL to SSL).
    geo_headers: 56, # Integer | Injects Fastly-Geo-Country, Fastly-Geo-City, and Fastly-Geo-Region into the request headers.
    max_stale_age: 56, # Integer | How old an object is allowed to be to serve stale-if-error or stale-while-revalidate.
    timer_support: 56, # Integer | Injects the X-Timer info into the request for viewing origin fetch durations.
}

begin
  # Update a Request Settings object
  result = api_instance.update_request_settings(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling RequestSettingsApi->update_request_settings: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **request_settings_name** | **String** | Name for the request settings. |  |
| **action** | **String** | Allows you to terminate request handling and immediately perform an action. | [optional] |
| **default_host** | **String** | Sets the host header. | [optional] |
| **hash_keys** | **String** | Comma separated list of varnish request object fields that should be in the hash key. | [optional] |
| **name** | **String** | Name for the request settings. | [optional] |
| **request_condition** | **String** | Condition which, if met, will select this configuration during a request. Optional. | [optional] |
| **xff** | **String** | Short for X-Forwarded-For. | [optional] |
| **bypass_busy_wait** | **Integer** | Disable collapsed forwarding, so you don&#39;t wait for other objects to origin. | [optional] |
| **force_miss** | **Integer** | Allows you to force a cache miss for the request. Replaces the item in the cache if the content is cacheable. | [optional] |
| **force_ssl** | **Integer** | Forces the request use SSL (redirects a non-SSL to SSL). | [optional] |
| **geo_headers** | **Integer** | Injects Fastly-Geo-Country, Fastly-Geo-City, and Fastly-Geo-Region into the request headers. | [optional] |
| **max_stale_age** | **Integer** | How old an object is allowed to be to serve stale-if-error or stale-while-revalidate. | [optional] |
| **timer_support** | **Integer** | Injects the X-Timer info into the request for viewing origin fetch durations. | [optional] |

### Return type

[**RequestSettingsResponse**](RequestSettingsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
