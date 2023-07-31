# Fastly::LoggingGenericCommonResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_type** | **String** | How the message should be formatted. | [optional][default to &#39;classic&#39;] |
| **timestamp_format** | **String** | A timestamp format | [optional][readonly] |
| **compression_codec** | **String** | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] |
| **period** | **String** | How frequently log files are finalized so they can be available for reading (in seconds). | [optional][default to &#39;3600&#39;] |
| **gzip_level** | **String** | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional][default to &#39;0&#39;] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

