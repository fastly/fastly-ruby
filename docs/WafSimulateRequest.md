# Fastly::WafSimulateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request** | **String** | The raw HTTP request in wire format to simulate through the WAF. Must include the request line, headers, and optionally a body, separated by CRLF sequences. |  |
| **response** | **String** | The raw HTTP response in wire format. The WAF engine inspects response headers during its PostRequest phase and may generate signals from them. When omitted, a default response of `HTTP/1.1 200 OK\\r\\n\\r\\n` is used. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

