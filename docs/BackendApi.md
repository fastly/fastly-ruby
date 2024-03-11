# Fastly::BackendApi


```ruby
require 'fastly'
api_instance = Fastly::BackendApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_backend**](BackendApi.md#create_backend) | **POST** /service/{service_id}/version/{version_id}/backend | Create a backend |
| [**delete_backend**](BackendApi.md#delete_backend) | **DELETE** /service/{service_id}/version/{version_id}/backend/{backend_name} | Delete a backend |
| [**get_backend**](BackendApi.md#get_backend) | **GET** /service/{service_id}/version/{version_id}/backend/{backend_name} | Describe a backend |
| [**list_backends**](BackendApi.md#list_backends) | **GET** /service/{service_id}/version/{version_id}/backend | List backends |
| [**update_backend**](BackendApi.md#update_backend) | **PUT** /service/{service_id}/version/{version_id}/backend/{backend_name} | Update a backend |


## `create_backend()`

```ruby
create_backend(opts): <BackendResponse> # Create a backend
```

Create a backend for a particular service and version.

### Examples

```ruby
api_instance = Fastly::BackendApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    address: 'address_example', # String | A hostname, IPv4, or IPv6 address for the backend. This is the preferred way to specify the location of your backend.
    auto_loadbalance: true, # Boolean | Whether or not this backend should be automatically load balanced. If true, all backends with this setting that don't have a `request_condition` will be selected based on their `weight`.
    between_bytes_timeout: 56, # Integer | Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, the response received so far will be considered complete and the fetch will end. May be set at runtime using `bereq.between_bytes_timeout`.
    client_cert: 'client_cert_example', # String | Unused.
    comment: 'comment_example', # String | A freeform descriptive note.
    connect_timeout: 56, # Integer | Maximum duration in milliseconds to wait for a connection to this backend to be established. If exceeded, the connection is aborted and a synthetic `503` response will be presented instead. May be set at runtime using `bereq.connect_timeout`.
    first_byte_timeout: 56, # Integer | Maximum duration in milliseconds to wait for the server response to begin after a TCP connection is established and the request has been sent. If exceeded, the connection is aborted and a synthetic `503` response will be presented instead. May be set at runtime using `bereq.first_byte_timeout`.
    healthcheck: 'healthcheck_example', # String | The name of the healthcheck to use with this backend.
    hostname: 'hostname_example', # String | The hostname of the backend. May be used as an alternative to `address` to set the backend location.
    ipv4: 'ipv4_example', # String | IPv4 address of the backend. May be used as an alternative to `address` to set the backend location.
    ipv6: 'ipv6_example', # String | IPv6 address of the backend. May be used as an alternative to `address` to set the backend location.
    keepalive_time: 56, # Integer | How long in seconds to keep a persistent connection to the backend between requests.
    max_conn: 56, # Integer | Maximum number of concurrent connections this backend will accept.
    max_tls_version: 'max_tls_version_example', # String | Maximum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated.
    min_tls_version: 'min_tls_version_example', # String | Minimum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated.
    name: 'name_example', # String | The name of the backend.
    override_host: 'override_host_example', # String | If set, will replace the client-supplied HTTP `Host` header on connections to this backend. Applied after VCL has been processed, so this setting will take precedence over changing `bereq.http.Host` in VCL.
    port: 56, # Integer | Port on which the backend server is listening for connections from Fastly. Setting `port` to 80 or 443 will also set `use_ssl` automatically (to false and true respectively), unless explicitly overridden by setting `use_ssl` in the same request.
    request_condition: 'request_condition_example', # String | Name of a Condition, which if satisfied, will select this backend during a request. If set, will override any `auto_loadbalance` setting. By default, the first backend added to a service is selected for all requests.
    share_key: 'share_key_example', # String | Value that when shared across backends will enable those backends to share the same health check.
    shield: 'shield_example', # String | Identifier of the POP to use as a [shield](https://docs.fastly.com/en/guides/shielding).
    ssl_ca_cert: 'ssl_ca_cert_example', # String | CA certificate attached to origin.
    ssl_cert_hostname: 'ssl_cert_hostname_example', # String | Overrides `ssl_hostname`, but only for cert verification. Does not affect SNI at all.
    ssl_check_cert: true, # Boolean | Be strict on checking SSL certs.
    ssl_ciphers: 'ssl_ciphers_example', # String | List of [OpenSSL ciphers](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) to support for connections to this origin. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated.
    ssl_client_cert: 'ssl_client_cert_example', # String | Client certificate attached to origin.
    ssl_client_key: 'ssl_client_key_example', # String | Client key attached to origin.
    ssl_hostname: 'ssl_hostname_example', # String | Use `ssl_cert_hostname` and `ssl_sni_hostname` to configure certificate validation.
    ssl_sni_hostname: 'ssl_sni_hostname_example', # String | Overrides `ssl_hostname`, but only for SNI in the handshake. Does not affect cert validation at all.
    use_ssl: true, # Boolean | Whether or not to require TLS for connections to this backend.
    weight: 56, # Integer | Weight used to load balance this backend against others. May be any positive integer. If `auto_loadbalance` is true, the chance of this backend being selected is equal to its own weight over the sum of all weights for backends that have `auto_loadbalance` set to true.
}

begin
  # Create a backend
  result = api_instance.create_backend(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BackendApi->create_backend: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **address** | **String** | A hostname, IPv4, or IPv6 address for the backend. This is the preferred way to specify the location of your backend. | [optional] |
| **auto_loadbalance** | **Boolean** | Whether or not this backend should be automatically load balanced. If true, all backends with this setting that don&#39;t have a `request_condition` will be selected based on their `weight`. | [optional] |
| **between_bytes_timeout** | **Integer** | Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, the response received so far will be considered complete and the fetch will end. May be set at runtime using `bereq.between_bytes_timeout`. | [optional] |
| **client_cert** | **String** | Unused. | [optional] |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **connect_timeout** | **Integer** | Maximum duration in milliseconds to wait for a connection to this backend to be established. If exceeded, the connection is aborted and a synthetic `503` response will be presented instead. May be set at runtime using `bereq.connect_timeout`. | [optional] |
| **first_byte_timeout** | **Integer** | Maximum duration in milliseconds to wait for the server response to begin after a TCP connection is established and the request has been sent. If exceeded, the connection is aborted and a synthetic `503` response will be presented instead. May be set at runtime using `bereq.first_byte_timeout`. | [optional] |
| **healthcheck** | **String** | The name of the healthcheck to use with this backend. | [optional] |
| **hostname** | **String** | The hostname of the backend. May be used as an alternative to `address` to set the backend location. | [optional] |
| **ipv4** | **String** | IPv4 address of the backend. May be used as an alternative to `address` to set the backend location. | [optional] |
| **ipv6** | **String** | IPv6 address of the backend. May be used as an alternative to `address` to set the backend location. | [optional] |
| **keepalive_time** | **Integer** | How long in seconds to keep a persistent connection to the backend between requests. | [optional] |
| **max_conn** | **Integer** | Maximum number of concurrent connections this backend will accept. | [optional] |
| **max_tls_version** | **String** | Maximum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated. | [optional] |
| **min_tls_version** | **String** | Minimum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated. | [optional] |
| **name** | **String** | The name of the backend. | [optional] |
| **override_host** | **String** | If set, will replace the client-supplied HTTP `Host` header on connections to this backend. Applied after VCL has been processed, so this setting will take precedence over changing `bereq.http.Host` in VCL. | [optional] |
| **port** | **Integer** | Port on which the backend server is listening for connections from Fastly. Setting `port` to 80 or 443 will also set `use_ssl` automatically (to false and true respectively), unless explicitly overridden by setting `use_ssl` in the same request. | [optional] |
| **request_condition** | **String** | Name of a Condition, which if satisfied, will select this backend during a request. If set, will override any `auto_loadbalance` setting. By default, the first backend added to a service is selected for all requests. | [optional] |
| **share_key** | **String** | Value that when shared across backends will enable those backends to share the same health check. | [optional] |
| **shield** | **String** | Identifier of the POP to use as a [shield](https://docs.fastly.com/en/guides/shielding). | [optional] |
| **ssl_ca_cert** | **String** | CA certificate attached to origin. | [optional] |
| **ssl_cert_hostname** | **String** | Overrides `ssl_hostname`, but only for cert verification. Does not affect SNI at all. | [optional] |
| **ssl_check_cert** | **Boolean** | Be strict on checking SSL certs. | [optional][default to true] |
| **ssl_ciphers** | **String** | List of [OpenSSL ciphers](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) to support for connections to this origin. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated. | [optional] |
| **ssl_client_cert** | **String** | Client certificate attached to origin. | [optional] |
| **ssl_client_key** | **String** | Client key attached to origin. | [optional] |
| **ssl_hostname** | **String** | Use `ssl_cert_hostname` and `ssl_sni_hostname` to configure certificate validation. | [optional] |
| **ssl_sni_hostname** | **String** | Overrides `ssl_hostname`, but only for SNI in the handshake. Does not affect cert validation at all. | [optional] |
| **use_ssl** | **Boolean** | Whether or not to require TLS for connections to this backend. | [optional] |
| **weight** | **Integer** | Weight used to load balance this backend against others. May be any positive integer. If `auto_loadbalance` is true, the chance of this backend being selected is equal to its own weight over the sum of all weights for backends that have `auto_loadbalance` set to true. | [optional] |

### Return type

[**BackendResponse**](BackendResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_backend()`

```ruby
delete_backend(opts): <InlineResponse200> # Delete a backend
```

Delete the backend for a particular service and version.

### Examples

```ruby
api_instance = Fastly::BackendApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    backend_name: 'backend_name_example', # String | The name of the backend.
}

begin
  # Delete a backend
  result = api_instance.delete_backend(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BackendApi->delete_backend: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **backend_name** | **String** | The name of the backend. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_backend()`

```ruby
get_backend(opts): <BackendResponse> # Describe a backend
```

Get the backend for a particular service and version.

### Examples

```ruby
api_instance = Fastly::BackendApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    backend_name: 'backend_name_example', # String | The name of the backend.
}

begin
  # Describe a backend
  result = api_instance.get_backend(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BackendApi->get_backend: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **backend_name** | **String** | The name of the backend. |  |

### Return type

[**BackendResponse**](BackendResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_backends()`

```ruby
list_backends(opts): <Array<BackendResponse>> # List backends
```

List all backends for a particular service and version.

### Examples

```ruby
api_instance = Fastly::BackendApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List backends
  result = api_instance.list_backends(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BackendApi->list_backends: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;BackendResponse&gt;**](BackendResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_backend()`

```ruby
update_backend(opts): <BackendResponse> # Update a backend
```

Update the backend for a particular service and version.

### Examples

```ruby
api_instance = Fastly::BackendApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    backend_name: 'backend_name_example', # String | The name of the backend.
    address: 'address_example', # String | A hostname, IPv4, or IPv6 address for the backend. This is the preferred way to specify the location of your backend.
    auto_loadbalance: true, # Boolean | Whether or not this backend should be automatically load balanced. If true, all backends with this setting that don't have a `request_condition` will be selected based on their `weight`.
    between_bytes_timeout: 56, # Integer | Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, the response received so far will be considered complete and the fetch will end. May be set at runtime using `bereq.between_bytes_timeout`.
    client_cert: 'client_cert_example', # String | Unused.
    comment: 'comment_example', # String | A freeform descriptive note.
    connect_timeout: 56, # Integer | Maximum duration in milliseconds to wait for a connection to this backend to be established. If exceeded, the connection is aborted and a synthetic `503` response will be presented instead. May be set at runtime using `bereq.connect_timeout`.
    first_byte_timeout: 56, # Integer | Maximum duration in milliseconds to wait for the server response to begin after a TCP connection is established and the request has been sent. If exceeded, the connection is aborted and a synthetic `503` response will be presented instead. May be set at runtime using `bereq.first_byte_timeout`.
    healthcheck: 'healthcheck_example', # String | The name of the healthcheck to use with this backend.
    hostname: 'hostname_example', # String | The hostname of the backend. May be used as an alternative to `address` to set the backend location.
    ipv4: 'ipv4_example', # String | IPv4 address of the backend. May be used as an alternative to `address` to set the backend location.
    ipv6: 'ipv6_example', # String | IPv6 address of the backend. May be used as an alternative to `address` to set the backend location.
    keepalive_time: 56, # Integer | How long in seconds to keep a persistent connection to the backend between requests.
    max_conn: 56, # Integer | Maximum number of concurrent connections this backend will accept.
    max_tls_version: 'max_tls_version_example', # String | Maximum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated.
    min_tls_version: 'min_tls_version_example', # String | Minimum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated.
    name: 'name_example', # String | The name of the backend.
    override_host: 'override_host_example', # String | If set, will replace the client-supplied HTTP `Host` header on connections to this backend. Applied after VCL has been processed, so this setting will take precedence over changing `bereq.http.Host` in VCL.
    port: 56, # Integer | Port on which the backend server is listening for connections from Fastly. Setting `port` to 80 or 443 will also set `use_ssl` automatically (to false and true respectively), unless explicitly overridden by setting `use_ssl` in the same request.
    request_condition: 'request_condition_example', # String | Name of a Condition, which if satisfied, will select this backend during a request. If set, will override any `auto_loadbalance` setting. By default, the first backend added to a service is selected for all requests.
    share_key: 'share_key_example', # String | Value that when shared across backends will enable those backends to share the same health check.
    shield: 'shield_example', # String | Identifier of the POP to use as a [shield](https://docs.fastly.com/en/guides/shielding).
    ssl_ca_cert: 'ssl_ca_cert_example', # String | CA certificate attached to origin.
    ssl_cert_hostname: 'ssl_cert_hostname_example', # String | Overrides `ssl_hostname`, but only for cert verification. Does not affect SNI at all.
    ssl_check_cert: true, # Boolean | Be strict on checking SSL certs.
    ssl_ciphers: 'ssl_ciphers_example', # String | List of [OpenSSL ciphers](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) to support for connections to this origin. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated.
    ssl_client_cert: 'ssl_client_cert_example', # String | Client certificate attached to origin.
    ssl_client_key: 'ssl_client_key_example', # String | Client key attached to origin.
    ssl_hostname: 'ssl_hostname_example', # String | Use `ssl_cert_hostname` and `ssl_sni_hostname` to configure certificate validation.
    ssl_sni_hostname: 'ssl_sni_hostname_example', # String | Overrides `ssl_hostname`, but only for SNI in the handshake. Does not affect cert validation at all.
    use_ssl: true, # Boolean | Whether or not to require TLS for connections to this backend.
    weight: 56, # Integer | Weight used to load balance this backend against others. May be any positive integer. If `auto_loadbalance` is true, the chance of this backend being selected is equal to its own weight over the sum of all weights for backends that have `auto_loadbalance` set to true.
}

begin
  # Update a backend
  result = api_instance.update_backend(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BackendApi->update_backend: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **backend_name** | **String** | The name of the backend. |  |
| **address** | **String** | A hostname, IPv4, or IPv6 address for the backend. This is the preferred way to specify the location of your backend. | [optional] |
| **auto_loadbalance** | **Boolean** | Whether or not this backend should be automatically load balanced. If true, all backends with this setting that don&#39;t have a `request_condition` will be selected based on their `weight`. | [optional] |
| **between_bytes_timeout** | **Integer** | Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, the response received so far will be considered complete and the fetch will end. May be set at runtime using `bereq.between_bytes_timeout`. | [optional] |
| **client_cert** | **String** | Unused. | [optional] |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **connect_timeout** | **Integer** | Maximum duration in milliseconds to wait for a connection to this backend to be established. If exceeded, the connection is aborted and a synthetic `503` response will be presented instead. May be set at runtime using `bereq.connect_timeout`. | [optional] |
| **first_byte_timeout** | **Integer** | Maximum duration in milliseconds to wait for the server response to begin after a TCP connection is established and the request has been sent. If exceeded, the connection is aborted and a synthetic `503` response will be presented instead. May be set at runtime using `bereq.first_byte_timeout`. | [optional] |
| **healthcheck** | **String** | The name of the healthcheck to use with this backend. | [optional] |
| **hostname** | **String** | The hostname of the backend. May be used as an alternative to `address` to set the backend location. | [optional] |
| **ipv4** | **String** | IPv4 address of the backend. May be used as an alternative to `address` to set the backend location. | [optional] |
| **ipv6** | **String** | IPv6 address of the backend. May be used as an alternative to `address` to set the backend location. | [optional] |
| **keepalive_time** | **Integer** | How long in seconds to keep a persistent connection to the backend between requests. | [optional] |
| **max_conn** | **Integer** | Maximum number of concurrent connections this backend will accept. | [optional] |
| **max_tls_version** | **String** | Maximum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated. | [optional] |
| **min_tls_version** | **String** | Minimum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated. | [optional] |
| **name** | **String** | The name of the backend. | [optional] |
| **override_host** | **String** | If set, will replace the client-supplied HTTP `Host` header on connections to this backend. Applied after VCL has been processed, so this setting will take precedence over changing `bereq.http.Host` in VCL. | [optional] |
| **port** | **Integer** | Port on which the backend server is listening for connections from Fastly. Setting `port` to 80 or 443 will also set `use_ssl` automatically (to false and true respectively), unless explicitly overridden by setting `use_ssl` in the same request. | [optional] |
| **request_condition** | **String** | Name of a Condition, which if satisfied, will select this backend during a request. If set, will override any `auto_loadbalance` setting. By default, the first backend added to a service is selected for all requests. | [optional] |
| **share_key** | **String** | Value that when shared across backends will enable those backends to share the same health check. | [optional] |
| **shield** | **String** | Identifier of the POP to use as a [shield](https://docs.fastly.com/en/guides/shielding). | [optional] |
| **ssl_ca_cert** | **String** | CA certificate attached to origin. | [optional] |
| **ssl_cert_hostname** | **String** | Overrides `ssl_hostname`, but only for cert verification. Does not affect SNI at all. | [optional] |
| **ssl_check_cert** | **Boolean** | Be strict on checking SSL certs. | [optional][default to true] |
| **ssl_ciphers** | **String** | List of [OpenSSL ciphers](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) to support for connections to this origin. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic `503` error response will be generated. | [optional] |
| **ssl_client_cert** | **String** | Client certificate attached to origin. | [optional] |
| **ssl_client_key** | **String** | Client key attached to origin. | [optional] |
| **ssl_hostname** | **String** | Use `ssl_cert_hostname` and `ssl_sni_hostname` to configure certificate validation. | [optional] |
| **ssl_sni_hostname** | **String** | Overrides `ssl_hostname`, but only for SNI in the handshake. Does not affect cert validation at all. | [optional] |
| **use_ssl** | **Boolean** | Whether or not to require TLS for connections to this backend. | [optional] |
| **weight** | **Integer** | Weight used to load balance this backend against others. May be any positive integer. If `auto_loadbalance` is true, the chance of this backend being selected is equal to its own weight over the sum of all weights for backends that have `auto_loadbalance` set to true. | [optional] |

### Return type

[**BackendResponse**](BackendResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
