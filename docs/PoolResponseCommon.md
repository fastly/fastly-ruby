# Fastly::PoolResponseCommon

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **between_bytes_timeout** | **String** | Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, for Delivery services, the response received so far will be considered complete and the fetch will end. For Compute services, timeout expiration is treated as a failure of the backend connection, and an error is generated. May be set at runtime using `bereq.between_bytes_timeout`. | [optional] |
| **connect_timeout** | **String** | How long to wait for a timeout in milliseconds. | [optional] |
| **first_byte_timeout** | **String** | How long to wait for the first byte in milliseconds. | [optional] |
| **max_conn_default** | **String** | Maximum number of connections. | [optional][default to &#39;200&#39;] |
| **tls_check_cert** | **String** | Be strict on checking TLS certs. | [optional] |
| **id** | **String** |  | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

