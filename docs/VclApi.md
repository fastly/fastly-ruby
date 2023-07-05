# Fastly::VclApi


```ruby
require 'fastly'
api_instance = Fastly::VclApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_custom_vcl**](VclApi.md#create_custom_vcl) | **POST** /service/{service_id}/version/{version_id}/vcl | Create a custom VCL file |
| [**delete_custom_vcl**](VclApi.md#delete_custom_vcl) | **DELETE** /service/{service_id}/version/{version_id}/vcl/{vcl_name} | Delete a custom VCL file |
| [**get_custom_vcl**](VclApi.md#get_custom_vcl) | **GET** /service/{service_id}/version/{version_id}/vcl/{vcl_name} | Get a custom VCL file |
| [**get_custom_vcl_boilerplate**](VclApi.md#get_custom_vcl_boilerplate) | **GET** /service/{service_id}/version/{version_id}/boilerplate | Get boilerplate VCL |
| [**get_custom_vcl_generated**](VclApi.md#get_custom_vcl_generated) | **GET** /service/{service_id}/version/{version_id}/generated_vcl | Get the generated VCL for a service |
| [**get_custom_vcl_generated_highlighted**](VclApi.md#get_custom_vcl_generated_highlighted) | **GET** /service/{service_id}/version/{version_id}/generated_vcl/content | Get the generated VCL with syntax highlighting |
| [**get_custom_vcl_highlighted**](VclApi.md#get_custom_vcl_highlighted) | **GET** /service/{service_id}/version/{version_id}/vcl/{vcl_name}/content | Get a custom VCL file with syntax highlighting |
| [**get_custom_vcl_raw**](VclApi.md#get_custom_vcl_raw) | **GET** /service/{service_id}/version/{version_id}/vcl/{vcl_name}/download | Download a custom VCL file |
| [**lint_vcl_default**](VclApi.md#lint_vcl_default) | **POST** /vcl_lint | Lint (validate) VCL using a default set of flags. |
| [**lint_vcl_for_service**](VclApi.md#lint_vcl_for_service) | **POST** /service/{service_id}/lint | Lint (validate) VCL using flags set for the service. |
| [**list_custom_vcl**](VclApi.md#list_custom_vcl) | **GET** /service/{service_id}/version/{version_id}/vcl | List custom VCL files |
| [**set_custom_vcl_main**](VclApi.md#set_custom_vcl_main) | **PUT** /service/{service_id}/version/{version_id}/vcl/{vcl_name}/main | Set a custom VCL file as main |
| [**update_custom_vcl**](VclApi.md#update_custom_vcl) | **PUT** /service/{service_id}/version/{version_id}/vcl/{vcl_name} | Update a custom VCL file |


## `create_custom_vcl()`

```ruby
create_custom_vcl(opts): <VclResponse> # Create a custom VCL file
```

Upload a VCL for a particular service and version.

### Examples

```ruby
api_instance = Fastly::VclApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    content: 'content_example', # String | The VCL code to be included.
    main: true, # Boolean | Set to `true` when this is the main VCL, otherwise `false`.
    name: 'name_example', # String | The name of this VCL.
}

begin
  # Create a custom VCL file
  result = api_instance.create_custom_vcl(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling VclApi->create_custom_vcl: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **content** | **String** | The VCL code to be included. | [optional] |
| **main** | **Boolean** | Set to `true` when this is the main VCL, otherwise `false`. | [optional] |
| **name** | **String** | The name of this VCL. | [optional] |

### Return type

[**VclResponse**](VclResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_custom_vcl()`

```ruby
delete_custom_vcl(opts): <InlineResponse200> # Delete a custom VCL file
```

Delete the uploaded VCL for a particular service and version.

### Examples

```ruby
api_instance = Fastly::VclApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    vcl_name: 'vcl_name_example', # String | The name of this VCL.
}

begin
  # Delete a custom VCL file
  result = api_instance.delete_custom_vcl(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling VclApi->delete_custom_vcl: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **vcl_name** | **String** | The name of this VCL. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_custom_vcl()`

```ruby
get_custom_vcl(opts): <VclResponse> # Get a custom VCL file
```

Get the uploaded VCL for a particular service and version.

### Examples

```ruby
api_instance = Fastly::VclApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    vcl_name: 'vcl_name_example', # String | The name of this VCL.
    no_content: 'no_content_example', # String | Omit VCL content.
}

begin
  # Get a custom VCL file
  result = api_instance.get_custom_vcl(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling VclApi->get_custom_vcl: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **vcl_name** | **String** | The name of this VCL. |  |
| **no_content** | **String** | Omit VCL content. | [optional][default to &#39;0&#39;] |

### Return type

[**VclResponse**](VclResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_custom_vcl_boilerplate()`

```ruby
get_custom_vcl_boilerplate(opts): String # Get boilerplate VCL
```

Return boilerplate VCL with the service's TTL from the [settings](/reference/api/vcl-services/settings/).

### Examples

```ruby
api_instance = Fastly::VclApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # Get boilerplate VCL
  result = api_instance.get_custom_vcl_boilerplate(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling VclApi->get_custom_vcl_boilerplate: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

**String**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_custom_vcl_generated()`

```ruby
get_custom_vcl_generated(opts): <VclResponse> # Get the generated VCL for a service
```

Display the generated VCL for a particular service and version.

### Examples

```ruby
api_instance = Fastly::VclApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # Get the generated VCL for a service
  result = api_instance.get_custom_vcl_generated(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling VclApi->get_custom_vcl_generated: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**VclResponse**](VclResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_custom_vcl_generated_highlighted()`

```ruby
get_custom_vcl_generated_highlighted(opts): <VclSyntaxHighlightingResponse> # Get the generated VCL with syntax highlighting
```

Display the content of generated VCL with HTML syntax highlighting. Include line numbers by sending `lineno=true` as a request parameter.

### Examples

```ruby
api_instance = Fastly::VclApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # Get the generated VCL with syntax highlighting
  result = api_instance.get_custom_vcl_generated_highlighted(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling VclApi->get_custom_vcl_generated_highlighted: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**VclSyntaxHighlightingResponse**](VclSyntaxHighlightingResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_custom_vcl_highlighted()`

```ruby
get_custom_vcl_highlighted(opts): <VclSyntaxHighlightingResponse> # Get a custom VCL file with syntax highlighting
```

Get the uploaded VCL for a particular service and version with HTML syntax highlighting. Include line numbers by sending `lineno=true` as a request parameter.

### Examples

```ruby
api_instance = Fastly::VclApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    vcl_name: 'vcl_name_example', # String | The name of this VCL.
}

begin
  # Get a custom VCL file with syntax highlighting
  result = api_instance.get_custom_vcl_highlighted(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling VclApi->get_custom_vcl_highlighted: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **vcl_name** | **String** | The name of this VCL. |  |

### Return type

[**VclSyntaxHighlightingResponse**](VclSyntaxHighlightingResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_custom_vcl_raw()`

```ruby
get_custom_vcl_raw(opts): String # Download a custom VCL file
```

Download the specified VCL.

### Examples

```ruby
api_instance = Fastly::VclApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    vcl_name: 'vcl_name_example', # String | The name of this VCL.
}

begin
  # Download a custom VCL file
  result = api_instance.get_custom_vcl_raw(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling VclApi->get_custom_vcl_raw: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **vcl_name** | **String** | The name of this VCL. |  |

### Return type

**String**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `lint_vcl_default()`

```ruby
lint_vcl_default(opts): <ValidatorResult> # Lint (validate) VCL using a default set of flags.
```

This endpoint validates the submitted VCL against a default set of enabled flags. Consider using the `/service/{service_id}/lint` operation to validate VCL in the context of a specific service.

### Examples

```ruby
api_instance = Fastly::VclApi.new
opts = {
    inline_object1: Fastly::InlineObject1.new({vcl: 'vcl_example'}), # InlineObject1 | 
}

begin
  # Lint (validate) VCL using a default set of flags.
  result = api_instance.lint_vcl_default(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling VclApi->lint_vcl_default: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inline_object1** | [**InlineObject1**](InlineObject1.md) |  |  |

### Return type

[**ValidatorResult**](ValidatorResult.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `lint_vcl_for_service()`

```ruby
lint_vcl_for_service(opts): <ValidatorResult> # Lint (validate) VCL using flags set for the service.
```

Services may have flags set by a Fastly employee or by the purchase of products as addons to the service, which modify the way VCL is interpreted by that service.  This endpoint validates the submitted VCL in the context of the specified service.

### Examples

```ruby
api_instance = Fastly::VclApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    inline_object: Fastly::InlineObject.new({vcl: 'vcl_example'}), # InlineObject | 
}

begin
  # Lint (validate) VCL using flags set for the service.
  result = api_instance.lint_vcl_for_service(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling VclApi->lint_vcl_for_service: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **inline_object** | [**InlineObject**](InlineObject.md) |  |  |

### Return type

[**ValidatorResult**](ValidatorResult.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_custom_vcl()`

```ruby
list_custom_vcl(opts): <Array<VclResponse>> # List custom VCL files
```

List the uploaded VCLs for a particular service and version.

### Examples

```ruby
api_instance = Fastly::VclApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List custom VCL files
  result = api_instance.list_custom_vcl(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling VclApi->list_custom_vcl: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;VclResponse&gt;**](VclResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `set_custom_vcl_main()`

```ruby
set_custom_vcl_main(opts): <VclResponse> # Set a custom VCL file as main
```

Set the specified VCL as the main.

### Examples

```ruby
api_instance = Fastly::VclApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    vcl_name: 'vcl_name_example', # String | The name of this VCL.
}

begin
  # Set a custom VCL file as main
  result = api_instance.set_custom_vcl_main(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling VclApi->set_custom_vcl_main: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **vcl_name** | **String** | The name of this VCL. |  |

### Return type

[**VclResponse**](VclResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_custom_vcl()`

```ruby
update_custom_vcl(opts): <VclResponse> # Update a custom VCL file
```

Update the uploaded VCL for a particular service and version.

### Examples

```ruby
api_instance = Fastly::VclApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    vcl_name: 'vcl_name_example', # String | The name of this VCL.
    content: 'content_example', # String | The VCL code to be included.
    main: true, # Boolean | Set to `true` when this is the main VCL, otherwise `false`.
    name: 'name_example', # String | The name of this VCL.
}

begin
  # Update a custom VCL file
  result = api_instance.update_custom_vcl(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling VclApi->update_custom_vcl: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **vcl_name** | **String** | The name of this VCL. |  |
| **content** | **String** | The VCL code to be included. | [optional] |
| **main** | **Boolean** | Set to `true` when this is the main VCL, otherwise `false`. | [optional] |
| **name** | **String** | The name of this VCL. | [optional] |

### Return type

[**VclResponse**](VclResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
