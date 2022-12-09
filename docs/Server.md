# Fastly::Server

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **weight** | **Integer** | Weight (`1-100`) used to load balance this server against others. | [optional][default to 100] |
| **max_conn** | **Integer** | Maximum number of connections. If the value is `0`, it inherits the value from pool&#39;s `max_conn_default`. | [optional][default to 0] |
| **port** | **Integer** | Port number. Setting port `443` does not force TLS. Set `use_tls` in pool to force TLS. | [optional][default to 80] |
| **address** | **String** | A hostname, IPv4, or IPv6 address for the server. Required. | [optional] |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **disabled** | **Boolean** | Allows servers to be enabled and disabled in a pool. | [optional][default to false] |
| **override_host** | **String** | The hostname to override the Host header. Defaults to `null` meaning no override of the Host header if not set. This setting can also be added to a Pool definition. However, the server setting will override the Pool setting. | [optional][default to &#39;null&#39;] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

