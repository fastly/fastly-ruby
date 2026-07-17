# Fastly::ClientSideProtectionApi


```ruby
require 'fastly'
api_instance = Fastly::ClientSideProtectionApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**csp_create_page**](ClientSideProtectionApi.md#csp_create_page) | **POST** /client-side-protection/v1/pages | Create page
[**csp_create_policy**](ClientSideProtectionApi.md#csp_create_policy) | **POST** /client-side-protection/v1/pages/{page_id}/policies | Create policy
[**csp_create_website**](ClientSideProtectionApi.md#csp_create_website) | **POST** /client-side-protection/v1/websites | Create website
[**csp_delete_page**](ClientSideProtectionApi.md#csp_delete_page) | **DELETE** /client-side-protection/v1/pages/{page_id} | Delete page
[**csp_delete_website**](ClientSideProtectionApi.md#csp_delete_website) | **DELETE** /client-side-protection/v1/websites/{website_id} | Delete website
[**csp_get_page**](ClientSideProtectionApi.md#csp_get_page) | **GET** /client-side-protection/v1/pages/{page_id} | Get page
[**csp_get_policy**](ClientSideProtectionApi.md#csp_get_policy) | **GET** /client-side-protection/v1/pages/{page_id}/policies/{policy_id} | Get policy
[**csp_get_script**](ClientSideProtectionApi.md#csp_get_script) | **GET** /client-side-protection/v1/pages/{page_id}/scripts/{script_id} | Get script
[**csp_get_website**](ClientSideProtectionApi.md#csp_get_website) | **GET** /client-side-protection/v1/websites/{website_id} | Get website
[**csp_list_header_events**](ClientSideProtectionApi.md#csp_list_header_events) | **GET** /client-side-protection/v1/pages/{page_id}/events | List header events
[**csp_list_headers**](ClientSideProtectionApi.md#csp_list_headers) | **GET** /client-side-protection/v1/pages/{page_id}/headers | List security headers
[**csp_list_pages**](ClientSideProtectionApi.md#csp_list_pages) | **GET** /client-side-protection/v1/pages | List pages
[**csp_list_policies**](ClientSideProtectionApi.md#csp_list_policies) | **GET** /client-side-protection/v1/pages/{page_id}/policies | List policies
[**csp_list_policy_reports**](ClientSideProtectionApi.md#csp_list_policy_reports) | **GET** /client-side-protection/v1/pages/{page_id}/policies/{policy_id}/reports | List policy reports
[**csp_list_scripts**](ClientSideProtectionApi.md#csp_list_scripts) | **GET** /client-side-protection/v1/pages/{page_id}/scripts | List scripts
[**csp_list_websites**](ClientSideProtectionApi.md#csp_list_websites) | **GET** /client-side-protection/v1/websites | List websites
[**csp_update_page**](ClientSideProtectionApi.md#csp_update_page) | **PATCH** /client-side-protection/v1/pages/{page_id} | Update page
[**csp_update_policy**](ClientSideProtectionApi.md#csp_update_policy) | **PATCH** /client-side-protection/v1/pages/{page_id}/policies/{policy_id} | Update policy
[**csp_update_script**](ClientSideProtectionApi.md#csp_update_script) | **PATCH** /client-side-protection/v1/pages/{page_id}/scripts/{script_id} | Update script
[**csp_update_website**](ClientSideProtectionApi.md#csp_update_website) | **PATCH** /client-side-protection/v1/websites/{website_id} | Update website


## `csp_create_page()`

```ruby
csp_create_page(opts): <Page> # Create page
```

Create a new page for monitoring.

### Examples

```ruby
api_instance = Fastly::ClientSideProtectionApi.new
opts = {
    page_create: Fastly::PageCreate.new({website_id: 'website_id_example', name: 'name_example'}), # PageCreate | 
}

begin
  # Create page
  result = api_instance.csp_create_page(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ClientSideProtectionApi->csp_create_page: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_create** | [**PageCreate**](PageCreate.md) |  | [optional] |

### Return type

[**Page**](Page.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `csp_create_policy()`

```ruby
csp_create_policy(opts): <Policy> # Create policy
```

Create a new Content Security Policy for a page.

### Examples

```ruby
api_instance = Fastly::ClientSideProtectionApi.new
opts = {
    page_id: '3Yl0KhQDlg2OaWtOnLsFDq', # String | Page identifier
    policy_create: Fastly::PolicyCreate.new({name: 'name_example', mode: 'report'}), # PolicyCreate | 
}

begin
  # Create policy
  result = api_instance.csp_create_policy(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ClientSideProtectionApi->csp_create_policy: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_id** | **String** | Page identifier |  |
| **policy_create** | [**PolicyCreate**](PolicyCreate.md) |  | [optional] |

### Return type

[**Policy**](Policy.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `csp_create_website()`

```ruby
csp_create_website(opts): <Website> # Create website
```

Create a new website for Client-Side Protection monitoring.

### Examples

```ruby
api_instance = Fastly::ClientSideProtectionApi.new
opts = {
    website_create: Fastly::WebsiteCreate.new({domain: 'domain_example'}), # WebsiteCreate | 
}

begin
  # Create website
  result = api_instance.csp_create_website(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ClientSideProtectionApi->csp_create_website: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **website_create** | [**WebsiteCreate**](WebsiteCreate.md) |  | [optional] |

### Return type

[**Website**](Website.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `csp_delete_page()`

```ruby
csp_delete_page(opts) # Delete page
```

Delete a page and all associated scripts and policies.

### Examples

```ruby
api_instance = Fastly::ClientSideProtectionApi.new
opts = {
    page_id: '3Yl0KhQDlg2OaWtOnLsFDq', # String | Page identifier
}

begin
  # Delete page
  api_instance.csp_delete_page(opts)
rescue Fastly::ApiError => e
  puts "Error when calling ClientSideProtectionApi->csp_delete_page: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_id** | **String** | Page identifier |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `csp_delete_website()`

```ruby
csp_delete_website(opts) # Delete website
```

Delete a website and all associated pages, scripts, and policies.

### Examples

```ruby
api_instance = Fastly::ClientSideProtectionApi.new
opts = {
    website_id: '2Xk9JgPCkf1NzVsNmKrECp', # String | Website identifier
}

begin
  # Delete website
  api_instance.csp_delete_website(opts)
rescue Fastly::ApiError => e
  puts "Error when calling ClientSideProtectionApi->csp_delete_website: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **website_id** | **String** | Website identifier |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `csp_get_page()`

```ruby
csp_get_page(opts): <Page> # Get page
```

Get details for a specific page.

### Examples

```ruby
api_instance = Fastly::ClientSideProtectionApi.new
opts = {
    page_id: '3Yl0KhQDlg2OaWtOnLsFDq', # String | Page identifier
}

begin
  # Get page
  result = api_instance.csp_get_page(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ClientSideProtectionApi->csp_get_page: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_id** | **String** | Page identifier |  |

### Return type

[**Page**](Page.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `csp_get_policy()`

```ruby
csp_get_policy(opts): <Policy> # Get policy
```

Get details for a specific policy.

### Examples

```ruby
api_instance = Fastly::ClientSideProtectionApi.new
opts = {
    page_id: '3Yl0KhQDlg2OaWtOnLsFDq', # String | Page identifier
    policy_id: '7Cp4OlUHqj6SfAwSrQwJHu', # String | Policy identifier
}

begin
  # Get policy
  result = api_instance.csp_get_policy(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ClientSideProtectionApi->csp_get_policy: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_id** | **String** | Page identifier |  |
| **policy_id** | **String** | Policy identifier |  |

### Return type

[**Policy**](Policy.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `csp_get_script()`

```ruby
csp_get_script(opts): <Script> # Get script
```

Get details for a specific script.

### Examples

```ruby
api_instance = Fastly::ClientSideProtectionApi.new
opts = {
    page_id: '3Yl0KhQDlg2OaWtOnLsFDq', # String | Page identifier
    script_id: '5An2MjSFoh4QcYvQpNuHFs', # String | Script identifier
}

begin
  # Get script
  result = api_instance.csp_get_script(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ClientSideProtectionApi->csp_get_script: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_id** | **String** | Page identifier |  |
| **script_id** | **String** | Script identifier |  |

### Return type

[**Script**](Script.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `csp_get_website()`

```ruby
csp_get_website(opts): <Website> # Get website
```

Get details for a specific website.

### Examples

```ruby
api_instance = Fastly::ClientSideProtectionApi.new
opts = {
    website_id: '2Xk9JgPCkf1NzVsNmKrECp', # String | Website identifier
}

begin
  # Get website
  result = api_instance.csp_get_website(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ClientSideProtectionApi->csp_get_website: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **website_id** | **String** | Website identifier |  |

### Return type

[**Website**](Website.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `csp_list_header_events()`

```ruby
csp_list_header_events(opts): <InlineResponse20011> # List header events
```

List security header change events for a page.

### Examples

```ruby
api_instance = Fastly::ClientSideProtectionApi.new
opts = {
    page_id: '3Yl0KhQDlg2OaWtOnLsFDq', # String | Page identifier
    limit: 100, # Integer | Limit how many results are returned.
    page: 1, # Integer | Page number of the collection to request.
}

begin
  # List header events
  result = api_instance.csp_list_header_events(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ClientSideProtectionApi->csp_list_header_events: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_id** | **String** | Page identifier |  |
| **limit** | **Integer** | Limit how many results are returned. | [optional][default to 100] |
| **page** | **Integer** | Page number of the collection to request. | [optional][default to 0] |

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `csp_list_headers()`

```ruby
csp_list_headers(opts): <InlineResponse20010> # List security headers
```

List security headers detected on a page.

### Examples

```ruby
api_instance = Fastly::ClientSideProtectionApi.new
opts = {
    page_id: '3Yl0KhQDlg2OaWtOnLsFDq', # String | Page identifier
    limit: 100, # Integer | Limit how many results are returned.
    page: 1, # Integer | Page number of the collection to request.
}

begin
  # List security headers
  result = api_instance.csp_list_headers(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ClientSideProtectionApi->csp_list_headers: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_id** | **String** | Page identifier |  |
| **limit** | **Integer** | Limit how many results are returned. | [optional][default to 100] |
| **page** | **Integer** | Page number of the collection to request. | [optional][default to 0] |

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `csp_list_pages()`

```ruby
csp_list_pages(opts): <InlineResponse2006> # List pages
```

List all pages. Optionally filter by website.

### Examples

```ruby
api_instance = Fastly::ClientSideProtectionApi.new
opts = {
    website_id: 'website_id_example', # String | Filter pages by website ID
    limit: 100, # Integer | Limit how many results are returned.
    page: 1, # Integer | Page number of the collection to request.
}

begin
  # List pages
  result = api_instance.csp_list_pages(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ClientSideProtectionApi->csp_list_pages: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **website_id** | **String** | Filter pages by website ID | [optional] |
| **limit** | **Integer** | Limit how many results are returned. | [optional][default to 100] |
| **page** | **Integer** | Page number of the collection to request. | [optional][default to 0] |

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `csp_list_policies()`

```ruby
csp_list_policies(opts): <InlineResponse2008> # List policies
```

List all Content Security Policies for a page.

### Examples

```ruby
api_instance = Fastly::ClientSideProtectionApi.new
opts = {
    page_id: '3Yl0KhQDlg2OaWtOnLsFDq', # String | Page identifier
    limit: 100, # Integer | Limit how many results are returned.
    page: 1, # Integer | Page number of the collection to request.
}

begin
  # List policies
  result = api_instance.csp_list_policies(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ClientSideProtectionApi->csp_list_policies: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_id** | **String** | Page identifier |  |
| **limit** | **Integer** | Limit how many results are returned. | [optional][default to 100] |
| **page** | **Integer** | Page number of the collection to request. | [optional][default to 0] |

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `csp_list_policy_reports()`

```ruby
csp_list_policy_reports(opts): <InlineResponse2009> # List policy reports
```

List CSP violation reports for a policy.

### Examples

```ruby
api_instance = Fastly::ClientSideProtectionApi.new
opts = {
    page_id: '3Yl0KhQDlg2OaWtOnLsFDq', # String | Page identifier
    policy_id: '7Cp4OlUHqj6SfAwSrQwJHu', # String | Policy identifier
    limit: 100, # Integer | Limit how many results are returned.
    page: 1, # Integer | Page number of the collection to request.
}

begin
  # List policy reports
  result = api_instance.csp_list_policy_reports(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ClientSideProtectionApi->csp_list_policy_reports: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_id** | **String** | Page identifier |  |
| **policy_id** | **String** | Policy identifier |  |
| **limit** | **Integer** | Limit how many results are returned. | [optional][default to 100] |
| **page** | **Integer** | Page number of the collection to request. | [optional][default to 0] |

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `csp_list_scripts()`

```ruby
csp_list_scripts(opts): <InlineResponse2007> # List scripts
```

List all scripts detected on a page.

### Examples

```ruby
api_instance = Fastly::ClientSideProtectionApi.new
opts = {
    page_id: '3Yl0KhQDlg2OaWtOnLsFDq', # String | Page identifier
    limit: 100, # Integer | Limit how many results are returned.
    page: 1, # Integer | Page number of the collection to request.
}

begin
  # List scripts
  result = api_instance.csp_list_scripts(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ClientSideProtectionApi->csp_list_scripts: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_id** | **String** | Page identifier |  |
| **limit** | **Integer** | Limit how many results are returned. | [optional][default to 100] |
| **page** | **Integer** | Page number of the collection to request. | [optional][default to 0] |

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `csp_list_websites()`

```ruby
csp_list_websites(opts): <InlineResponse2005> # List websites
```

List all websites configured for Client-Side Protection.

### Examples

```ruby
api_instance = Fastly::ClientSideProtectionApi.new
opts = {
    limit: 100, # Integer | Limit how many results are returned.
    page: 1, # Integer | Page number of the collection to request.
}

begin
  # List websites
  result = api_instance.csp_list_websites(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ClientSideProtectionApi->csp_list_websites: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limit how many results are returned. | [optional][default to 100] |
| **page** | **Integer** | Page number of the collection to request. | [optional][default to 0] |

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `csp_update_page()`

```ruby
csp_update_page(opts): <Page> # Update page
```

Update a page's configuration.

### Examples

```ruby
api_instance = Fastly::ClientSideProtectionApi.new
opts = {
    page_id: '3Yl0KhQDlg2OaWtOnLsFDq', # String | Page identifier
    page_update: Fastly::PageUpdate.new, # PageUpdate | 
}

begin
  # Update page
  result = api_instance.csp_update_page(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ClientSideProtectionApi->csp_update_page: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_id** | **String** | Page identifier |  |
| **page_update** | [**PageUpdate**](PageUpdate.md) |  | [optional] |

### Return type

[**Page**](Page.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `csp_update_policy()`

```ruby
csp_update_policy(opts): <Policy> # Update policy
```

Update a policy's configuration.

### Examples

```ruby
api_instance = Fastly::ClientSideProtectionApi.new
opts = {
    page_id: '3Yl0KhQDlg2OaWtOnLsFDq', # String | Page identifier
    policy_id: '7Cp4OlUHqj6SfAwSrQwJHu', # String | Policy identifier
    policy_update: Fastly::PolicyUpdate.new, # PolicyUpdate | 
}

begin
  # Update policy
  result = api_instance.csp_update_policy(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ClientSideProtectionApi->csp_update_policy: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_id** | **String** | Page identifier |  |
| **policy_id** | **String** | Policy identifier |  |
| **policy_update** | [**PolicyUpdate**](PolicyUpdate.md) |  | [optional] |

### Return type

[**Policy**](Policy.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `csp_update_script()`

```ruby
csp_update_script(opts): <Script> # Update script
```

Update a script's authorization status or justification.

### Examples

```ruby
api_instance = Fastly::ClientSideProtectionApi.new
opts = {
    page_id: '3Yl0KhQDlg2OaWtOnLsFDq', # String | Page identifier
    script_id: '5An2MjSFoh4QcYvQpNuHFs', # String | Script identifier
    script_update: Fastly::ScriptUpdate.new, # ScriptUpdate | 
}

begin
  # Update script
  result = api_instance.csp_update_script(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ClientSideProtectionApi->csp_update_script: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_id** | **String** | Page identifier |  |
| **script_id** | **String** | Script identifier |  |
| **script_update** | [**ScriptUpdate**](ScriptUpdate.md) |  | [optional] |

### Return type

[**Script**](Script.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `csp_update_website()`

```ruby
csp_update_website(opts): <Website> # Update website
```

Update a website's configuration.

### Examples

```ruby
api_instance = Fastly::ClientSideProtectionApi.new
opts = {
    website_id: '2Xk9JgPCkf1NzVsNmKrECp', # String | Website identifier
    website_update: Fastly::WebsiteUpdate.new, # WebsiteUpdate | 
}

begin
  # Update website
  result = api_instance.csp_update_website(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ClientSideProtectionApi->csp_update_website: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **website_id** | **String** | Website identifier |  |
| **website_update** | [**WebsiteUpdate**](WebsiteUpdate.md) |  | [optional] |

### Return type

[**Website**](Website.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
