# Fastly::TlsConfigurationResponseAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **default** | **Boolean** | Signifies whether or not Fastly will use this configuration as a default when creating a new [TLS Activation](/reference/api/tls/custom-certs/activations/). | [optional][readonly] |
| **http_protocols** | **Array&lt;String&gt;** | HTTP protocols available on your configuration. | [optional][readonly] |
| **tls_protocols** | **Array&lt;String&gt;** | TLS protocols available on your configuration. | [optional][readonly] |
| **bulk** | **Boolean** | Signifies whether the configuration is used for Platform TLS or not. | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

