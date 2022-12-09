# Fastly::LoggingKafkaAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **topic** | **String** | The Kafka topic to send logs to. Required. | [optional] |
| **brokers** | **String** | A comma-separated list of IP addresses or hostnames of Kafka brokers. Required. | [optional] |
| **compression_codec** | **String** | The codec used for compression of your logs. | [optional] |
| **required_acks** | **Integer** | The number of acknowledgements a leader must receive before a write is considered successful. | [optional][default to REQUIRED_ACKS::one] |
| **request_max_bytes** | **Integer** | The maximum number of bytes sent in one request. Defaults `0` (no limit). | [optional][default to 0] |
| **parse_log_keyvals** | **Boolean** | Enables parsing of key&#x3D;value tuples from the beginning of a logline, turning them into [record headers](https://cwiki.apache.org/confluence/display/KAFKA/KIP-82+-+Add+Record+Headers). | [optional] |
| **auth_method** | **String** | SASL authentication method. | [optional] |
| **user** | **String** | SASL user. | [optional] |
| **password** | **String** | SASL password. | [optional] |
| **use_tls** | [**LoggingUseTls**](LoggingUseTls.md) |  | [optional][default to LoggingUseTls::no_tls] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

