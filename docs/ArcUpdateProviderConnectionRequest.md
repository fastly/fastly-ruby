# Fastly::ArcUpdateProviderConnectionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **models** | **Array&lt;String&gt;** | The AI model identifiers this connection is allowed to use. Must be non-empty if included. | [optional] |
| **base_url** | **String** | The base URL of the provider&#39;s API (`api-key` connections only). | [optional] |
| **api_key** | **String** | The provider&#39;s secret API key (`api-key` connections only). | [optional] |
| **customer_role_arn** | **String** | The ARN of the IAM role to assume for Bedrock requests (`aws-iam` connections only). | [optional] |
| **region** | **String** | The AWS region for Bedrock API requests (`aws-iam` connections only). | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

