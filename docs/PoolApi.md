# Fastly::PoolApi


```ruby
require 'fastly'
api_instance = Fastly::PoolApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_server_pool**](PoolApi.md#create_server_pool) | **POST** /service/{service_id}/version/{version_id}/pool | Create a server pool
[**delete_server_pool**](PoolApi.md#delete_server_pool) | **DELETE** /service/{service_id}/version/{version_id}/pool/{pool_name} | Delete a server pool
[**get_server_pool**](PoolApi.md#get_server_pool) | **GET** /service/{service_id}/version/{version_id}/pool/{pool_name} | Get a server pool
[**list_server_pools**](PoolApi.md#list_server_pools) | **GET** /service/{service_id}/version/{version_id}/pool | List server pools
[**update_server_pool**](PoolApi.md#update_server_pool) | **PUT** /service/{service_id}/version/{version_id}/pool/{pool_name} | Update a server pool


## `create_server_pool()`

```ruby
create_server_pool(opts): <PoolResponsePost> # Create a server pool
```

Creates a pool for a particular service and version.

### Examples

```ruby
api_instance = Fastly::PoolApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    tls_ca_cert: 'tls_ca_cert_example', # String | A secure certificate to authenticate a server with. Must be in PEM format.
    tls_client_cert: 'tls_client_cert_example', # String | The client certificate used to make authenticated requests. Must be in PEM format.
    tls_client_key: 'tls_client_key_example', # String | The client private key used to make authenticated requests. Must be in PEM format.
    tls_cert_hostname: 'tls_cert_hostname_example', # String | The hostname used to verify a server's certificate. It can either be the Common Name (CN) or a Subject Alternative Name (SAN).
    use_tls: 0, # Integer | Whether to use TLS.
    created_at: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Date and time in ISO 8601 format.
    deleted_at: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Date and time in ISO 8601 format.
    updated_at: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Date and time in ISO 8601 format.
    service_id: 'service_id_example', # String | 
    version: 'version_example', # String | 
    name: 'name_example', # String | Name for the Pool.
    shield: 'shield_example', # String | Selected POP to serve as a shield for the servers. Defaults to `null` meaning no origin shielding if not set. Refer to the [POPs API endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/) to get a list of available POPs used for shielding.
    request_condition: 'request_condition_example', # String | Condition which, if met, will select this configuration during a request. Optional.
    tls_ciphers: 'tls_ciphers_example', # String | List of OpenSSL ciphers (see the [openssl.org manpages](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) for details). Optional.
    tls_sni_hostname: 'tls_sni_hostname_example', # String | SNI hostname. Optional.
    min_tls_version: 56, # Integer | Minimum allowed TLS version on connections to this server. Optional.
    max_tls_version: 56, # Integer | Maximum allowed TLS version on connections to this server. Optional.
    healthcheck: 'healthcheck_example', # String | Name of the healthcheck to use with this pool. Can be empty and could be reused across multiple backend and pools.
    comment: 'comment_example', # String | A freeform descriptive note.
    type: 'random', # String | What type of load balance group to use.
    override_host: 'override_host_example', # String | The hostname to [override the Host header](https://www.fastly.com/documentation/guides/full-site-delivery/domains-and-origins/specifying-an-override-host/). Defaults to `null` meaning no override of the Host header will occur. This setting can also be added to a Server definition. If the field is set on a Server definition it will override the Pool setting.
    between_bytes_timeout: 56, # Integer | Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, the response received so far will be considered complete and the fetch will end. May be set at runtime using `bereq.between_bytes_timeout`.
    connect_timeout: 56, # Integer | How long to wait for a timeout in milliseconds. Optional.
    first_byte_timeout: 56, # Integer | How long to wait for the first byte in milliseconds. Optional.
    max_conn_default: 56, # Integer | Maximum number of connections. Optional.
    quorum: 56, # Integer | Percentage of capacity (`0-100`) that needs to be operationally available for a pool to be considered up.
    tls_check_cert: 56, # Integer | Be strict on checking TLS certs. Optional.
}

begin
  # Create a server pool
  result = api_instance.create_server_pool(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling PoolApi->create_server_pool: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **tls_ca_cert** | **String** | A secure certificate to authenticate a server with. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_cert** | **String** | The client certificate used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_key** | **String** | The client private key used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_cert_hostname** | **String** | The hostname used to verify a server&#39;s certificate. It can either be the Common Name (CN) or a Subject Alternative Name (SAN). | [optional][default to &#39;null&#39;] |
| **use_tls** | **Integer** | Whether to use TLS. | [optional][default to 0] |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional] |
| **service_id** | **String** |  | [optional] |
| **version** | **String** |  | [optional] |
| **name** | **String** | Name for the Pool. | [optional] |
| **shield** | **String** | Selected POP to serve as a shield for the servers. Defaults to `null` meaning no origin shielding if not set. Refer to the [POPs API endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/) to get a list of available POPs used for shielding. | [optional][default to &#39;null&#39;] |
| **request_condition** | **String** | Condition which, if met, will select this configuration during a request. Optional. | [optional] |
| **tls_ciphers** | **String** | List of OpenSSL ciphers (see the [openssl.org manpages](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) for details). Optional. | [optional] |
| **tls_sni_hostname** | **String** | SNI hostname. Optional. | [optional] |
| **min_tls_version** | **Integer** | Minimum allowed TLS version on connections to this server. Optional. | [optional] |
| **max_tls_version** | **Integer** | Maximum allowed TLS version on connections to this server. Optional. | [optional] |
| **healthcheck** | **String** | Name of the healthcheck to use with this pool. Can be empty and could be reused across multiple backend and pools. | [optional] |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **type** | **String** | What type of load balance group to use. | [optional] |
| **override_host** | **String** | The hostname to [override the Host header](https://www.fastly.com/documentation/guides/full-site-delivery/domains-and-origins/specifying-an-override-host/). Defaults to `null` meaning no override of the Host header will occur. This setting can also be added to a Server definition. If the field is set on a Server definition it will override the Pool setting. | [optional][default to &#39;null&#39;] |
| **between_bytes_timeout** | **Integer** | Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, the response received so far will be considered complete and the fetch will end. May be set at runtime using `bereq.between_bytes_timeout`. | [optional][default to 10000] |
| **connect_timeout** | **Integer** | How long to wait for a timeout in milliseconds. Optional. | [optional] |
| **first_byte_timeout** | **Integer** | How long to wait for the first byte in milliseconds. Optional. | [optional] |
| **max_conn_default** | **Integer** | Maximum number of connections. Optional. | [optional][default to 200] |
| **quorum** | **Integer** | Percentage of capacity (`0-100`) that needs to be operationally available for a pool to be considered up. | [optional][default to 75] |
| **tls_check_cert** | **Integer** | Be strict on checking TLS certs. Optional. | [optional] |

### Return type

[**PoolResponsePost**](PoolResponsePost.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_server_pool()`

```ruby
delete_server_pool(opts): <InlineResponse200> # Delete a server pool
```

Deletes a specific pool for a particular service and version.

### Examples

```ruby
api_instance = Fastly::PoolApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    pool_name: 'pool_name_example', # String | Name for the Pool.
}

begin
  # Delete a server pool
  result = api_instance.delete_server_pool(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling PoolApi->delete_server_pool: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **pool_name** | **String** | Name for the Pool. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_server_pool()`

```ruby
get_server_pool(opts): <PoolResponse> # Get a server pool
```

Gets a single pool for a particular service and version.

### Examples

```ruby
api_instance = Fastly::PoolApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    pool_name: 'pool_name_example', # String | Name for the Pool.
}

begin
  # Get a server pool
  result = api_instance.get_server_pool(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling PoolApi->get_server_pool: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **pool_name** | **String** | Name for the Pool. |  |

### Return type

[**PoolResponse**](PoolResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_server_pools()`

```ruby
list_server_pools(opts): <Array<PoolResponse>> # List server pools
```

Lists all pools for a particular service and pool.

### Examples

```ruby
api_instance = Fastly::PoolApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List server pools
  result = api_instance.list_server_pools(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling PoolApi->list_server_pools: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;PoolResponse&gt;**](PoolResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_server_pool()`

```ruby
update_server_pool(opts): <PoolResponse> # Update a server pool
```

Updates a specific pool for a particular service and version.

### Examples

```ruby
api_instance = Fastly::PoolApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    pool_name: 'pool_name_example', # String | Name for the Pool.
    tls_ca_cert: 'tls_ca_cert_example', # String | A secure certificate to authenticate a server with. Must be in PEM format.
    tls_client_cert: 'tls_client_cert_example', # String | The client certificate used to make authenticated requests. Must be in PEM format.
    tls_client_key: 'tls_client_key_example', # String | The client private key used to make authenticated requests. Must be in PEM format.
    tls_cert_hostname: 'tls_cert_hostname_example', # String | The hostname used to verify a server's certificate. It can either be the Common Name (CN) or a Subject Alternative Name (SAN).
    use_tls: 0, # Integer | Whether to use TLS.
    created_at: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Date and time in ISO 8601 format.
    deleted_at: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Date and time in ISO 8601 format.
    updated_at: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Date and time in ISO 8601 format.
    service_id: 'service_id_example', # String | 
    version: 'version_example', # String | 
    name: 'name_example', # String | Name for the Pool.
    shield: 'shield_example', # String | Selected POP to serve as a shield for the servers. Defaults to `null` meaning no origin shielding if not set. Refer to the [POPs API endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/) to get a list of available POPs used for shielding.
    request_condition: 'request_condition_example', # String | Condition which, if met, will select this configuration during a request. Optional.
    tls_ciphers: 'tls_ciphers_example', # String | List of OpenSSL ciphers (see the [openssl.org manpages](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) for details). Optional.
    tls_sni_hostname: 'tls_sni_hostname_example', # String | SNI hostname. Optional.
    min_tls_version: 56, # Integer | Minimum allowed TLS version on connections to this server. Optional.
    max_tls_version: 56, # Integer | Maximum allowed TLS version on connections to this server. Optional.
    healthcheck: 'healthcheck_example', # String | Name of the healthcheck to use with this pool. Can be empty and could be reused across multiple backend and pools.
    comment: 'comment_example', # String | A freeform descriptive note.
    type: 'random', # String | What type of load balance group to use.
    override_host: 'override_host_example', # String | The hostname to [override the Host header](https://www.fastly.com/documentation/guides/full-site-delivery/domains-and-origins/specifying-an-override-host/). Defaults to `null` meaning no override of the Host header will occur. This setting can also be added to a Server definition. If the field is set on a Server definition it will override the Pool setting.
    between_bytes_timeout: 56, # Integer | Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, the response received so far will be considered complete and the fetch will end. May be set at runtime using `bereq.between_bytes_timeout`.
    connect_timeout: 56, # Integer | How long to wait for a timeout in milliseconds. Optional.
    first_byte_timeout: 56, # Integer | How long to wait for the first byte in milliseconds. Optional.
    max_conn_default: 56, # Integer | Maximum number of connections. Optional.
    quorum: 56, # Integer | Percentage of capacity (`0-100`) that needs to be operationally available for a pool to be considered up.
    tls_check_cert: 56, # Integer | Be strict on checking TLS certs. Optional.
}

begin
  # Update a server pool
  result = api_instance.update_server_pool(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling PoolApi->update_server_pool: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **pool_name** | **String** | Name for the Pool. |  |
| **tls_ca_cert** | **String** | A secure certificate to authenticate a server with. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_cert** | **String** | The client certificate used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_key** | **String** | The client private key used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_cert_hostname** | **String** | The hostname used to verify a server&#39;s certificate. It can either be the Common Name (CN) or a Subject Alternative Name (SAN). | [optional][default to &#39;null&#39;] |
| **use_tls** | **Integer** | Whether to use TLS. | [optional][default to USE_TLS::no_tls] |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional] |
| **service_id** | **String** |  | [optional] |
| **version** | **String** |  | [optional] |
| **name** | **String** | Name for the Pool. | [optional] |
| **shield** | **String** | Selected POP to serve as a shield for the servers. Defaults to `null` meaning no origin shielding if not set. Refer to the [POPs API endpoint](https://www.fastly.com/documentation/reference/api/utils/pops/) to get a list of available POPs used for shielding. | [optional][default to &#39;null&#39;] |
| **request_condition** | **String** | Condition which, if met, will select this configuration during a request. Optional. | [optional] |
| **tls_ciphers** | **String** | List of OpenSSL ciphers (see the [openssl.org manpages](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) for details). Optional. | [optional] |
| **tls_sni_hostname** | **String** | SNI hostname. Optional. | [optional] |
| **min_tls_version** | **Integer** | Minimum allowed TLS version on connections to this server. Optional. | [optional] |
| **max_tls_version** | **Integer** | Maximum allowed TLS version on connections to this server. Optional. | [optional] |
| **healthcheck** | **String** | Name of the healthcheck to use with this pool. Can be empty and could be reused across multiple backend and pools. | [optional] |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **type** | **String** | What type of load balance group to use. | [optional] |
| **override_host** | **String** | The hostname to [override the Host header](https://www.fastly.com/documentation/guides/full-site-delivery/domains-and-origins/specifying-an-override-host/). Defaults to `null` meaning no override of the Host header will occur. This setting can also be added to a Server definition. If the field is set on a Server definition it will override the Pool setting. | [optional][default to &#39;null&#39;] |
| **between_bytes_timeout** | **Integer** | Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, the response received so far will be considered complete and the fetch will end. May be set at runtime using `bereq.between_bytes_timeout`. | [optional][default to 10000] |
| **connect_timeout** | **Integer** | How long to wait for a timeout in milliseconds. Optional. | [optional] |
| **first_byte_timeout** | **Integer** | How long to wait for the first byte in milliseconds. Optional. | [optional] |
| **max_conn_default** | **Integer** | Maximum number of connections. Optional. | [optional][default to 200] |
| **quorum** | **Integer** | Percentage of capacity (`0-100`) that needs to be operationally available for a pool to be considered up. | [optional][default to 75] |
| **tls_check_cert** | **Integer** | Be strict on checking TLS certs. Optional. | [optional] |

### Return type

[**PoolResponse**](PoolResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
