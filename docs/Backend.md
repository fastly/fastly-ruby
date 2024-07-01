# Fastly::Backend

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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
| **tcp_keepalive_enable** | **Boolean** | Whether to enable TCP keepalives for backend connections. Varnish defaults to using keepalives if this is unspecified. | [optional] |
| **tcp_keepalive_interval** | **Integer** | Interval in seconds between subsequent keepalive probes. | [optional] |
| **tcp_keepalive_probes** | **Integer** | Number of unacknowledged probes to send before considering the connection dead. | [optional] |
| **tcp_keepalive_time** | **Integer** | Interval in seconds between the last data packet sent and the first keepalive probe. | [optional] |
| **use_ssl** | **Boolean** | Whether or not to require TLS for connections to this backend. | [optional] |
| **weight** | **Integer** | Weight used to load balance this backend against others. May be any positive integer. If `auto_loadbalance` is true, the chance of this backend being selected is equal to its own weight over the sum of all weights for backends that have `auto_loadbalance` set to true. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

