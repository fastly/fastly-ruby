# Fastly::MutualAuthenticationDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cert_bundle** | **String** | One or more certificates. Enter each individual certificate blob on a new line. Must be PEM-formatted. Required on create. You may optionally rotate the cert_bundle on update. | [optional] |
| **enforced** | **Boolean** | Determines whether Mutual TLS will fail closed (enforced) or fail open. A true value will require a successful Mutual TLS handshake for the connection to continue and will fail closed if unsuccessful. A false value will fail open and allow the connection to proceed. Optional. Defaults to true. | [optional] |
| **name** | **String** | A custom name for your mutual authentication. Optional. If name is not supplied we will auto-generate one. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

