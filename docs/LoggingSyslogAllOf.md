# Fastly::LoggingSyslogAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_type** | [**LoggingMessageType**](LoggingMessageType.md) |  | [optional][default to &#39;classic&#39;] |
| **hostname** | **String** | The hostname used for the syslog endpoint. | [optional] |
| **ipv4** | **String** | The IPv4 address used for the syslog endpoint. | [optional] |
| **token** | **String** | Whether to prepend each message with a specific token. | [optional][default to &#39;null&#39;] |
| **use_tls** | [**LoggingUseTls**](LoggingUseTls.md) |  | [optional][default to LoggingUseTls::no_tls] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

