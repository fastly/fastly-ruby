# Fastly::TlsDomainsApi


```ruby
require 'fastly'
api_instance = Fastly::TlsDomainsApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_tls_domains**](TlsDomainsApi.md#list_tls_domains) | **GET** /tls/domains | List TLS domains |


## `list_tls_domains()`

```ruby
list_tls_domains(opts): <TlsDomainsResponse> # List TLS domains
```

List all TLS domains.

### Examples

```ruby
api_instance = Fastly::TlsDomainsApi.new
opts = {
    filter_in_use: 'filter_in_use_example', # String | Optional. Limit the returned domains to those currently using Fastly to terminate TLS with SNI (that is, domains considered \"in use\") Permitted values: true, false.
    filter_tls_certificates_id: 'filter_tls_certificates_id_example', # String | Optional. Limit the returned domains to those listed in the given TLS certificate's SAN list.
    filter_tls_subscriptions_id: 'filter_tls_subscriptions_id_example', # String | Optional. Limit the returned domains to those for a given TLS subscription.
    include: 'include_example', # String | Include related objects. Optional, comma-separated values. Permitted values: `tls_activations`, `tls_certificates`, `tls_subscriptions`, `tls_subscriptions.tls_authorizations`, and `tls_authorizations.globalsign_email_challenge`. 
    page_number: 1, # Integer | Current page.
    page_size: 20, # Integer | Number of records per page.
    sort: 'created_at', # String | The order in which to list the results by creation date.
}

begin
  # List TLS domains
  result = api_instance.list_tls_domains(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TlsDomainsApi->list_tls_domains: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_in_use** | **String** | Optional. Limit the returned domains to those currently using Fastly to terminate TLS with SNI (that is, domains considered \&quot;in use\&quot;) Permitted values: true, false. | [optional] |
| **filter_tls_certificates_id** | **String** | Optional. Limit the returned domains to those listed in the given TLS certificate&#39;s SAN list. | [optional] |
| **filter_tls_subscriptions_id** | **String** | Optional. Limit the returned domains to those for a given TLS subscription. | [optional] |
| **include** | **String** | Include related objects. Optional, comma-separated values. Permitted values: `tls_activations`, `tls_certificates`, `tls_subscriptions`, `tls_subscriptions.tls_authorizations`, and `tls_authorizations.globalsign_email_challenge`.  | [optional] |
| **page_number** | **Integer** | Current page. | [optional] |
| **page_size** | **Integer** | Number of records per page. | [optional][default to 20] |
| **sort** | **String** | The order in which to list the results by creation date. | [optional][default to &#39;created_at&#39;] |

### Return type

[**TlsDomainsResponse**](TlsDomainsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
