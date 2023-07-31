# Fastly::LoggingS3Api


```ruby
require 'fastly'
api_instance = Fastly::LoggingS3Api.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_log_aws_s3**](LoggingS3Api.md#create_log_aws_s3) | **POST** /service/{service_id}/version/{version_id}/logging/s3 | Create an AWS S3 log endpoint |
| [**delete_log_aws_s3**](LoggingS3Api.md#delete_log_aws_s3) | **DELETE** /service/{service_id}/version/{version_id}/logging/s3/{logging_s3_name} | Delete an AWS S3 log endpoint |
| [**get_log_aws_s3**](LoggingS3Api.md#get_log_aws_s3) | **GET** /service/{service_id}/version/{version_id}/logging/s3/{logging_s3_name} | Get an AWS S3 log endpoint |
| [**list_log_aws_s3**](LoggingS3Api.md#list_log_aws_s3) | **GET** /service/{service_id}/version/{version_id}/logging/s3 | List AWS S3 log endpoints |
| [**update_log_aws_s3**](LoggingS3Api.md#update_log_aws_s3) | **PUT** /service/{service_id}/version/{version_id}/logging/s3/{logging_s3_name} | Update an AWS S3 log endpoint |


## `create_log_aws_s3()`

```ruby
create_log_aws_s3(opts): <LoggingS3Response> # Create an AWS S3 log endpoint
```

Create a S3 for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingS3Api.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    message_type: 'classic', # String | How the message should be formatted.
    timestamp_format: 'timestamp_format_example', # String | A timestamp format
    compression_codec: 'zstd', # String | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
    period: 56, # Integer | How frequently log files are finalized so they can be available for reading (in seconds).
    gzip_level: 56, # Integer | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
    access_key: 'access_key_example', # String | The access key for your S3 account. Not required if `iam_role` is provided.
    acl: 'acl_example', # String | The access control list (ACL) specific request header. See the AWS documentation for [Access Control List (ACL) Specific Request Headers](https://docs.aws.amazon.com/AmazonS3/latest/API/mpUploadInitiate.html#initiate-mpu-acl-specific-request-headers) for more information.
    bucket_name: 'bucket_name_example', # String | The bucket name for S3 account.
    domain: 'domain_example', # String | The domain of the Amazon S3 endpoint.
    iam_role: 'iam_role_example', # String | The Amazon Resource Name (ARN) for the IAM role granting Fastly access to S3. Not required if `access_key` and `secret_key` are provided.
    path: 'path_example', # String | The path to upload logs to.
    public_key: 'public_key_example', # String | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
    redundancy: 'redundancy_example', # String | The S3 redundancy level.
    secret_key: 'secret_key_example', # String | The secret key for your S3 account. Not required if `iam_role` is provided.
    server_side_encryption_kms_key_id: 'server_side_encryption_kms_key_id_example', # String | Optional server-side KMS Key Id. Must be set if `server_side_encryption` is set to `aws:kms` or `AES256`.
    server_side_encryption: 'server_side_encryption_example', # String | Set this to `AES256` or `aws:kms` to enable S3 Server Side Encryption.
}

begin
  # Create an AWS S3 log endpoint
  result = api_instance.create_log_aws_s3(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingS3Api->create_log_aws_s3: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional][default to &#39;%h %l %u %t \&quot;%r\&quot; %&amp;gt;s %b&#39;] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **message_type** | **String** | How the message should be formatted. | [optional][default to &#39;classic&#39;] |
| **timestamp_format** | **String** | A timestamp format | [optional] |
| **compression_codec** | **String** | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] |
| **period** | **Integer** | How frequently log files are finalized so they can be available for reading (in seconds). | [optional][default to 3600] |
| **gzip_level** | **Integer** | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional][default to 0] |
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

### Return type

[**LoggingS3Response**](LoggingS3Response.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_log_aws_s3()`

```ruby
delete_log_aws_s3(opts): <InlineResponse200> # Delete an AWS S3 log endpoint
```

Delete the S3 for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingS3Api.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_s3_name: 'logging_s3_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Delete an AWS S3 log endpoint
  result = api_instance.delete_log_aws_s3(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingS3Api->delete_log_aws_s3: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_s3_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_log_aws_s3()`

```ruby
get_log_aws_s3(opts): <LoggingS3Response> # Get an AWS S3 log endpoint
```

Get the S3 for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingS3Api.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_s3_name: 'logging_s3_name_example', # String | The name for the real-time logging configuration.
}

begin
  # Get an AWS S3 log endpoint
  result = api_instance.get_log_aws_s3(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingS3Api->get_log_aws_s3: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_s3_name** | **String** | The name for the real-time logging configuration. |  |

### Return type

[**LoggingS3Response**](LoggingS3Response.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_log_aws_s3()`

```ruby
list_log_aws_s3(opts): <Array<LoggingS3Response>> # List AWS S3 log endpoints
```

List all of the S3s for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingS3Api.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List AWS S3 log endpoints
  result = api_instance.list_log_aws_s3(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingS3Api->list_log_aws_s3: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;LoggingS3Response&gt;**](LoggingS3Response.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_log_aws_s3()`

```ruby
update_log_aws_s3(opts): <LoggingS3Response> # Update an AWS S3 log endpoint
```

Update the S3 for a particular service and version.

### Examples

```ruby
api_instance = Fastly::LoggingS3Api.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    logging_s3_name: 'logging_s3_name_example', # String | The name for the real-time logging configuration.
    name: 'name_example', # String | The name for the real-time logging configuration.
    placement: 'none', # String | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    response_condition: 'response_condition_example', # String | The name of an existing condition in the configured endpoint, or leave blank to always execute.
    format: 'format_example', # String | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    format_version: 1, # Integer | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`. 
    message_type: 'classic', # String | How the message should be formatted.
    timestamp_format: 'timestamp_format_example', # String | A timestamp format
    compression_codec: 'zstd', # String | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
    period: 56, # Integer | How frequently log files are finalized so they can be available for reading (in seconds).
    gzip_level: 56, # Integer | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
    access_key: 'access_key_example', # String | The access key for your S3 account. Not required if `iam_role` is provided.
    acl: 'acl_example', # String | The access control list (ACL) specific request header. See the AWS documentation for [Access Control List (ACL) Specific Request Headers](https://docs.aws.amazon.com/AmazonS3/latest/API/mpUploadInitiate.html#initiate-mpu-acl-specific-request-headers) for more information.
    bucket_name: 'bucket_name_example', # String | The bucket name for S3 account.
    domain: 'domain_example', # String | The domain of the Amazon S3 endpoint.
    iam_role: 'iam_role_example', # String | The Amazon Resource Name (ARN) for the IAM role granting Fastly access to S3. Not required if `access_key` and `secret_key` are provided.
    path: 'path_example', # String | The path to upload logs to.
    public_key: 'public_key_example', # String | A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
    redundancy: 'redundancy_example', # String | The S3 redundancy level.
    secret_key: 'secret_key_example', # String | The secret key for your S3 account. Not required if `iam_role` is provided.
    server_side_encryption_kms_key_id: 'server_side_encryption_kms_key_id_example', # String | Optional server-side KMS Key Id. Must be set if `server_side_encryption` is set to `aws:kms` or `AES256`.
    server_side_encryption: 'server_side_encryption_example', # String | Set this to `AES256` or `aws:kms` to enable S3 Server Side Encryption.
}

begin
  # Update an AWS S3 log endpoint
  result = api_instance.update_log_aws_s3(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling LoggingS3Api->update_log_aws_s3: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **logging_s3_name** | **String** | The name for the real-time logging configuration. |  |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional][default to &#39;%h %l %u %t \&quot;%r\&quot; %&amp;gt;s %b&#39;] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **message_type** | **String** | How the message should be formatted. | [optional][default to &#39;classic&#39;] |
| **timestamp_format** | **String** | A timestamp format | [optional] |
| **compression_codec** | **String** | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] |
| **period** | **Integer** | How frequently log files are finalized so they can be available for reading (in seconds). | [optional][default to 3600] |
| **gzip_level** | **Integer** | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional][default to 0] |
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

### Return type

[**LoggingS3Response**](LoggingS3Response.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
