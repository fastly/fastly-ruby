# Fastly::TlsCertificatesApi


```ruby
require 'fastly'
api_instance = Fastly::TlsCertificatesApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_tls_cert**](TlsCertificatesApi.md#create_tls_cert) | **POST** /tls/certificates | Create a TLS certificate
[**delete_tls_cert**](TlsCertificatesApi.md#delete_tls_cert) | **DELETE** /tls/certificates/{tls_certificate_id} | Delete a TLS certificate
[**get_tls_cert**](TlsCertificatesApi.md#get_tls_cert) | **GET** /tls/certificates/{tls_certificate_id} | Get a TLS certificate
[**get_tls_cert_blob**](TlsCertificatesApi.md#get_tls_cert_blob) | **GET** /tls/certificates/{tls_certificate_id}/blob | Get a TLS certificate blob (Limited Availability)
[**list_tls_certs**](TlsCertificatesApi.md#list_tls_certs) | **GET** /tls/certificates | List TLS certificates
[**update_tls_cert**](TlsCertificatesApi.md#update_tls_cert) | **PATCH** /tls/certificates/{tls_certificate_id} | Update a TLS certificate


## `create_tls_cert()`

```ruby
create_tls_cert(opts): Object # Create a TLS certificate
```

Create a TLS certificate.

### Examples

```ruby
api_instance = Fastly::TlsCertificatesApi.new
opts = {
    tls_certificate: Fastly::TlsCertificate.new, # TlsCertificate | 
}

begin
  # Create a TLS certificate
  result = api_instance.create_tls_cert(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TlsCertificatesApi->create_tls_cert: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tls_certificate** | [**TlsCertificate**](TlsCertificate.md) |  | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_tls_cert()`

```ruby
delete_tls_cert(opts) # Delete a TLS certificate
```

Destroy a TLS certificate. TLS certificates already enabled for a domain cannot be destroyed.

### Examples

```ruby
api_instance = Fastly::TlsCertificatesApi.new
opts = {
    tls_certificate_id: 'tls_certificate_id_example', # String | Alphanumeric string identifying a TLS certificate.
}

begin
  # Delete a TLS certificate
  api_instance.delete_tls_cert(opts)
rescue Fastly::ApiError => e
  puts "Error when calling TlsCertificatesApi->delete_tls_cert: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tls_certificate_id** | **String** | Alphanumeric string identifying a TLS certificate. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_tls_cert()`

```ruby
get_tls_cert(opts): <TlsCertificateResponse> # Get a TLS certificate
```

Show a TLS certificate.

### Examples

```ruby
api_instance = Fastly::TlsCertificatesApi.new
opts = {
    tls_certificate_id: 'tls_certificate_id_example', # String | Alphanumeric string identifying a TLS certificate.
}

begin
  # Get a TLS certificate
  result = api_instance.get_tls_cert(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TlsCertificatesApi->get_tls_cert: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tls_certificate_id** | **String** | Alphanumeric string identifying a TLS certificate. |  |

### Return type

[**TlsCertificateResponse**](TlsCertificateResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_tls_cert_blob()`

```ruby
get_tls_cert_blob(opts): <TlsCertificateBlobResponse> # Get a TLS certificate blob (Limited Availability)
```

Retrieve a TLS certificate blob. This feature is part of a [limited availability](https://docs.fastly.com/products/fastly-product-lifecycle#limited-availability) release.

### Examples

```ruby
api_instance = Fastly::TlsCertificatesApi.new
opts = {
    tls_certificate_id: 'tls_certificate_id_example', # String | Alphanumeric string identifying a TLS certificate.
}

begin
  # Get a TLS certificate blob (Limited Availability)
  result = api_instance.get_tls_cert_blob(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TlsCertificatesApi->get_tls_cert_blob: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tls_certificate_id** | **String** | Alphanumeric string identifying a TLS certificate. |  |

### Return type

[**TlsCertificateBlobResponse**](TlsCertificateBlobResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_tls_certs()`

```ruby
list_tls_certs(opts): <TlsCertificatesResponse> # List TLS certificates
```

List all TLS certificates.

### Examples

```ruby
api_instance = Fastly::TlsCertificatesApi.new
opts = {
    filter_in_use: 'filter_in_use_example', # String | Optional. Limit the returned certificates to those currently using Fastly to terminate TLS (that is, certificates associated with an activation). Permitted values: true, false.
    filter_not_after: 'filter_not_after_example', # String | Limit the returned certificates to those that expire prior to the specified date in UTC. Accepts parameters: lte (e.g., filter[not_after][lte]=2020-05-05). 
    filter_tls_domains_id: 'filter_tls_domains_id_example', # String | Limit the returned certificates to those that include the specific domain.
    include: 'include_example', # String | Include related objects. Optional, comma-separated values. Permitted values: `tls_activations`. 
    sort: 'created_at', # String | The order in which to list the results.
    page_number: 1, # Integer | Current page.
    page_size: 20, # Integer | Number of records per page.
}

begin
  # List TLS certificates
  result = api_instance.list_tls_certs(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TlsCertificatesApi->list_tls_certs: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_in_use** | **String** | Optional. Limit the returned certificates to those currently using Fastly to terminate TLS (that is, certificates associated with an activation). Permitted values: true, false. | [optional] |
| **filter_not_after** | **String** | Limit the returned certificates to those that expire prior to the specified date in UTC. Accepts parameters: lte (e.g., filter[not_after][lte]&#x3D;2020-05-05).  | [optional] |
| **filter_tls_domains_id** | **String** | Limit the returned certificates to those that include the specific domain. | [optional] |
| **include** | **String** | Include related objects. Optional, comma-separated values. Permitted values: `tls_activations`.  | [optional] |
| **sort** | **String** | The order in which to list the results. | [optional][default to &#39;-created_at&#39;] |
| **page_number** | **Integer** | Current page. | [optional] |
| **page_size** | **Integer** | Number of records per page. | [optional][default to 20] |

### Return type

[**TlsCertificatesResponse**](TlsCertificatesResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_tls_cert()`

```ruby
update_tls_cert(opts): <TlsCertificateResponse> # Update a TLS certificate
```

Replace a TLS certificate with a newly reissued TLS certificate, or update a TLS certificate's name. If replacing a TLS certificate, the new TLS certificate must contain all SAN entries as the current TLS certificate. It must either have an exact matching list or contain a superset.

### Examples

```ruby
api_instance = Fastly::TlsCertificatesApi.new
opts = {
    tls_certificate_id: 'tls_certificate_id_example', # String | Alphanumeric string identifying a TLS certificate.
    tls_certificate: Fastly::TlsCertificate.new, # TlsCertificate | 
}

begin
  # Update a TLS certificate
  result = api_instance.update_tls_cert(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TlsCertificatesApi->update_tls_cert: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tls_certificate_id** | **String** | Alphanumeric string identifying a TLS certificate. |  |
| **tls_certificate** | [**TlsCertificate**](TlsCertificate.md) |  | [optional] |

### Return type

[**TlsCertificateResponse**](TlsCertificateResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
