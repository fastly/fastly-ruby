# Fastly::Secret

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-readable name for the secret. The value must contain only letters, numbers, dashes (`-`), underscores (`_`), and periods (`.`). | [optional] |
| **secret** | **String** | A Base64-encoded string containing either the secret or the encrypted secret (when using client_key). The maximum secret size (before Base64 encoding and optional local encryption) is 64KB. | [optional] |
| **client_key** | **String** | The Base64-encoded string containing the client key used to encrypt the secret, if applicable. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

