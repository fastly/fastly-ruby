# Fastly::LogRecord

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | The ID of the Fastly customer that owns the service. | [optional][readonly] |
| **service_id** | [**LogPropertyServiceId**](LogPropertyServiceId.md) |  | [optional] |
| **timestamp** | **Time** | Timestamp of the request in ISO 8601 format. | [optional] |
| **client_as_number** | **Integer** | The autonomous system (AS) number of the client. | [optional][readonly] |
| **client_region** | **String** | The client&#39;s country subdivision code as found in ISO 3166-2. | [optional][readonly] |
| **client_country_code** | **String** | The two-letter ISO 3166-1 country code for the client. | [optional][readonly] |
| **client_os_name** | **String** | The name of the operating system installed on the client device. | [optional][readonly] |
| **client_device_type** | **String** | The type of the client&#39;s device. | [optional][readonly] |
| **client_browser_name** | **String** | The name of the browser in use on the client device. | [optional][readonly] |
| **client_browser_version** | **String** | The version of the browser in use on client device. | [optional][readonly] |
| **fastly_pop** | **String** | The name of the Fastly POP that served this request. | [optional][readonly] |
| **origin_host** | **String** | The name of the origin host that served this request. | [optional][readonly] |
| **request_protocol** | **String** | HTTP protocol version in use for this request. For example, HTTP/1.1. | [optional][readonly] |
| **request_host** | **String** | The name of the request host used for this request. | [optional][readonly] |
| **request_path** | **String** | The URL path supplied for this request. | [optional][readonly] |
| **request_method** | **String** | HTTP method sent by the client such as \&quot;GET\&quot; or \&quot;POST\&quot;. | [optional][readonly] |
| **response_bytes_body** | **Integer** | Body bytes sent to the client in the response. | [optional][readonly] |
| **response_bytes_header** | **Integer** | Header bytes sent to the client in the response. | [optional][readonly] |
| **response_content_length** | **Integer** | Total bytes sent to the client in the response. | [optional][readonly] |
| **response_content_type** | **String** | The content type of the response sent to the client. | [optional][readonly] |
| **response_reason** | **String** | The HTTP reason phrase returned for this request, if any. | [optional][readonly] |
| **response_state** | **String** | The state of the request with optional suffixes describing special cases. | [optional][readonly] |
| **response_status** | **Integer** | The HTTP response code returned for this request. | [optional][readonly] |
| **response_time** | **Float** | The time since the request started in seconds. | [optional][readonly] |
| **response_x_cache** | **String** | Indicates whether the request was a HIT or a MISS. | [optional][readonly] |
| **is_cache_hit** | **Boolean** | Indicates whether this request was fulfilled from cache. | [optional][readonly] |
| **is_edge** | **Boolean** | Indicates whether the request was handled by a Fastly edge POP. | [optional][readonly] |
| **is_shield** | **Boolean** | Indicates whether the request was handled by a Fastly shield POP. | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

