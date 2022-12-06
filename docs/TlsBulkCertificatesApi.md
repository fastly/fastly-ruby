# Fastly::TlsBulkCertificatesApi


```ruby
require 'fastly'
api_instance = Fastly::TlsBulkCertificatesApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_bulk_tls_cert**](TlsBulkCertificatesApi.md#delete_bulk_tls_cert) | **DELETE** /tls/bulk/certificates/{certificate_id} | Delete a certificate |
| [**get_tls_bulk_cert**](TlsBulkCertificatesApi.md#get_tls_bulk_cert) | **GET** /tls/bulk/certificates/{certificate_id} | Get a certificate |
| [**list_tls_bulk_certs**](TlsBulkCertificatesApi.md#list_tls_bulk_certs) | **GET** /tls/bulk/certificates | List certificates |
| [**update_bulk_tls_cert**](TlsBulkCertificatesApi.md#update_bulk_tls_cert) | **PATCH** /tls/bulk/certificates/{certificate_id} | Update a certificate |
| [**upload_tls_bulk_cert**](TlsBulkCertificatesApi.md#upload_tls_bulk_cert) | **POST** /tls/bulk/certificates | Upload a certificate |


## `delete_bulk_tls_cert()`

```ruby
delete_bulk_tls_cert(opts) # Delete a certificate
```

Destroy a certificate. This disables TLS for all domains listed as SAN entries.

### Examples

```ruby
api_instance = Fastly::TlsBulkCertificatesApi.new
opts = {
    certificate_id: 'certificate_id_example', # String | Alphanumeric string identifying a TLS bulk certificate.
}

begin
  # Delete a certificate
  api_instance.delete_bulk_tls_cert(opts)
rescue Fastly::ApiError => e
  puts "Error when calling TlsBulkCertificatesApi->delete_bulk_tls_cert: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **certificate_id** | **String** | Alphanumeric string identifying a TLS bulk certificate. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_tls_bulk_cert()`

```ruby
get_tls_bulk_cert(opts): <TlsBulkCertificateResponse> # Get a certificate
```

Retrieve a single certificate.

### Examples

```ruby
api_instance = Fastly::TlsBulkCertificatesApi.new
opts = {
    certificate_id: 'certificate_id_example', # String | Alphanumeric string identifying a TLS bulk certificate.
}

begin
  # Get a certificate
  result = api_instance.get_tls_bulk_cert(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TlsBulkCertificatesApi->get_tls_bulk_cert: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **certificate_id** | **String** | Alphanumeric string identifying a TLS bulk certificate. |  |

### Return type

[**TlsBulkCertificateResponse**](TlsBulkCertificateResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_tls_bulk_certs()`

```ruby
list_tls_bulk_certs(opts): <TlsBulkCertificatesResponse> # List certificates
```

List all certificates.

### Examples

```ruby
api_instance = Fastly::TlsBulkCertificatesApi.new
opts = {
    filter_tls_domain_id: 'filter_tls_domain_id_example', # String | Filter certificates by their matching, fully-qualified domain name.
    page_number: 1, # Integer | Current page.
    page_size: 20, # Integer | Number of records per page.
    sort: 'created_at', # String | The order in which to list the results by creation date.
}

begin
  # List certificates
  result = api_instance.list_tls_bulk_certs(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TlsBulkCertificatesApi->list_tls_bulk_certs: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_tls_domain_id** | **String** | Filter certificates by their matching, fully-qualified domain name. | [optional] |
| **page_number** | **Integer** | Current page. | [optional] |
| **page_size** | **Integer** | Number of records per page. | [optional][default to 20] |
| **sort** | **String** | The order in which to list the results by creation date. | [optional][default to &#39;created_at&#39;] |

### Return type

[**TlsBulkCertificatesResponse**](TlsBulkCertificatesResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_bulk_tls_cert()`

```ruby
update_bulk_tls_cert(opts): <TlsBulkCertificateResponse> # Update a certificate
```

Replace a certificate with a newly reissued certificate. By using this endpoint, the original certificate will cease to be used for future TLS handshakes. Thus, only SAN entries that appear in the replacement certificate will become TLS enabled. Any SAN entries that are missing in the replacement certificate will become disabled.

### Examples

```ruby
api_instance = Fastly::TlsBulkCertificatesApi.new
opts = {
    certificate_id: 'certificate_id_example', # String | Alphanumeric string identifying a TLS bulk certificate.
    tls_bulk_certificate: Fastly::TlsBulkCertificate.new, # TlsBulkCertificate | 
}

begin
  # Update a certificate
  result = api_instance.update_bulk_tls_cert(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TlsBulkCertificatesApi->update_bulk_tls_cert: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **certificate_id** | **String** | Alphanumeric string identifying a TLS bulk certificate. |  |
| **tls_bulk_certificate** | [**TlsBulkCertificate**](TlsBulkCertificate.md) |  | [optional] |

### Return type

[**TlsBulkCertificateResponse**](TlsBulkCertificateResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `upload_tls_bulk_cert()`

```ruby
upload_tls_bulk_cert(opts): <TlsBulkCertificateResponse> # Upload a certificate
```

Upload a new certificate. TLS domains are automatically enabled upon certificate creation. If a domain is already enabled on a previously uploaded certificate, that domain will be updated to use the new certificate for all future TLS handshake requests.

### Examples

```ruby
api_instance = Fastly::TlsBulkCertificatesApi.new
opts = {
    tls_bulk_certificate: Fastly::TlsBulkCertificate.new, # TlsBulkCertificate | 
}

begin
  # Upload a certificate
  result = api_instance.upload_tls_bulk_cert(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TlsBulkCertificatesApi->upload_tls_bulk_cert: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tls_bulk_certificate** | [**TlsBulkCertificate**](TlsBulkCertificate.md) |  | [optional] |

### Return type

[**TlsBulkCertificateResponse**](TlsBulkCertificateResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
