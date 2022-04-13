# Fastly::LoggingHttps

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.   | [optional][default to FORMAT_VERSION::v2] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional][default to &#39;%h %l %u %t \&quot;%r\&quot; %&amp;gt;s %b&#39;] |
| **tls_ca_cert** | **String** | A secure certificate to authenticate a server with. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_cert** | **String** | The client certificate used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_client_key** | **String** | The client private key used to make authenticated requests. Must be in PEM format. | [optional][default to &#39;null&#39;] |
| **tls_hostname** | **String** | The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. | [optional][default to &#39;null&#39;] |
| **request_max_entries** | **Integer** | The maximum number of logs sent in one request. Defaults `0` (10k). | [optional][default to 0] |
| **request_max_bytes** | **Integer** | The maximum number of bytes sent in one request. Defaults `0` (100MB). | [optional][default to 0] |
| **url** | **String** | The URL to send logs to. Must use HTTPS. Required. | [optional] |
| **content_type** | **String** | Content type of the header sent with the request. | [optional][default to &#39;null&#39;] |
| **header_name** | **String** | Name of the custom header sent with the request. | [optional][default to &#39;null&#39;] |
| **message_type** | [**LoggingMessageType**](LoggingMessageType.md) |  | [optional][default to &#39;classic&#39;] |
| **header_value** | **String** | Value of the custom header sent with the request. | [optional][default to &#39;null&#39;] |
| **method** | **String** | HTTP method used for request. | [optional][default to &#39;POST&#39;] |
| **json_format** | **String** | Enforces valid JSON formatting for log entries. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

