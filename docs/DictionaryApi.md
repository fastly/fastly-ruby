# Fastly::DictionaryApi


```ruby
require 'fastly'
api_instance = Fastly::DictionaryApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_dictionary**](DictionaryApi.md#create_dictionary) | **POST** /service/{service_id}/version/{version_id}/dictionary | Create a dictionary
[**delete_dictionary**](DictionaryApi.md#delete_dictionary) | **DELETE** /service/{service_id}/version/{version_id}/dictionary/{dictionary_name} | Delete a dictionary
[**get_dictionary**](DictionaryApi.md#get_dictionary) | **GET** /service/{service_id}/version/{version_id}/dictionary/{dictionary_name} | Get a dictionary
[**list_dictionaries**](DictionaryApi.md#list_dictionaries) | **GET** /service/{service_id}/version/{version_id}/dictionary | List dictionaries
[**update_dictionary**](DictionaryApi.md#update_dictionary) | **PUT** /service/{service_id}/version/{version_id}/dictionary/{dictionary_name} | Update a dictionary


## `create_dictionary()`

```ruby
create_dictionary(opts): <DictionaryResponse> # Create a dictionary
```

Create named dictionary for a particular service and version.

### Examples

```ruby
api_instance = Fastly::DictionaryApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace).
    write_only: true, # Boolean | Determines if items in the dictionary are readable or not.
}

begin
  # Create a dictionary
  result = api_instance.create_dictionary(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DictionaryApi->create_dictionary: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **name** | **String** | Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace). | [optional] |
| **write_only** | **Boolean** | Determines if items in the dictionary are readable or not. | [optional][default to false] |

### Return type

[**DictionaryResponse**](DictionaryResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_dictionary()`

```ruby
delete_dictionary(opts): <InlineResponse200> # Delete a dictionary
```

Delete named dictionary for a particular service and version.

### Examples

```ruby
api_instance = Fastly::DictionaryApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    dictionary_name: 'dictionary_name_example', # String | Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace).
}

begin
  # Delete a dictionary
  result = api_instance.delete_dictionary(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DictionaryApi->delete_dictionary: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **dictionary_name** | **String** | Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace). |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_dictionary()`

```ruby
get_dictionary(opts): <DictionaryResponse> # Get a dictionary
```

Retrieve a single dictionary by name for the version and service.

### Examples

```ruby
api_instance = Fastly::DictionaryApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    dictionary_name: 'dictionary_name_example', # String | Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace).
}

begin
  # Get a dictionary
  result = api_instance.get_dictionary(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DictionaryApi->get_dictionary: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **dictionary_name** | **String** | Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace). |  |

### Return type

[**DictionaryResponse**](DictionaryResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_dictionaries()`

```ruby
list_dictionaries(opts): <Array<DictionaryResponse>> # List dictionaries
```

List all dictionaries for the version of the service.

### Examples

```ruby
api_instance = Fastly::DictionaryApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List dictionaries
  result = api_instance.list_dictionaries(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DictionaryApi->list_dictionaries: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;DictionaryResponse&gt;**](DictionaryResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_dictionary()`

```ruby
update_dictionary(opts): <DictionaryResponse> # Update a dictionary
```

Update named dictionary for a particular service and version.

### Examples

```ruby
api_instance = Fastly::DictionaryApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    dictionary_name: 'dictionary_name_example', # String | Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace).
    name: 'name_example', # String | Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace).
    write_only: true, # Boolean | Determines if items in the dictionary are readable or not.
}

begin
  # Update a dictionary
  result = api_instance.update_dictionary(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DictionaryApi->update_dictionary: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **dictionary_name** | **String** | Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace). |  |
| **name** | **String** | Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace). | [optional] |
| **write_only** | **Boolean** | Determines if items in the dictionary are readable or not. | [optional][default to false] |

### Return type

[**DictionaryResponse**](DictionaryResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
