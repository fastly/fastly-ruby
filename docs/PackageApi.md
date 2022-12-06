# Fastly::PackageApi


```ruby
require 'fastly'
api_instance = Fastly::PackageApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_package**](PackageApi.md#get_package) | **GET** /service/{service_id}/version/{version_id}/package | Get details of the service&#39;s Compute@Edge package. |
| [**put_package**](PackageApi.md#put_package) | **PUT** /service/{service_id}/version/{version_id}/package | Upload a Compute@Edge package. |


## `get_package()`

```ruby
get_package(opts): <PackageResponse> # Get details of the service's Compute@Edge package.
```

List detailed information about the Compute@Edge package for the specified service.

### Examples

```ruby
api_instance = Fastly::PackageApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # Get details of the service's Compute@Edge package.
  result = api_instance.get_package(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling PackageApi->get_package: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**PackageResponse**](PackageResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `put_package()`

```ruby
put_package(opts): <PackageResponse> # Upload a Compute@Edge package.
```

Upload a Compute@Edge package associated with the specified service version.

### Examples

```ruby
api_instance = Fastly::PackageApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    expect: '100-continue', # String | We recommend using the Expect header because it may identify issues with the request based upon the headers alone instead of requiring you to wait until the entire binary package upload has completed.
    package: File.new('/path/to/some/file'), # File | The content of the Wasm binary package.
}

begin
  # Upload a Compute@Edge package.
  result = api_instance.put_package(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling PackageApi->put_package: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **expect** | **String** | We recommend using the Expect header because it may identify issues with the request based upon the headers alone instead of requiring you to wait until the entire binary package upload has completed. | [optional] |
| **package** | **File** | The content of the Wasm binary package. | [optional] |

### Return type

[**PackageResponse**](PackageResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
