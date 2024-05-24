# Fastly::CacheSettingsApi


```ruby
require 'fastly'
api_instance = Fastly::CacheSettingsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_cache_settings**](CacheSettingsApi.md#create_cache_settings) | **POST** /service/{service_id}/version/{version_id}/cache_settings | Create a cache settings object
[**delete_cache_settings**](CacheSettingsApi.md#delete_cache_settings) | **DELETE** /service/{service_id}/version/{version_id}/cache_settings/{cache_settings_name} | Delete a cache settings object
[**get_cache_settings**](CacheSettingsApi.md#get_cache_settings) | **GET** /service/{service_id}/version/{version_id}/cache_settings/{cache_settings_name} | Get a cache settings object
[**list_cache_settings**](CacheSettingsApi.md#list_cache_settings) | **GET** /service/{service_id}/version/{version_id}/cache_settings | List cache settings objects
[**update_cache_settings**](CacheSettingsApi.md#update_cache_settings) | **PUT** /service/{service_id}/version/{version_id}/cache_settings/{cache_settings_name} | Update a cache settings object


## `create_cache_settings()`

```ruby
create_cache_settings(opts): <CacheSettingResponse> # Create a cache settings object
```

Create a cache settings object.

### Examples

```ruby
api_instance = Fastly::CacheSettingsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    action: 'pass', # String | If set, will cause vcl_fetch to terminate after processing this rule with the return state specified. If not set, other configuration logic in vcl_fetch with a lower priority will run after this rule. 
    cache_condition: 'cache_condition_example', # String | Name of the cache condition controlling when this configuration applies.
    name: 'name_example', # String | Name for the cache settings object.
    stale_ttl: 'stale_ttl_example', # String | Maximum time in seconds to continue to use a stale version of the object if future requests to your backend server fail (also known as 'stale if error').
    ttl: 'ttl_example', # String | Maximum time to consider the object fresh in the cache (the cache 'time to live').
}

begin
  # Create a cache settings object
  result = api_instance.create_cache_settings(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling CacheSettingsApi->create_cache_settings: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **action** | **String** | If set, will cause vcl_fetch to terminate after processing this rule with the return state specified. If not set, other configuration logic in vcl_fetch with a lower priority will run after this rule.  | [optional] |
| **cache_condition** | **String** | Name of the cache condition controlling when this configuration applies. | [optional] |
| **name** | **String** | Name for the cache settings object. | [optional] |
| **stale_ttl** | **String** | Maximum time in seconds to continue to use a stale version of the object if future requests to your backend server fail (also known as &#39;stale if error&#39;). | [optional] |
| **ttl** | **String** | Maximum time to consider the object fresh in the cache (the cache &#39;time to live&#39;). | [optional] |

### Return type

[**CacheSettingResponse**](CacheSettingResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_cache_settings()`

```ruby
delete_cache_settings(opts): <InlineResponse200> # Delete a cache settings object
```

Delete a specific cache settings object.

### Examples

```ruby
api_instance = Fastly::CacheSettingsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    cache_settings_name: 'cache_settings_name_example', # String | Name for the cache settings object.
}

begin
  # Delete a cache settings object
  result = api_instance.delete_cache_settings(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling CacheSettingsApi->delete_cache_settings: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **cache_settings_name** | **String** | Name for the cache settings object. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_cache_settings()`

```ruby
get_cache_settings(opts): <CacheSettingResponse> # Get a cache settings object
```

Get a specific cache settings object.

### Examples

```ruby
api_instance = Fastly::CacheSettingsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    cache_settings_name: 'cache_settings_name_example', # String | Name for the cache settings object.
}

begin
  # Get a cache settings object
  result = api_instance.get_cache_settings(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling CacheSettingsApi->get_cache_settings: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **cache_settings_name** | **String** | Name for the cache settings object. |  |

### Return type

[**CacheSettingResponse**](CacheSettingResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_cache_settings()`

```ruby
list_cache_settings(opts): <Array<CacheSettingResponse>> # List cache settings objects
```

Get a list of all cache settings for a particular service and version.

### Examples

```ruby
api_instance = Fastly::CacheSettingsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List cache settings objects
  result = api_instance.list_cache_settings(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling CacheSettingsApi->list_cache_settings: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;CacheSettingResponse&gt;**](CacheSettingResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_cache_settings()`

```ruby
update_cache_settings(opts): <CacheSettingResponse> # Update a cache settings object
```

Update a specific cache settings object.

### Examples

```ruby
api_instance = Fastly::CacheSettingsApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    cache_settings_name: 'cache_settings_name_example', # String | Name for the cache settings object.
    action: 'pass', # String | If set, will cause vcl_fetch to terminate after processing this rule with the return state specified. If not set, other configuration logic in vcl_fetch with a lower priority will run after this rule. 
    cache_condition: 'cache_condition_example', # String | Name of the cache condition controlling when this configuration applies.
    name: 'name_example', # String | Name for the cache settings object.
    stale_ttl: 'stale_ttl_example', # String | Maximum time in seconds to continue to use a stale version of the object if future requests to your backend server fail (also known as 'stale if error').
    ttl: 'ttl_example', # String | Maximum time to consider the object fresh in the cache (the cache 'time to live').
}

begin
  # Update a cache settings object
  result = api_instance.update_cache_settings(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling CacheSettingsApi->update_cache_settings: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **cache_settings_name** | **String** | Name for the cache settings object. |  |
| **action** | **String** | If set, will cause vcl_fetch to terminate after processing this rule with the return state specified. If not set, other configuration logic in vcl_fetch with a lower priority will run after this rule.  | [optional] |
| **cache_condition** | **String** | Name of the cache condition controlling when this configuration applies. | [optional] |
| **name** | **String** | Name for the cache settings object. | [optional] |
| **stale_ttl** | **String** | Maximum time in seconds to continue to use a stale version of the object if future requests to your backend server fail (also known as &#39;stale if error&#39;). | [optional] |
| **ttl** | **String** | Maximum time to consider the object fresh in the cache (the cache &#39;time to live&#39;). | [optional] |

### Return type

[**CacheSettingResponse**](CacheSettingResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
