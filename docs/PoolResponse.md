# Fastly::PoolResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tls_ca_cert** | **String** | A secure certificate to authenticate a server with. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_cert** | **String** | The client certificate used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_key** | **String** | The client private key used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_cert_hostname** | **String** | The hostname used to verify a server&#39;s certificate. It can either be the Common Name (CN) or a Subject Alternative Name (SAN). | [optional][default to &#39;null&#39;] |
| **use_tls** | **String** | Whether to use TLS. | [optional][default to &#39;0&#39;] |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **service_id** | **String** |  | [optional][readonly] |
| **version** | **String** |  | [optional][readonly] |
| **name** | **String** | Name for the Pool. | [optional] |
| **shield** | **String** | Selected POP to serve as a shield for the servers. Defaults to `null` meaning no origin shielding if not set. Refer to the [POPs API endpoint](/reference/api/utils/pops/) to get a list of available POPs used for shielding. | [optional][default to &#39;null&#39;] |
| **request_condition** | **String** | Condition which, if met, will select this configuration during a request. Optional. | [optional] |
| **tls_ciphers** | **String** | List of OpenSSL ciphers (see the [openssl.org manpages](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) for details). Optional. | [optional] |
| **tls_sni_hostname** | **String** | SNI hostname. Optional. | [optional] |
| **min_tls_version** | **Integer** | Minimum allowed TLS version on connections to this server. Optional. | [optional] |
| **max_tls_version** | **Integer** | Maximum allowed TLS version on connections to this server. Optional. | [optional] |
| **healthcheck** | **String** | Name of the healthcheck to use with this pool. Can be empty and could be reused across multiple backend and pools. | [optional] |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **type** | **String** | What type of load balance group to use. | [optional] |
| **override_host** | **String** | The hostname to [override the Host header](https://docs.fastly.com/en/guides/specifying-an-override-host). Defaults to `null` meaning no override of the Host header will occur. This setting can also be added to a Server definition. If the field is set on a Server definition it will override the Pool setting. | [optional][default to &#39;null&#39;] |
| **between_bytes_timeout** | **String** | Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, the response received so far will be considered complete and the fetch will end. May be set at runtime using `bereq.between_bytes_timeout`. | [optional] |
| **connect_timeout** | **String** | How long to wait for a timeout in milliseconds. | [optional] |
| **first_byte_timeout** | **String** | How long to wait for the first byte in milliseconds. | [optional] |
| **max_conn_default** | **String** | Maximum number of connections. | [optional][default to &#39;200&#39;] |
| **tls_check_cert** | **String** | Be strict on checking TLS certs. | [optional] |
| **id** | **String** |  | [optional][readonly] |
| **quorum** | **String** | Percentage of capacity (`0-100`) that needs to be operationally available for a pool to be considered up. | [optional][default to &#39;75&#39;] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

