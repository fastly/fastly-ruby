# Fastly::TlsSubscriptionDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **certificate_authority** | **String** | The entity that issues and certifies the TLS certificates for your subscription, either `certainly`, `lets-encrypt`, or `globalsign`. To migrate the subscription from one certificate authority to another, such as to migrate from &#39;lets-encrypt&#39; to &#39;certainly&#39;,  pass `certificate_authority` to the PATCH endpoint. To migrate from &#39;globalsign&#39; to &#39;certainly&#39;, contact Fastly Support. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

