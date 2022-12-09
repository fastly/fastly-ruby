# Fastly::TlsActivationsApi


```ruby
require 'fastly'
api_instance = Fastly::TlsActivationsApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tls_activation**](TlsActivationsApi.md#create_tls_activation) | **POST** /tls/activations | Enable TLS for a domain using a custom certificate |
| [**delete_tls_activation**](TlsActivationsApi.md#delete_tls_activation) | **DELETE** /tls/activations/{tls_activation_id} | Disable TLS on a domain |
| [**get_tls_activation**](TlsActivationsApi.md#get_tls_activation) | **GET** /tls/activations/{tls_activation_id} | Get a TLS activation |
| [**list_tls_activations**](TlsActivationsApi.md#list_tls_activations) | **GET** /tls/activations | List TLS activations |
| [**update_tls_activation**](TlsActivationsApi.md#update_tls_activation) | **PATCH** /tls/activations/{tls_activation_id} | Update a certificate |


## `create_tls_activation()`

```ruby
create_tls_activation(opts): <TlsActivationResponse> # Enable TLS for a domain using a custom certificate
```

Enable TLS for a particular TLS domain and certificate combination. These relationships must be specified to create the TLS activation.

### Examples

```ruby
api_instance = Fastly::TlsActivationsApi.new
opts = {
    tls_activation: Fastly::TlsActivation.new, # TlsActivation | 
}

begin
  # Enable TLS for a domain using a custom certificate
  result = api_instance.create_tls_activation(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TlsActivationsApi->create_tls_activation: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tls_activation** | [**TlsActivation**](TlsActivation.md) |  | [optional] |

### Return type

[**TlsActivationResponse**](TlsActivationResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_tls_activation()`

```ruby
delete_tls_activation(opts) # Disable TLS on a domain
```

Disable TLS on the domain associated with this TLS activation.

### Examples

```ruby
api_instance = Fastly::TlsActivationsApi.new
opts = {
    tls_activation_id: 'tls_activation_id_example', # String | Alphanumeric string identifying a TLS activation.
}

begin
  # Disable TLS on a domain
  api_instance.delete_tls_activation(opts)
rescue Fastly::ApiError => e
  puts "Error when calling TlsActivationsApi->delete_tls_activation: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tls_activation_id** | **String** | Alphanumeric string identifying a TLS activation. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_tls_activation()`

```ruby
get_tls_activation(opts): <TlsActivationResponse> # Get a TLS activation
```

Show a TLS activation.

### Examples

```ruby
api_instance = Fastly::TlsActivationsApi.new
opts = {
    tls_activation_id: 'tls_activation_id_example', # String | Alphanumeric string identifying a TLS activation.
    include: 'tls_certificate,tls_configuration,tls_domain', # String | Include related objects. Optional, comma-separated values. Permitted values: `tls_certificate`, `tls_configuration`, and `tls_domain`. 
}

begin
  # Get a TLS activation
  result = api_instance.get_tls_activation(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TlsActivationsApi->get_tls_activation: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Include related objects. Optional, comma-separated values. Permitted values: `tls_certificate`, `tls_configuration`, and `tls_domain`.  | [optional] |
| **tls_activation_id** | **String** | Alphanumeric string identifying a TLS activation. |  |

### Return type

[**TlsActivationResponse**](TlsActivationResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_tls_activations()`

```ruby
list_tls_activations(opts): <TlsActivationsResponse> # List TLS activations
```

List all TLS activations.

### Examples

```ruby
api_instance = Fastly::TlsActivationsApi.new
opts = {
    filter_tls_certificate_id: 'filter_tls_certificate_id_example', # String | Limit the returned activations to a specific certificate.
    filter_tls_configuration_id: 'filter_tls_configuration_id_example', # String | Limit the returned activations to a specific TLS configuration.
    filter_tls_domain_id: 'filter_tls_domain_id_example', # String | Limit the returned rules to a specific domain name.
    include: 'tls_certificate,tls_configuration,tls_domain', # String | Include related objects. Optional, comma-separated values. Permitted values: `tls_certificate`, `tls_configuration`, and `tls_domain`. 
    page_number: 1, # Integer | Current page.
    page_size: 20, # Integer | Number of records per page.
}

begin
  # List TLS activations
  result = api_instance.list_tls_activations(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TlsActivationsApi->list_tls_activations: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_tls_certificate_id** | **String** | Limit the returned activations to a specific certificate. | [optional] |
| **filter_tls_configuration_id** | **String** | Limit the returned activations to a specific TLS configuration. | [optional] |
| **filter_tls_domain_id** | **String** | Limit the returned rules to a specific domain name. | [optional] |
| **include** | **String** | Include related objects. Optional, comma-separated values. Permitted values: `tls_certificate`, `tls_configuration`, and `tls_domain`.  | [optional] |
| **page_number** | **Integer** | Current page. | [optional] |
| **page_size** | **Integer** | Number of records per page. | [optional][default to 20] |

### Return type

[**TlsActivationsResponse**](TlsActivationsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_tls_activation()`

```ruby
update_tls_activation(opts): <TlsActivationResponse> # Update a certificate
```

Update the certificate used to terminate TLS traffic for the domain associated with this TLS activation.

### Examples

```ruby
api_instance = Fastly::TlsActivationsApi.new
opts = {
    tls_activation_id: 'tls_activation_id_example', # String | Alphanumeric string identifying a TLS activation.
    tls_activation: Fastly::TlsActivation.new, # TlsActivation | 
}

begin
  # Update a certificate
  result = api_instance.update_tls_activation(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TlsActivationsApi->update_tls_activation: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tls_activation_id** | **String** | Alphanumeric string identifying a TLS activation. |  |
| **tls_activation** | [**TlsActivation**](TlsActivation.md) |  | [optional] |

### Return type

[**TlsActivationResponse**](TlsActivationResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
