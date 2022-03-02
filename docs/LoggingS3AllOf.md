# Fastly::LoggingS3AllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_key** | **String** | The access key for your S3 account. Not required if `iam_role` is provided. | [optional] |
| **acl** | **String** | The access control list (ACL) specific request header. See the AWS documentation for [Access Control List (ACL) Specific Request Headers](https://docs.aws.amazon.com/AmazonS3/latest/API/mpUploadInitiate.html#initiate-mpu-acl-specific-request-headers) for more information. | [optional] |
| **bucket_name** | **String** | The bucket name for S3 account. | [optional] |
| **domain** | **String** | The domain of the Amazon S3 endpoint. | [optional] |
| **iam_role** | **String** | The Amazon Resource Name (ARN) for the IAM role granting Fastly access to S3. Not required if `access_key` and `secret_key` are provided. | [optional] |
| **path** | **String** | The path to upload logs to. | [optional][default to &#39;null&#39;] |
| **public_key** | **String** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional][default to &#39;null&#39;] |
| **redundancy** | **String** | The S3 redundancy level. | [optional][default to &#39;null&#39;] |
| **secret_key** | **String** | The secret key for your S3 account. Not required if `iam_role` is provided. | [optional] |
| **server_side_encryption_kms_key_id** | **String** | Optional server-side KMS Key Id. Must be set if `server_side_encryption` is set to `aws:kms` or `AES256`. | [optional][default to &#39;null&#39;] |
| **server_side_encryption** | **String** | Set this to `AES256` or `aws:kms` to enable S3 Server Side Encryption. | [optional][default to &#39;null&#39;] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

