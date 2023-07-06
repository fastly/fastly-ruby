# Fastly::LegacyWafOwaspApi


```ruby
require 'fastly'
api_instance = Fastly::LegacyWafOwaspApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_owasp_settings**](LegacyWafOwaspApi.md#create_owasp_settings) | **POST** /service/{service_id}/wafs/{firewall_id}/owasp | Create an OWASP settings object |
| [**get_owasp_settings**](LegacyWafOwaspApi.md#get_owasp_settings) | **GET** /service/{service_id}/wafs/{firewall_id}/owasp | Get the OWASP settings object |
| [**update_owasp_settings**](LegacyWafOwaspApi.md#update_owasp_settings) | **PATCH** /service/{service_id}/wafs/{firewall_id}/owasp | Update the OWASP settings object |


## `create_owasp_settings()`

```ruby
create_owasp_settings(opts): Object # Create an OWASP settings object
```

Create an OWASP settings object for a particular service and firewall.

### Examples

```ruby
api_instance = Fastly::LegacyWafOwaspApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a Firewall.
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Create an OWASP settings object
  result = api_instance.create_owasp_settings(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafOwaspApi->create_owasp_settings: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **firewall_id** | **String** | Alphanumeric string identifying a Firewall. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_owasp_settings()`

```ruby
get_owasp_settings(opts): Object # Get the OWASP settings object
```

Get the OWASP settings object for a particular service and firewall.

### Examples

```ruby
api_instance = Fastly::LegacyWafOwaspApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a Firewall.
}

begin
  # Get the OWASP settings object
  result = api_instance.get_owasp_settings(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafOwaspApi->get_owasp_settings: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **firewall_id** | **String** | Alphanumeric string identifying a Firewall. |  |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_owasp_settings()`

```ruby
update_owasp_settings(opts): Object # Update the OWASP settings object
```

Update the OWASP settings object for a particular service and firewall.

### Examples

```ruby
api_instance = Fastly::LegacyWafOwaspApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a Firewall.
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Update the OWASP settings object
  result = api_instance.update_owasp_settings(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LegacyWafOwaspApi->update_owasp_settings: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **firewall_id** | **String** | Alphanumeric string identifying a Firewall. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
