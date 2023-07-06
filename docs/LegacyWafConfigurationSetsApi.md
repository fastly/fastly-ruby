# Fastly::LegacyWafConfigurationSetsApi


```ruby
require 'fastly'
api_instance = Fastly::LegacyWafConfigurationSetsApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_waf_config_sets**](LegacyWafConfigurationSetsApi.md#list_waf_config_sets) | **GET** /wafs/configuration_sets | List configuration sets |
| [**list_wafs_config_set**](LegacyWafConfigurationSetsApi.md#list_wafs_config_set) | **GET** /wafs/configuration_sets/{configuration_set_id}/relationships/wafs | List WAFs currently using a configuration set |
| [**use_waf_config_set**](LegacyWafConfigurationSetsApi.md#use_waf_config_set) | **PATCH** /wafs/configuration_sets/{configuration_set_id}/relationships/wafs | Apply a configuration set to a WAF |


## `list_waf_config_sets()`

```ruby
list_waf_config_sets: Object # List configuration sets
```

List all Configuration sets.

### Examples

```ruby
api_instance = Fastly::LegacyWafConfigurationSetsApi.new

begin
  # List configuration sets
  result = api_instance.list_waf_config_sets
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafConfigurationSetsApi->list_waf_config_sets: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_wafs_config_set()`

```ruby
list_wafs_config_set(opts): Object # List WAFs currently using a configuration set
```

List the WAF objects currently using the specified configuration set.

### Examples

```ruby
api_instance = Fastly::LegacyWafConfigurationSetsApi.new
opts = {
    configuration_set_id: 'configuration_set_id_example', # String | Alphanumeric string identifying a WAF configuration set.
}

begin
  # List WAFs currently using a configuration set
  result = api_instance.list_wafs_config_set(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafConfigurationSetsApi->list_wafs_config_set: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **configuration_set_id** | **String** | Alphanumeric string identifying a WAF configuration set. |  |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `use_waf_config_set()`

```ruby
use_waf_config_set(opts): Object # Apply a configuration set to a WAF
```

Update one or more WAF objects to use the specified configuration set.

### Examples

```ruby
api_instance = Fastly::LegacyWafConfigurationSetsApi.new
opts = {
    configuration_set_id: 'configuration_set_id_example', # String | Alphanumeric string identifying a WAF configuration set.
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Apply a configuration set to a WAF
  result = api_instance.use_waf_config_set(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafConfigurationSetsApi->use_waf_config_set: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **configuration_set_id** | **String** | Alphanumeric string identifying a WAF configuration set. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
