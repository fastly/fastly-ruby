# Fastly::TlsCsrsApi


```ruby
require 'fastly'
api_instance = Fastly::TlsCsrsApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_csr**](TlsCsrsApi.md#create_csr) | **POST** /tls/certificate_signing_requests | Create CSR |


## `create_csr()`

```ruby
create_csr(opts): <TlsCsrResponse> # Create CSR
```

Creates a certificate signing request (CSR).

### Examples

```ruby
api_instance = Fastly::TlsCsrsApi.new
opts = {
    tls_csr: Fastly::TlsCsr.new, # TlsCsr | 
}

begin
  # Create CSR
  result = api_instance.create_csr(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TlsCsrsApi->create_csr: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tls_csr** | [**TlsCsr**](TlsCsr.md) |  | [optional] |

### Return type

[**TlsCsrResponse**](TlsCsrResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
