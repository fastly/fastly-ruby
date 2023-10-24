# Fastly::RealtimeEntryAggregated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **requests** | **Integer** | Number of requests processed. | [optional] |
| **logging** | **Integer** | Number of log lines sent (alias for `log`). | [optional] |
| **log** | **Integer** | Number of log lines sent. | [optional] |
| **resp_header_bytes** | **Integer** | Total header bytes delivered (edge_resp_header_bytes + shield_resp_header_bytes). | [optional] |
| **header_size** | **Integer** | Total header bytes delivered (alias for resp_header_bytes). | [optional] |
| **resp_body_bytes** | **Integer** | Total body bytes delivered (edge_resp_body_bytes + shield_resp_body_bytes). | [optional] |
| **body_size** | **Integer** | Total body bytes delivered (alias for resp_body_bytes). | [optional] |
| **hits** | **Integer** | Number of cache hits. | [optional] |
| **miss** | **Integer** | Number of cache misses. | [optional] |
| **pass** | **Integer** | Number of requests that passed through the CDN without being cached. | [optional] |
| **synth** | **Integer** | Number of requests that returned a synthetic response (i.e., response objects created with the `synthetic` VCL statement). | [optional] |
| **errors** | **Integer** | Number of cache errors. | [optional] |
| **hits_time** | **Float** | Total amount of time spent processing cache hits (in seconds). | [optional] |
| **miss_time** | **Float** | Total amount of time spent processing cache misses (in seconds). | [optional] |
| **miss_histogram** | **Hash&lt;String, Object&gt;** | A histogram. Each key represents the upper bound of a span of 10 milliseconds and the values represent the number of requests to origin during that 10ms period. Any origin request that takes more than 60 seconds to return will be in the 60000 bucket. | [optional] |
| **compute_requests** | **Integer** | The total number of requests that were received for your service by Fastly. | [optional] |
| **compute_execution_time_ms** | **Float** | The amount of active CPU time used to process your requests (in milliseconds). | [optional] |
| **compute_ram_used** | **Integer** | The amount of RAM used for your service by Fastly (in bytes). | [optional] |
| **compute_request_time_ms** | **Float** | The total, actual amount of time used to process your requests, including active CPU time (in milliseconds). | [optional] |
| **compute_request_time_billed_ms** | **Float** | The total amount of request processing time you will be billed for, measured in 50 millisecond increments. | [optional] |
| **shield** | **Integer** | Number of requests from edge to the shield POP. | [optional] |
| **ipv6** | **Integer** | Number of requests that were received over IPv6. | [optional] |
| **imgopto** | **Integer** | Number of responses that came from the Fastly Image Optimizer service. If the service receives 10 requests for an image, this stat will be 10 regardless of how many times the image was transformed. | [optional] |
| **imgopto_shield** | **Integer** | Number of responses that came from the Fastly Image Optimizer service via a shield. | [optional] |
| **imgopto_transforms** | **Integer** | Number of transforms performed by the Fastly Image Optimizer service. | [optional] |
| **otfp** | **Integer** | Number of responses that came from the Fastly On-the-Fly Packaging service for video-on-demand. | [optional] |
| **otfp_shield** | **Integer** | Number of responses that came from the Fastly On-the-Fly Packaging service for video-on-demand via a shield. | [optional] |
| **otfp_manifests** | **Integer** | Number of responses that were manifest files from the Fastly On-the-Fly Packaging service for video-on-demand. | [optional] |
| **video** | **Integer** | Number of responses with the video segment or video manifest MIME type (i.e., application/x-mpegurl, application/vnd.apple.mpegurl, application/f4m, application/dash+xml, application/vnd.ms-sstr+xml, ideo/mp2t, audio/aac, video/f4f, video/x-flv, video/mp4, audio/mp4). | [optional] |
| **pci** | **Integer** | Number of responses with the PCI flag turned on. | [optional] |
| **http2** | **Integer** | Number of requests received over HTTP/2. | [optional] |
| **http3** | **Integer** | Number of requests received over HTTP/3. | [optional] |
| **restarts** | **Integer** | Number of restarts performed. | [optional] |
| **req_header_bytes** | **Integer** | Total header bytes received. | [optional] |
| **req_body_bytes** | **Integer** | Total body bytes received. | [optional] |
| **bereq_header_bytes** | **Integer** | Total header bytes sent to origin. | [optional] |
| **bereq_body_bytes** | **Integer** | Total body bytes sent to origin. | [optional] |
| **waf_blocked** | **Integer** | Number of requests that triggered a WAF rule and were blocked. | [optional] |
| **waf_logged** | **Integer** | Number of requests that triggered a WAF rule and were logged. | [optional] |
| **waf_passed** | **Integer** | Number of requests that triggered a WAF rule and were passed. | [optional] |
| **attack_req_header_bytes** | **Integer** | Total header bytes received from requests that triggered a WAF rule. | [optional] |
| **attack_req_body_bytes** | **Integer** | Total body bytes received from requests that triggered a WAF rule. | [optional] |
| **attack_resp_synth_bytes** | **Integer** | Total bytes delivered for requests that triggered a WAF rule and returned a synthetic response. | [optional] |
| **attack_logged_req_header_bytes** | **Integer** | Total header bytes received from requests that triggered a WAF rule that was logged. | [optional] |
| **attack_logged_req_body_bytes** | **Integer** | Total body bytes received from requests that triggered a WAF rule that was logged. | [optional] |
| **attack_blocked_req_header_bytes** | **Integer** | Total header bytes received from requests that triggered a WAF rule that was blocked. | [optional] |
| **attack_blocked_req_body_bytes** | **Integer** | Total body bytes received from requests that triggered a WAF rule that was blocked. | [optional] |
| **attack_passed_req_header_bytes** | **Integer** | Total header bytes received from requests that triggered a WAF rule that was passed. | [optional] |
| **attack_passed_req_body_bytes** | **Integer** | Total body bytes received from requests that triggered a WAF rule that was passed. | [optional] |
| **shield_resp_header_bytes** | **Integer** | Total header bytes delivered via a shield. | [optional] |
| **shield_resp_body_bytes** | **Integer** | Total body bytes delivered via a shield. | [optional] |
| **otfp_resp_header_bytes** | **Integer** | Total header bytes delivered from the Fastly On-the-Fly Packaging service for video-on-demand. | [optional] |
| **otfp_resp_body_bytes** | **Integer** | Total body bytes delivered from the Fastly On-the-Fly Packaging service for video-on-demand. | [optional] |
| **otfp_shield_resp_header_bytes** | **Integer** | Total header bytes delivered via a shield for the Fastly On-the-Fly Packaging service for video-on-demand. | [optional] |
| **otfp_shield_resp_body_bytes** | **Integer** | Total body bytes delivered via a shield for the Fastly On-the-Fly Packaging service for video-on-demand. | [optional] |
| **otfp_shield_time** | **Float** | Total amount of time spent delivering a response via a shield from the Fastly On-the-Fly Packaging service for video-on-demand (in seconds). | [optional] |
| **otfp_deliver_time** | **Float** | Total amount of time spent delivering a response from the Fastly On-the-Fly Packaging service for video-on-demand (in seconds). | [optional] |
| **imgopto_resp_header_bytes** | **Integer** | Total header bytes delivered from the Fastly Image Optimizer service, including shield traffic. | [optional] |
| **imgopto_resp_body_bytes** | **Integer** | Total body bytes delivered from the Fastly Image Optimizer service, including shield traffic. | [optional] |
| **imgopto_shield_resp_header_bytes** | **Integer** | Total header bytes delivered via a shield from the Fastly Image Optimizer service. | [optional] |
| **imgopto_shield_resp_body_bytes** | **Integer** | Total body bytes delivered via a shield from the Fastly Image Optimizer service. | [optional] |
| **status_1xx** | **Integer** | Number of \&quot;Informational\&quot; category status codes delivered. | [optional] |
| **status_2xx** | **Integer** | Number of \&quot;Success\&quot; status codes delivered. | [optional] |
| **status_3xx** | **Integer** | Number of \&quot;Redirection\&quot; codes delivered. | [optional] |
| **status_4xx** | **Integer** | Number of \&quot;Client Error\&quot; codes delivered. | [optional] |
| **status_5xx** | **Integer** | Number of \&quot;Server Error\&quot; codes delivered. | [optional] |
| **status_200** | **Integer** | Number of responses sent with status code 200 (Success). | [optional] |
| **status_204** | **Integer** | Number of responses sent with status code 204 (No Content). | [optional] |
| **status_206** | **Integer** | Number of responses sent with status code 206 (Partial Content). | [optional] |
| **status_301** | **Integer** | Number of responses sent with status code 301 (Moved Permanently). | [optional] |
| **status_302** | **Integer** | Number of responses sent with status code 302 (Found). | [optional] |
| **status_304** | **Integer** | Number of responses sent with status code 304 (Not Modified). | [optional] |
| **status_400** | **Integer** | Number of responses sent with status code 400 (Bad Request). | [optional] |
| **status_401** | **Integer** | Number of responses sent with status code 401 (Unauthorized). | [optional] |
| **status_403** | **Integer** | Number of responses sent with status code 403 (Forbidden). | [optional] |
| **status_404** | **Integer** | Number of responses sent with status code 404 (Not Found). | [optional] |
| **status_406** | **Integer** | Number of responses sent with status code 406 (Not Acceptable). | [optional] |
| **status_416** | **Integer** | Number of responses sent with status code 416 (Range Not Satisfiable). | [optional] |
| **status_429** | **Integer** | Number of responses sent with status code 429 (Too Many Requests). | [optional] |
| **status_500** | **Integer** | Number of responses sent with status code 500 (Internal Server Error). | [optional] |
| **status_501** | **Integer** | Number of responses sent with status code 501 (Not Implemented). | [optional] |
| **status_502** | **Integer** | Number of responses sent with status code 502 (Bad Gateway). | [optional] |
| **status_503** | **Integer** | Number of responses sent with status code 503 (Service Unavailable). | [optional] |
| **status_504** | **Integer** | Number of responses sent with status code 504 (Gateway Timeout). | [optional] |
| **status_505** | **Integer** | Number of responses sent with status code 505 (HTTP Version Not Supported). | [optional] |
| **uncacheable** | **Integer** | Number of requests that were designated uncachable. | [optional] |
| **pass_time** | **Float** | Total amount of time spent processing cache passes (in seconds). | [optional] |
| **tls** | **Integer** | Number of requests that were received over TLS. | [optional] |
| **tls_v10** | **Integer** | Number of requests received over TLS 1.0. | [optional] |
| **tls_v11** | **Integer** | Number of requests received over TLS 1.1. | [optional] |
| **tls_v12** | **Integer** | Number of requests received over TLS 1.2. | [optional] |
| **tls_v13** | **Integer** | Number of requests received over TLS 1.3. | [optional] |
| **object_size_1k** | **Integer** | Number of objects served that were under 1KB in size. | [optional] |
| **object_size_10k** | **Integer** | Number of objects served that were between 1KB and 10KB in size. | [optional] |
| **object_size_100k** | **Integer** | Number of objects served that were between 10KB and 100KB in size. | [optional] |
| **object_size_1m** | **Integer** | Number of objects served that were between 100KB and 1MB in size. | [optional] |
| **object_size_10m** | **Integer** | Number of objects served that were between 1MB and 10MB in size. | [optional] |
| **object_size_100m** | **Integer** | Number of objects served that were between 10MB and 100MB in size. | [optional] |
| **object_size_1g** | **Integer** | Number of objects served that were between 100MB and 1GB in size. | [optional] |
| **object_size_other** | **Integer** | Number of objects served that were larger than 1GB in size. | [optional] |
| **recv_sub_time** | **Float** | Time spent inside the `vcl_recv` Varnish subroutine (in nanoseconds). | [optional] |
| **recv_sub_count** | **Integer** | Number of executions of the `vcl_recv` Varnish subroutine. | [optional] |
| **hash_sub_time** | **Float** | Time spent inside the `vcl_hash` Varnish subroutine (in nanoseconds). | [optional] |
| **hash_sub_count** | **Integer** | Number of executions of the `vcl_hash` Varnish subroutine. | [optional] |
| **miss_sub_time** | **Float** | Time spent inside the `vcl_miss` Varnish subroutine (in nanoseconds). | [optional] |
| **miss_sub_count** | **Integer** | Number of executions of the `vcl_miss` Varnish subroutine. | [optional] |
| **fetch_sub_time** | **Float** | Time spent inside the `vcl_fetch` Varnish subroutine (in nanoseconds). | [optional] |
| **fetch_sub_count** | **Integer** | Number of executions of the `vcl_fetch` Varnish subroutine. | [optional] |
| **pass_sub_time** | **Float** | Time spent inside the `vcl_pass` Varnish subroutine (in nanoseconds). | [optional] |
| **pass_sub_count** | **Integer** | Number of executions of the `vcl_pass` Varnish subroutine. | [optional] |
| **pipe_sub_time** | **Float** | Time spent inside the `vcl_pipe` Varnish subroutine (in nanoseconds). | [optional] |
| **pipe_sub_count** | **Integer** | Number of executions of the `vcl_pipe` Varnish subroutine. | [optional] |
| **deliver_sub_time** | **Float** | Time spent inside the `vcl_deliver` Varnish subroutine (in nanoseconds). | [optional] |
| **deliver_sub_count** | **Integer** | Number of executions of the `vcl_deliver` Varnish subroutine. | [optional] |
| **error_sub_time** | **Float** | Time spent inside the `vcl_error` Varnish subroutine (in nanoseconds). | [optional] |
| **error_sub_count** | **Integer** | Number of executions of the `vcl_error` Varnish subroutine. | [optional] |
| **hit_sub_time** | **Float** | Time spent inside the `vcl_hit` Varnish subroutine (in nanoseconds). | [optional] |
| **hit_sub_count** | **Integer** | Number of executions of the `vcl_hit` Varnish subroutine. | [optional] |
| **prehash_sub_time** | **Float** | Time spent inside the `vcl_prehash` Varnish subroutine (in nanoseconds). | [optional] |
| **prehash_sub_count** | **Integer** | Number of executions of the `vcl_prehash` Varnish subroutine. | [optional] |
| **predeliver_sub_time** | **Float** | Time spent inside the `vcl_predeliver` Varnish subroutine (in nanoseconds). | [optional] |
| **predeliver_sub_count** | **Integer** | Number of executions of the `vcl_predeliver` Varnish subroutine. | [optional] |
| **hit_resp_body_bytes** | **Integer** | Total body bytes delivered for cache hits. | [optional] |
| **miss_resp_body_bytes** | **Integer** | Total body bytes delivered for cache misses. | [optional] |
| **pass_resp_body_bytes** | **Integer** | Total body bytes delivered for cache passes. | [optional] |
| **compute_req_header_bytes** | **Integer** | Total header bytes received by Compute@Edge. | [optional] |
| **compute_req_body_bytes** | **Integer** | Total body bytes received by Compute@Edge. | [optional] |
| **compute_resp_header_bytes** | **Integer** | Total header bytes sent from Compute@Edge to end user. | [optional] |
| **compute_resp_body_bytes** | **Integer** | Total body bytes sent from Compute@Edge to end user. | [optional] |
| **imgvideo** | **Integer** | Number of video responses that came from the Fastly Image Optimizer service. | [optional] |
| **imgvideo_frames** | **Integer** | Number of video frames that came from the Fastly Image Optimizer service. A video frame is an individual image within a sequence of video. | [optional] |
| **imgvideo_resp_header_bytes** | **Integer** | Total header bytes of video delivered from the Fastly Image Optimizer service. | [optional] |
| **imgvideo_resp_body_bytes** | **Integer** | Total body bytes of video delivered from the Fastly Image Optimizer service. | [optional] |
| **imgvideo_shield** | **Integer** | Number of video responses delivered via a shield that came from the Fastly Image Optimizer service. | [optional] |
| **imgvideo_shield_frames** | **Integer** | Number of video frames delivered via a shield that came from the Fastly Image Optimizer service. A video frame is an individual image within a sequence of video. | [optional] |
| **imgvideo_shield_resp_header_bytes** | **Integer** | Total header bytes of video delivered via a shield from the Fastly Image Optimizer service. | [optional] |
| **imgvideo_shield_resp_body_bytes** | **Integer** | Total body bytes of video delivered via a shield from the Fastly Image Optimizer service. | [optional] |
| **log_bytes** | **Integer** | Total log bytes sent. | [optional] |
| **edge_requests** | **Integer** | Number of requests sent by end users to Fastly. | [optional] |
| **edge_resp_header_bytes** | **Integer** | Total header bytes delivered from Fastly to the end user. | [optional] |
| **edge_resp_body_bytes** | **Integer** | Total body bytes delivered from Fastly to the end user. | [optional] |
| **origin_revalidations** | **Integer** | Number of responses received from origin with a `304` status code in response to an `If-Modified-Since` or `If-None-Match` request. Under regular scenarios, a revalidation will imply a cache hit. However, if using Fastly Image Optimizer or segmented caching this may result in a cache miss. | [optional] |
| **origin_fetches** | **Integer** | Number of requests sent to origin. | [optional] |
| **origin_fetch_header_bytes** | **Integer** | Total request header bytes sent to origin. | [optional] |
| **origin_fetch_body_bytes** | **Integer** | Total request body bytes sent to origin. | [optional] |
| **origin_fetch_resp_header_bytes** | **Integer** | Total header bytes received from origin. | [optional] |
| **origin_fetch_resp_body_bytes** | **Integer** | Total body bytes received from origin. | [optional] |
| **shield_revalidations** | **Integer** | Number of responses received from origin with a `304` status code, in response to an `If-Modified-Since` or `If-None-Match` request to a shield. Under regular scenarios, a revalidation will imply a cache hit. However, if using segmented caching this may result in a cache miss. | [optional] |
| **shield_fetches** | **Integer** | Number of requests made from one Fastly POP to another, as part of shielding. | [optional] |
| **shield_fetch_header_bytes** | **Integer** | Total request header bytes sent to a shield. | [optional] |
| **shield_fetch_body_bytes** | **Integer** | Total request body bytes sent to a shield. | [optional] |
| **shield_fetch_resp_header_bytes** | **Integer** | Total response header bytes sent from a shield to the edge. | [optional] |
| **shield_fetch_resp_body_bytes** | **Integer** | Total response body bytes sent from a shield to the edge. | [optional] |
| **segblock_origin_fetches** | **Integer** | Number of `Range` requests to origin for segments of resources when using segmented caching. | [optional] |
| **segblock_shield_fetches** | **Integer** | Number of `Range` requests to a shield for segments of resources when using segmented caching. | [optional] |
| **compute_resp_status_1xx** | **Integer** | Number of \&quot;Informational\&quot; category status codes delivered by Compute@Edge. | [optional] |
| **compute_resp_status_2xx** | **Integer** | Number of \&quot;Success\&quot; category status codes delivered by Compute@Edge. | [optional] |
| **compute_resp_status_3xx** | **Integer** | Number of \&quot;Redirection\&quot; category status codes delivered by Compute@Edge. | [optional] |
| **compute_resp_status_4xx** | **Integer** | Number of \&quot;Client Error\&quot; category status codes delivered by Compute@Edge. | [optional] |
| **compute_resp_status_5xx** | **Integer** | Number of \&quot;Server Error\&quot; category status codes delivered by Compute@Edge. | [optional] |
| **edge_hit_requests** | **Integer** | Number of requests sent by end users to Fastly that resulted in a hit at the edge. | [optional] |
| **edge_miss_requests** | **Integer** | Number of requests sent by end users to Fastly that resulted in a miss at the edge. | [optional] |
| **compute_bereq_header_bytes** | **Integer** | Total header bytes sent to backends (origins) by Compute@Edge. | [optional] |
| **compute_bereq_body_bytes** | **Integer** | Total body bytes sent to backends (origins) by Compute@Edge. | [optional] |
| **compute_beresp_header_bytes** | **Integer** | Total header bytes received from backends (origins) by Compute@Edge. | [optional] |
| **compute_beresp_body_bytes** | **Integer** | Total body bytes received from backends (origins) by Compute@Edge. | [optional] |
| **origin_cache_fetches** | **Integer** | The total number of completed requests made to backends (origins) that returned cacheable content. | [optional] |
| **shield_cache_fetches** | **Integer** | The total number of completed requests made to shields that returned cacheable content. | [optional] |
| **compute_bereqs** | **Integer** | Number of backend requests started. | [optional] |
| **compute_bereq_errors** | **Integer** | Number of backend request errors, including timeouts. | [optional] |
| **compute_resource_limit_exceeded** | **Integer** | Number of times a guest exceeded its resource limit, includes heap, stack, globals, and code execution timeout. | [optional] |
| **compute_heap_limit_exceeded** | **Integer** | Number of times a guest exceeded its heap limit. | [optional] |
| **compute_stack_limit_exceeded** | **Integer** | Number of times a guest exceeded its stack limit. | [optional] |
| **compute_globals_limit_exceeded** | **Integer** | Number of times a guest exceeded its globals limit. | [optional] |
| **compute_guest_errors** | **Integer** | Number of times a service experienced a guest code error. | [optional] |
| **compute_runtime_errors** | **Integer** | Number of times a service experienced a guest runtime error. | [optional] |
| **edge_hit_resp_body_bytes** | **Integer** | Body bytes delivered for edge hits. | [optional] |
| **edge_hit_resp_header_bytes** | **Integer** | Header bytes delivered for edge hits. | [optional] |
| **edge_miss_resp_body_bytes** | **Integer** | Body bytes delivered for edge misses. | [optional] |
| **edge_miss_resp_header_bytes** | **Integer** | Header bytes delivered for edge misses. | [optional] |
| **origin_cache_fetch_resp_body_bytes** | **Integer** | Body bytes received from origin for cacheable content. | [optional] |
| **origin_cache_fetch_resp_header_bytes** | **Integer** | Header bytes received from an origin for cacheable content. | [optional] |
| **shield_hit_requests** | **Integer** | Number of requests that resulted in a hit at a shield. | [optional] |
| **shield_miss_requests** | **Integer** | Number of requests that resulted in a miss at a shield. | [optional] |
| **shield_hit_resp_header_bytes** | **Integer** | Header bytes delivered for shield hits. | [optional] |
| **shield_hit_resp_body_bytes** | **Integer** | Body bytes delivered for shield hits. | [optional] |
| **shield_miss_resp_header_bytes** | **Integer** | Header bytes delivered for shield misses. | [optional] |
| **shield_miss_resp_body_bytes** | **Integer** | Body bytes delivered for shield misses. | [optional] |
| **websocket_req_header_bytes** | **Integer** | Total header bytes received from end users over passthrough WebSocket connections. | [optional] |
| **websocket_req_body_bytes** | **Integer** | Total message content bytes received from end users over passthrough WebSocket connections. | [optional] |
| **websocket_resp_header_bytes** | **Integer** | Total header bytes sent to end users over passthrough WebSocket connections. | [optional] |
| **websocket_bereq_header_bytes** | **Integer** | Total header bytes sent to backends over passthrough WebSocket connections. | [optional] |
| **websocket_bereq_body_bytes** | **Integer** | Total message content bytes sent to backends over passthrough WebSocket connections. | [optional] |
| **websocket_beresp_header_bytes** | **Integer** | Total header bytes received from backends over passthrough WebSocket connections. | [optional] |
| **websocket_beresp_body_bytes** | **Integer** | Total message content bytes received from backends over passthrough WebSocket connections. | [optional] |
| **websocket_conn_time_ms** | **Integer** | Total duration of passthrough WebSocket connections with end users. | [optional] |
| **websocket_resp_body_bytes** | **Integer** | Total message content bytes sent to end users over passthrough WebSocket connections. | [optional] |
| **fanout_recv_publishes** | **Integer** | Total published messages received from the publish API endpoint. | [optional] |
| **fanout_send_publishes** | **Integer** | Total published messages sent to end users. | [optional] |
| **kv_store_class_a_operations** | **Integer** | The total number of class a operations for the KV store. | [optional] |
| **kv_store_class_b_operations** | **Integer** | The total number of class b operations for the KV store. | [optional] |
| **object_store_class_a_operations** | **Integer** | Use kv_store_class_a_operations. | [optional] |
| **object_store_class_b_operations** | **Integer** | Use kv_store_class_b_operations. | [optional] |
| **fanout_req_header_bytes** | **Integer** | Total header bytes received from end users over Fanout connections. | [optional] |
| **fanout_req_body_bytes** | **Integer** | Total body or message content bytes received from end users over Fanout connections. | [optional] |
| **fanout_resp_header_bytes** | **Integer** | Total header bytes sent to end users over Fanout connections. | [optional] |
| **fanout_resp_body_bytes** | **Integer** | Total body or message content bytes sent to end users over Fanout connections, excluding published message content. | [optional] |
| **fanout_bereq_header_bytes** | **Integer** | Total header bytes sent to backends over Fanout connections. | [optional] |
| **fanout_bereq_body_bytes** | **Integer** | Total body or message content bytes sent to backends over Fanout connections. | [optional] |
| **fanout_beresp_header_bytes** | **Integer** | Total header bytes received from backends over Fanout connections. | [optional] |
| **fanout_beresp_body_bytes** | **Integer** | Total body or message content bytes received from backends over Fanout connections. | [optional] |
| **fanout_conn_time_ms** | **Integer** | Total duration of Fanout connections with end users. | [optional] |
| **ddos_action_limit_streams_connections** | **Integer** | For HTTP/2, the number of connections the limit-streams action was applied to. The limit-streams action caps the allowed number of concurrent streams in a connection. | [optional] |
| **ddos_action_limit_streams_requests** | **Integer** | For HTTP/2, the number of requests made on a connection for which the limit-streams action was taken. The limit-streams action caps the allowed number of concurrent streams in a connection. | [optional] |
| **ddos_action_tarpit_accept** | **Integer** | The number of times the tarpit-accept action was taken. The tarpit-accept action adds a delay when accepting future connections. | [optional] |
| **ddos_action_tarpit** | **Integer** | The number of times the tarpit action was taken. The tarpit action delays writing the response to the client. | [optional] |
| **ddos_action_close** | **Integer** | The number of times the close action was taken. The close action aborts the connection as soon as possible. The close action takes effect either right after accept, right after the client hello, or right after the response was sent. | [optional] |
| **ddos_action_blackhole** | **Integer** | The number of times the blackhole action was taken. The blackhole action quietly closes a TCP connection without sending a reset. The blackhole action quietly closes a TCP connection without notifying its peer (all TCP state is dropped). | [optional] |
| **bot_challenge_starts** | **Integer** | The number of challenge-start tokens created. | [optional] |
| **bot_challenge_complete_tokens_passed** | **Integer** | The number of challenge-complete tokens that passed validation. | [optional] |
| **bot_challenge_complete_tokens_failed** | **Integer** | The number of challenge-complete tokens that failed validation. | [optional] |
| **bot_challenge_complete_tokens_checked** | **Integer** | The number of challenge-complete tokens checked. | [optional] |
| **bot_challenge_complete_tokens_disabled** | **Integer** | The number of challenge-complete tokens not checked because the feature was disabled. | [optional] |
| **bot_challenges_issued** | **Integer** | The number of challenges issued. For example, the issuance of a CAPTCHA challenge. | [optional] |
| **bot_challenges_succeeded** | **Integer** | The number of successful challenge solutions processed. For example, a correct CAPTCHA solution. | [optional] |
| **bot_challenges_failed** | **Integer** | The number of failed challenge solutions processed. For example, an incorrect CAPTCHA solution. | [optional] |
| **bot_challenge_complete_tokens_issued** | **Integer** | The number of challenge-complete tokens issued. For example, issuing a challenge-complete token after a series of CAPTCHA challenges ending in success. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

