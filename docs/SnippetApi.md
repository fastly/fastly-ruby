# Fastly::SnippetApi


```ruby
require 'fastly'
api_instance = Fastly::SnippetApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_snippet**](SnippetApi.md#create_snippet) | **POST** /service/{service_id}/version/{version_id}/snippet | Create a snippet
[**delete_snippet**](SnippetApi.md#delete_snippet) | **DELETE** /service/{service_id}/version/{version_id}/snippet/{name} | Delete a snippet
[**get_snippet**](SnippetApi.md#get_snippet) | **GET** /service/{service_id}/version/{version_id}/snippet/{name} | Get a versioned snippet
[**get_snippet_dynamic**](SnippetApi.md#get_snippet_dynamic) | **GET** /service/{service_id}/snippet/{id} | Get a dynamic snippet
[**list_snippets**](SnippetApi.md#list_snippets) | **GET** /service/{service_id}/version/{version_id}/snippet | List snippets
[**update_snippet**](SnippetApi.md#update_snippet) | **PUT** /service/{service_id}/version/{version_id}/snippet/{name} | Update a versioned snippet
[**update_snippet_dynamic**](SnippetApi.md#update_snippet_dynamic) | **PUT** /service/{service_id}/snippet/{id} | Update a dynamic snippet


## `create_snippet()`

```ruby
create_snippet(opts): <SnippetResponse> # Create a snippet
```

Create a snippet for a particular service and version.

### Examples

```ruby
api_instance = Fastly::SnippetApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the snippet.
    type: 'init', # String | The location in generated VCL where the snippet should be placed.
    content: 'content_example', # String | The VCL code that specifies exactly what the snippet does.
    priority: 'priority_example', # String | Priority determines execution order. Lower numbers execute first.
    dynamic: '0', # String | Sets the snippet version.
}

begin
  # Create a snippet
  result = api_instance.create_snippet(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling SnippetApi->create_snippet: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **name** | **String** | The name for the snippet. | [optional] |
| **type** | **String** | The location in generated VCL where the snippet should be placed. | [optional] |
| **content** | **String** | The VCL code that specifies exactly what the snippet does. | [optional] |
| **priority** | **String** | Priority determines execution order. Lower numbers execute first. | [optional][default to &#39;100&#39;] |
| **dynamic** | **String** | Sets the snippet version. | [optional] |

### Return type

[**SnippetResponse**](SnippetResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_snippet()`

```ruby
delete_snippet(opts): <InlineResponse200> # Delete a snippet
```

Delete a specific snippet for a particular service and version.

### Examples

```ruby
api_instance = Fastly::SnippetApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the snippet.
}

begin
  # Delete a snippet
  result = api_instance.delete_snippet(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling SnippetApi->delete_snippet: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **name** | **String** | The name for the snippet. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_snippet()`

```ruby
get_snippet(opts): <SnippetResponse> # Get a versioned snippet
```

Get a single snippet for a particular service and version.

### Examples

```ruby
api_instance = Fastly::SnippetApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the snippet.
}

begin
  # Get a versioned snippet
  result = api_instance.get_snippet(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling SnippetApi->get_snippet: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **name** | **String** | The name for the snippet. |  |

### Return type

[**SnippetResponse**](SnippetResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_snippet_dynamic()`

```ruby
get_snippet_dynamic(opts): <SnippetResponse> # Get a dynamic snippet
```

Get a single dynamic snippet for a particular service.

### Examples

```ruby
api_instance = Fastly::SnippetApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    id: 'id_example', # String | Alphanumeric string identifying a VCL Snippet.
}

begin
  # Get a dynamic snippet
  result = api_instance.get_snippet_dynamic(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling SnippetApi->get_snippet_dynamic: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **id** | **String** | Alphanumeric string identifying a VCL Snippet. |  |

### Return type

[**SnippetResponse**](SnippetResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_snippets()`

```ruby
list_snippets(opts): <Array<SnippetResponse>> # List snippets
```

List all snippets for a particular service and version.

### Examples

```ruby
api_instance = Fastly::SnippetApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List snippets
  result = api_instance.list_snippets(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling SnippetApi->list_snippets: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;SnippetResponse&gt;**](SnippetResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_snippet()`

```ruby
update_snippet(opts): <SnippetResponse> # Update a versioned snippet
```

Update a specific snippet for a particular service and version.

### Examples

```ruby
api_instance = Fastly::SnippetApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the snippet.
}

begin
  # Update a versioned snippet
  result = api_instance.update_snippet(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling SnippetApi->update_snippet: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **name** | **String** | The name for the snippet. |  |

### Return type

[**SnippetResponse**](SnippetResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_snippet_dynamic()`

```ruby
update_snippet_dynamic(opts): <SnippetResponse> # Update a dynamic snippet
```

Update a dynamic snippet for a particular service.

### Examples

```ruby
api_instance = Fastly::SnippetApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    id: 'id_example', # String | Alphanumeric string identifying a VCL Snippet.
    name: 'name_example', # String | The name for the snippet.
    type: 'init', # String | The location in generated VCL where the snippet should be placed.
    content: 'content_example', # String | The VCL code that specifies exactly what the snippet does.
    priority: 'priority_example', # String | Priority determines execution order. Lower numbers execute first.
    dynamic: '0', # String | Sets the snippet version.
}

begin
  # Update a dynamic snippet
  result = api_instance.update_snippet_dynamic(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling SnippetApi->update_snippet_dynamic: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **id** | **String** | Alphanumeric string identifying a VCL Snippet. |  |
| **name** | **String** | The name for the snippet. | [optional] |
| **type** | **String** | The location in generated VCL where the snippet should be placed. | [optional] |
| **content** | **String** | The VCL code that specifies exactly what the snippet does. | [optional] |
| **priority** | **String** | Priority determines execution order. Lower numbers execute first. | [optional][default to &#39;100&#39;] |
| **dynamic** | **String** | Sets the snippet version. | [optional] |

### Return type

[**SnippetResponse**](SnippetResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
