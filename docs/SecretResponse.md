# Fastly::SecretResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the secret. | [optional] |
| **digest** | **String** | An opaque identifier of the plaintext secret value. This can be used to determine if a secret value has changed. | [optional][readonly] |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **recreated** | **Boolean** | True if the secret replaced a secret with the same name. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

