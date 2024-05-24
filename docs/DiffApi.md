# Fastly::DiffApi


```ruby
require 'fastly'
api_instance = Fastly::DiffApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**diff_service_versions**](DiffApi.md#diff_service_versions) | **GET** /service/{service_id}/diff/from/{from_version_id}/to/{to_version_id} | Diff two service versions


## `diff_service_versions()`

```ruby
diff_service_versions(opts): <DiffResponse> # Diff two service versions
```

Get diff between two versions.

### Examples

```ruby
api_instance = Fastly::DiffApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    from_version_id: 1, # Integer | The version number of the service to which changes in the generated VCL are being compared. Can either be a positive number from 1 to your maximum version or a negative number from -1 down (-1 is latest version etc).
    to_version_id: 2, # Integer | The version number of the service from which changes in the generated VCL are being compared. Uses same numbering scheme as `from`.
    format: 'text', # String | Optional method to format the diff field.
}

begin
  # Diff two service versions
  result = api_instance.diff_service_versions(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DiffApi->diff_service_versions: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **from_version_id** | **Integer** | The version number of the service to which changes in the generated VCL are being compared. Can either be a positive number from 1 to your maximum version or a negative number from -1 down (-1 is latest version etc). |  |
| **to_version_id** | **Integer** | The version number of the service from which changes in the generated VCL are being compared. Uses same numbering scheme as `from`. |  |
| **format** | **String** | Optional method to format the diff field. | [optional][default to &#39;text&#39;] |

### Return type

[**DiffResponse**](DiffResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
