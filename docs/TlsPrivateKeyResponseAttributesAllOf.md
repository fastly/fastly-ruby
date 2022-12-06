# Fastly::TlsPrivateKeyResponseAttributesAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A customizable name for your private key. | [optional] |
| **key_length** | **Integer** | The key length used to generate the private key. | [optional][readonly] |
| **key_type** | **String** | The algorithm used to generate the private key. Must be `RSA`. | [optional][readonly] |
| **replace** | **Boolean** | A recommendation from Fastly to replace this private key and all associated certificates. | [optional][readonly] |
| **public_key_sha1** | **String** | Useful for safely identifying the key. | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

