# Fastly::TlsConfigurationResponseAttributesAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default** | **Boolean** | Signifies whether or not Fastly will use this configuration as a default when creating a new [TLS Activation](https://www.fastly.com/documentation/reference/api/tls/custom-certs/activations/). | [optional][readonly] |
| **http_protocols** | **Array&lt;String&gt;** | HTTP protocols available on your configuration. | [optional][readonly] |
| **tls_protocols** | **Array&lt;String&gt;** | TLS protocols available on your configuration. | [optional][readonly] |
| **bulk** | **Boolean** | Signifies whether the configuration is used for Platform TLS or not. | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

