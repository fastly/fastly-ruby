=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  # Aggregates [measurements](#measurements-data-model) across all Fastly POPs.
  class RealtimeEntryAggregated
    # Number of requests processed.
    attr_accessor :requests

    # Number of log lines sent (alias for `log`).
    attr_accessor :logging

    # Number of log lines sent.
    attr_accessor :log

    # Total header bytes delivered (edge_resp_header_bytes + shield_resp_header_bytes).
    attr_accessor :resp_header_bytes

    # Total header bytes delivered (alias for resp_header_bytes).
    attr_accessor :header_size

    # Total body bytes delivered (edge_resp_body_bytes + shield_resp_body_bytes).
    attr_accessor :resp_body_bytes

    # Total body bytes delivered (alias for resp_body_bytes).
    attr_accessor :body_size

    # Number of cache hits.
    attr_accessor :hits

    # Number of cache misses.
    attr_accessor :miss

    # Number of requests that passed through the CDN without being cached.
    attr_accessor :pass

    # Number of requests that returned a synthetic response (i.e., response objects created with the `synthetic` VCL statement).
    attr_accessor :synth

    # Number of cache errors.
    attr_accessor :errors

    # Total amount of time spent processing cache hits (in seconds).
    attr_accessor :hits_time

    # Total amount of time spent processing cache misses (in seconds).
    attr_accessor :miss_time

    # A histogram. The value in each bucket is the number of requests to the origin whose responses arrived during the time period represented by the bucket. The key of each bucket represents the upper bound (in response time) of that bucket. The buckets vary in width and cover the time periods 0-10ms (in 1ms increments), 10-250ms (in 10ms increments), 250-1,000ms (in 50ms increments), 1,000-3,000ms (in 100ms increments), 3,000-10,000ms (in 500 ms increments), 10,000-20,000ms (in 1,000ms increments), 20,000-60,000ms (in 5,000ms increments), and 60,000ms through infinity (in a single bucket).
    attr_accessor :miss_histogram

    # The total number of requests that were received for your service by Fastly.
    attr_accessor :compute_requests

    # The amount of active CPU time used to process your requests (in milliseconds).
    attr_accessor :compute_execution_time_ms

    # The amount of RAM used for your service by Fastly (in bytes).
    attr_accessor :compute_ram_used

    # The total, actual amount of time used to process your requests, including active CPU time (in milliseconds).
    attr_accessor :compute_request_time_ms

    # The total amount of request processing time you will be billed for, measured in 50 millisecond increments.
    attr_accessor :compute_request_time_billed_ms

    # Number of requests from edge to the shield POP.
    attr_accessor :shield

    # Number of requests that were received over IPv6.
    attr_accessor :ipv6

    # Number of responses that came from the Fastly Image Optimizer service. If the service receives 10 requests for an image, this stat will be 10 regardless of how many times the image was transformed.
    attr_accessor :imgopto

    # Number of responses that came from the Fastly Image Optimizer service via a shield.
    attr_accessor :imgopto_shield

    # Number of transforms performed by the Fastly Image Optimizer service.
    attr_accessor :imgopto_transforms

    # Number of responses that came from the Fastly On-the-Fly Packaging service for video-on-demand.
    attr_accessor :otfp

    # Number of responses that came from the Fastly On-the-Fly Packaging service for video-on-demand via a shield.
    attr_accessor :otfp_shield

    # Number of responses that were manifest files from the Fastly On-the-Fly Packaging service for video-on-demand.
    attr_accessor :otfp_manifests

    # Number of responses with the video segment or video manifest MIME type (i.e., application/x-mpegurl, application/vnd.apple.mpegurl, application/f4m, application/dash+xml, application/vnd.ms-sstr+xml, ideo/mp2t, audio/aac, video/f4f, video/x-flv, video/mp4, audio/mp4).
    attr_accessor :video

    # Number of responses with the PCI flag turned on.
    attr_accessor :pci

    # Number of requests received over HTTP/2.
    attr_accessor :http2

    # Number of requests received over HTTP/3.
    attr_accessor :http3

    # Number of restarts performed.
    attr_accessor :restarts

    # Total header bytes received.
    attr_accessor :req_header_bytes

    # Total body bytes received.
    attr_accessor :req_body_bytes

    # Total header bytes sent to origin.
    attr_accessor :bereq_header_bytes

    # Total body bytes sent to origin.
    attr_accessor :bereq_body_bytes

    # Number of requests that triggered a WAF rule and were blocked.
    attr_accessor :waf_blocked

    # Number of requests that triggered a WAF rule and were logged.
    attr_accessor :waf_logged

    # Number of requests that triggered a WAF rule and were passed.
    attr_accessor :waf_passed

    # Total header bytes received from requests that triggered a WAF rule.
    attr_accessor :attack_req_header_bytes

    # Total body bytes received from requests that triggered a WAF rule.
    attr_accessor :attack_req_body_bytes

    # Total bytes delivered for requests that triggered a WAF rule and returned a synthetic response.
    attr_accessor :attack_resp_synth_bytes

    # Total header bytes received from requests that triggered a WAF rule that was logged.
    attr_accessor :attack_logged_req_header_bytes

    # Total body bytes received from requests that triggered a WAF rule that was logged.
    attr_accessor :attack_logged_req_body_bytes

    # Total header bytes received from requests that triggered a WAF rule that was blocked.
    attr_accessor :attack_blocked_req_header_bytes

    # Total body bytes received from requests that triggered a WAF rule that was blocked.
    attr_accessor :attack_blocked_req_body_bytes

    # Total header bytes received from requests that triggered a WAF rule that was passed.
    attr_accessor :attack_passed_req_header_bytes

    # Total body bytes received from requests that triggered a WAF rule that was passed.
    attr_accessor :attack_passed_req_body_bytes

    # Total header bytes delivered via a shield.
    attr_accessor :shield_resp_header_bytes

    # Total body bytes delivered via a shield.
    attr_accessor :shield_resp_body_bytes

    # Total header bytes delivered from the Fastly On-the-Fly Packaging service for video-on-demand.
    attr_accessor :otfp_resp_header_bytes

    # Total body bytes delivered from the Fastly On-the-Fly Packaging service for video-on-demand.
    attr_accessor :otfp_resp_body_bytes

    # Total header bytes delivered via a shield for the Fastly On-the-Fly Packaging service for video-on-demand.
    attr_accessor :otfp_shield_resp_header_bytes

    # Total body bytes delivered via a shield for the Fastly On-the-Fly Packaging service for video-on-demand.
    attr_accessor :otfp_shield_resp_body_bytes

    # Total amount of time spent delivering a response via a shield from the Fastly On-the-Fly Packaging service for video-on-demand (in seconds).
    attr_accessor :otfp_shield_time

    # Total amount of time spent delivering a response from the Fastly On-the-Fly Packaging service for video-on-demand (in seconds).
    attr_accessor :otfp_deliver_time

    # Total header bytes delivered from the Fastly Image Optimizer service, including shield traffic.
    attr_accessor :imgopto_resp_header_bytes

    # Total body bytes delivered from the Fastly Image Optimizer service, including shield traffic.
    attr_accessor :imgopto_resp_body_bytes

    # Total header bytes delivered via a shield from the Fastly Image Optimizer service.
    attr_accessor :imgopto_shield_resp_header_bytes

    # Total body bytes delivered via a shield from the Fastly Image Optimizer service.
    attr_accessor :imgopto_shield_resp_body_bytes

    # Number of \"Informational\" category status codes delivered.
    attr_accessor :status_1xx

    # Number of \"Success\" status codes delivered.
    attr_accessor :status_2xx

    # Number of \"Redirection\" codes delivered.
    attr_accessor :status_3xx

    # Number of \"Client Error\" codes delivered.
    attr_accessor :status_4xx

    # Number of \"Server Error\" codes delivered.
    attr_accessor :status_5xx

    # Number of responses sent with status code 200 (Success).
    attr_accessor :status_200

    # Number of responses sent with status code 204 (No Content).
    attr_accessor :status_204

    # Number of responses sent with status code 206 (Partial Content).
    attr_accessor :status_206

    # Number of responses sent with status code 301 (Moved Permanently).
    attr_accessor :status_301

    # Number of responses sent with status code 302 (Found).
    attr_accessor :status_302

    # Number of responses sent with status code 304 (Not Modified).
    attr_accessor :status_304

    # Number of responses sent with status code 400 (Bad Request).
    attr_accessor :status_400

    # Number of responses sent with status code 401 (Unauthorized).
    attr_accessor :status_401

    # Number of responses sent with status code 403 (Forbidden).
    attr_accessor :status_403

    # Number of responses sent with status code 404 (Not Found).
    attr_accessor :status_404

    # Number of responses sent with status code 406 (Not Acceptable).
    attr_accessor :status_406

    # Number of responses sent with status code 416 (Range Not Satisfiable).
    attr_accessor :status_416

    # Number of responses sent with status code 429 (Too Many Requests).
    attr_accessor :status_429

    # Number of responses sent with status code 500 (Internal Server Error).
    attr_accessor :status_500

    # Number of responses sent with status code 501 (Not Implemented).
    attr_accessor :status_501

    # Number of responses sent with status code 502 (Bad Gateway).
    attr_accessor :status_502

    # Number of responses sent with status code 503 (Service Unavailable).
    attr_accessor :status_503

    # Number of responses sent with status code 504 (Gateway Timeout).
    attr_accessor :status_504

    # Number of responses sent with status code 505 (HTTP Version Not Supported).
    attr_accessor :status_505

    # Number of requests that were designated uncachable.
    attr_accessor :uncacheable

    # Total amount of time spent processing cache passes (in seconds).
    attr_accessor :pass_time

    # Number of requests that were received over TLS.
    attr_accessor :tls

    # Number of requests received over TLS 1.0.
    attr_accessor :tls_v10

    # Number of requests received over TLS 1.1.
    attr_accessor :tls_v11

    # Number of requests received over TLS 1.2.
    attr_accessor :tls_v12

    # Number of requests received over TLS 1.3.
    attr_accessor :tls_v13

    # Number of objects served that were under 1KB in size.
    attr_accessor :object_size_1k

    # Number of objects served that were between 1KB and 10KB in size.
    attr_accessor :object_size_10k

    # Number of objects served that were between 10KB and 100KB in size.
    attr_accessor :object_size_100k

    # Number of objects served that were between 100KB and 1MB in size.
    attr_accessor :object_size_1m

    # Number of objects served that were between 1MB and 10MB in size.
    attr_accessor :object_size_10m

    # Number of objects served that were between 10MB and 100MB in size.
    attr_accessor :object_size_100m

    # Number of objects served that were between 100MB and 1GB in size.
    attr_accessor :object_size_1g

    # Number of objects served that were larger than 1GB in size.
    attr_accessor :object_size_other

    # Time spent inside the `vcl_recv` Varnish subroutine (in nanoseconds).
    attr_accessor :recv_sub_time

    # Number of executions of the `vcl_recv` Varnish subroutine.
    attr_accessor :recv_sub_count

    # Time spent inside the `vcl_hash` Varnish subroutine (in nanoseconds).
    attr_accessor :hash_sub_time

    # Number of executions of the `vcl_hash` Varnish subroutine.
    attr_accessor :hash_sub_count

    # Time spent inside the `vcl_miss` Varnish subroutine (in nanoseconds).
    attr_accessor :miss_sub_time

    # Number of executions of the `vcl_miss` Varnish subroutine.
    attr_accessor :miss_sub_count

    # Time spent inside the `vcl_fetch` Varnish subroutine (in nanoseconds).
    attr_accessor :fetch_sub_time

    # Number of executions of the `vcl_fetch` Varnish subroutine.
    attr_accessor :fetch_sub_count

    # Time spent inside the `vcl_pass` Varnish subroutine (in nanoseconds).
    attr_accessor :pass_sub_time

    # Number of executions of the `vcl_pass` Varnish subroutine.
    attr_accessor :pass_sub_count

    # Time spent inside the `vcl_pipe` Varnish subroutine (in nanoseconds).
    attr_accessor :pipe_sub_time

    # Number of executions of the `vcl_pipe` Varnish subroutine.
    attr_accessor :pipe_sub_count

    # Time spent inside the `vcl_deliver` Varnish subroutine (in nanoseconds).
    attr_accessor :deliver_sub_time

    # Number of executions of the `vcl_deliver` Varnish subroutine.
    attr_accessor :deliver_sub_count

    # Time spent inside the `vcl_error` Varnish subroutine (in nanoseconds).
    attr_accessor :error_sub_time

    # Number of executions of the `vcl_error` Varnish subroutine.
    attr_accessor :error_sub_count

    # Time spent inside the `vcl_hit` Varnish subroutine (in nanoseconds).
    attr_accessor :hit_sub_time

    # Number of executions of the `vcl_hit` Varnish subroutine.
    attr_accessor :hit_sub_count

    # Time spent inside the `vcl_prehash` Varnish subroutine (in nanoseconds).
    attr_accessor :prehash_sub_time

    # Number of executions of the `vcl_prehash` Varnish subroutine.
    attr_accessor :prehash_sub_count

    # Time spent inside the `vcl_predeliver` Varnish subroutine (in nanoseconds).
    attr_accessor :predeliver_sub_time

    # Number of executions of the `vcl_predeliver` Varnish subroutine.
    attr_accessor :predeliver_sub_count

    # Total body bytes delivered for cache hits.
    attr_accessor :hit_resp_body_bytes

    # Total body bytes delivered for cache misses.
    attr_accessor :miss_resp_body_bytes

    # Total body bytes delivered for cache passes.
    attr_accessor :pass_resp_body_bytes

    # Total header bytes received by the Compute platform.
    attr_accessor :compute_req_header_bytes

    # Total body bytes received by the Compute platform.
    attr_accessor :compute_req_body_bytes

    # Total header bytes sent from Compute to end user.
    attr_accessor :compute_resp_header_bytes

    # Total body bytes sent from Compute to end user.
    attr_accessor :compute_resp_body_bytes

    # Number of video responses that came from the Fastly Image Optimizer service.
    attr_accessor :imgvideo

    # Number of video frames that came from the Fastly Image Optimizer service. A video frame is an individual image within a sequence of video.
    attr_accessor :imgvideo_frames

    # Total header bytes of video delivered from the Fastly Image Optimizer service.
    attr_accessor :imgvideo_resp_header_bytes

    # Total body bytes of video delivered from the Fastly Image Optimizer service.
    attr_accessor :imgvideo_resp_body_bytes

    # Number of video responses delivered via a shield that came from the Fastly Image Optimizer service.
    attr_accessor :imgvideo_shield

    # Number of video frames delivered via a shield that came from the Fastly Image Optimizer service. A video frame is an individual image within a sequence of video.
    attr_accessor :imgvideo_shield_frames

    # Total header bytes of video delivered via a shield from the Fastly Image Optimizer service.
    attr_accessor :imgvideo_shield_resp_header_bytes

    # Total body bytes of video delivered via a shield from the Fastly Image Optimizer service.
    attr_accessor :imgvideo_shield_resp_body_bytes

    # Total log bytes sent.
    attr_accessor :log_bytes

    # Number of requests sent by end users to Fastly.
    attr_accessor :edge_requests

    # Total header bytes delivered from Fastly to the end user.
    attr_accessor :edge_resp_header_bytes

    # Total body bytes delivered from Fastly to the end user.
    attr_accessor :edge_resp_body_bytes

    # Number of responses received from origin with a `304` status code in response to an `If-Modified-Since` or `If-None-Match` request. Under regular scenarios, a revalidation will imply a cache hit. However, if using Fastly Image Optimizer or segmented caching this may result in a cache miss.
    attr_accessor :origin_revalidations

    # Number of requests sent to origin.
    attr_accessor :origin_fetches

    # Total request header bytes sent to origin.
    attr_accessor :origin_fetch_header_bytes

    # Total request body bytes sent to origin.
    attr_accessor :origin_fetch_body_bytes

    # Total header bytes received from origin.
    attr_accessor :origin_fetch_resp_header_bytes

    # Total body bytes received from origin.
    attr_accessor :origin_fetch_resp_body_bytes

    # Number of responses received from origin with a `304` status code, in response to an `If-Modified-Since` or `If-None-Match` request to a shield. Under regular scenarios, a revalidation will imply a cache hit. However, if using segmented caching this may result in a cache miss.
    attr_accessor :shield_revalidations

    # Number of requests made from one Fastly POP to another, as part of shielding.
    attr_accessor :shield_fetches

    # Total request header bytes sent to a shield.
    attr_accessor :shield_fetch_header_bytes

    # Total request body bytes sent to a shield.
    attr_accessor :shield_fetch_body_bytes

    # Total response header bytes sent from a shield to the edge.
    attr_accessor :shield_fetch_resp_header_bytes

    # Total response body bytes sent from a shield to the edge.
    attr_accessor :shield_fetch_resp_body_bytes

    # Number of `Range` requests to origin for segments of resources when using segmented caching.
    attr_accessor :segblock_origin_fetches

    # Number of `Range` requests to a shield for segments of resources when using segmented caching.
    attr_accessor :segblock_shield_fetches

    # Number of \"Informational\" category status codes delivered by the Compute platform.
    attr_accessor :compute_resp_status_1xx

    # Number of \"Success\" category status codes delivered by the Compute platform.
    attr_accessor :compute_resp_status_2xx

    # Number of \"Redirection\" category status codes delivered by the Compute platform.
    attr_accessor :compute_resp_status_3xx

    # Number of \"Client Error\" category status codes delivered by the Compute platform.
    attr_accessor :compute_resp_status_4xx

    # Number of \"Server Error\" category status codes delivered by the Compute platform.
    attr_accessor :compute_resp_status_5xx

    # Number of requests sent by end users to Fastly that resulted in a hit at the edge.
    attr_accessor :edge_hit_requests

    # Number of requests sent by end users to Fastly that resulted in a miss at the edge.
    attr_accessor :edge_miss_requests

    # Total header bytes sent to backends (origins) by the Compute platform.
    attr_accessor :compute_bereq_header_bytes

    # Total body bytes sent to backends (origins) by the Compute platform.
    attr_accessor :compute_bereq_body_bytes

    # Total header bytes received from backends (origins) by the Compute platform.
    attr_accessor :compute_beresp_header_bytes

    # Total body bytes received from backends (origins) by the Compute platform.
    attr_accessor :compute_beresp_body_bytes

    # The total number of completed requests made to backends (origins) that returned cacheable content.
    attr_accessor :origin_cache_fetches

    # The total number of completed requests made to shields that returned cacheable content.
    attr_accessor :shield_cache_fetches

    # Number of backend requests started.
    attr_accessor :compute_bereqs

    # Number of backend request errors, including timeouts.
    attr_accessor :compute_bereq_errors

    # Number of times a guest exceeded its resource limit, includes heap, stack, globals, and code execution timeout.
    attr_accessor :compute_resource_limit_exceeded

    # Number of times a guest exceeded its heap limit.
    attr_accessor :compute_heap_limit_exceeded

    # Number of times a guest exceeded its stack limit.
    attr_accessor :compute_stack_limit_exceeded

    # Number of times a guest exceeded its globals limit.
    attr_accessor :compute_globals_limit_exceeded

    # Number of times a service experienced a guest code error.
    attr_accessor :compute_guest_errors

    # Number of times a service experienced a guest runtime error.
    attr_accessor :compute_runtime_errors

    # Body bytes delivered for edge hits.
    attr_accessor :edge_hit_resp_body_bytes

    # Header bytes delivered for edge hits.
    attr_accessor :edge_hit_resp_header_bytes

    # Body bytes delivered for edge misses.
    attr_accessor :edge_miss_resp_body_bytes

    # Header bytes delivered for edge misses.
    attr_accessor :edge_miss_resp_header_bytes

    # Body bytes received from origin for cacheable content.
    attr_accessor :origin_cache_fetch_resp_body_bytes

    # Header bytes received from an origin for cacheable content.
    attr_accessor :origin_cache_fetch_resp_header_bytes

    # Number of requests that resulted in a hit at a shield.
    attr_accessor :shield_hit_requests

    # Number of requests that resulted in a miss at a shield.
    attr_accessor :shield_miss_requests

    # Header bytes delivered for shield hits.
    attr_accessor :shield_hit_resp_header_bytes

    # Body bytes delivered for shield hits.
    attr_accessor :shield_hit_resp_body_bytes

    # Header bytes delivered for shield misses.
    attr_accessor :shield_miss_resp_header_bytes

    # Body bytes delivered for shield misses.
    attr_accessor :shield_miss_resp_body_bytes

    # Total header bytes received from end users over passthrough WebSocket connections.
    attr_accessor :websocket_req_header_bytes

    # Total message content bytes received from end users over passthrough WebSocket connections.
    attr_accessor :websocket_req_body_bytes

    # Total header bytes sent to end users over passthrough WebSocket connections.
    attr_accessor :websocket_resp_header_bytes

    # Total header bytes sent to backends over passthrough WebSocket connections.
    attr_accessor :websocket_bereq_header_bytes

    # Total message content bytes sent to backends over passthrough WebSocket connections.
    attr_accessor :websocket_bereq_body_bytes

    # Total header bytes received from backends over passthrough WebSocket connections.
    attr_accessor :websocket_beresp_header_bytes

    # Total message content bytes received from backends over passthrough WebSocket connections.
    attr_accessor :websocket_beresp_body_bytes

    # Total duration of passthrough WebSocket connections with end users.
    attr_accessor :websocket_conn_time_ms

    # Total message content bytes sent to end users over passthrough WebSocket connections.
    attr_accessor :websocket_resp_body_bytes

    # Total published messages received from the publish API endpoint.
    attr_accessor :fanout_recv_publishes

    # Total published messages sent to end users.
    attr_accessor :fanout_send_publishes

    # The total number of class a operations for the KV store.
    attr_accessor :kv_store_class_a_operations

    # The total number of class b operations for the KV store.
    attr_accessor :kv_store_class_b_operations

    # Use kv_store_class_a_operations.
    attr_accessor :object_store_class_a_operations

    # Use kv_store_class_b_operations.
    attr_accessor :object_store_class_b_operations

    # Total header bytes received from end users over Fanout connections.
    attr_accessor :fanout_req_header_bytes

    # Total body or message content bytes received from end users over Fanout connections.
    attr_accessor :fanout_req_body_bytes

    # Total header bytes sent to end users over Fanout connections.
    attr_accessor :fanout_resp_header_bytes

    # Total body or message content bytes sent to end users over Fanout connections, excluding published message content.
    attr_accessor :fanout_resp_body_bytes

    # Total header bytes sent to backends over Fanout connections.
    attr_accessor :fanout_bereq_header_bytes

    # Total body or message content bytes sent to backends over Fanout connections.
    attr_accessor :fanout_bereq_body_bytes

    # Total header bytes received from backends over Fanout connections.
    attr_accessor :fanout_beresp_header_bytes

    # Total body or message content bytes received from backends over Fanout connections.
    attr_accessor :fanout_beresp_body_bytes

    # Total duration of Fanout connections with end users.
    attr_accessor :fanout_conn_time_ms

    # For HTTP/2, the number of connections the limit-streams action was applied to. The limit-streams action caps the allowed number of concurrent streams in a connection.
    attr_accessor :ddos_action_limit_streams_connections

    # For HTTP/2, the number of requests made on a connection for which the limit-streams action was taken. The limit-streams action caps the allowed number of concurrent streams in a connection.
    attr_accessor :ddos_action_limit_streams_requests

    # The number of times the tarpit-accept action was taken. The tarpit-accept action adds a delay when accepting future connections.
    attr_accessor :ddos_action_tarpit_accept

    # The number of times the tarpit action was taken. The tarpit action delays writing the response to the client.
    attr_accessor :ddos_action_tarpit

    # The number of times the close action was taken. The close action aborts the connection as soon as possible. The close action takes effect either right after accept, right after the client hello, or right after the response was sent.
    attr_accessor :ddos_action_close

    # The number of times the blackhole action was taken. The blackhole action quietly closes a TCP connection without sending a reset. The blackhole action quietly closes a TCP connection without notifying its peer (all TCP state is dropped).
    attr_accessor :ddos_action_blackhole

    # The number of challenge-start tokens created.
    attr_accessor :bot_challenge_starts

    # The number of challenge-complete tokens that passed validation.
    attr_accessor :bot_challenge_complete_tokens_passed

    # The number of challenge-complete tokens that failed validation.
    attr_accessor :bot_challenge_complete_tokens_failed

    # The number of challenge-complete tokens checked.
    attr_accessor :bot_challenge_complete_tokens_checked

    # The number of challenge-complete tokens not checked because the feature was disabled.
    attr_accessor :bot_challenge_complete_tokens_disabled

    # The number of challenges issued. For example, the issuance of a CAPTCHA challenge.
    attr_accessor :bot_challenges_issued

    # The number of successful challenge solutions processed. For example, a correct CAPTCHA solution.
    attr_accessor :bot_challenges_succeeded

    # The number of failed challenge solutions processed. For example, an incorrect CAPTCHA solution.
    attr_accessor :bot_challenges_failed

    # The number of challenge-complete tokens issued. For example, issuing a challenge-complete token after a series of CAPTCHA challenges ending in success.
    attr_accessor :bot_challenge_complete_tokens_issued

    # The number of times the downgrade action was taken. The downgrade action restricts the client to http1.
    attr_accessor :ddos_action_downgrade

    # The number of connections the downgrade action was applied to. The downgrade action restricts the connection to http1.
    attr_accessor :ddos_action_downgraded_connections

    # Number of cache hits for a VCL service.
    attr_accessor :all_hit_requests

    # Number of cache misses for a VCL service.
    attr_accessor :all_miss_requests

    # Number of requests that passed through the CDN without being cached for a VCL service.
    attr_accessor :all_pass_requests

    # Number of cache errors for a VCL service.
    attr_accessor :all_error_requests

    # Number of requests that returned a synthetic response (i.e., response objects created with the `synthetic` VCL statement) for a VCL service.
    attr_accessor :all_synth_requests

    # Number of requests sent by end users to Fastly that resulted in a hit at the edge for a VCL service.
    attr_accessor :all_edge_hit_requests

    # Number of requests sent by end users to Fastly that resulted in a miss at the edge for a VCL service.
    attr_accessor :all_edge_miss_requests

    # Number of \"Informational\" category status codes delivered for all sources.
    attr_accessor :all_status_1xx

    # Number of \"Success\" status codes delivered for all sources.
    attr_accessor :all_status_2xx

    # Number of \"Redirection\" codes delivered for all sources.
    attr_accessor :all_status_3xx

    # Number of \"Client Error\" codes delivered for all sources.
    attr_accessor :all_status_4xx

    # Number of \"Server Error\" codes delivered for all sources.
    attr_accessor :all_status_5xx

    # Origin Offload measures the ratio of bytes served to end users that were cached by Fastly, over the bytes served to end users, between 0 and 1. ((`edge_resp_body_bytes` + `edge_resp_header_bytes`) - (`origin_fetch_resp_body_bytes` + `origin_fetch_resp_header_bytes`)) / (`edge_resp_body_bytes` + `edge_resp_header_bytes`).
    attr_accessor :origin_offload

    # Number of requests where Fastly responded with 400 due to the request being a GET or HEAD request containing a body.
    attr_accessor :request_denied_get_head_body

    # Number of requests classified as a DDoS attack against a customer origin or service.
    attr_accessor :service_ddos_requests_detected

    # Number of requests classified as a DDoS attack against a customer origin or service that were mitigated by the Fastly platform.
    attr_accessor :service_ddos_requests_mitigated

    # Number of requests analyzed for DDoS attacks against a customer origin or service, but with no DDoS detected.
    attr_accessor :service_ddos_requests_allowed

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'requests' => :'requests',
        :'logging' => :'logging',
        :'log' => :'log',
        :'resp_header_bytes' => :'resp_header_bytes',
        :'header_size' => :'header_size',
        :'resp_body_bytes' => :'resp_body_bytes',
        :'body_size' => :'body_size',
        :'hits' => :'hits',
        :'miss' => :'miss',
        :'pass' => :'pass',
        :'synth' => :'synth',
        :'errors' => :'errors',
        :'hits_time' => :'hits_time',
        :'miss_time' => :'miss_time',
        :'miss_histogram' => :'miss_histogram',
        :'compute_requests' => :'compute_requests',
        :'compute_execution_time_ms' => :'compute_execution_time_ms',
        :'compute_ram_used' => :'compute_ram_used',
        :'compute_request_time_ms' => :'compute_request_time_ms',
        :'compute_request_time_billed_ms' => :'compute_request_time_billed_ms',
        :'shield' => :'shield',
        :'ipv6' => :'ipv6',
        :'imgopto' => :'imgopto',
        :'imgopto_shield' => :'imgopto_shield',
        :'imgopto_transforms' => :'imgopto_transforms',
        :'otfp' => :'otfp',
        :'otfp_shield' => :'otfp_shield',
        :'otfp_manifests' => :'otfp_manifests',
        :'video' => :'video',
        :'pci' => :'pci',
        :'http2' => :'http2',
        :'http3' => :'http3',
        :'restarts' => :'restarts',
        :'req_header_bytes' => :'req_header_bytes',
        :'req_body_bytes' => :'req_body_bytes',
        :'bereq_header_bytes' => :'bereq_header_bytes',
        :'bereq_body_bytes' => :'bereq_body_bytes',
        :'waf_blocked' => :'waf_blocked',
        :'waf_logged' => :'waf_logged',
        :'waf_passed' => :'waf_passed',
        :'attack_req_header_bytes' => :'attack_req_header_bytes',
        :'attack_req_body_bytes' => :'attack_req_body_bytes',
        :'attack_resp_synth_bytes' => :'attack_resp_synth_bytes',
        :'attack_logged_req_header_bytes' => :'attack_logged_req_header_bytes',
        :'attack_logged_req_body_bytes' => :'attack_logged_req_body_bytes',
        :'attack_blocked_req_header_bytes' => :'attack_blocked_req_header_bytes',
        :'attack_blocked_req_body_bytes' => :'attack_blocked_req_body_bytes',
        :'attack_passed_req_header_bytes' => :'attack_passed_req_header_bytes',
        :'attack_passed_req_body_bytes' => :'attack_passed_req_body_bytes',
        :'shield_resp_header_bytes' => :'shield_resp_header_bytes',
        :'shield_resp_body_bytes' => :'shield_resp_body_bytes',
        :'otfp_resp_header_bytes' => :'otfp_resp_header_bytes',
        :'otfp_resp_body_bytes' => :'otfp_resp_body_bytes',
        :'otfp_shield_resp_header_bytes' => :'otfp_shield_resp_header_bytes',
        :'otfp_shield_resp_body_bytes' => :'otfp_shield_resp_body_bytes',
        :'otfp_shield_time' => :'otfp_shield_time',
        :'otfp_deliver_time' => :'otfp_deliver_time',
        :'imgopto_resp_header_bytes' => :'imgopto_resp_header_bytes',
        :'imgopto_resp_body_bytes' => :'imgopto_resp_body_bytes',
        :'imgopto_shield_resp_header_bytes' => :'imgopto_shield_resp_header_bytes',
        :'imgopto_shield_resp_body_bytes' => :'imgopto_shield_resp_body_bytes',
        :'status_1xx' => :'status_1xx',
        :'status_2xx' => :'status_2xx',
        :'status_3xx' => :'status_3xx',
        :'status_4xx' => :'status_4xx',
        :'status_5xx' => :'status_5xx',
        :'status_200' => :'status_200',
        :'status_204' => :'status_204',
        :'status_206' => :'status_206',
        :'status_301' => :'status_301',
        :'status_302' => :'status_302',
        :'status_304' => :'status_304',
        :'status_400' => :'status_400',
        :'status_401' => :'status_401',
        :'status_403' => :'status_403',
        :'status_404' => :'status_404',
        :'status_406' => :'status_406',
        :'status_416' => :'status_416',
        :'status_429' => :'status_429',
        :'status_500' => :'status_500',
        :'status_501' => :'status_501',
        :'status_502' => :'status_502',
        :'status_503' => :'status_503',
        :'status_504' => :'status_504',
        :'status_505' => :'status_505',
        :'uncacheable' => :'uncacheable',
        :'pass_time' => :'pass_time',
        :'tls' => :'tls',
        :'tls_v10' => :'tls_v10',
        :'tls_v11' => :'tls_v11',
        :'tls_v12' => :'tls_v12',
        :'tls_v13' => :'tls_v13',
        :'object_size_1k' => :'object_size_1k',
        :'object_size_10k' => :'object_size_10k',
        :'object_size_100k' => :'object_size_100k',
        :'object_size_1m' => :'object_size_1m',
        :'object_size_10m' => :'object_size_10m',
        :'object_size_100m' => :'object_size_100m',
        :'object_size_1g' => :'object_size_1g',
        :'object_size_other' => :'object_size_other',
        :'recv_sub_time' => :'recv_sub_time',
        :'recv_sub_count' => :'recv_sub_count',
        :'hash_sub_time' => :'hash_sub_time',
        :'hash_sub_count' => :'hash_sub_count',
        :'miss_sub_time' => :'miss_sub_time',
        :'miss_sub_count' => :'miss_sub_count',
        :'fetch_sub_time' => :'fetch_sub_time',
        :'fetch_sub_count' => :'fetch_sub_count',
        :'pass_sub_time' => :'pass_sub_time',
        :'pass_sub_count' => :'pass_sub_count',
        :'pipe_sub_time' => :'pipe_sub_time',
        :'pipe_sub_count' => :'pipe_sub_count',
        :'deliver_sub_time' => :'deliver_sub_time',
        :'deliver_sub_count' => :'deliver_sub_count',
        :'error_sub_time' => :'error_sub_time',
        :'error_sub_count' => :'error_sub_count',
        :'hit_sub_time' => :'hit_sub_time',
        :'hit_sub_count' => :'hit_sub_count',
        :'prehash_sub_time' => :'prehash_sub_time',
        :'prehash_sub_count' => :'prehash_sub_count',
        :'predeliver_sub_time' => :'predeliver_sub_time',
        :'predeliver_sub_count' => :'predeliver_sub_count',
        :'hit_resp_body_bytes' => :'hit_resp_body_bytes',
        :'miss_resp_body_bytes' => :'miss_resp_body_bytes',
        :'pass_resp_body_bytes' => :'pass_resp_body_bytes',
        :'compute_req_header_bytes' => :'compute_req_header_bytes',
        :'compute_req_body_bytes' => :'compute_req_body_bytes',
        :'compute_resp_header_bytes' => :'compute_resp_header_bytes',
        :'compute_resp_body_bytes' => :'compute_resp_body_bytes',
        :'imgvideo' => :'imgvideo',
        :'imgvideo_frames' => :'imgvideo_frames',
        :'imgvideo_resp_header_bytes' => :'imgvideo_resp_header_bytes',
        :'imgvideo_resp_body_bytes' => :'imgvideo_resp_body_bytes',
        :'imgvideo_shield' => :'imgvideo_shield',
        :'imgvideo_shield_frames' => :'imgvideo_shield_frames',
        :'imgvideo_shield_resp_header_bytes' => :'imgvideo_shield_resp_header_bytes',
        :'imgvideo_shield_resp_body_bytes' => :'imgvideo_shield_resp_body_bytes',
        :'log_bytes' => :'log_bytes',
        :'edge_requests' => :'edge_requests',
        :'edge_resp_header_bytes' => :'edge_resp_header_bytes',
        :'edge_resp_body_bytes' => :'edge_resp_body_bytes',
        :'origin_revalidations' => :'origin_revalidations',
        :'origin_fetches' => :'origin_fetches',
        :'origin_fetch_header_bytes' => :'origin_fetch_header_bytes',
        :'origin_fetch_body_bytes' => :'origin_fetch_body_bytes',
        :'origin_fetch_resp_header_bytes' => :'origin_fetch_resp_header_bytes',
        :'origin_fetch_resp_body_bytes' => :'origin_fetch_resp_body_bytes',
        :'shield_revalidations' => :'shield_revalidations',
        :'shield_fetches' => :'shield_fetches',
        :'shield_fetch_header_bytes' => :'shield_fetch_header_bytes',
        :'shield_fetch_body_bytes' => :'shield_fetch_body_bytes',
        :'shield_fetch_resp_header_bytes' => :'shield_fetch_resp_header_bytes',
        :'shield_fetch_resp_body_bytes' => :'shield_fetch_resp_body_bytes',
        :'segblock_origin_fetches' => :'segblock_origin_fetches',
        :'segblock_shield_fetches' => :'segblock_shield_fetches',
        :'compute_resp_status_1xx' => :'compute_resp_status_1xx',
        :'compute_resp_status_2xx' => :'compute_resp_status_2xx',
        :'compute_resp_status_3xx' => :'compute_resp_status_3xx',
        :'compute_resp_status_4xx' => :'compute_resp_status_4xx',
        :'compute_resp_status_5xx' => :'compute_resp_status_5xx',
        :'edge_hit_requests' => :'edge_hit_requests',
        :'edge_miss_requests' => :'edge_miss_requests',
        :'compute_bereq_header_bytes' => :'compute_bereq_header_bytes',
        :'compute_bereq_body_bytes' => :'compute_bereq_body_bytes',
        :'compute_beresp_header_bytes' => :'compute_beresp_header_bytes',
        :'compute_beresp_body_bytes' => :'compute_beresp_body_bytes',
        :'origin_cache_fetches' => :'origin_cache_fetches',
        :'shield_cache_fetches' => :'shield_cache_fetches',
        :'compute_bereqs' => :'compute_bereqs',
        :'compute_bereq_errors' => :'compute_bereq_errors',
        :'compute_resource_limit_exceeded' => :'compute_resource_limit_exceeded',
        :'compute_heap_limit_exceeded' => :'compute_heap_limit_exceeded',
        :'compute_stack_limit_exceeded' => :'compute_stack_limit_exceeded',
        :'compute_globals_limit_exceeded' => :'compute_globals_limit_exceeded',
        :'compute_guest_errors' => :'compute_guest_errors',
        :'compute_runtime_errors' => :'compute_runtime_errors',
        :'edge_hit_resp_body_bytes' => :'edge_hit_resp_body_bytes',
        :'edge_hit_resp_header_bytes' => :'edge_hit_resp_header_bytes',
        :'edge_miss_resp_body_bytes' => :'edge_miss_resp_body_bytes',
        :'edge_miss_resp_header_bytes' => :'edge_miss_resp_header_bytes',
        :'origin_cache_fetch_resp_body_bytes' => :'origin_cache_fetch_resp_body_bytes',
        :'origin_cache_fetch_resp_header_bytes' => :'origin_cache_fetch_resp_header_bytes',
        :'shield_hit_requests' => :'shield_hit_requests',
        :'shield_miss_requests' => :'shield_miss_requests',
        :'shield_hit_resp_header_bytes' => :'shield_hit_resp_header_bytes',
        :'shield_hit_resp_body_bytes' => :'shield_hit_resp_body_bytes',
        :'shield_miss_resp_header_bytes' => :'shield_miss_resp_header_bytes',
        :'shield_miss_resp_body_bytes' => :'shield_miss_resp_body_bytes',
        :'websocket_req_header_bytes' => :'websocket_req_header_bytes',
        :'websocket_req_body_bytes' => :'websocket_req_body_bytes',
        :'websocket_resp_header_bytes' => :'websocket_resp_header_bytes',
        :'websocket_bereq_header_bytes' => :'websocket_bereq_header_bytes',
        :'websocket_bereq_body_bytes' => :'websocket_bereq_body_bytes',
        :'websocket_beresp_header_bytes' => :'websocket_beresp_header_bytes',
        :'websocket_beresp_body_bytes' => :'websocket_beresp_body_bytes',
        :'websocket_conn_time_ms' => :'websocket_conn_time_ms',
        :'websocket_resp_body_bytes' => :'websocket_resp_body_bytes',
        :'fanout_recv_publishes' => :'fanout_recv_publishes',
        :'fanout_send_publishes' => :'fanout_send_publishes',
        :'kv_store_class_a_operations' => :'kv_store_class_a_operations',
        :'kv_store_class_b_operations' => :'kv_store_class_b_operations',
        :'object_store_class_a_operations' => :'object_store_class_a_operations',
        :'object_store_class_b_operations' => :'object_store_class_b_operations',
        :'fanout_req_header_bytes' => :'fanout_req_header_bytes',
        :'fanout_req_body_bytes' => :'fanout_req_body_bytes',
        :'fanout_resp_header_bytes' => :'fanout_resp_header_bytes',
        :'fanout_resp_body_bytes' => :'fanout_resp_body_bytes',
        :'fanout_bereq_header_bytes' => :'fanout_bereq_header_bytes',
        :'fanout_bereq_body_bytes' => :'fanout_bereq_body_bytes',
        :'fanout_beresp_header_bytes' => :'fanout_beresp_header_bytes',
        :'fanout_beresp_body_bytes' => :'fanout_beresp_body_bytes',
        :'fanout_conn_time_ms' => :'fanout_conn_time_ms',
        :'ddos_action_limit_streams_connections' => :'ddos_action_limit_streams_connections',
        :'ddos_action_limit_streams_requests' => :'ddos_action_limit_streams_requests',
        :'ddos_action_tarpit_accept' => :'ddos_action_tarpit_accept',
        :'ddos_action_tarpit' => :'ddos_action_tarpit',
        :'ddos_action_close' => :'ddos_action_close',
        :'ddos_action_blackhole' => :'ddos_action_blackhole',
        :'bot_challenge_starts' => :'bot_challenge_starts',
        :'bot_challenge_complete_tokens_passed' => :'bot_challenge_complete_tokens_passed',
        :'bot_challenge_complete_tokens_failed' => :'bot_challenge_complete_tokens_failed',
        :'bot_challenge_complete_tokens_checked' => :'bot_challenge_complete_tokens_checked',
        :'bot_challenge_complete_tokens_disabled' => :'bot_challenge_complete_tokens_disabled',
        :'bot_challenges_issued' => :'bot_challenges_issued',
        :'bot_challenges_succeeded' => :'bot_challenges_succeeded',
        :'bot_challenges_failed' => :'bot_challenges_failed',
        :'bot_challenge_complete_tokens_issued' => :'bot_challenge_complete_tokens_issued',
        :'ddos_action_downgrade' => :'ddos_action_downgrade',
        :'ddos_action_downgraded_connections' => :'ddos_action_downgraded_connections',
        :'all_hit_requests' => :'all_hit_requests',
        :'all_miss_requests' => :'all_miss_requests',
        :'all_pass_requests' => :'all_pass_requests',
        :'all_error_requests' => :'all_error_requests',
        :'all_synth_requests' => :'all_synth_requests',
        :'all_edge_hit_requests' => :'all_edge_hit_requests',
        :'all_edge_miss_requests' => :'all_edge_miss_requests',
        :'all_status_1xx' => :'all_status_1xx',
        :'all_status_2xx' => :'all_status_2xx',
        :'all_status_3xx' => :'all_status_3xx',
        :'all_status_4xx' => :'all_status_4xx',
        :'all_status_5xx' => :'all_status_5xx',
        :'origin_offload' => :'origin_offload',
        :'request_denied_get_head_body' => :'request_denied_get_head_body',
        :'service_ddos_requests_detected' => :'service_ddos_requests_detected',
        :'service_ddos_requests_mitigated' => :'service_ddos_requests_mitigated',
        :'service_ddos_requests_allowed' => :'service_ddos_requests_allowed'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.fastly_types
      {
        :'requests' => :'Integer',
        :'logging' => :'Integer',
        :'log' => :'Integer',
        :'resp_header_bytes' => :'Integer',
        :'header_size' => :'Integer',
        :'resp_body_bytes' => :'Integer',
        :'body_size' => :'Integer',
        :'hits' => :'Integer',
        :'miss' => :'Integer',
        :'pass' => :'Integer',
        :'synth' => :'Integer',
        :'errors' => :'Integer',
        :'hits_time' => :'Float',
        :'miss_time' => :'Float',
        :'miss_histogram' => :'Hash<String, Object>',
        :'compute_requests' => :'Integer',
        :'compute_execution_time_ms' => :'Float',
        :'compute_ram_used' => :'Integer',
        :'compute_request_time_ms' => :'Float',
        :'compute_request_time_billed_ms' => :'Float',
        :'shield' => :'Integer',
        :'ipv6' => :'Integer',
        :'imgopto' => :'Integer',
        :'imgopto_shield' => :'Integer',
        :'imgopto_transforms' => :'Integer',
        :'otfp' => :'Integer',
        :'otfp_shield' => :'Integer',
        :'otfp_manifests' => :'Integer',
        :'video' => :'Integer',
        :'pci' => :'Integer',
        :'http2' => :'Integer',
        :'http3' => :'Integer',
        :'restarts' => :'Integer',
        :'req_header_bytes' => :'Integer',
        :'req_body_bytes' => :'Integer',
        :'bereq_header_bytes' => :'Integer',
        :'bereq_body_bytes' => :'Integer',
        :'waf_blocked' => :'Integer',
        :'waf_logged' => :'Integer',
        :'waf_passed' => :'Integer',
        :'attack_req_header_bytes' => :'Integer',
        :'attack_req_body_bytes' => :'Integer',
        :'attack_resp_synth_bytes' => :'Integer',
        :'attack_logged_req_header_bytes' => :'Integer',
        :'attack_logged_req_body_bytes' => :'Integer',
        :'attack_blocked_req_header_bytes' => :'Integer',
        :'attack_blocked_req_body_bytes' => :'Integer',
        :'attack_passed_req_header_bytes' => :'Integer',
        :'attack_passed_req_body_bytes' => :'Integer',
        :'shield_resp_header_bytes' => :'Integer',
        :'shield_resp_body_bytes' => :'Integer',
        :'otfp_resp_header_bytes' => :'Integer',
        :'otfp_resp_body_bytes' => :'Integer',
        :'otfp_shield_resp_header_bytes' => :'Integer',
        :'otfp_shield_resp_body_bytes' => :'Integer',
        :'otfp_shield_time' => :'Float',
        :'otfp_deliver_time' => :'Float',
        :'imgopto_resp_header_bytes' => :'Integer',
        :'imgopto_resp_body_bytes' => :'Integer',
        :'imgopto_shield_resp_header_bytes' => :'Integer',
        :'imgopto_shield_resp_body_bytes' => :'Integer',
        :'status_1xx' => :'Integer',
        :'status_2xx' => :'Integer',
        :'status_3xx' => :'Integer',
        :'status_4xx' => :'Integer',
        :'status_5xx' => :'Integer',
        :'status_200' => :'Integer',
        :'status_204' => :'Integer',
        :'status_206' => :'Integer',
        :'status_301' => :'Integer',
        :'status_302' => :'Integer',
        :'status_304' => :'Integer',
        :'status_400' => :'Integer',
        :'status_401' => :'Integer',
        :'status_403' => :'Integer',
        :'status_404' => :'Integer',
        :'status_406' => :'Integer',
        :'status_416' => :'Integer',
        :'status_429' => :'Integer',
        :'status_500' => :'Integer',
        :'status_501' => :'Integer',
        :'status_502' => :'Integer',
        :'status_503' => :'Integer',
        :'status_504' => :'Integer',
        :'status_505' => :'Integer',
        :'uncacheable' => :'Integer',
        :'pass_time' => :'Float',
        :'tls' => :'Integer',
        :'tls_v10' => :'Integer',
        :'tls_v11' => :'Integer',
        :'tls_v12' => :'Integer',
        :'tls_v13' => :'Integer',
        :'object_size_1k' => :'Integer',
        :'object_size_10k' => :'Integer',
        :'object_size_100k' => :'Integer',
        :'object_size_1m' => :'Integer',
        :'object_size_10m' => :'Integer',
        :'object_size_100m' => :'Integer',
        :'object_size_1g' => :'Integer',
        :'object_size_other' => :'Integer',
        :'recv_sub_time' => :'Float',
        :'recv_sub_count' => :'Integer',
        :'hash_sub_time' => :'Float',
        :'hash_sub_count' => :'Integer',
        :'miss_sub_time' => :'Float',
        :'miss_sub_count' => :'Integer',
        :'fetch_sub_time' => :'Float',
        :'fetch_sub_count' => :'Integer',
        :'pass_sub_time' => :'Float',
        :'pass_sub_count' => :'Integer',
        :'pipe_sub_time' => :'Float',
        :'pipe_sub_count' => :'Integer',
        :'deliver_sub_time' => :'Float',
        :'deliver_sub_count' => :'Integer',
        :'error_sub_time' => :'Float',
        :'error_sub_count' => :'Integer',
        :'hit_sub_time' => :'Float',
        :'hit_sub_count' => :'Integer',
        :'prehash_sub_time' => :'Float',
        :'prehash_sub_count' => :'Integer',
        :'predeliver_sub_time' => :'Float',
        :'predeliver_sub_count' => :'Integer',
        :'hit_resp_body_bytes' => :'Integer',
        :'miss_resp_body_bytes' => :'Integer',
        :'pass_resp_body_bytes' => :'Integer',
        :'compute_req_header_bytes' => :'Integer',
        :'compute_req_body_bytes' => :'Integer',
        :'compute_resp_header_bytes' => :'Integer',
        :'compute_resp_body_bytes' => :'Integer',
        :'imgvideo' => :'Integer',
        :'imgvideo_frames' => :'Integer',
        :'imgvideo_resp_header_bytes' => :'Integer',
        :'imgvideo_resp_body_bytes' => :'Integer',
        :'imgvideo_shield' => :'Integer',
        :'imgvideo_shield_frames' => :'Integer',
        :'imgvideo_shield_resp_header_bytes' => :'Integer',
        :'imgvideo_shield_resp_body_bytes' => :'Integer',
        :'log_bytes' => :'Integer',
        :'edge_requests' => :'Integer',
        :'edge_resp_header_bytes' => :'Integer',
        :'edge_resp_body_bytes' => :'Integer',
        :'origin_revalidations' => :'Integer',
        :'origin_fetches' => :'Integer',
        :'origin_fetch_header_bytes' => :'Integer',
        :'origin_fetch_body_bytes' => :'Integer',
        :'origin_fetch_resp_header_bytes' => :'Integer',
        :'origin_fetch_resp_body_bytes' => :'Integer',
        :'shield_revalidations' => :'Integer',
        :'shield_fetches' => :'Integer',
        :'shield_fetch_header_bytes' => :'Integer',
        :'shield_fetch_body_bytes' => :'Integer',
        :'shield_fetch_resp_header_bytes' => :'Integer',
        :'shield_fetch_resp_body_bytes' => :'Integer',
        :'segblock_origin_fetches' => :'Integer',
        :'segblock_shield_fetches' => :'Integer',
        :'compute_resp_status_1xx' => :'Integer',
        :'compute_resp_status_2xx' => :'Integer',
        :'compute_resp_status_3xx' => :'Integer',
        :'compute_resp_status_4xx' => :'Integer',
        :'compute_resp_status_5xx' => :'Integer',
        :'edge_hit_requests' => :'Integer',
        :'edge_miss_requests' => :'Integer',
        :'compute_bereq_header_bytes' => :'Integer',
        :'compute_bereq_body_bytes' => :'Integer',
        :'compute_beresp_header_bytes' => :'Integer',
        :'compute_beresp_body_bytes' => :'Integer',
        :'origin_cache_fetches' => :'Integer',
        :'shield_cache_fetches' => :'Integer',
        :'compute_bereqs' => :'Integer',
        :'compute_bereq_errors' => :'Integer',
        :'compute_resource_limit_exceeded' => :'Integer',
        :'compute_heap_limit_exceeded' => :'Integer',
        :'compute_stack_limit_exceeded' => :'Integer',
        :'compute_globals_limit_exceeded' => :'Integer',
        :'compute_guest_errors' => :'Integer',
        :'compute_runtime_errors' => :'Integer',
        :'edge_hit_resp_body_bytes' => :'Integer',
        :'edge_hit_resp_header_bytes' => :'Integer',
        :'edge_miss_resp_body_bytes' => :'Integer',
        :'edge_miss_resp_header_bytes' => :'Integer',
        :'origin_cache_fetch_resp_body_bytes' => :'Integer',
        :'origin_cache_fetch_resp_header_bytes' => :'Integer',
        :'shield_hit_requests' => :'Integer',
        :'shield_miss_requests' => :'Integer',
        :'shield_hit_resp_header_bytes' => :'Integer',
        :'shield_hit_resp_body_bytes' => :'Integer',
        :'shield_miss_resp_header_bytes' => :'Integer',
        :'shield_miss_resp_body_bytes' => :'Integer',
        :'websocket_req_header_bytes' => :'Integer',
        :'websocket_req_body_bytes' => :'Integer',
        :'websocket_resp_header_bytes' => :'Integer',
        :'websocket_bereq_header_bytes' => :'Integer',
        :'websocket_bereq_body_bytes' => :'Integer',
        :'websocket_beresp_header_bytes' => :'Integer',
        :'websocket_beresp_body_bytes' => :'Integer',
        :'websocket_conn_time_ms' => :'Integer',
        :'websocket_resp_body_bytes' => :'Integer',
        :'fanout_recv_publishes' => :'Integer',
        :'fanout_send_publishes' => :'Integer',
        :'kv_store_class_a_operations' => :'Integer',
        :'kv_store_class_b_operations' => :'Integer',
        :'object_store_class_a_operations' => :'Integer',
        :'object_store_class_b_operations' => :'Integer',
        :'fanout_req_header_bytes' => :'Integer',
        :'fanout_req_body_bytes' => :'Integer',
        :'fanout_resp_header_bytes' => :'Integer',
        :'fanout_resp_body_bytes' => :'Integer',
        :'fanout_bereq_header_bytes' => :'Integer',
        :'fanout_bereq_body_bytes' => :'Integer',
        :'fanout_beresp_header_bytes' => :'Integer',
        :'fanout_beresp_body_bytes' => :'Integer',
        :'fanout_conn_time_ms' => :'Integer',
        :'ddos_action_limit_streams_connections' => :'Integer',
        :'ddos_action_limit_streams_requests' => :'Integer',
        :'ddos_action_tarpit_accept' => :'Integer',
        :'ddos_action_tarpit' => :'Integer',
        :'ddos_action_close' => :'Integer',
        :'ddos_action_blackhole' => :'Integer',
        :'bot_challenge_starts' => :'Integer',
        :'bot_challenge_complete_tokens_passed' => :'Integer',
        :'bot_challenge_complete_tokens_failed' => :'Integer',
        :'bot_challenge_complete_tokens_checked' => :'Integer',
        :'bot_challenge_complete_tokens_disabled' => :'Integer',
        :'bot_challenges_issued' => :'Integer',
        :'bot_challenges_succeeded' => :'Integer',
        :'bot_challenges_failed' => :'Integer',
        :'bot_challenge_complete_tokens_issued' => :'Integer',
        :'ddos_action_downgrade' => :'Integer',
        :'ddos_action_downgraded_connections' => :'Integer',
        :'all_hit_requests' => :'Integer',
        :'all_miss_requests' => :'Integer',
        :'all_pass_requests' => :'Integer',
        :'all_error_requests' => :'Integer',
        :'all_synth_requests' => :'Integer',
        :'all_edge_hit_requests' => :'Integer',
        :'all_edge_miss_requests' => :'Integer',
        :'all_status_1xx' => :'Integer',
        :'all_status_2xx' => :'Integer',
        :'all_status_3xx' => :'Integer',
        :'all_status_4xx' => :'Integer',
        :'all_status_5xx' => :'Integer',
        :'origin_offload' => :'Float',
        :'request_denied_get_head_body' => :'Integer',
        :'service_ddos_requests_detected' => :'Integer',
        :'service_ddos_requests_mitigated' => :'Integer',
        :'service_ddos_requests_allowed' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.fastly_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.fastly_all_of
      [
      :'RealtimeMeasurements'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::RealtimeEntryAggregated` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::RealtimeEntryAggregated`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'requests')
        self.requests = attributes[:'requests']
      end

      if attributes.key?(:'logging')
        self.logging = attributes[:'logging']
      end

      if attributes.key?(:'log')
        self.log = attributes[:'log']
      end

      if attributes.key?(:'resp_header_bytes')
        self.resp_header_bytes = attributes[:'resp_header_bytes']
      end

      if attributes.key?(:'header_size')
        self.header_size = attributes[:'header_size']
      end

      if attributes.key?(:'resp_body_bytes')
        self.resp_body_bytes = attributes[:'resp_body_bytes']
      end

      if attributes.key?(:'body_size')
        self.body_size = attributes[:'body_size']
      end

      if attributes.key?(:'hits')
        self.hits = attributes[:'hits']
      end

      if attributes.key?(:'miss')
        self.miss = attributes[:'miss']
      end

      if attributes.key?(:'pass')
        self.pass = attributes[:'pass']
      end

      if attributes.key?(:'synth')
        self.synth = attributes[:'synth']
      end

      if attributes.key?(:'errors')
        self.errors = attributes[:'errors']
      end

      if attributes.key?(:'hits_time')
        self.hits_time = attributes[:'hits_time']
      end

      if attributes.key?(:'miss_time')
        self.miss_time = attributes[:'miss_time']
      end

      if attributes.key?(:'miss_histogram')
        if (value = attributes[:'miss_histogram']).is_a?(Hash)
          self.miss_histogram = value
        end
      end

      if attributes.key?(:'compute_requests')
        self.compute_requests = attributes[:'compute_requests']
      end

      if attributes.key?(:'compute_execution_time_ms')
        self.compute_execution_time_ms = attributes[:'compute_execution_time_ms']
      end

      if attributes.key?(:'compute_ram_used')
        self.compute_ram_used = attributes[:'compute_ram_used']
      end

      if attributes.key?(:'compute_request_time_ms')
        self.compute_request_time_ms = attributes[:'compute_request_time_ms']
      end

      if attributes.key?(:'compute_request_time_billed_ms')
        self.compute_request_time_billed_ms = attributes[:'compute_request_time_billed_ms']
      end

      if attributes.key?(:'shield')
        self.shield = attributes[:'shield']
      end

      if attributes.key?(:'ipv6')
        self.ipv6 = attributes[:'ipv6']
      end

      if attributes.key?(:'imgopto')
        self.imgopto = attributes[:'imgopto']
      end

      if attributes.key?(:'imgopto_shield')
        self.imgopto_shield = attributes[:'imgopto_shield']
      end

      if attributes.key?(:'imgopto_transforms')
        self.imgopto_transforms = attributes[:'imgopto_transforms']
      end

      if attributes.key?(:'otfp')
        self.otfp = attributes[:'otfp']
      end

      if attributes.key?(:'otfp_shield')
        self.otfp_shield = attributes[:'otfp_shield']
      end

      if attributes.key?(:'otfp_manifests')
        self.otfp_manifests = attributes[:'otfp_manifests']
      end

      if attributes.key?(:'video')
        self.video = attributes[:'video']
      end

      if attributes.key?(:'pci')
        self.pci = attributes[:'pci']
      end

      if attributes.key?(:'http2')
        self.http2 = attributes[:'http2']
      end

      if attributes.key?(:'http3')
        self.http3 = attributes[:'http3']
      end

      if attributes.key?(:'restarts')
        self.restarts = attributes[:'restarts']
      end

      if attributes.key?(:'req_header_bytes')
        self.req_header_bytes = attributes[:'req_header_bytes']
      end

      if attributes.key?(:'req_body_bytes')
        self.req_body_bytes = attributes[:'req_body_bytes']
      end

      if attributes.key?(:'bereq_header_bytes')
        self.bereq_header_bytes = attributes[:'bereq_header_bytes']
      end

      if attributes.key?(:'bereq_body_bytes')
        self.bereq_body_bytes = attributes[:'bereq_body_bytes']
      end

      if attributes.key?(:'waf_blocked')
        self.waf_blocked = attributes[:'waf_blocked']
      end

      if attributes.key?(:'waf_logged')
        self.waf_logged = attributes[:'waf_logged']
      end

      if attributes.key?(:'waf_passed')
        self.waf_passed = attributes[:'waf_passed']
      end

      if attributes.key?(:'attack_req_header_bytes')
        self.attack_req_header_bytes = attributes[:'attack_req_header_bytes']
      end

      if attributes.key?(:'attack_req_body_bytes')
        self.attack_req_body_bytes = attributes[:'attack_req_body_bytes']
      end

      if attributes.key?(:'attack_resp_synth_bytes')
        self.attack_resp_synth_bytes = attributes[:'attack_resp_synth_bytes']
      end

      if attributes.key?(:'attack_logged_req_header_bytes')
        self.attack_logged_req_header_bytes = attributes[:'attack_logged_req_header_bytes']
      end

      if attributes.key?(:'attack_logged_req_body_bytes')
        self.attack_logged_req_body_bytes = attributes[:'attack_logged_req_body_bytes']
      end

      if attributes.key?(:'attack_blocked_req_header_bytes')
        self.attack_blocked_req_header_bytes = attributes[:'attack_blocked_req_header_bytes']
      end

      if attributes.key?(:'attack_blocked_req_body_bytes')
        self.attack_blocked_req_body_bytes = attributes[:'attack_blocked_req_body_bytes']
      end

      if attributes.key?(:'attack_passed_req_header_bytes')
        self.attack_passed_req_header_bytes = attributes[:'attack_passed_req_header_bytes']
      end

      if attributes.key?(:'attack_passed_req_body_bytes')
        self.attack_passed_req_body_bytes = attributes[:'attack_passed_req_body_bytes']
      end

      if attributes.key?(:'shield_resp_header_bytes')
        self.shield_resp_header_bytes = attributes[:'shield_resp_header_bytes']
      end

      if attributes.key?(:'shield_resp_body_bytes')
        self.shield_resp_body_bytes = attributes[:'shield_resp_body_bytes']
      end

      if attributes.key?(:'otfp_resp_header_bytes')
        self.otfp_resp_header_bytes = attributes[:'otfp_resp_header_bytes']
      end

      if attributes.key?(:'otfp_resp_body_bytes')
        self.otfp_resp_body_bytes = attributes[:'otfp_resp_body_bytes']
      end

      if attributes.key?(:'otfp_shield_resp_header_bytes')
        self.otfp_shield_resp_header_bytes = attributes[:'otfp_shield_resp_header_bytes']
      end

      if attributes.key?(:'otfp_shield_resp_body_bytes')
        self.otfp_shield_resp_body_bytes = attributes[:'otfp_shield_resp_body_bytes']
      end

      if attributes.key?(:'otfp_shield_time')
        self.otfp_shield_time = attributes[:'otfp_shield_time']
      end

      if attributes.key?(:'otfp_deliver_time')
        self.otfp_deliver_time = attributes[:'otfp_deliver_time']
      end

      if attributes.key?(:'imgopto_resp_header_bytes')
        self.imgopto_resp_header_bytes = attributes[:'imgopto_resp_header_bytes']
      end

      if attributes.key?(:'imgopto_resp_body_bytes')
        self.imgopto_resp_body_bytes = attributes[:'imgopto_resp_body_bytes']
      end

      if attributes.key?(:'imgopto_shield_resp_header_bytes')
        self.imgopto_shield_resp_header_bytes = attributes[:'imgopto_shield_resp_header_bytes']
      end

      if attributes.key?(:'imgopto_shield_resp_body_bytes')
        self.imgopto_shield_resp_body_bytes = attributes[:'imgopto_shield_resp_body_bytes']
      end

      if attributes.key?(:'status_1xx')
        self.status_1xx = attributes[:'status_1xx']
      end

      if attributes.key?(:'status_2xx')
        self.status_2xx = attributes[:'status_2xx']
      end

      if attributes.key?(:'status_3xx')
        self.status_3xx = attributes[:'status_3xx']
      end

      if attributes.key?(:'status_4xx')
        self.status_4xx = attributes[:'status_4xx']
      end

      if attributes.key?(:'status_5xx')
        self.status_5xx = attributes[:'status_5xx']
      end

      if attributes.key?(:'status_200')
        self.status_200 = attributes[:'status_200']
      end

      if attributes.key?(:'status_204')
        self.status_204 = attributes[:'status_204']
      end

      if attributes.key?(:'status_206')
        self.status_206 = attributes[:'status_206']
      end

      if attributes.key?(:'status_301')
        self.status_301 = attributes[:'status_301']
      end

      if attributes.key?(:'status_302')
        self.status_302 = attributes[:'status_302']
      end

      if attributes.key?(:'status_304')
        self.status_304 = attributes[:'status_304']
      end

      if attributes.key?(:'status_400')
        self.status_400 = attributes[:'status_400']
      end

      if attributes.key?(:'status_401')
        self.status_401 = attributes[:'status_401']
      end

      if attributes.key?(:'status_403')
        self.status_403 = attributes[:'status_403']
      end

      if attributes.key?(:'status_404')
        self.status_404 = attributes[:'status_404']
      end

      if attributes.key?(:'status_406')
        self.status_406 = attributes[:'status_406']
      end

      if attributes.key?(:'status_416')
        self.status_416 = attributes[:'status_416']
      end

      if attributes.key?(:'status_429')
        self.status_429 = attributes[:'status_429']
      end

      if attributes.key?(:'status_500')
        self.status_500 = attributes[:'status_500']
      end

      if attributes.key?(:'status_501')
        self.status_501 = attributes[:'status_501']
      end

      if attributes.key?(:'status_502')
        self.status_502 = attributes[:'status_502']
      end

      if attributes.key?(:'status_503')
        self.status_503 = attributes[:'status_503']
      end

      if attributes.key?(:'status_504')
        self.status_504 = attributes[:'status_504']
      end

      if attributes.key?(:'status_505')
        self.status_505 = attributes[:'status_505']
      end

      if attributes.key?(:'uncacheable')
        self.uncacheable = attributes[:'uncacheable']
      end

      if attributes.key?(:'pass_time')
        self.pass_time = attributes[:'pass_time']
      end

      if attributes.key?(:'tls')
        self.tls = attributes[:'tls']
      end

      if attributes.key?(:'tls_v10')
        self.tls_v10 = attributes[:'tls_v10']
      end

      if attributes.key?(:'tls_v11')
        self.tls_v11 = attributes[:'tls_v11']
      end

      if attributes.key?(:'tls_v12')
        self.tls_v12 = attributes[:'tls_v12']
      end

      if attributes.key?(:'tls_v13')
        self.tls_v13 = attributes[:'tls_v13']
      end

      if attributes.key?(:'object_size_1k')
        self.object_size_1k = attributes[:'object_size_1k']
      end

      if attributes.key?(:'object_size_10k')
        self.object_size_10k = attributes[:'object_size_10k']
      end

      if attributes.key?(:'object_size_100k')
        self.object_size_100k = attributes[:'object_size_100k']
      end

      if attributes.key?(:'object_size_1m')
        self.object_size_1m = attributes[:'object_size_1m']
      end

      if attributes.key?(:'object_size_10m')
        self.object_size_10m = attributes[:'object_size_10m']
      end

      if attributes.key?(:'object_size_100m')
        self.object_size_100m = attributes[:'object_size_100m']
      end

      if attributes.key?(:'object_size_1g')
        self.object_size_1g = attributes[:'object_size_1g']
      end

      if attributes.key?(:'object_size_other')
        self.object_size_other = attributes[:'object_size_other']
      end

      if attributes.key?(:'recv_sub_time')
        self.recv_sub_time = attributes[:'recv_sub_time']
      end

      if attributes.key?(:'recv_sub_count')
        self.recv_sub_count = attributes[:'recv_sub_count']
      end

      if attributes.key?(:'hash_sub_time')
        self.hash_sub_time = attributes[:'hash_sub_time']
      end

      if attributes.key?(:'hash_sub_count')
        self.hash_sub_count = attributes[:'hash_sub_count']
      end

      if attributes.key?(:'miss_sub_time')
        self.miss_sub_time = attributes[:'miss_sub_time']
      end

      if attributes.key?(:'miss_sub_count')
        self.miss_sub_count = attributes[:'miss_sub_count']
      end

      if attributes.key?(:'fetch_sub_time')
        self.fetch_sub_time = attributes[:'fetch_sub_time']
      end

      if attributes.key?(:'fetch_sub_count')
        self.fetch_sub_count = attributes[:'fetch_sub_count']
      end

      if attributes.key?(:'pass_sub_time')
        self.pass_sub_time = attributes[:'pass_sub_time']
      end

      if attributes.key?(:'pass_sub_count')
        self.pass_sub_count = attributes[:'pass_sub_count']
      end

      if attributes.key?(:'pipe_sub_time')
        self.pipe_sub_time = attributes[:'pipe_sub_time']
      end

      if attributes.key?(:'pipe_sub_count')
        self.pipe_sub_count = attributes[:'pipe_sub_count']
      end

      if attributes.key?(:'deliver_sub_time')
        self.deliver_sub_time = attributes[:'deliver_sub_time']
      end

      if attributes.key?(:'deliver_sub_count')
        self.deliver_sub_count = attributes[:'deliver_sub_count']
      end

      if attributes.key?(:'error_sub_time')
        self.error_sub_time = attributes[:'error_sub_time']
      end

      if attributes.key?(:'error_sub_count')
        self.error_sub_count = attributes[:'error_sub_count']
      end

      if attributes.key?(:'hit_sub_time')
        self.hit_sub_time = attributes[:'hit_sub_time']
      end

      if attributes.key?(:'hit_sub_count')
        self.hit_sub_count = attributes[:'hit_sub_count']
      end

      if attributes.key?(:'prehash_sub_time')
        self.prehash_sub_time = attributes[:'prehash_sub_time']
      end

      if attributes.key?(:'prehash_sub_count')
        self.prehash_sub_count = attributes[:'prehash_sub_count']
      end

      if attributes.key?(:'predeliver_sub_time')
        self.predeliver_sub_time = attributes[:'predeliver_sub_time']
      end

      if attributes.key?(:'predeliver_sub_count')
        self.predeliver_sub_count = attributes[:'predeliver_sub_count']
      end

      if attributes.key?(:'hit_resp_body_bytes')
        self.hit_resp_body_bytes = attributes[:'hit_resp_body_bytes']
      end

      if attributes.key?(:'miss_resp_body_bytes')
        self.miss_resp_body_bytes = attributes[:'miss_resp_body_bytes']
      end

      if attributes.key?(:'pass_resp_body_bytes')
        self.pass_resp_body_bytes = attributes[:'pass_resp_body_bytes']
      end

      if attributes.key?(:'compute_req_header_bytes')
        self.compute_req_header_bytes = attributes[:'compute_req_header_bytes']
      end

      if attributes.key?(:'compute_req_body_bytes')
        self.compute_req_body_bytes = attributes[:'compute_req_body_bytes']
      end

      if attributes.key?(:'compute_resp_header_bytes')
        self.compute_resp_header_bytes = attributes[:'compute_resp_header_bytes']
      end

      if attributes.key?(:'compute_resp_body_bytes')
        self.compute_resp_body_bytes = attributes[:'compute_resp_body_bytes']
      end

      if attributes.key?(:'imgvideo')
        self.imgvideo = attributes[:'imgvideo']
      end

      if attributes.key?(:'imgvideo_frames')
        self.imgvideo_frames = attributes[:'imgvideo_frames']
      end

      if attributes.key?(:'imgvideo_resp_header_bytes')
        self.imgvideo_resp_header_bytes = attributes[:'imgvideo_resp_header_bytes']
      end

      if attributes.key?(:'imgvideo_resp_body_bytes')
        self.imgvideo_resp_body_bytes = attributes[:'imgvideo_resp_body_bytes']
      end

      if attributes.key?(:'imgvideo_shield')
        self.imgvideo_shield = attributes[:'imgvideo_shield']
      end

      if attributes.key?(:'imgvideo_shield_frames')
        self.imgvideo_shield_frames = attributes[:'imgvideo_shield_frames']
      end

      if attributes.key?(:'imgvideo_shield_resp_header_bytes')
        self.imgvideo_shield_resp_header_bytes = attributes[:'imgvideo_shield_resp_header_bytes']
      end

      if attributes.key?(:'imgvideo_shield_resp_body_bytes')
        self.imgvideo_shield_resp_body_bytes = attributes[:'imgvideo_shield_resp_body_bytes']
      end

      if attributes.key?(:'log_bytes')
        self.log_bytes = attributes[:'log_bytes']
      end

      if attributes.key?(:'edge_requests')
        self.edge_requests = attributes[:'edge_requests']
      end

      if attributes.key?(:'edge_resp_header_bytes')
        self.edge_resp_header_bytes = attributes[:'edge_resp_header_bytes']
      end

      if attributes.key?(:'edge_resp_body_bytes')
        self.edge_resp_body_bytes = attributes[:'edge_resp_body_bytes']
      end

      if attributes.key?(:'origin_revalidations')
        self.origin_revalidations = attributes[:'origin_revalidations']
      end

      if attributes.key?(:'origin_fetches')
        self.origin_fetches = attributes[:'origin_fetches']
      end

      if attributes.key?(:'origin_fetch_header_bytes')
        self.origin_fetch_header_bytes = attributes[:'origin_fetch_header_bytes']
      end

      if attributes.key?(:'origin_fetch_body_bytes')
        self.origin_fetch_body_bytes = attributes[:'origin_fetch_body_bytes']
      end

      if attributes.key?(:'origin_fetch_resp_header_bytes')
        self.origin_fetch_resp_header_bytes = attributes[:'origin_fetch_resp_header_bytes']
      end

      if attributes.key?(:'origin_fetch_resp_body_bytes')
        self.origin_fetch_resp_body_bytes = attributes[:'origin_fetch_resp_body_bytes']
      end

      if attributes.key?(:'shield_revalidations')
        self.shield_revalidations = attributes[:'shield_revalidations']
      end

      if attributes.key?(:'shield_fetches')
        self.shield_fetches = attributes[:'shield_fetches']
      end

      if attributes.key?(:'shield_fetch_header_bytes')
        self.shield_fetch_header_bytes = attributes[:'shield_fetch_header_bytes']
      end

      if attributes.key?(:'shield_fetch_body_bytes')
        self.shield_fetch_body_bytes = attributes[:'shield_fetch_body_bytes']
      end

      if attributes.key?(:'shield_fetch_resp_header_bytes')
        self.shield_fetch_resp_header_bytes = attributes[:'shield_fetch_resp_header_bytes']
      end

      if attributes.key?(:'shield_fetch_resp_body_bytes')
        self.shield_fetch_resp_body_bytes = attributes[:'shield_fetch_resp_body_bytes']
      end

      if attributes.key?(:'segblock_origin_fetches')
        self.segblock_origin_fetches = attributes[:'segblock_origin_fetches']
      end

      if attributes.key?(:'segblock_shield_fetches')
        self.segblock_shield_fetches = attributes[:'segblock_shield_fetches']
      end

      if attributes.key?(:'compute_resp_status_1xx')
        self.compute_resp_status_1xx = attributes[:'compute_resp_status_1xx']
      end

      if attributes.key?(:'compute_resp_status_2xx')
        self.compute_resp_status_2xx = attributes[:'compute_resp_status_2xx']
      end

      if attributes.key?(:'compute_resp_status_3xx')
        self.compute_resp_status_3xx = attributes[:'compute_resp_status_3xx']
      end

      if attributes.key?(:'compute_resp_status_4xx')
        self.compute_resp_status_4xx = attributes[:'compute_resp_status_4xx']
      end

      if attributes.key?(:'compute_resp_status_5xx')
        self.compute_resp_status_5xx = attributes[:'compute_resp_status_5xx']
      end

      if attributes.key?(:'edge_hit_requests')
        self.edge_hit_requests = attributes[:'edge_hit_requests']
      end

      if attributes.key?(:'edge_miss_requests')
        self.edge_miss_requests = attributes[:'edge_miss_requests']
      end

      if attributes.key?(:'compute_bereq_header_bytes')
        self.compute_bereq_header_bytes = attributes[:'compute_bereq_header_bytes']
      end

      if attributes.key?(:'compute_bereq_body_bytes')
        self.compute_bereq_body_bytes = attributes[:'compute_bereq_body_bytes']
      end

      if attributes.key?(:'compute_beresp_header_bytes')
        self.compute_beresp_header_bytes = attributes[:'compute_beresp_header_bytes']
      end

      if attributes.key?(:'compute_beresp_body_bytes')
        self.compute_beresp_body_bytes = attributes[:'compute_beresp_body_bytes']
      end

      if attributes.key?(:'origin_cache_fetches')
        self.origin_cache_fetches = attributes[:'origin_cache_fetches']
      end

      if attributes.key?(:'shield_cache_fetches')
        self.shield_cache_fetches = attributes[:'shield_cache_fetches']
      end

      if attributes.key?(:'compute_bereqs')
        self.compute_bereqs = attributes[:'compute_bereqs']
      end

      if attributes.key?(:'compute_bereq_errors')
        self.compute_bereq_errors = attributes[:'compute_bereq_errors']
      end

      if attributes.key?(:'compute_resource_limit_exceeded')
        self.compute_resource_limit_exceeded = attributes[:'compute_resource_limit_exceeded']
      end

      if attributes.key?(:'compute_heap_limit_exceeded')
        self.compute_heap_limit_exceeded = attributes[:'compute_heap_limit_exceeded']
      end

      if attributes.key?(:'compute_stack_limit_exceeded')
        self.compute_stack_limit_exceeded = attributes[:'compute_stack_limit_exceeded']
      end

      if attributes.key?(:'compute_globals_limit_exceeded')
        self.compute_globals_limit_exceeded = attributes[:'compute_globals_limit_exceeded']
      end

      if attributes.key?(:'compute_guest_errors')
        self.compute_guest_errors = attributes[:'compute_guest_errors']
      end

      if attributes.key?(:'compute_runtime_errors')
        self.compute_runtime_errors = attributes[:'compute_runtime_errors']
      end

      if attributes.key?(:'edge_hit_resp_body_bytes')
        self.edge_hit_resp_body_bytes = attributes[:'edge_hit_resp_body_bytes']
      end

      if attributes.key?(:'edge_hit_resp_header_bytes')
        self.edge_hit_resp_header_bytes = attributes[:'edge_hit_resp_header_bytes']
      end

      if attributes.key?(:'edge_miss_resp_body_bytes')
        self.edge_miss_resp_body_bytes = attributes[:'edge_miss_resp_body_bytes']
      end

      if attributes.key?(:'edge_miss_resp_header_bytes')
        self.edge_miss_resp_header_bytes = attributes[:'edge_miss_resp_header_bytes']
      end

      if attributes.key?(:'origin_cache_fetch_resp_body_bytes')
        self.origin_cache_fetch_resp_body_bytes = attributes[:'origin_cache_fetch_resp_body_bytes']
      end

      if attributes.key?(:'origin_cache_fetch_resp_header_bytes')
        self.origin_cache_fetch_resp_header_bytes = attributes[:'origin_cache_fetch_resp_header_bytes']
      end

      if attributes.key?(:'shield_hit_requests')
        self.shield_hit_requests = attributes[:'shield_hit_requests']
      end

      if attributes.key?(:'shield_miss_requests')
        self.shield_miss_requests = attributes[:'shield_miss_requests']
      end

      if attributes.key?(:'shield_hit_resp_header_bytes')
        self.shield_hit_resp_header_bytes = attributes[:'shield_hit_resp_header_bytes']
      end

      if attributes.key?(:'shield_hit_resp_body_bytes')
        self.shield_hit_resp_body_bytes = attributes[:'shield_hit_resp_body_bytes']
      end

      if attributes.key?(:'shield_miss_resp_header_bytes')
        self.shield_miss_resp_header_bytes = attributes[:'shield_miss_resp_header_bytes']
      end

      if attributes.key?(:'shield_miss_resp_body_bytes')
        self.shield_miss_resp_body_bytes = attributes[:'shield_miss_resp_body_bytes']
      end

      if attributes.key?(:'websocket_req_header_bytes')
        self.websocket_req_header_bytes = attributes[:'websocket_req_header_bytes']
      end

      if attributes.key?(:'websocket_req_body_bytes')
        self.websocket_req_body_bytes = attributes[:'websocket_req_body_bytes']
      end

      if attributes.key?(:'websocket_resp_header_bytes')
        self.websocket_resp_header_bytes = attributes[:'websocket_resp_header_bytes']
      end

      if attributes.key?(:'websocket_bereq_header_bytes')
        self.websocket_bereq_header_bytes = attributes[:'websocket_bereq_header_bytes']
      end

      if attributes.key?(:'websocket_bereq_body_bytes')
        self.websocket_bereq_body_bytes = attributes[:'websocket_bereq_body_bytes']
      end

      if attributes.key?(:'websocket_beresp_header_bytes')
        self.websocket_beresp_header_bytes = attributes[:'websocket_beresp_header_bytes']
      end

      if attributes.key?(:'websocket_beresp_body_bytes')
        self.websocket_beresp_body_bytes = attributes[:'websocket_beresp_body_bytes']
      end

      if attributes.key?(:'websocket_conn_time_ms')
        self.websocket_conn_time_ms = attributes[:'websocket_conn_time_ms']
      end

      if attributes.key?(:'websocket_resp_body_bytes')
        self.websocket_resp_body_bytes = attributes[:'websocket_resp_body_bytes']
      end

      if attributes.key?(:'fanout_recv_publishes')
        self.fanout_recv_publishes = attributes[:'fanout_recv_publishes']
      end

      if attributes.key?(:'fanout_send_publishes')
        self.fanout_send_publishes = attributes[:'fanout_send_publishes']
      end

      if attributes.key?(:'kv_store_class_a_operations')
        self.kv_store_class_a_operations = attributes[:'kv_store_class_a_operations']
      end

      if attributes.key?(:'kv_store_class_b_operations')
        self.kv_store_class_b_operations = attributes[:'kv_store_class_b_operations']
      end

      if attributes.key?(:'object_store_class_a_operations')
        self.object_store_class_a_operations = attributes[:'object_store_class_a_operations']
      end

      if attributes.key?(:'object_store_class_b_operations')
        self.object_store_class_b_operations = attributes[:'object_store_class_b_operations']
      end

      if attributes.key?(:'fanout_req_header_bytes')
        self.fanout_req_header_bytes = attributes[:'fanout_req_header_bytes']
      end

      if attributes.key?(:'fanout_req_body_bytes')
        self.fanout_req_body_bytes = attributes[:'fanout_req_body_bytes']
      end

      if attributes.key?(:'fanout_resp_header_bytes')
        self.fanout_resp_header_bytes = attributes[:'fanout_resp_header_bytes']
      end

      if attributes.key?(:'fanout_resp_body_bytes')
        self.fanout_resp_body_bytes = attributes[:'fanout_resp_body_bytes']
      end

      if attributes.key?(:'fanout_bereq_header_bytes')
        self.fanout_bereq_header_bytes = attributes[:'fanout_bereq_header_bytes']
      end

      if attributes.key?(:'fanout_bereq_body_bytes')
        self.fanout_bereq_body_bytes = attributes[:'fanout_bereq_body_bytes']
      end

      if attributes.key?(:'fanout_beresp_header_bytes')
        self.fanout_beresp_header_bytes = attributes[:'fanout_beresp_header_bytes']
      end

      if attributes.key?(:'fanout_beresp_body_bytes')
        self.fanout_beresp_body_bytes = attributes[:'fanout_beresp_body_bytes']
      end

      if attributes.key?(:'fanout_conn_time_ms')
        self.fanout_conn_time_ms = attributes[:'fanout_conn_time_ms']
      end

      if attributes.key?(:'ddos_action_limit_streams_connections')
        self.ddos_action_limit_streams_connections = attributes[:'ddos_action_limit_streams_connections']
      end

      if attributes.key?(:'ddos_action_limit_streams_requests')
        self.ddos_action_limit_streams_requests = attributes[:'ddos_action_limit_streams_requests']
      end

      if attributes.key?(:'ddos_action_tarpit_accept')
        self.ddos_action_tarpit_accept = attributes[:'ddos_action_tarpit_accept']
      end

      if attributes.key?(:'ddos_action_tarpit')
        self.ddos_action_tarpit = attributes[:'ddos_action_tarpit']
      end

      if attributes.key?(:'ddos_action_close')
        self.ddos_action_close = attributes[:'ddos_action_close']
      end

      if attributes.key?(:'ddos_action_blackhole')
        self.ddos_action_blackhole = attributes[:'ddos_action_blackhole']
      end

      if attributes.key?(:'bot_challenge_starts')
        self.bot_challenge_starts = attributes[:'bot_challenge_starts']
      end

      if attributes.key?(:'bot_challenge_complete_tokens_passed')
        self.bot_challenge_complete_tokens_passed = attributes[:'bot_challenge_complete_tokens_passed']
      end

      if attributes.key?(:'bot_challenge_complete_tokens_failed')
        self.bot_challenge_complete_tokens_failed = attributes[:'bot_challenge_complete_tokens_failed']
      end

      if attributes.key?(:'bot_challenge_complete_tokens_checked')
        self.bot_challenge_complete_tokens_checked = attributes[:'bot_challenge_complete_tokens_checked']
      end

      if attributes.key?(:'bot_challenge_complete_tokens_disabled')
        self.bot_challenge_complete_tokens_disabled = attributes[:'bot_challenge_complete_tokens_disabled']
      end

      if attributes.key?(:'bot_challenges_issued')
        self.bot_challenges_issued = attributes[:'bot_challenges_issued']
      end

      if attributes.key?(:'bot_challenges_succeeded')
        self.bot_challenges_succeeded = attributes[:'bot_challenges_succeeded']
      end

      if attributes.key?(:'bot_challenges_failed')
        self.bot_challenges_failed = attributes[:'bot_challenges_failed']
      end

      if attributes.key?(:'bot_challenge_complete_tokens_issued')
        self.bot_challenge_complete_tokens_issued = attributes[:'bot_challenge_complete_tokens_issued']
      end

      if attributes.key?(:'ddos_action_downgrade')
        self.ddos_action_downgrade = attributes[:'ddos_action_downgrade']
      end

      if attributes.key?(:'ddos_action_downgraded_connections')
        self.ddos_action_downgraded_connections = attributes[:'ddos_action_downgraded_connections']
      end

      if attributes.key?(:'all_hit_requests')
        self.all_hit_requests = attributes[:'all_hit_requests']
      end

      if attributes.key?(:'all_miss_requests')
        self.all_miss_requests = attributes[:'all_miss_requests']
      end

      if attributes.key?(:'all_pass_requests')
        self.all_pass_requests = attributes[:'all_pass_requests']
      end

      if attributes.key?(:'all_error_requests')
        self.all_error_requests = attributes[:'all_error_requests']
      end

      if attributes.key?(:'all_synth_requests')
        self.all_synth_requests = attributes[:'all_synth_requests']
      end

      if attributes.key?(:'all_edge_hit_requests')
        self.all_edge_hit_requests = attributes[:'all_edge_hit_requests']
      end

      if attributes.key?(:'all_edge_miss_requests')
        self.all_edge_miss_requests = attributes[:'all_edge_miss_requests']
      end

      if attributes.key?(:'all_status_1xx')
        self.all_status_1xx = attributes[:'all_status_1xx']
      end

      if attributes.key?(:'all_status_2xx')
        self.all_status_2xx = attributes[:'all_status_2xx']
      end

      if attributes.key?(:'all_status_3xx')
        self.all_status_3xx = attributes[:'all_status_3xx']
      end

      if attributes.key?(:'all_status_4xx')
        self.all_status_4xx = attributes[:'all_status_4xx']
      end

      if attributes.key?(:'all_status_5xx')
        self.all_status_5xx = attributes[:'all_status_5xx']
      end

      if attributes.key?(:'origin_offload')
        self.origin_offload = attributes[:'origin_offload']
      end

      if attributes.key?(:'request_denied_get_head_body')
        self.request_denied_get_head_body = attributes[:'request_denied_get_head_body']
      end

      if attributes.key?(:'service_ddos_requests_detected')
        self.service_ddos_requests_detected = attributes[:'service_ddos_requests_detected']
      end

      if attributes.key?(:'service_ddos_requests_mitigated')
        self.service_ddos_requests_mitigated = attributes[:'service_ddos_requests_mitigated']
      end

      if attributes.key?(:'service_ddos_requests_allowed')
        self.service_ddos_requests_allowed = attributes[:'service_ddos_requests_allowed']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          requests == o.requests &&
          logging == o.logging &&
          log == o.log &&
          resp_header_bytes == o.resp_header_bytes &&
          header_size == o.header_size &&
          resp_body_bytes == o.resp_body_bytes &&
          body_size == o.body_size &&
          hits == o.hits &&
          miss == o.miss &&
          pass == o.pass &&
          synth == o.synth &&
          errors == o.errors &&
          hits_time == o.hits_time &&
          miss_time == o.miss_time &&
          miss_histogram == o.miss_histogram &&
          compute_requests == o.compute_requests &&
          compute_execution_time_ms == o.compute_execution_time_ms &&
          compute_ram_used == o.compute_ram_used &&
          compute_request_time_ms == o.compute_request_time_ms &&
          compute_request_time_billed_ms == o.compute_request_time_billed_ms &&
          shield == o.shield &&
          ipv6 == o.ipv6 &&
          imgopto == o.imgopto &&
          imgopto_shield == o.imgopto_shield &&
          imgopto_transforms == o.imgopto_transforms &&
          otfp == o.otfp &&
          otfp_shield == o.otfp_shield &&
          otfp_manifests == o.otfp_manifests &&
          video == o.video &&
          pci == o.pci &&
          http2 == o.http2 &&
          http3 == o.http3 &&
          restarts == o.restarts &&
          req_header_bytes == o.req_header_bytes &&
          req_body_bytes == o.req_body_bytes &&
          bereq_header_bytes == o.bereq_header_bytes &&
          bereq_body_bytes == o.bereq_body_bytes &&
          waf_blocked == o.waf_blocked &&
          waf_logged == o.waf_logged &&
          waf_passed == o.waf_passed &&
          attack_req_header_bytes == o.attack_req_header_bytes &&
          attack_req_body_bytes == o.attack_req_body_bytes &&
          attack_resp_synth_bytes == o.attack_resp_synth_bytes &&
          attack_logged_req_header_bytes == o.attack_logged_req_header_bytes &&
          attack_logged_req_body_bytes == o.attack_logged_req_body_bytes &&
          attack_blocked_req_header_bytes == o.attack_blocked_req_header_bytes &&
          attack_blocked_req_body_bytes == o.attack_blocked_req_body_bytes &&
          attack_passed_req_header_bytes == o.attack_passed_req_header_bytes &&
          attack_passed_req_body_bytes == o.attack_passed_req_body_bytes &&
          shield_resp_header_bytes == o.shield_resp_header_bytes &&
          shield_resp_body_bytes == o.shield_resp_body_bytes &&
          otfp_resp_header_bytes == o.otfp_resp_header_bytes &&
          otfp_resp_body_bytes == o.otfp_resp_body_bytes &&
          otfp_shield_resp_header_bytes == o.otfp_shield_resp_header_bytes &&
          otfp_shield_resp_body_bytes == o.otfp_shield_resp_body_bytes &&
          otfp_shield_time == o.otfp_shield_time &&
          otfp_deliver_time == o.otfp_deliver_time &&
          imgopto_resp_header_bytes == o.imgopto_resp_header_bytes &&
          imgopto_resp_body_bytes == o.imgopto_resp_body_bytes &&
          imgopto_shield_resp_header_bytes == o.imgopto_shield_resp_header_bytes &&
          imgopto_shield_resp_body_bytes == o.imgopto_shield_resp_body_bytes &&
          status_1xx == o.status_1xx &&
          status_2xx == o.status_2xx &&
          status_3xx == o.status_3xx &&
          status_4xx == o.status_4xx &&
          status_5xx == o.status_5xx &&
          status_200 == o.status_200 &&
          status_204 == o.status_204 &&
          status_206 == o.status_206 &&
          status_301 == o.status_301 &&
          status_302 == o.status_302 &&
          status_304 == o.status_304 &&
          status_400 == o.status_400 &&
          status_401 == o.status_401 &&
          status_403 == o.status_403 &&
          status_404 == o.status_404 &&
          status_406 == o.status_406 &&
          status_416 == o.status_416 &&
          status_429 == o.status_429 &&
          status_500 == o.status_500 &&
          status_501 == o.status_501 &&
          status_502 == o.status_502 &&
          status_503 == o.status_503 &&
          status_504 == o.status_504 &&
          status_505 == o.status_505 &&
          uncacheable == o.uncacheable &&
          pass_time == o.pass_time &&
          tls == o.tls &&
          tls_v10 == o.tls_v10 &&
          tls_v11 == o.tls_v11 &&
          tls_v12 == o.tls_v12 &&
          tls_v13 == o.tls_v13 &&
          object_size_1k == o.object_size_1k &&
          object_size_10k == o.object_size_10k &&
          object_size_100k == o.object_size_100k &&
          object_size_1m == o.object_size_1m &&
          object_size_10m == o.object_size_10m &&
          object_size_100m == o.object_size_100m &&
          object_size_1g == o.object_size_1g &&
          object_size_other == o.object_size_other &&
          recv_sub_time == o.recv_sub_time &&
          recv_sub_count == o.recv_sub_count &&
          hash_sub_time == o.hash_sub_time &&
          hash_sub_count == o.hash_sub_count &&
          miss_sub_time == o.miss_sub_time &&
          miss_sub_count == o.miss_sub_count &&
          fetch_sub_time == o.fetch_sub_time &&
          fetch_sub_count == o.fetch_sub_count &&
          pass_sub_time == o.pass_sub_time &&
          pass_sub_count == o.pass_sub_count &&
          pipe_sub_time == o.pipe_sub_time &&
          pipe_sub_count == o.pipe_sub_count &&
          deliver_sub_time == o.deliver_sub_time &&
          deliver_sub_count == o.deliver_sub_count &&
          error_sub_time == o.error_sub_time &&
          error_sub_count == o.error_sub_count &&
          hit_sub_time == o.hit_sub_time &&
          hit_sub_count == o.hit_sub_count &&
          prehash_sub_time == o.prehash_sub_time &&
          prehash_sub_count == o.prehash_sub_count &&
          predeliver_sub_time == o.predeliver_sub_time &&
          predeliver_sub_count == o.predeliver_sub_count &&
          hit_resp_body_bytes == o.hit_resp_body_bytes &&
          miss_resp_body_bytes == o.miss_resp_body_bytes &&
          pass_resp_body_bytes == o.pass_resp_body_bytes &&
          compute_req_header_bytes == o.compute_req_header_bytes &&
          compute_req_body_bytes == o.compute_req_body_bytes &&
          compute_resp_header_bytes == o.compute_resp_header_bytes &&
          compute_resp_body_bytes == o.compute_resp_body_bytes &&
          imgvideo == o.imgvideo &&
          imgvideo_frames == o.imgvideo_frames &&
          imgvideo_resp_header_bytes == o.imgvideo_resp_header_bytes &&
          imgvideo_resp_body_bytes == o.imgvideo_resp_body_bytes &&
          imgvideo_shield == o.imgvideo_shield &&
          imgvideo_shield_frames == o.imgvideo_shield_frames &&
          imgvideo_shield_resp_header_bytes == o.imgvideo_shield_resp_header_bytes &&
          imgvideo_shield_resp_body_bytes == o.imgvideo_shield_resp_body_bytes &&
          log_bytes == o.log_bytes &&
          edge_requests == o.edge_requests &&
          edge_resp_header_bytes == o.edge_resp_header_bytes &&
          edge_resp_body_bytes == o.edge_resp_body_bytes &&
          origin_revalidations == o.origin_revalidations &&
          origin_fetches == o.origin_fetches &&
          origin_fetch_header_bytes == o.origin_fetch_header_bytes &&
          origin_fetch_body_bytes == o.origin_fetch_body_bytes &&
          origin_fetch_resp_header_bytes == o.origin_fetch_resp_header_bytes &&
          origin_fetch_resp_body_bytes == o.origin_fetch_resp_body_bytes &&
          shield_revalidations == o.shield_revalidations &&
          shield_fetches == o.shield_fetches &&
          shield_fetch_header_bytes == o.shield_fetch_header_bytes &&
          shield_fetch_body_bytes == o.shield_fetch_body_bytes &&
          shield_fetch_resp_header_bytes == o.shield_fetch_resp_header_bytes &&
          shield_fetch_resp_body_bytes == o.shield_fetch_resp_body_bytes &&
          segblock_origin_fetches == o.segblock_origin_fetches &&
          segblock_shield_fetches == o.segblock_shield_fetches &&
          compute_resp_status_1xx == o.compute_resp_status_1xx &&
          compute_resp_status_2xx == o.compute_resp_status_2xx &&
          compute_resp_status_3xx == o.compute_resp_status_3xx &&
          compute_resp_status_4xx == o.compute_resp_status_4xx &&
          compute_resp_status_5xx == o.compute_resp_status_5xx &&
          edge_hit_requests == o.edge_hit_requests &&
          edge_miss_requests == o.edge_miss_requests &&
          compute_bereq_header_bytes == o.compute_bereq_header_bytes &&
          compute_bereq_body_bytes == o.compute_bereq_body_bytes &&
          compute_beresp_header_bytes == o.compute_beresp_header_bytes &&
          compute_beresp_body_bytes == o.compute_beresp_body_bytes &&
          origin_cache_fetches == o.origin_cache_fetches &&
          shield_cache_fetches == o.shield_cache_fetches &&
          compute_bereqs == o.compute_bereqs &&
          compute_bereq_errors == o.compute_bereq_errors &&
          compute_resource_limit_exceeded == o.compute_resource_limit_exceeded &&
          compute_heap_limit_exceeded == o.compute_heap_limit_exceeded &&
          compute_stack_limit_exceeded == o.compute_stack_limit_exceeded &&
          compute_globals_limit_exceeded == o.compute_globals_limit_exceeded &&
          compute_guest_errors == o.compute_guest_errors &&
          compute_runtime_errors == o.compute_runtime_errors &&
          edge_hit_resp_body_bytes == o.edge_hit_resp_body_bytes &&
          edge_hit_resp_header_bytes == o.edge_hit_resp_header_bytes &&
          edge_miss_resp_body_bytes == o.edge_miss_resp_body_bytes &&
          edge_miss_resp_header_bytes == o.edge_miss_resp_header_bytes &&
          origin_cache_fetch_resp_body_bytes == o.origin_cache_fetch_resp_body_bytes &&
          origin_cache_fetch_resp_header_bytes == o.origin_cache_fetch_resp_header_bytes &&
          shield_hit_requests == o.shield_hit_requests &&
          shield_miss_requests == o.shield_miss_requests &&
          shield_hit_resp_header_bytes == o.shield_hit_resp_header_bytes &&
          shield_hit_resp_body_bytes == o.shield_hit_resp_body_bytes &&
          shield_miss_resp_header_bytes == o.shield_miss_resp_header_bytes &&
          shield_miss_resp_body_bytes == o.shield_miss_resp_body_bytes &&
          websocket_req_header_bytes == o.websocket_req_header_bytes &&
          websocket_req_body_bytes == o.websocket_req_body_bytes &&
          websocket_resp_header_bytes == o.websocket_resp_header_bytes &&
          websocket_bereq_header_bytes == o.websocket_bereq_header_bytes &&
          websocket_bereq_body_bytes == o.websocket_bereq_body_bytes &&
          websocket_beresp_header_bytes == o.websocket_beresp_header_bytes &&
          websocket_beresp_body_bytes == o.websocket_beresp_body_bytes &&
          websocket_conn_time_ms == o.websocket_conn_time_ms &&
          websocket_resp_body_bytes == o.websocket_resp_body_bytes &&
          fanout_recv_publishes == o.fanout_recv_publishes &&
          fanout_send_publishes == o.fanout_send_publishes &&
          kv_store_class_a_operations == o.kv_store_class_a_operations &&
          kv_store_class_b_operations == o.kv_store_class_b_operations &&
          object_store_class_a_operations == o.object_store_class_a_operations &&
          object_store_class_b_operations == o.object_store_class_b_operations &&
          fanout_req_header_bytes == o.fanout_req_header_bytes &&
          fanout_req_body_bytes == o.fanout_req_body_bytes &&
          fanout_resp_header_bytes == o.fanout_resp_header_bytes &&
          fanout_resp_body_bytes == o.fanout_resp_body_bytes &&
          fanout_bereq_header_bytes == o.fanout_bereq_header_bytes &&
          fanout_bereq_body_bytes == o.fanout_bereq_body_bytes &&
          fanout_beresp_header_bytes == o.fanout_beresp_header_bytes &&
          fanout_beresp_body_bytes == o.fanout_beresp_body_bytes &&
          fanout_conn_time_ms == o.fanout_conn_time_ms &&
          ddos_action_limit_streams_connections == o.ddos_action_limit_streams_connections &&
          ddos_action_limit_streams_requests == o.ddos_action_limit_streams_requests &&
          ddos_action_tarpit_accept == o.ddos_action_tarpit_accept &&
          ddos_action_tarpit == o.ddos_action_tarpit &&
          ddos_action_close == o.ddos_action_close &&
          ddos_action_blackhole == o.ddos_action_blackhole &&
          bot_challenge_starts == o.bot_challenge_starts &&
          bot_challenge_complete_tokens_passed == o.bot_challenge_complete_tokens_passed &&
          bot_challenge_complete_tokens_failed == o.bot_challenge_complete_tokens_failed &&
          bot_challenge_complete_tokens_checked == o.bot_challenge_complete_tokens_checked &&
          bot_challenge_complete_tokens_disabled == o.bot_challenge_complete_tokens_disabled &&
          bot_challenges_issued == o.bot_challenges_issued &&
          bot_challenges_succeeded == o.bot_challenges_succeeded &&
          bot_challenges_failed == o.bot_challenges_failed &&
          bot_challenge_complete_tokens_issued == o.bot_challenge_complete_tokens_issued &&
          ddos_action_downgrade == o.ddos_action_downgrade &&
          ddos_action_downgraded_connections == o.ddos_action_downgraded_connections &&
          all_hit_requests == o.all_hit_requests &&
          all_miss_requests == o.all_miss_requests &&
          all_pass_requests == o.all_pass_requests &&
          all_error_requests == o.all_error_requests &&
          all_synth_requests == o.all_synth_requests &&
          all_edge_hit_requests == o.all_edge_hit_requests &&
          all_edge_miss_requests == o.all_edge_miss_requests &&
          all_status_1xx == o.all_status_1xx &&
          all_status_2xx == o.all_status_2xx &&
          all_status_3xx == o.all_status_3xx &&
          all_status_4xx == o.all_status_4xx &&
          all_status_5xx == o.all_status_5xx &&
          origin_offload == o.origin_offload &&
          request_denied_get_head_body == o.request_denied_get_head_body &&
          service_ddos_requests_detected == o.service_ddos_requests_detected &&
          service_ddos_requests_mitigated == o.service_ddos_requests_mitigated &&
          service_ddos_requests_allowed == o.service_ddos_requests_allowed
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [requests, logging, log, resp_header_bytes, header_size, resp_body_bytes, body_size, hits, miss, pass, synth, errors, hits_time, miss_time, miss_histogram, compute_requests, compute_execution_time_ms, compute_ram_used, compute_request_time_ms, compute_request_time_billed_ms, shield, ipv6, imgopto, imgopto_shield, imgopto_transforms, otfp, otfp_shield, otfp_manifests, video, pci, http2, http3, restarts, req_header_bytes, req_body_bytes, bereq_header_bytes, bereq_body_bytes, waf_blocked, waf_logged, waf_passed, attack_req_header_bytes, attack_req_body_bytes, attack_resp_synth_bytes, attack_logged_req_header_bytes, attack_logged_req_body_bytes, attack_blocked_req_header_bytes, attack_blocked_req_body_bytes, attack_passed_req_header_bytes, attack_passed_req_body_bytes, shield_resp_header_bytes, shield_resp_body_bytes, otfp_resp_header_bytes, otfp_resp_body_bytes, otfp_shield_resp_header_bytes, otfp_shield_resp_body_bytes, otfp_shield_time, otfp_deliver_time, imgopto_resp_header_bytes, imgopto_resp_body_bytes, imgopto_shield_resp_header_bytes, imgopto_shield_resp_body_bytes, status_1xx, status_2xx, status_3xx, status_4xx, status_5xx, status_200, status_204, status_206, status_301, status_302, status_304, status_400, status_401, status_403, status_404, status_406, status_416, status_429, status_500, status_501, status_502, status_503, status_504, status_505, uncacheable, pass_time, tls, tls_v10, tls_v11, tls_v12, tls_v13, object_size_1k, object_size_10k, object_size_100k, object_size_1m, object_size_10m, object_size_100m, object_size_1g, object_size_other, recv_sub_time, recv_sub_count, hash_sub_time, hash_sub_count, miss_sub_time, miss_sub_count, fetch_sub_time, fetch_sub_count, pass_sub_time, pass_sub_count, pipe_sub_time, pipe_sub_count, deliver_sub_time, deliver_sub_count, error_sub_time, error_sub_count, hit_sub_time, hit_sub_count, prehash_sub_time, prehash_sub_count, predeliver_sub_time, predeliver_sub_count, hit_resp_body_bytes, miss_resp_body_bytes, pass_resp_body_bytes, compute_req_header_bytes, compute_req_body_bytes, compute_resp_header_bytes, compute_resp_body_bytes, imgvideo, imgvideo_frames, imgvideo_resp_header_bytes, imgvideo_resp_body_bytes, imgvideo_shield, imgvideo_shield_frames, imgvideo_shield_resp_header_bytes, imgvideo_shield_resp_body_bytes, log_bytes, edge_requests, edge_resp_header_bytes, edge_resp_body_bytes, origin_revalidations, origin_fetches, origin_fetch_header_bytes, origin_fetch_body_bytes, origin_fetch_resp_header_bytes, origin_fetch_resp_body_bytes, shield_revalidations, shield_fetches, shield_fetch_header_bytes, shield_fetch_body_bytes, shield_fetch_resp_header_bytes, shield_fetch_resp_body_bytes, segblock_origin_fetches, segblock_shield_fetches, compute_resp_status_1xx, compute_resp_status_2xx, compute_resp_status_3xx, compute_resp_status_4xx, compute_resp_status_5xx, edge_hit_requests, edge_miss_requests, compute_bereq_header_bytes, compute_bereq_body_bytes, compute_beresp_header_bytes, compute_beresp_body_bytes, origin_cache_fetches, shield_cache_fetches, compute_bereqs, compute_bereq_errors, compute_resource_limit_exceeded, compute_heap_limit_exceeded, compute_stack_limit_exceeded, compute_globals_limit_exceeded, compute_guest_errors, compute_runtime_errors, edge_hit_resp_body_bytes, edge_hit_resp_header_bytes, edge_miss_resp_body_bytes, edge_miss_resp_header_bytes, origin_cache_fetch_resp_body_bytes, origin_cache_fetch_resp_header_bytes, shield_hit_requests, shield_miss_requests, shield_hit_resp_header_bytes, shield_hit_resp_body_bytes, shield_miss_resp_header_bytes, shield_miss_resp_body_bytes, websocket_req_header_bytes, websocket_req_body_bytes, websocket_resp_header_bytes, websocket_bereq_header_bytes, websocket_bereq_body_bytes, websocket_beresp_header_bytes, websocket_beresp_body_bytes, websocket_conn_time_ms, websocket_resp_body_bytes, fanout_recv_publishes, fanout_send_publishes, kv_store_class_a_operations, kv_store_class_b_operations, object_store_class_a_operations, object_store_class_b_operations, fanout_req_header_bytes, fanout_req_body_bytes, fanout_resp_header_bytes, fanout_resp_body_bytes, fanout_bereq_header_bytes, fanout_bereq_body_bytes, fanout_beresp_header_bytes, fanout_beresp_body_bytes, fanout_conn_time_ms, ddos_action_limit_streams_connections, ddos_action_limit_streams_requests, ddos_action_tarpit_accept, ddos_action_tarpit, ddos_action_close, ddos_action_blackhole, bot_challenge_starts, bot_challenge_complete_tokens_passed, bot_challenge_complete_tokens_failed, bot_challenge_complete_tokens_checked, bot_challenge_complete_tokens_disabled, bot_challenges_issued, bot_challenges_succeeded, bot_challenges_failed, bot_challenge_complete_tokens_issued, ddos_action_downgrade, ddos_action_downgraded_connections, all_hit_requests, all_miss_requests, all_pass_requests, all_error_requests, all_synth_requests, all_edge_hit_requests, all_edge_miss_requests, all_status_1xx, all_status_2xx, all_status_3xx, all_status_4xx, all_status_5xx, origin_offload, request_denied_get_head_body, service_ddos_requests_detected, service_ddos_requests_mitigated, service_ddos_requests_allowed].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.fastly_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.fastly_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Fastly.const_get(type)
        klass.respond_to?(:fastly_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.fastly_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
