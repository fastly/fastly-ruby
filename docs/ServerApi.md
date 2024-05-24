# Fastly::ServerApi


```ruby
require 'fastly'
api_instance = Fastly::ServerApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_pool_server**](ServerApi.md#create_pool_server) | **POST** /service/{service_id}/pool/{pool_id}/server | Add a server to a pool
[**delete_pool_server**](ServerApi.md#delete_pool_server) | **DELETE** /service/{service_id}/pool/{pool_id}/server/{server_id} | Delete a server from a pool
[**get_pool_server**](ServerApi.md#get_pool_server) | **GET** /service/{service_id}/pool/{pool_id}/server/{server_id} | Get a pool server
[**list_pool_servers**](ServerApi.md#list_pool_servers) | **GET** /service/{service_id}/pool/{pool_id}/servers | List servers in a pool
[**update_pool_server**](ServerApi.md#update_pool_server) | **PUT** /service/{service_id}/pool/{pool_id}/server/{server_id} | Update a server


## `create_pool_server()`

```ruby
create_pool_server(opts): <ServerResponse> # Add a server to a pool
```

Creates a single server for a particular service and pool.

### Examples

```ruby
api_instance = Fastly::ServerApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    pool_id: 'pool_id_example', # String | Alphanumeric string identifying a Pool.
    weight: 56, # Integer | Weight (`1-100`) used to load balance this server against others.
    max_conn: 56, # Integer | Maximum number of connections. If the value is `0`, it inherits the value from pool's `max_conn_default`.
    port: 56, # Integer | Port number. Setting port `443` does not force TLS. Set `use_tls` in pool to force TLS.
    address: 'address_example', # String | A hostname, IPv4, or IPv6 address for the server. Required.
    comment: 'comment_example', # String | A freeform descriptive note.
    disabled: true, # Boolean | Allows servers to be enabled and disabled in a pool.
    override_host: 'override_host_example', # String | The hostname to override the Host header. Defaults to `null` meaning no override of the Host header if not set. This setting can also be added to a Pool definition. However, the server setting will override the Pool setting.
}

begin
  # Add a server to a pool
  result = api_instance.create_pool_server(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ServerApi->create_pool_server: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **pool_id** | **String** | Alphanumeric string identifying a Pool. |  |
| **weight** | **Integer** | Weight (`1-100`) used to load balance this server against others. | [optional][default to 100] |
| **max_conn** | **Integer** | Maximum number of connections. If the value is `0`, it inherits the value from pool&#39;s `max_conn_default`. | [optional][default to 0] |
| **port** | **Integer** | Port number. Setting port `443` does not force TLS. Set `use_tls` in pool to force TLS. | [optional][default to 80] |
| **address** | **String** | A hostname, IPv4, or IPv6 address for the server. Required. | [optional] |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **disabled** | **Boolean** | Allows servers to be enabled and disabled in a pool. | [optional][default to false] |
| **override_host** | **String** | The hostname to override the Host header. Defaults to `null` meaning no override of the Host header if not set. This setting can also be added to a Pool definition. However, the server setting will override the Pool setting. | [optional][default to &#39;null&#39;] |

### Return type

[**ServerResponse**](ServerResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_pool_server()`

```ruby
delete_pool_server(opts): <InlineResponse200> # Delete a server from a pool
```

Deletes a single server for a particular service and pool.

### Examples

```ruby
api_instance = Fastly::ServerApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    pool_id: 'pool_id_example', # String | Alphanumeric string identifying a Pool.
    server_id: 'server_id_example', # String | Alphanumeric string identifying a Server.
}

begin
  # Delete a server from a pool
  result = api_instance.delete_pool_server(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ServerApi->delete_pool_server: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **pool_id** | **String** | Alphanumeric string identifying a Pool. |  |
| **server_id** | **String** | Alphanumeric string identifying a Server. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_pool_server()`

```ruby
get_pool_server(opts): <ServerResponse> # Get a pool server
```

Gets a single server for a particular service and pool.

### Examples

```ruby
api_instance = Fastly::ServerApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    pool_id: 'pool_id_example', # String | Alphanumeric string identifying a Pool.
    server_id: 'server_id_example', # String | Alphanumeric string identifying a Server.
}

begin
  # Get a pool server
  result = api_instance.get_pool_server(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ServerApi->get_pool_server: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **pool_id** | **String** | Alphanumeric string identifying a Pool. |  |
| **server_id** | **String** | Alphanumeric string identifying a Server. |  |

### Return type

[**ServerResponse**](ServerResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_pool_servers()`

```ruby
list_pool_servers(opts): <Array<ServerResponse>> # List servers in a pool
```

Lists all servers for a particular service and pool.

### Examples

```ruby
api_instance = Fastly::ServerApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    pool_id: 'pool_id_example', # String | Alphanumeric string identifying a Pool.
}

begin
  # List servers in a pool
  result = api_instance.list_pool_servers(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ServerApi->list_pool_servers: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **pool_id** | **String** | Alphanumeric string identifying a Pool. |  |

### Return type

[**Array&lt;ServerResponse&gt;**](ServerResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_pool_server()`

```ruby
update_pool_server(opts): <ServerResponse> # Update a server
```

Updates a single server for a particular service and pool.

### Examples

```ruby
api_instance = Fastly::ServerApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    pool_id: 'pool_id_example', # String | Alphanumeric string identifying a Pool.
    server_id: 'server_id_example', # String | Alphanumeric string identifying a Server.
    weight: 56, # Integer | Weight (`1-100`) used to load balance this server against others.
    max_conn: 56, # Integer | Maximum number of connections. If the value is `0`, it inherits the value from pool's `max_conn_default`.
    port: 56, # Integer | Port number. Setting port `443` does not force TLS. Set `use_tls` in pool to force TLS.
    address: 'address_example', # String | A hostname, IPv4, or IPv6 address for the server. Required.
    comment: 'comment_example', # String | A freeform descriptive note.
    disabled: true, # Boolean | Allows servers to be enabled and disabled in a pool.
    override_host: 'override_host_example', # String | The hostname to override the Host header. Defaults to `null` meaning no override of the Host header if not set. This setting can also be added to a Pool definition. However, the server setting will override the Pool setting.
}

begin
  # Update a server
  result = api_instance.update_pool_server(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ServerApi->update_pool_server: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **pool_id** | **String** | Alphanumeric string identifying a Pool. |  |
| **server_id** | **String** | Alphanumeric string identifying a Server. |  |
| **weight** | **Integer** | Weight (`1-100`) used to load balance this server against others. | [optional][default to 100] |
| **max_conn** | **Integer** | Maximum number of connections. If the value is `0`, it inherits the value from pool&#39;s `max_conn_default`. | [optional][default to 0] |
| **port** | **Integer** | Port number. Setting port `443` does not force TLS. Set `use_tls` in pool to force TLS. | [optional][default to 80] |
| **address** | **String** | A hostname, IPv4, or IPv6 address for the server. Required. | [optional] |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **disabled** | **Boolean** | Allows servers to be enabled and disabled in a pool. | [optional][default to false] |
| **override_host** | **String** | The hostname to override the Host header. Defaults to `null` meaning no override of the Host header if not set. This setting can also be added to a Pool definition. However, the server setting will override the Pool setting. | [optional][default to &#39;null&#39;] |

### Return type

[**ServerResponse**](ServerResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
