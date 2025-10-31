# Fastly::LoggingHttpsAdditional

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The URL to send logs to. Must use HTTPS. Required. | [optional] |
| **request_max_entries** | **Integer** | The maximum number of logs sent in one request. Defaults `0` (10k). | [optional][default to 0] |
| **request_max_bytes** | **Integer** | The maximum number of bytes sent in one request. Defaults `0` (100MB). | [optional][default to 0] |
| **content_type** | **String** | Content type of the header sent with the request. | [optional][default to &#39;null&#39;] |
| **header_name** | **String** | Name of the custom header sent with the request. | [optional][default to &#39;null&#39;] |
| **message_type** | [**LoggingMessageType**](LoggingMessageType.md) |  | [optional][default to &#39;classic&#39;] |
| **header_value** | **String** | Value of the custom header sent with the request. | [optional][default to &#39;null&#39;] |
| **method** | **String** | HTTP method used for request. | [optional][default to &#39;POST&#39;] |
| **json_format** | **String** | Enforces valid JSON formatting for log entries. | [optional] |
| **format** | **String** | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/). | [optional][default to &#39;%h %l %u %t \&quot;%r\&quot; %&amp;gt;s %b&#39;] |
| **period** | **Integer** | How frequently, in seconds, batches of log data are sent to the HTTPS endpoint. A value of `0` sends logs at the same interval as the default, which is `5` seconds. | [optional][default to 5] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

