# Fastly::OriginInspectorMeasurements

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **responses** | **Integer** | Number of responses from origin. | [optional] |
| **resp_header_bytes** | **Integer** | Number of header bytes from origin. | [optional] |
| **resp_body_bytes** | **Integer** | Number of body bytes from origin. | [optional] |
| **status_1xx** | **Integer** | Number of 1xx \&quot;Informational\&quot; status codes delivered from origin. | [optional] |
| **status_2xx** | **Integer** | Number of 2xx \&quot;Success\&quot; status codes delivered from origin. | [optional] |
| **status_3xx** | **Integer** | Number of 3xx \&quot;Redirection\&quot; codes delivered from origin. | [optional] |
| **status_4xx** | **Integer** | Number of 4xx \&quot;Client Error\&quot; codes delivered from origin. | [optional] |
| **status_5xx** | **Integer** | Number of 5xx \&quot;Server Error\&quot; codes delivered from origin. | [optional] |
| **status_200** | **Integer** | Number of responses received with status code 200 (Success) from origin. | [optional] |
| **status_204** | **Integer** | Number of responses received with status code 204 (No Content) from origin. | [optional] |
| **status_206** | **Integer** | Number of responses received with status code 206 (Partial Content) from origin. | [optional] |
| **status_301** | **Integer** | Number of responses received with status code 301 (Moved Permanently) from origin. | [optional] |
| **status_302** | **Integer** | Number of responses received with status code 302 (Found) from origin. | [optional] |
| **status_304** | **Integer** | Number of responses received with status code 304 (Not Modified) from origin. | [optional] |
| **status_400** | **Integer** | Number of responses received with status code 400 (Bad Request) from origin. | [optional] |
| **status_401** | **Integer** | Number of responses received with status code 401 (Unauthorized) from origin. | [optional] |
| **status_403** | **Integer** | Number of responses received with status code 403 (Forbidden) from origin. | [optional] |
| **status_404** | **Integer** | Number of responses received with status code 404 (Not Found) from origin. | [optional] |
| **status_416** | **Integer** | Number of responses received with status code 416 (Range Not Satisfiable) from origin. | [optional] |
| **status_429** | **Integer** | Number of responses received with status code 429 (Too Many Requests) from origin. | [optional] |
| **status_500** | **Integer** | Number of responses received with status code 500 (Internal Server Error) from origin. | [optional] |
| **status_501** | **Integer** | Number of responses received with status code 501 (Not Implemented) from origin. | [optional] |
| **status_502** | **Integer** | Number of responses received with status code 502 (Bad Gateway) from origin. | [optional] |
| **status_503** | **Integer** | Number of responses received with status code 503 (Service Unavailable) from origin. | [optional] |
| **status_504** | **Integer** | Number of responses received with status code 504 (Gateway Timeout) from origin. | [optional] |
| **status_505** | **Integer** | Number of responses received with status code 505 (HTTP Version Not Supported) from origin. | [optional] |
| **status_530** | **Integer** | Number of responses received from origin with status code 530. | [optional] |
| **latency_0_to_1ms** | **Integer** | Number of responses from origin with latency between 0 and 1 millisecond. | [optional] |
| **latency_1_to_5ms** | **Integer** | Number of responses from origin with latency between 1 and 5 milliseconds. | [optional] |
| **latency_5_to_10ms** | **Integer** | Number of responses from origin with latency between 5 and 10 milliseconds. | [optional] |
| **latency_10_to_50ms** | **Integer** | Number of responses from origin with latency between 10 and 50 milliseconds. | [optional] |
| **latency_50_to_100ms** | **Integer** | Number of responses from origin with latency between 50 and 100 milliseconds. | [optional] |
| **latency_100_to_250ms** | **Integer** | Number of responses from origin with latency between 100 and 250 milliseconds. | [optional] |
| **latency_250_to_500ms** | **Integer** | Number of responses from origin with latency between 250 and 500 milliseconds. | [optional] |
| **latency_500_to_1000ms** | **Integer** | Number of responses from origin with latency between 500 and 1,000 milliseconds. | [optional] |
| **latency_1000_to_5000ms** | **Integer** | Number of responses from origin with latency between 1,000 and 5,000 milliseconds. | [optional] |
| **latency_5000_to_10000ms** | **Integer** | Number of responses from origin with latency between 5,000 and 10,000 milliseconds. | [optional] |
| **latency_10000_to_60000ms** | **Integer** | Number of responses from origin with latency between 10,000 and 60,000 milliseconds. | [optional] |
| **latency_60000ms** | **Integer** | Number of responses from origin with latency of 60,000 milliseconds and above. | [optional] |
| **waf_responses** | **Integer** | Number of responses received for origin requests made by the Fastly WAF. | [optional] |
| **waf_resp_header_bytes** | **Integer** | Number of header bytes received for origin requests made by the Fastly WAF. | [optional] |
| **waf_resp_body_bytes** | **Integer** | Number of body bytes received for origin requests made by the Fastly WAF. | [optional] |
| **waf_status_1xx** | **Integer** | Number of 1xx \&quot;Informational\&quot; status codes received for origin requests made by the Fastly WAF. | [optional] |
| **waf_status_2xx** | **Integer** | Number of 2xx \&quot;Success\&quot; status codes received for origin requests made by the Fastly WAF. | [optional] |
| **waf_status_3xx** | **Integer** | Number of 3xx \&quot;Redirection\&quot; codes received for origin requests made by the Fastly WAF. | [optional] |
| **waf_status_4xx** | **Integer** | Number of 4xx \&quot;Client Error\&quot; codes received for origin requests made by the Fastly WAF. | [optional] |
| **waf_status_5xx** | **Integer** | Number of 5xx \&quot;Server Error\&quot; codes received for origin requests made by the Fastly WAF. | [optional] |
| **waf_status_200** | **Integer** | Number of responses received with status code 200 (Success) received for origin requests made by the Fastly WAF. | [optional] |
| **waf_status_204** | **Integer** | Number of responses received with status code 204 (No Content) received for origin requests made by the Fastly WAF. | [optional] |
| **waf_status_206** | **Integer** | Number of responses received with status code 206 (Partial Content) received for origin requests made by the Fastly WAF. | [optional] |
| **waf_status_301** | **Integer** | Number of responses received with status code 301 (Moved Permanently) received for origin requests made by the Fastly WAF. | [optional] |
| **waf_status_302** | **Integer** | Number of responses received with status code 302 (Found) received for origin requests made by the Fastly WAF. | [optional] |
| **waf_status_304** | **Integer** | Number of responses received with status code 304 (Not Modified) received for origin requests made by the Fastly WAF. | [optional] |
| **waf_status_400** | **Integer** | Number of responses received with status code 400 (Bad Request) received for origin requests made by the Fastly WAF. | [optional] |
| **waf_status_401** | **Integer** | Number of responses received with status code 401 (Unauthorized) received for origin requests made by the Fastly WAF. | [optional] |
| **waf_status_403** | **Integer** | Number of responses received with status code 403 (Forbidden) received for origin requests made by the Fastly WAF. | [optional] |
| **waf_status_404** | **Integer** | Number of responses received with status code 404 (Not Found) received for origin requests made by the Fastly WAF. | [optional] |
| **waf_status_416** | **Integer** | Number of responses received with status code 416 (Range Not Satisfiable) received for origin requests made by the Fastly WAF. | [optional] |
| **waf_status_429** | **Integer** | Number of responses received with status code 429 (Too Many Requests) received for origin requests made by the Fastly WAF. | [optional] |
| **waf_status_500** | **Integer** | Number of responses received with status code 500 (Internal Server Error) received for origin requests made by the Fastly WAF. | [optional] |
| **waf_status_501** | **Integer** | Number of responses received with status code 501 (Not Implemented) received for origin requests made by the Fastly WAF. | [optional] |
| **waf_status_502** | **Integer** | Number of responses received with status code 502 (Bad Gateway) received for origin requests made by the Fastly WAF. | [optional] |
| **waf_status_503** | **Integer** | Number of responses received with status code 503 (Service Unavailable) received for origin requests made by the Fastly WAF. | [optional] |
| **waf_status_504** | **Integer** | Number of responses received with status code 504 (Gateway Timeout) received for origin requests made by the Fastly WAF. | [optional] |
| **waf_status_505** | **Integer** | Number of responses received with status code 505 (HTTP Version Not Supported) received for origin requests made by the Fastly WAF. | [optional] |
| **waf_status_530** | **Integer** | Number of responses received with status code 530 received for origin requests made by the Fastly WAF. | [optional] |
| **waf_latency_0_to_1ms** | **Integer** | Number of responses with latency between 0 and 1 millisecond received for origin requests made by the Fastly WAF. | [optional] |
| **waf_latency_1_to_5ms** | **Integer** | Number of responses with latency between 1 and 5 milliseconds received for origin requests made by the Fastly WAF. | [optional] |
| **waf_latency_5_to_10ms** | **Integer** | Number of responses with latency between 5 and 10 milliseconds received for origin requests made by the Fastly WAF. | [optional] |
| **waf_latency_10_to_50ms** | **Integer** | Number of responses with latency between 10 and 50 milliseconds received for origin requests made by the Fastly WAF. | [optional] |
| **waf_latency_50_to_100ms** | **Integer** | Number of responses with latency between 50 and 100 milliseconds received for origin requests made by the Fastly WAF. | [optional] |
| **waf_latency_100_to_250ms** | **Integer** | Number of responses with latency between 100 and 250 milliseconds received for origin requests made by the Fastly WAF. | [optional] |
| **waf_latency_250_to_500ms** | **Integer** | Number of responses with latency between 250 and 500 milliseconds received for origin requests made by the Fastly WAF. | [optional] |
| **waf_latency_500_to_1000ms** | **Integer** | Number of responses with latency between 500 and 1,000 milliseconds received for origin requests made by the Fastly WAF. | [optional] |
| **waf_latency_1000_to_5000ms** | **Integer** | Number of responses with latency between 1,000 and 5,000 milliseconds received for origin requests made by the Fastly WAF. | [optional] |
| **waf_latency_5000_to_10000ms** | **Integer** | Number of responses with latency between 5,000 and 10,000 milliseconds received for origin requests made by the Fastly WAF. | [optional] |
| **waf_latency_10000_to_60000ms** | **Integer** | Number of responses with latency between 10,000 and 60,000 milliseconds received for origin requests made by the Fastly WAF. | [optional] |
| **waf_latency_60000ms** | **Integer** | Number of responses with latency of 60,000 milliseconds and above received for origin requests made by the Fastly WAF. | [optional] |
| **compute_responses** | **Integer** | Number of responses for origin received by the Compute platform. | [optional] |
| **compute_resp_header_bytes** | **Integer** | Number of header bytes for origin received by the Compute platform. | [optional] |
| **compute_resp_body_bytes** | **Integer** | Number of body bytes for origin received by the Compute platform. | [optional] |
| **compute_status_1xx** | **Integer** | Number of 1xx \&quot;Informational\&quot; status codes for origin received by the Compute platform. | [optional] |
| **compute_status_2xx** | **Integer** | Number of 2xx \&quot;Success\&quot; status codes for origin received by the Compute platform. | [optional] |
| **compute_status_3xx** | **Integer** | Number of 3xx \&quot;Redirection\&quot; codes for origin received by the Compute platform. | [optional] |
| **compute_status_4xx** | **Integer** | Number of 4xx \&quot;Client Error\&quot; codes for origin received by the Compute platform. | [optional] |
| **compute_status_5xx** | **Integer** | Number of 5xx \&quot;Server Error\&quot; codes for origin received by the Compute platform. | [optional] |
| **compute_status_200** | **Integer** | Number of responses received with status code 200 (Success) for origin received by the Compute platform. | [optional] |
| **compute_status_204** | **Integer** | Number of responses received with status code 204 (No Content) for origin received by the Compute platform. | [optional] |
| **compute_status_206** | **Integer** | Number of responses received with status code 206 (Partial Content) for origin received by the Compute platform. | [optional] |
| **compute_status_301** | **Integer** | Number of responses received with status code 301 (Moved Permanently) for origin received by the Compute platform. | [optional] |
| **compute_status_302** | **Integer** | Number of responses received with status code 302 (Found) for origin received by the Compute platform. | [optional] |
| **compute_status_304** | **Integer** | Number of responses received with status code 304 (Not Modified) for origin received by the Compute platform. | [optional] |
| **compute_status_400** | **Integer** | Number of responses received with status code 400 (Bad Request) for origin received by the Compute platform. | [optional] |
| **compute_status_401** | **Integer** | Number of responses received with status code 401 (Unauthorized) for origin received by the Compute platform. | [optional] |
| **compute_status_403** | **Integer** | Number of responses received with status code 403 (Forbidden) for origin received by the Compute platform. | [optional] |
| **compute_status_404** | **Integer** | Number of responses received with status code 404 (Not Found) for origin received by the Compute platform. | [optional] |
| **compute_status_416** | **Integer** | Number of responses received with status code 416 (Range Not Satisfiable) for origin received by the Compute platform. | [optional] |
| **compute_status_429** | **Integer** | Number of responses received with status code 429 (Too Many Requests) for origin received by the Compute platform. | [optional] |
| **compute_status_500** | **Integer** | Number of responses received with status code 500 (Internal Server Error) for origin received by the Compute platform. | [optional] |
| **compute_status_501** | **Integer** | Number of responses received with status code 501 (Not Implemented) for origin received by the Compute platform. | [optional] |
| **compute_status_502** | **Integer** | Number of responses received with status code 502 (Bad Gateway) for origin received by the Compute platform. | [optional] |
| **compute_status_503** | **Integer** | Number of responses received with status code 503 (Service Unavailable) for origin received by the Compute platform. | [optional] |
| **compute_status_504** | **Integer** | Number of responses received with status code 504 (Gateway Timeout) for origin received by the Compute platform. | [optional] |
| **compute_status_505** | **Integer** | Number of responses received with status code 505 (HTTP Version Not Supported) for origin received by the Compute platform. | [optional] |
| **compute_status_530** | **Integer** | Number of responses received with status code 530 for origin received by the Compute platform. | [optional] |
| **compute_latency_0_to_1ms** | **Integer** | Number of responses with latency between 0 and 1 millisecond for origin received by the Compute platform. | [optional] |
| **compute_latency_1_to_5ms** | **Integer** | Number of responses with latency between 1 and 5 milliseconds for origin received by the Compute platform. | [optional] |
| **compute_latency_5_to_10ms** | **Integer** | Number of responses with latency between 5 and 10 milliseconds for origin received by the Compute platform. | [optional] |
| **compute_latency_10_to_50ms** | **Integer** | Number of responses with latency between 10 and 50 milliseconds for origin received by the Compute platform. | [optional] |
| **compute_latency_50_to_100ms** | **Integer** | Number of responses with latency between 50 and 100 milliseconds for origin received by the Compute platform. | [optional] |
| **compute_latency_100_to_250ms** | **Integer** | Number of responses with latency between 100 and 250 milliseconds for origin received by the Compute platform. | [optional] |
| **compute_latency_250_to_500ms** | **Integer** | Number of responses with latency between 250 and 500 milliseconds for origin received by the Compute platform. | [optional] |
| **compute_latency_500_to_1000ms** | **Integer** | Number of responses with latency between 500 and 1,000 milliseconds for origin received by the Compute platform. | [optional] |
| **compute_latency_1000_to_5000ms** | **Integer** | Number of responses with latency between 1,000 and 5,000 milliseconds for origin received by the Compute platform. | [optional] |
| **compute_latency_5000_to_10000ms** | **Integer** | Number of responses with latency between 5,000 and 10,000 milliseconds for origin received by the Compute platform. | [optional] |
| **compute_latency_10000_to_60000ms** | **Integer** | Number of responses with latency between 10,000 and 60,000 milliseconds for origin received by the Compute platform. | [optional] |
| **compute_latency_60000ms** | **Integer** | Number of responses with latency of 60,000 milliseconds and above for origin received by the Compute platform. | [optional] |
| **all_responses** | **Integer** | Number of responses received for origin requests made by all sources. | [optional] |
| **all_resp_header_bytes** | **Integer** | Number of header bytes received for origin requests made by all sources. | [optional] |
| **all_resp_body_bytes** | **Integer** | Number of body bytes received for origin requests made by all sources. | [optional] |
| **all_status_1xx** | **Integer** | Number of 1xx \&quot;Informational\&quot; category status codes delivered received for origin requests made by all sources. | [optional] |
| **all_status_2xx** | **Integer** | Number of 2xx \&quot;Success\&quot; status codes received for origin requests made by all sources. | [optional] |
| **all_status_3xx** | **Integer** | Number of 3xx \&quot;Redirection\&quot; codes received for origin requests made by all sources. | [optional] |
| **all_status_4xx** | **Integer** | Number of 4xx \&quot;Client Error\&quot; codes received for origin requests made by all sources. | [optional] |
| **all_status_5xx** | **Integer** | Number of 5xx \&quot;Server Error\&quot; codes received for origin requests made by all sources. | [optional] |
| **all_status_200** | **Integer** | Number of responses received with status code 200 (Success) received for origin requests made by all sources. | [optional] |
| **all_status_204** | **Integer** | Number of responses received with status code 204 (No Content) received for origin requests made by all sources. | [optional] |
| **all_status_206** | **Integer** | Number of responses received with status code 206 (Partial Content) received for origin requests made by all sources. | [optional] |
| **all_status_301** | **Integer** | Number of responses received with status code 301 (Moved Permanently) received for origin requests made by all sources. | [optional] |
| **all_status_302** | **Integer** | Number of responses received with status code 302 (Found) received for origin requests made by all sources. | [optional] |
| **all_status_304** | **Integer** | Number of responses received with status code 304 (Not Modified) received for origin requests made by all sources. | [optional] |
| **all_status_400** | **Integer** | Number of responses received with status code 400 (Bad Request) received for origin requests made by all sources. | [optional] |
| **all_status_401** | **Integer** | Number of responses received with status code 401 (Unauthorized) received for origin requests made by all sources. | [optional] |
| **all_status_403** | **Integer** | Number of responses received with status code 403 (Forbidden) received for origin requests made by all sources. | [optional] |
| **all_status_404** | **Integer** | Number of responses received with status code 404 (Not Found) received for origin requests made by all sources. | [optional] |
| **all_status_416** | **Integer** | Number of responses received with status code 416 (Range Not Satisfiable) received for origin requests made by all sources. | [optional] |
| **all_status_429** | **Integer** | Number of responses received with status code 429 (Too Many Requests) received for origin requests made by all sources. | [optional] |
| **all_status_500** | **Integer** | Number of responses received with status code 500 (Internal Server Error) received for origin requests made by all sources. | [optional] |
| **all_status_501** | **Integer** | Number of responses received with status code 501 (Not Implemented) received for origin requests made by all sources. | [optional] |
| **all_status_502** | **Integer** | Number of responses received with status code 502 (Bad Gateway) received for origin requests made by all sources. | [optional] |
| **all_status_503** | **Integer** | Number of responses received with status code 503 (Service Unavailable) received for origin requests made by all sources. | [optional] |
| **all_status_504** | **Integer** | Number of responses received with status code 504 (Gateway Timeout) received for origin requests made by all sources. | [optional] |
| **all_status_505** | **Integer** | Number of responses received with status code 505 (HTTP Version Not Supported) received for origin requests made by all sources. | [optional] |
| **all_status_530** | **Integer** | Number of responses received with status code 530 received for origin requests made by all sources. | [optional] |
| **all_latency_0_to_1ms** | **Integer** | Number of responses with latency between 0 and 1 millisecond received for origin requests made by all sources. | [optional] |
| **all_latency_1_to_5ms** | **Integer** | Number of responses with latency between 1 and 5 milliseconds received for origin requests made by all sources. | [optional] |
| **all_latency_5_to_10ms** | **Integer** | Number of responses with latency between 5 and 10 milliseconds received for origin requests made by all sources. | [optional] |
| **all_latency_10_to_50ms** | **Integer** | Number of responses with latency between 10 and 50 milliseconds received for origin requests made by all sources. | [optional] |
| **all_latency_50_to_100ms** | **Integer** | Number of responses with latency between 50 and 100 milliseconds received for origin requests made by all sources. | [optional] |
| **all_latency_100_to_250ms** | **Integer** | Number of responses with latency between 100 and 250 milliseconds received for origin requests made by all sources. | [optional] |
| **all_latency_250_to_500ms** | **Integer** | Number of responses with latency between 250 and 500 milliseconds received for origin requests made by all sources. | [optional] |
| **all_latency_500_to_1000ms** | **Integer** | Number of responses with latency between 500 and 1,000 milliseconds received for origin requests made by all sources. | [optional] |
| **all_latency_1000_to_5000ms** | **Integer** | Number of responses with latency between 1,000 and 5,000 milliseconds received for origin requests made by all sources. | [optional] |
| **all_latency_5000_to_10000ms** | **Integer** | Number of responses with latency between 5,000 and 10,000 milliseconds received for origin requests made by all sources. | [optional] |
| **all_latency_10000_to_60000ms** | **Integer** | Number of responses with latency between 10,000 and 60,000 milliseconds received for origin requests made by all sources. | [optional] |
| **all_latency_60000ms** | **Integer** | Number of responses with latency of 60,000 milliseconds and above received for origin requests made by all sources. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

