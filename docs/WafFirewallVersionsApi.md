# Fastly::WafFirewallVersionsApi


```ruby
require 'fastly'
api_instance = Fastly::WafFirewallVersionsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**clone_waf_firewall_version**](WafFirewallVersionsApi.md#clone_waf_firewall_version) | **PUT** /waf/firewalls/{firewall_id}/versions/{firewall_version_number}/clone | Clone a firewall version
[**create_waf_firewall_version**](WafFirewallVersionsApi.md#create_waf_firewall_version) | **POST** /waf/firewalls/{firewall_id}/versions | Create a firewall version
[**deploy_activate_waf_firewall_version**](WafFirewallVersionsApi.md#deploy_activate_waf_firewall_version) | **PUT** /waf/firewalls/{firewall_id}/versions/{firewall_version_number}/activate | Deploy or activate a firewall version
[**get_waf_firewall_version**](WafFirewallVersionsApi.md#get_waf_firewall_version) | **GET** /waf/firewalls/{firewall_id}/versions/{firewall_version_number} | Get a firewall version
[**list_waf_firewall_versions**](WafFirewallVersionsApi.md#list_waf_firewall_versions) | **GET** /waf/firewalls/{firewall_id}/versions | List firewall versions
[**update_waf_firewall_version**](WafFirewallVersionsApi.md#update_waf_firewall_version) | **PATCH** /waf/firewalls/{firewall_id}/versions/{firewall_version_number} | Update a firewall version


## `clone_waf_firewall_version()`

```ruby
clone_waf_firewall_version(opts): <WafFirewallVersionResponse> # Clone a firewall version
```

Clone a specific, existing firewall version into a new, draft firewall version.

### Examples

```ruby
api_instance = Fastly::WafFirewallVersionsApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a WAF Firewall.
    firewall_version_number: 56, # Integer | Integer identifying a WAF firewall version.
}

begin
  # Clone a firewall version
  result = api_instance.clone_waf_firewall_version(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling WafFirewallVersionsApi->clone_waf_firewall_version: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firewall_id** | **String** | Alphanumeric string identifying a WAF Firewall. |  |
| **firewall_version_number** | **Integer** | Integer identifying a WAF firewall version. |  |

### Return type

[**WafFirewallVersionResponse**](WafFirewallVersionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `create_waf_firewall_version()`

```ruby
create_waf_firewall_version(opts): <WafFirewallVersionResponse> # Create a firewall version
```

Create a new, draft firewall version.

### Examples

```ruby
api_instance = Fastly::WafFirewallVersionsApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a WAF Firewall.
    waf_firewall_version: Fastly::WafFirewallVersion.new, # WafFirewallVersion | 
}

begin
  # Create a firewall version
  result = api_instance.create_waf_firewall_version(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling WafFirewallVersionsApi->create_waf_firewall_version: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firewall_id** | **String** | Alphanumeric string identifying a WAF Firewall. |  |
| **waf_firewall_version** | [**WafFirewallVersion**](WafFirewallVersion.md) |  | [optional] |

### Return type

[**WafFirewallVersionResponse**](WafFirewallVersionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `deploy_activate_waf_firewall_version()`

```ruby
deploy_activate_waf_firewall_version(opts): Object # Deploy or activate a firewall version
```

Deploy or activate a specific firewall version. If a firewall has been disabled, deploying a firewall version will automatically enable the firewall again.

### Examples

```ruby
api_instance = Fastly::WafFirewallVersionsApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a WAF Firewall.
    firewall_version_number: 56, # Integer | Integer identifying a WAF firewall version.
}

begin
  # Deploy or activate a firewall version
  result = api_instance.deploy_activate_waf_firewall_version(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling WafFirewallVersionsApi->deploy_activate_waf_firewall_version: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firewall_id** | **String** | Alphanumeric string identifying a WAF Firewall. |  |
| **firewall_version_number** | **Integer** | Integer identifying a WAF firewall version. |  |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_waf_firewall_version()`

```ruby
get_waf_firewall_version(opts): <WafFirewallVersionResponse> # Get a firewall version
```

Get details about a specific firewall version.

### Examples

```ruby
api_instance = Fastly::WafFirewallVersionsApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a WAF Firewall.
    firewall_version_number: 56, # Integer | Integer identifying a WAF firewall version.
    include: 'waf_firewall,waf_active_rules', # String | Include relationships. Optional, comma-separated values. Permitted values: `waf_firewall` and `waf_active_rules`. 
}

begin
  # Get a firewall version
  result = api_instance.get_waf_firewall_version(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling WafFirewallVersionsApi->get_waf_firewall_version: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Include relationships. Optional, comma-separated values. Permitted values: `waf_firewall` and `waf_active_rules`.  | [optional] |
| **firewall_id** | **String** | Alphanumeric string identifying a WAF Firewall. |  |
| **firewall_version_number** | **Integer** | Integer identifying a WAF firewall version. |  |

### Return type

[**WafFirewallVersionResponse**](WafFirewallVersionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_waf_firewall_versions()`

```ruby
list_waf_firewall_versions(opts): <WafFirewallVersionsResponse> # List firewall versions
```

Get a list of firewall versions associated with a specific firewall.

### Examples

```ruby
api_instance = Fastly::WafFirewallVersionsApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a WAF Firewall.
    include: 'waf_firewall', # String | Include relationships. Optional.
    page_number: 1, # Integer | Current page.
    page_size: 20, # Integer | Number of records per page.
}

begin
  # List firewall versions
  result = api_instance.list_waf_firewall_versions(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling WafFirewallVersionsApi->list_waf_firewall_versions: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Include relationships. Optional. | [optional] |
| **page_number** | **Integer** | Current page. | [optional] |
| **page_size** | **Integer** | Number of records per page. | [optional][default to 20] |
| **firewall_id** | **String** | Alphanumeric string identifying a WAF Firewall. |  |

### Return type

[**WafFirewallVersionsResponse**](WafFirewallVersionsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_waf_firewall_version()`

```ruby
update_waf_firewall_version(opts): <WafFirewallVersionResponse> # Update a firewall version
```

Update a specific firewall version.

### Examples

```ruby
api_instance = Fastly::WafFirewallVersionsApi.new
opts = {
    firewall_id: 'firewall_id_example', # String | Alphanumeric string identifying a WAF Firewall.
    firewall_version_number: 56, # Integer | Integer identifying a WAF firewall version.
    waf_firewall_version: Fastly::WafFirewallVersion.new, # WafFirewallVersion | 
}

begin
  # Update a firewall version
  result = api_instance.update_waf_firewall_version(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling WafFirewallVersionsApi->update_waf_firewall_version: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firewall_id** | **String** | Alphanumeric string identifying a WAF Firewall. |  |
| **firewall_version_number** | **Integer** | Integer identifying a WAF firewall version. |  |
| **waf_firewall_version** | [**WafFirewallVersion**](WafFirewallVersion.md) |  | [optional] |

### Return type

[**WafFirewallVersionResponse**](WafFirewallVersionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
