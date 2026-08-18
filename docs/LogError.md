# Fastly::LogError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sequence_number** | **Integer** | Sequence number for ordering messages. | [optional] |
| **error_time_us** | **Integer** | Timestamp of the error in microseconds. | [optional] |
| **stream** | **String** | The stream type, always &#39;logging_error&#39; for logging endpoint errors. | [optional] |
| **message** | **String** | User-friendly error message. | [optional] |
| **endpoint** | **String** | Name of the logging endpoint that generated the error. | [optional] |
| **details** | **String** | Additional error details as a JSON string. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

