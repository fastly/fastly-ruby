# Fastly::TlsCommonResponseAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tls_ca_cert** | **String** | A secure certificate to authenticate a server with. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_cert** | **String** | The client certificate used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_key** | **String** | The client private key used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_cert_hostname** | **String** | The hostname used to verify a server&#39;s certificate. It can either be the Common Name (CN) or a Subject Alternative Name (SAN). | [optional][default to &#39;null&#39;] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

