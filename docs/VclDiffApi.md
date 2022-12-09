# Fastly::VclDiffApi


```ruby
require 'fastly'
api_instance = Fastly::VclDiffApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**vcl_diff_service_versions**](VclDiffApi.md#vcl_diff_service_versions) | **GET** /service/{service_id}/vcl/diff/from/{from_version_id}/to/{to_version_id} | Get a comparison of the VCL changes between two service versions |


## `vcl_diff_service_versions()`

```ruby
vcl_diff_service_versions(opts): <VclDiff> # Get a comparison of the VCL changes between two service versions
```

Get a comparison of the VCL changes between two service versions.

### Examples

```ruby
api_instance = Fastly::VclDiffApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    from_version_id: 1, # Integer | The version number of the service to which changes in the generated VCL are being compared. Can either be a positive number from 1 to your maximum version or a negative number from -1 down (-1 is latest version etc).
    to_version_id: 2, # Integer | The version number of the service from which changes in the generated VCL are being compared. Uses same numbering scheme as `from`.
    format: 'text', # String | Optional method to format the diff field.
}

begin
  # Get a comparison of the VCL changes between two service versions
  result = api_instance.vcl_diff_service_versions(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling VclDiffApi->vcl_diff_service_versions: #{e}"
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

[**VclDiff**](VclDiff.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
