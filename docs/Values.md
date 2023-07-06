# Fastly::Values

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **edge_requests** | **Integer** | Number of requests sent by end users to Fastly. | [optional] |
| **edge_resp_header_bytes** | **Integer** | Total header bytes delivered from Fastly to the end user. | [optional] |
| **edge_resp_body_bytes** | **Integer** | Total body bytes delivered from Fastly to the end user. | [optional] |
| **status_1xx** | **Integer** | Number of 1xx \&quot;Informational\&quot; category status codes delivered. | [optional] |
| **status_2xx** | **Integer** | Number of 2xx \&quot;Success\&quot; status codes delivered. | [optional] |
| **status_3xx** | **Integer** | Number of 3xx \&quot;Redirection\&quot; codes delivered. | [optional] |
| **status_4xx** | **Integer** | Number of 4xx \&quot;Client Error\&quot; codes delivered. | [optional] |
| **status_5xx** | **Integer** | Number of 5xx \&quot;Server Error\&quot; codes delivered. | [optional] |
| **status_200** | **Integer** | Number of responses delivered with status code 200 (Success). | [optional] |
| **status_204** | **Integer** | Number of responses delivered with status code 204 (No Content). | [optional] |
| **status_206** | **Integer** | Number of responses delivered with status code 206 (Partial Content). | [optional] |
| **status_301** | **Integer** | Number of responses delivered with status code 301 (Moved Permanently). | [optional] |
| **status_302** | **Integer** | Number of responses delivered with status code 302 (Found). | [optional] |
| **status_304** | **Integer** | Number of responses delivered with status code 304 (Not Modified). | [optional] |
| **status_400** | **Integer** | Number of responses delivered with status code 400 (Bad Request). | [optional] |
| **status_401** | **Integer** | Number of responses delivered with status code 401 (Unauthorized). | [optional] |
| **status_403** | **Integer** | Number of responses delivered with status code 403 (Forbidden). | [optional] |
| **status_404** | **Integer** | Number of responses delivered with status code 404 (Not Found). | [optional] |
| **status_416** | **Integer** | Number of responses delivered with status code 416 (Range Not Satisfiable). | [optional] |
| **status_429** | **Integer** | Number of responses delivered with status code 429 (Too Many Requests). | [optional] |
| **status_500** | **Integer** | Number of responses delivered with status code 500 (Internal Server Error). | [optional] |
| **status_501** | **Integer** | Number of responses delivered with status code 501 (Not Implemented). | [optional] |
| **status_502** | **Integer** | Number of responses delivered with status code 502 (Bad Gateway). | [optional] |
| **status_503** | **Integer** | Number of responses delivered with status code 503 (Service Unavailable). | [optional] |
| **status_504** | **Integer** | Number of responses delivered with status code 504 (Gateway Timeout). | [optional] |
| **status_505** | **Integer** | Number of responses delivered with status code 505 (HTTP Version Not Supported). | [optional] |
| **requests** | **Integer** | Number of requests processed. | [optional] |
| **resp_header_bytes** | **Integer** | Total header bytes delivered. | [optional] |
| **resp_body_bytes** | **Integer** | Total body bytes delivered. | [optional] |
| **bereq_header_bytes** | **Integer** | Total header bytes sent to origin. | [optional] |
| **bereq_body_bytes** | **Integer** | Total body bytes sent to origin. | [optional] |
| **edge_hit_requests** | **Integer** | Number of requests sent by end users to Fastly that resulted in a hit at the edge. | [optional] |
| **edge_miss_requests** | **Integer** | Number of requests sent by end users to Fastly that resulted in a miss at the edge. | [optional] |
| **origin_fetches** | **Integer** | Number of requests sent to origin. | [optional] |
| **origin_fetch_resp_header_bytes** | **Integer** | Total header bytes received from origin. | [optional] |
| **origin_fetch_resp_body_bytes** | **Integer** | Total body bytes received from origin. | [optional] |
| **bandwidth** | **Integer** | Total bytes delivered (`resp_header_bytes` + `resp_body_bytes` + `bereq_header_bytes` + `bereq_body_bytes`). | [optional] |
| **edge_hit_ratio** | **Float** | Ratio of cache hits to cache misses at the edge, between 0 and 1 (`edge_hit_requests` / (`edge_hit_requests` + `edge_miss_requests`)). | [optional] |
| **origin_offload** | **Float** | Ratio of response bytes delivered from the edge compared to what is delivered from origin, between 0 and 1. (`edge_resp_body_bytes` + `edge_resp_header_bytes`) / (`origin_fetch_resp_body_bytes` + `origin_fetch_resp_header_bytes` + `edge_resp_body_bytes` + `edge_resp_header_bytes`). | [optional] |
| **origin_status_200** | **Integer** | Number of responses received from origin with status code 200 (Success). | [optional] |
| **origin_status_204** | **Integer** | Number of responses received from origin with status code 204 (No Content). | [optional] |
| **origin_status_206** | **Integer** | Number of responses received from origin with status code 206 (Partial Content). | [optional] |
| **origin_status_301** | **Integer** | Number of responses received from origin with status code 301 (Moved Permanently). | [optional] |
| **origin_status_302** | **Integer** | Number of responses received from origin with status code 302 (Found). | [optional] |
| **origin_status_304** | **Integer** | Number of responses received from origin with status code 304 (Not Modified). | [optional] |
| **origin_status_400** | **Integer** | Number of responses received from origin with status code 400 (Bad Request). | [optional] |
| **origin_status_401** | **Integer** | Number of responses received from origin with status code 401 (Unauthorized). | [optional] |
| **origin_status_403** | **Integer** | Number of responses received from origin with status code 403 (Forbidden). | [optional] |
| **origin_status_404** | **Integer** | Number of responses received from origin with status code 404 (Not Found). | [optional] |
| **origin_status_416** | **Integer** | Number of responses received from origin with status code 416 (Range Not Satisfiable). | [optional] |
| **origin_status_429** | **Integer** | Number of responses received from origin with status code 429 (Too Many Requests). | [optional] |
| **origin_status_500** | **Integer** | Number of responses received from origin with status code 500 (Internal Server Error). | [optional] |
| **origin_status_501** | **Integer** | Number of responses received from origin with status code 501 (Not Implemented). | [optional] |
| **origin_status_502** | **Integer** | Number of responses received from origin with status code 502 (Bad Gateway). | [optional] |
| **origin_status_503** | **Integer** | Number of responses received from origin with status code 503 (Service Unavailable). | [optional] |
| **origin_status_504** | **Integer** | Number of responses received from origin with status code 504 (Gateway Timeout). | [optional] |
| **origin_status_505** | **Integer** | Number of responses received from origin with status code 505 (HTTP Version Not Supported). | [optional] |
| **origin_status_1xx** | **Integer** | Number of \&quot;Informational\&quot; category status codes received from origin. | [optional] |
| **origin_status_2xx** | **Integer** | Number of \&quot;Success\&quot; status codes received from origin. | [optional] |
| **origin_status_3xx** | **Integer** | Number of \&quot;Redirection\&quot; codes received from origin. | [optional] |
| **origin_status_4xx** | **Integer** | Number of \&quot;Client Error\&quot; codes received from origin. | [optional] |
| **origin_status_5xx** | **Integer** | Number of \&quot;Server Error\&quot; codes received from origin. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

