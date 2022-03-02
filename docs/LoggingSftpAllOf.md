# Fastly::LoggingSftpAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **password** | **String** | The password for the server. If both `password` and `secret_key` are passed, `secret_key` will be used in preference. | [optional] |
| **path** | **String** | The path to upload logs to. | [optional][default to &#39;null&#39;] |
| **port** | **Object** | The port number. | [optional] |
| **public_key** | **String** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional][default to &#39;null&#39;] |
| **secret_key** | **String** | The SSH private key for the server. If both `password` and `secret_key` are passed, `secret_key` will be used in preference. | [optional][default to &#39;null&#39;] |
| **ssh_known_hosts** | **String** | A list of host keys for all hosts we can connect to over SFTP. | [optional] |
| **user** | **String** | The username for the server. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

