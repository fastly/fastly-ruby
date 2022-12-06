# Fastly::TlsBulkCertificateResponseAttributesAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **not_after** | **Time** | Time-stamp (GMT) when the certificate will expire. Must be in the future to be used to terminate TLS traffic. | [optional][readonly] |
| **not_before** | **Time** | Time-stamp (GMT) when the certificate will become valid. Must be in the past to be used to terminate TLS traffic. | [optional][readonly] |
| **replace** | **Boolean** | A recommendation from Fastly indicating the key associated with this certificate is in need of rotation. | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

