# Fastly::LoggingGcsAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bucket_name** | **String** | The name of the GCS bucket. | [optional] |
| **path** | **String** | The path to upload logs to. | [optional] |
| **public_key** | **String** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional][default to &#39;null&#39;] |
| **project_id** | **String** | Your Google Cloud Platform project ID. Required | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

