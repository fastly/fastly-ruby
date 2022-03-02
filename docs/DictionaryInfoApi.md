# Fastly::DictionaryInfoApi


```ruby
require 'fastly'
api_instance = Fastly::DictionaryInfoApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_dictionary_info**](DictionaryInfoApi.md#get_dictionary_info) | **GET** /service/{service_id}/version/{version_id}/dictionary/{dictionary_id}/info | Get edge dictionary metadata |


## `get_dictionary_info()`

```ruby
get_dictionary_info(opts): <DictionaryInfoResponse> # Get edge dictionary metadata
```

Retrieve metadata for a single dictionary by ID for a version and service.

### Examples

```ruby
api_instance = Fastly::DictionaryInfoApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    dictionary_id: 'dictionary_id_example', # String | Alphanumeric string identifying a Dictionary.
}

begin
  # Get edge dictionary metadata
  result = api_instance.get_dictionary_info(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DictionaryInfoApi->get_dictionary_info: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **dictionary_id** | **String** | Alphanumeric string identifying a Dictionary. |  |

### Return type

[**DictionaryInfoResponse**](DictionaryInfoResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
