=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  # The results of the query, optionally filtered and grouped over the requested timespan.
  class OriginInspectorValues
    # Number of responses from origin.
    attr_accessor :responses

    # Number of header bytes from origin.
    attr_accessor :resp_header_bytes

    # Number of body bytes from origin.
    attr_accessor :resp_body_bytes

    # Number of 1xx \"Informational\" status codes delivered from origin.
    attr_accessor :status_1xx

    # Number of 2xx \"Success\" status codes delivered from origin.
    attr_accessor :status_2xx

    # Number of 3xx \"Redirection\" codes delivered from origin.
    attr_accessor :status_3xx

    # Number of 4xx \"Client Error\" codes delivered from origin.
    attr_accessor :status_4xx

    # Number of 5xx \"Server Error\" codes delivered from origin.
    attr_accessor :status_5xx

    # Number of responses received with status code 200 (Success) from origin.
    attr_accessor :status_200

    # Number of responses received with status code 204 (No Content) from origin.
    attr_accessor :status_204

    # Number of responses received with status code 206 (Partial Content) from origin.
    attr_accessor :status_206

    # Number of responses received with status code 301 (Moved Permanently) from origin.
    attr_accessor :status_301

    # Number of responses received with status code 302 (Found) from origin.
    attr_accessor :status_302

    # Number of responses received with status code 304 (Not Modified) from origin.
    attr_accessor :status_304

    # Number of responses received with status code 400 (Bad Request) from origin.
    attr_accessor :status_400

    # Number of responses received with status code 401 (Unauthorized) from origin.
    attr_accessor :status_401

    # Number of responses received with status code 403 (Forbidden) from origin.
    attr_accessor :status_403

    # Number of responses received with status code 404 (Not Found) from origin.
    attr_accessor :status_404

    # Number of responses received with status code 416 (Range Not Satisfiable) from origin.
    attr_accessor :status_416

    # Number of responses received with status code 429 (Too Many Requests) from origin.
    attr_accessor :status_429

    # Number of responses received with status code 500 (Internal Server Error) from origin.
    attr_accessor :status_500

    # Number of responses received with status code 501 (Not Implemented) from origin.
    attr_accessor :status_501

    # Number of responses received with status code 502 (Bad Gateway) from origin.
    attr_accessor :status_502

    # Number of responses received with status code 503 (Service Unavailable) from origin.
    attr_accessor :status_503

    # Number of responses received with status code 504 (Gateway Timeout) from origin.
    attr_accessor :status_504

    # Number of responses received with status code 505 (HTTP Version Not Supported) from origin.
    attr_accessor :status_505

    # Number of responses from origin with latency between 0 and 1 millisecond.
    attr_accessor :latency_0_to_1ms

    # Number of responses from origin with latency between 1 and 5 milliseconds.
    attr_accessor :latency_1_to_5ms

    # Number of responses from origin with latency between 5 and 10 milliseconds.
    attr_accessor :latency_5_to_10ms

    # Number of responses from origin with latency between 10 and 50 milliseconds.
    attr_accessor :latency_10_to_50ms

    # Number of responses from origin with latency between 50 and 100 milliseconds.
    attr_accessor :latency_50_to_100ms

    # Number of responses from origin with latency between 100 and 250 milliseconds.
    attr_accessor :latency_100_to_250ms

    # Number of responses from origin with latency between 250 and 500 milliseconds.
    attr_accessor :latency_250_to_500ms

    # Number of responses from origin with latency between 500 and 1,000 milliseconds.
    attr_accessor :latency_500_to_1000ms

    # Number of responses from origin with latency between 1,000 and 5,000 milliseconds.
    attr_accessor :latency_1000_to_5000ms

    # Number of responses from origin with latency between 5,000 and 10,000 milliseconds.
    attr_accessor :latency_5000_to_10000ms

    # Number of responses from origin with latency between 10,000 and 60,000 milliseconds.
    attr_accessor :latency_10000_to_60000ms

    # Number of responses from origin with latency of 60,000 milliseconds and above.
    attr_accessor :latency_60000ms

    # Number of responses received for origin requests made by the Fastly WAF.
    attr_accessor :waf_responses

    # Number of header bytes received for origin requests made by the Fastly WAF.
    attr_accessor :waf_resp_header_bytes

    # Number of body bytes received for origin requests made by the Fastly WAF.
    attr_accessor :waf_resp_body_bytes

    # Number of 1xx \"Informational\" status codes received for origin requests made by the Fastly WAF.
    attr_accessor :waf_status_1xx

    # Number of 2xx \"Success\" status codes received for origin requests made by the Fastly WAF.
    attr_accessor :waf_status_2xx

    # Number of 3xx \"Redirection\" codes received for origin requests made by the Fastly WAF.
    attr_accessor :waf_status_3xx

    # Number of 4xx \"Client Error\" codes received for origin requests made by the Fastly WAF.
    attr_accessor :waf_status_4xx

    # Number of 5xx \"Server Error\" codes received for origin requests made by the Fastly WAF.
    attr_accessor :waf_status_5xx

    # Number of responses received with status code 200 (Success) received for origin requests made by the Fastly WAF.
    attr_accessor :waf_status_200

    # Number of responses received with status code 204 (No Content) received for origin requests made by the Fastly WAF.
    attr_accessor :waf_status_204

    # Number of responses received with status code 206 (Partial Content) received for origin requests made by the Fastly WAF.
    attr_accessor :waf_status_206

    # Number of responses received with status code 301 (Moved Permanently) received for origin requests made by the Fastly WAF.
    attr_accessor :waf_status_301

    # Number of responses received with status code 302 (Found) received for origin requests made by the Fastly WAF.
    attr_accessor :waf_status_302

    # Number of responses received with status code 304 (Not Modified) received for origin requests made by the Fastly WAF.
    attr_accessor :waf_status_304

    # Number of responses received with status code 400 (Bad Request) received for origin requests made by the Fastly WAF.
    attr_accessor :waf_status_400

    # Number of responses received with status code 401 (Unauthorized) received for origin requests made by the Fastly WAF.
    attr_accessor :waf_status_401

    # Number of responses received with status code 403 (Forbidden) received for origin requests made by the Fastly WAF.
    attr_accessor :waf_status_403

    # Number of responses received with status code 404 (Not Found) received for origin requests made by the Fastly WAF.
    attr_accessor :waf_status_404

    # Number of responses received with status code 416 (Range Not Satisfiable) received for origin requests made by the Fastly WAF.
    attr_accessor :waf_status_416

    # Number of responses received with status code 429 (Too Many Requests) received for origin requests made by the Fastly WAF.
    attr_accessor :waf_status_429

    # Number of responses received with status code 500 (Internal Server Error) received for origin requests made by the Fastly WAF.
    attr_accessor :waf_status_500

    # Number of responses received with status code 501 (Not Implemented) received for origin requests made by the Fastly WAF.
    attr_accessor :waf_status_501

    # Number of responses received with status code 502 (Bad Gateway) received for origin requests made by the Fastly WAF.
    attr_accessor :waf_status_502

    # Number of responses received with status code 503 (Service Unavailable) received for origin requests made by the Fastly WAF.
    attr_accessor :waf_status_503

    # Number of responses received with status code 504 (Gateway Timeout) received for origin requests made by the Fastly WAF.
    attr_accessor :waf_status_504

    # Number of responses received with status code 505 (HTTP Version Not Supported) received for origin requests made by the Fastly WAF.
    attr_accessor :waf_status_505

    # Number of responses with latency between 0 and 1 millisecond received for origin requests made by the Fastly WAF.
    attr_accessor :waf_latency_0_to_1ms

    # Number of responses with latency between 1 and 5 milliseconds received for origin requests made by the Fastly WAF.
    attr_accessor :waf_latency_1_to_5ms

    # Number of responses with latency between 5 and 10 milliseconds received for origin requests made by the Fastly WAF.
    attr_accessor :waf_latency_5_to_10ms

    # Number of responses with latency between 10 and 50 milliseconds received for origin requests made by the Fastly WAF.
    attr_accessor :waf_latency_10_to_50ms

    # Number of responses with latency between 50 and 100 milliseconds received for origin requests made by the Fastly WAF.
    attr_accessor :waf_latency_50_to_100ms

    # Number of responses with latency between 100 and 250 milliseconds received for origin requests made by the Fastly WAF.
    attr_accessor :waf_latency_100_to_250ms

    # Number of responses with latency between 250 and 500 milliseconds received for origin requests made by the Fastly WAF.
    attr_accessor :waf_latency_250_to_500ms

    # Number of responses with latency between 500 and 1,000 milliseconds received for origin requests made by the Fastly WAF.
    attr_accessor :waf_latency_500_to_1000ms

    # Number of responses with latency between 1,000 and 5,000 milliseconds received for origin requests made by the Fastly WAF.
    attr_accessor :waf_latency_1000_to_5000ms

    # Number of responses with latency between 5,000 and 10,000 milliseconds received for origin requests made by the Fastly WAF.
    attr_accessor :waf_latency_5000_to_10000ms

    # Number of responses with latency between 10,000 and 60,000 milliseconds received for origin requests made by the Fastly WAF.
    attr_accessor :waf_latency_10000_to_60000ms

    # Number of responses with latency of 60,000 milliseconds and above received for origin requests made by the Fastly WAF.
    attr_accessor :waf_latency_60000ms

    # Number of responses for origin received by the Compute platform.
    attr_accessor :compute_responses

    # Number of header bytes for origin received by the Compute platform.
    attr_accessor :compute_resp_header_bytes

    # Number of body bytes for origin received by the Compute platform.
    attr_accessor :compute_resp_body_bytes

    # Number of 1xx \"Informational\" status codes for origin received by the Compute platform.
    attr_accessor :compute_status_1xx

    # Number of 2xx \"Success\" status codes for origin received by the Compute platform.
    attr_accessor :compute_status_2xx

    # Number of 3xx \"Redirection\" codes for origin received by the Compute platform.
    attr_accessor :compute_status_3xx

    # Number of 4xx \"Client Error\" codes for origin received by the Compute platform.
    attr_accessor :compute_status_4xx

    # Number of 5xx \"Server Error\" codes for origin received by the Compute platform.
    attr_accessor :compute_status_5xx

    # Number of responses received with status code 200 (Success) for origin received by the Compute platform.
    attr_accessor :compute_status_200

    # Number of responses received with status code 204 (No Content) for origin received by the Compute platform.
    attr_accessor :compute_status_204

    # Number of responses received with status code 206 (Partial Content) for origin received by the Compute platform.
    attr_accessor :compute_status_206

    # Number of responses received with status code 301 (Moved Permanently) for origin received by the Compute platform.
    attr_accessor :compute_status_301

    # Number of responses received with status code 302 (Found) for origin received by the Compute platform.
    attr_accessor :compute_status_302

    # Number of responses received with status code 304 (Not Modified) for origin received by the Compute platform.
    attr_accessor :compute_status_304

    # Number of responses received with status code 400 (Bad Request) for origin received by the Compute platform.
    attr_accessor :compute_status_400

    # Number of responses received with status code 401 (Unauthorized) for origin received by the Compute platform.
    attr_accessor :compute_status_401

    # Number of responses received with status code 403 (Forbidden) for origin received by the Compute platform.
    attr_accessor :compute_status_403

    # Number of responses received with status code 404 (Not Found) for origin received by the Compute platform.
    attr_accessor :compute_status_404

    # Number of responses received with status code 416 (Range Not Satisfiable) for origin received by the Compute platform.
    attr_accessor :compute_status_416

    # Number of responses received with status code 429 (Too Many Requests) for origin received by the Compute platform.
    attr_accessor :compute_status_429

    # Number of responses received with status code 500 (Internal Server Error) for origin received by the Compute platform.
    attr_accessor :compute_status_500

    # Number of responses received with status code 501 (Not Implemented) for origin received by the Compute platform.
    attr_accessor :compute_status_501

    # Number of responses received with status code 502 (Bad Gateway) for origin received by the Compute platform.
    attr_accessor :compute_status_502

    # Number of responses received with status code 503 (Service Unavailable) for origin received by the Compute platform.
    attr_accessor :compute_status_503

    # Number of responses received with status code 504 (Gateway Timeout) for origin received by the Compute platform.
    attr_accessor :compute_status_504

    # Number of responses received with status code 505 (HTTP Version Not Supported) for origin received by the Compute platform.
    attr_accessor :compute_status_505

    # Number of responses with latency between 0 and 1 millisecond for origin received by the Compute platform.
    attr_accessor :compute_latency_0_to_1ms

    # Number of responses with latency between 1 and 5 milliseconds for origin received by the Compute platform.
    attr_accessor :compute_latency_1_to_5ms

    # Number of responses with latency between 5 and 10 milliseconds for origin received by the Compute platform.
    attr_accessor :compute_latency_5_to_10ms

    # Number of responses with latency between 10 and 50 milliseconds for origin received by the Compute platform.
    attr_accessor :compute_latency_10_to_50ms

    # Number of responses with latency between 50 and 100 milliseconds for origin received by the Compute platform.
    attr_accessor :compute_latency_50_to_100ms

    # Number of responses with latency between 100 and 250 milliseconds for origin received by the Compute platform.
    attr_accessor :compute_latency_100_to_250ms

    # Number of responses with latency between 250 and 500 milliseconds for origin received by the Compute platform.
    attr_accessor :compute_latency_250_to_500ms

    # Number of responses with latency between 500 and 1,000 milliseconds for origin received by the Compute platform.
    attr_accessor :compute_latency_500_to_1000ms

    # Number of responses with latency between 1,000 and 5,000 milliseconds for origin received by the Compute platform.
    attr_accessor :compute_latency_1000_to_5000ms

    # Number of responses with latency between 5,000 and 10,000 milliseconds for origin received by the Compute platform.
    attr_accessor :compute_latency_5000_to_10000ms

    # Number of responses with latency between 10,000 and 60,000 milliseconds for origin received by the Compute platform.
    attr_accessor :compute_latency_10000_to_60000ms

    # Number of responses with latency of 60,000 milliseconds and above for origin received by the Compute platform.
    attr_accessor :compute_latency_60000ms

    # Number of responses received for origin requests made by all sources.
    attr_accessor :all_responses

    # Number of header bytes received for origin requests made by all sources.
    attr_accessor :all_resp_header_bytes

    # Number of body bytes received for origin requests made by all sources.
    attr_accessor :all_resp_body_bytes

    # Number of 1xx \"Informational\" category status codes delivered received for origin requests made by all sources.
    attr_accessor :all_status_1xx

    # Number of 2xx \"Success\" status codes received for origin requests made by all sources.
    attr_accessor :all_status_2xx

    # Number of 3xx \"Redirection\" codes received for origin requests made by all sources.
    attr_accessor :all_status_3xx

    # Number of 4xx \"Client Error\" codes received for origin requests made by all sources.
    attr_accessor :all_status_4xx

    # Number of 5xx \"Server Error\" codes received for origin requests made by all sources.
    attr_accessor :all_status_5xx

    # Number of responses received with status code 200 (Success) received for origin requests made by all sources.
    attr_accessor :all_status_200

    # Number of responses received with status code 204 (No Content) received for origin requests made by all sources.
    attr_accessor :all_status_204

    # Number of responses received with status code 206 (Partial Content) received for origin requests made by all sources.
    attr_accessor :all_status_206

    # Number of responses received with status code 301 (Moved Permanently) received for origin requests made by all sources.
    attr_accessor :all_status_301

    # Number of responses received with status code 302 (Found) received for origin requests made by all sources.
    attr_accessor :all_status_302

    # Number of responses received with status code 304 (Not Modified) received for origin requests made by all sources.
    attr_accessor :all_status_304

    # Number of responses received with status code 400 (Bad Request) received for origin requests made by all sources.
    attr_accessor :all_status_400

    # Number of responses received with status code 401 (Unauthorized) received for origin requests made by all sources.
    attr_accessor :all_status_401

    # Number of responses received with status code 403 (Forbidden) received for origin requests made by all sources.
    attr_accessor :all_status_403

    # Number of responses received with status code 404 (Not Found) received for origin requests made by all sources.
    attr_accessor :all_status_404

    # Number of responses received with status code 416 (Range Not Satisfiable) received for origin requests made by all sources.
    attr_accessor :all_status_416

    # Number of responses received with status code 429 (Too Many Requests) received for origin requests made by all sources.
    attr_accessor :all_status_429

    # Number of responses received with status code 500 (Internal Server Error) received for origin requests made by all sources.
    attr_accessor :all_status_500

    # Number of responses received with status code 501 (Not Implemented) received for origin requests made by all sources.
    attr_accessor :all_status_501

    # Number of responses received with status code 502 (Bad Gateway) received for origin requests made by all sources.
    attr_accessor :all_status_502

    # Number of responses received with status code 503 (Service Unavailable) received for origin requests made by all sources.
    attr_accessor :all_status_503

    # Number of responses received with status code 504 (Gateway Timeout) received for origin requests made by all sources.
    attr_accessor :all_status_504

    # Number of responses received with status code 505 (HTTP Version Not Supported) received for origin requests made by all sources.
    attr_accessor :all_status_505

    # Number of responses with latency between 0 and 1 millisecond received for origin requests made by all sources.
    attr_accessor :all_latency_0_to_1ms

    # Number of responses with latency between 1 and 5 milliseconds received for origin requests made by all sources.
    attr_accessor :all_latency_1_to_5ms

    # Number of responses with latency between 5 and 10 milliseconds received for origin requests made by all sources.
    attr_accessor :all_latency_5_to_10ms

    # Number of responses with latency between 10 and 50 milliseconds received for origin requests made by all sources.
    attr_accessor :all_latency_10_to_50ms

    # Number of responses with latency between 50 and 100 milliseconds received for origin requests made by all sources.
    attr_accessor :all_latency_50_to_100ms

    # Number of responses with latency between 100 and 250 milliseconds received for origin requests made by all sources.
    attr_accessor :all_latency_100_to_250ms

    # Number of responses with latency between 250 and 500 milliseconds received for origin requests made by all sources.
    attr_accessor :all_latency_250_to_500ms

    # Number of responses with latency between 500 and 1,000 milliseconds received for origin requests made by all sources.
    attr_accessor :all_latency_500_to_1000ms

    # Number of responses with latency between 1,000 and 5,000 milliseconds received for origin requests made by all sources.
    attr_accessor :all_latency_1000_to_5000ms

    # Number of responses with latency between 5,000 and 10,000 milliseconds received for origin requests made by all sources.
    attr_accessor :all_latency_5000_to_10000ms

    # Number of responses with latency between 10,000 and 60,000 milliseconds received for origin requests made by all sources.
    attr_accessor :all_latency_10000_to_60000ms

    # Number of responses with latency of 60,000 milliseconds and above received for origin requests made by all sources.
    attr_accessor :all_latency_60000ms

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'responses' => :'responses',
        :'resp_header_bytes' => :'resp_header_bytes',
        :'resp_body_bytes' => :'resp_body_bytes',
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
        :'status_416' => :'status_416',
        :'status_429' => :'status_429',
        :'status_500' => :'status_500',
        :'status_501' => :'status_501',
        :'status_502' => :'status_502',
        :'status_503' => :'status_503',
        :'status_504' => :'status_504',
        :'status_505' => :'status_505',
        :'latency_0_to_1ms' => :'latency_0_to_1ms',
        :'latency_1_to_5ms' => :'latency_1_to_5ms',
        :'latency_5_to_10ms' => :'latency_5_to_10ms',
        :'latency_10_to_50ms' => :'latency_10_to_50ms',
        :'latency_50_to_100ms' => :'latency_50_to_100ms',
        :'latency_100_to_250ms' => :'latency_100_to_250ms',
        :'latency_250_to_500ms' => :'latency_250_to_500ms',
        :'latency_500_to_1000ms' => :'latency_500_to_1000ms',
        :'latency_1000_to_5000ms' => :'latency_1000_to_5000ms',
        :'latency_5000_to_10000ms' => :'latency_5000_to_10000ms',
        :'latency_10000_to_60000ms' => :'latency_10000_to_60000ms',
        :'latency_60000ms' => :'latency_60000ms',
        :'waf_responses' => :'waf_responses',
        :'waf_resp_header_bytes' => :'waf_resp_header_bytes',
        :'waf_resp_body_bytes' => :'waf_resp_body_bytes',
        :'waf_status_1xx' => :'waf_status_1xx',
        :'waf_status_2xx' => :'waf_status_2xx',
        :'waf_status_3xx' => :'waf_status_3xx',
        :'waf_status_4xx' => :'waf_status_4xx',
        :'waf_status_5xx' => :'waf_status_5xx',
        :'waf_status_200' => :'waf_status_200',
        :'waf_status_204' => :'waf_status_204',
        :'waf_status_206' => :'waf_status_206',
        :'waf_status_301' => :'waf_status_301',
        :'waf_status_302' => :'waf_status_302',
        :'waf_status_304' => :'waf_status_304',
        :'waf_status_400' => :'waf_status_400',
        :'waf_status_401' => :'waf_status_401',
        :'waf_status_403' => :'waf_status_403',
        :'waf_status_404' => :'waf_status_404',
        :'waf_status_416' => :'waf_status_416',
        :'waf_status_429' => :'waf_status_429',
        :'waf_status_500' => :'waf_status_500',
        :'waf_status_501' => :'waf_status_501',
        :'waf_status_502' => :'waf_status_502',
        :'waf_status_503' => :'waf_status_503',
        :'waf_status_504' => :'waf_status_504',
        :'waf_status_505' => :'waf_status_505',
        :'waf_latency_0_to_1ms' => :'waf_latency_0_to_1ms',
        :'waf_latency_1_to_5ms' => :'waf_latency_1_to_5ms',
        :'waf_latency_5_to_10ms' => :'waf_latency_5_to_10ms',
        :'waf_latency_10_to_50ms' => :'waf_latency_10_to_50ms',
        :'waf_latency_50_to_100ms' => :'waf_latency_50_to_100ms',
        :'waf_latency_100_to_250ms' => :'waf_latency_100_to_250ms',
        :'waf_latency_250_to_500ms' => :'waf_latency_250_to_500ms',
        :'waf_latency_500_to_1000ms' => :'waf_latency_500_to_1000ms',
        :'waf_latency_1000_to_5000ms' => :'waf_latency_1000_to_5000ms',
        :'waf_latency_5000_to_10000ms' => :'waf_latency_5000_to_10000ms',
        :'waf_latency_10000_to_60000ms' => :'waf_latency_10000_to_60000ms',
        :'waf_latency_60000ms' => :'waf_latency_60000ms',
        :'compute_responses' => :'compute_responses',
        :'compute_resp_header_bytes' => :'compute_resp_header_bytes',
        :'compute_resp_body_bytes' => :'compute_resp_body_bytes',
        :'compute_status_1xx' => :'compute_status_1xx',
        :'compute_status_2xx' => :'compute_status_2xx',
        :'compute_status_3xx' => :'compute_status_3xx',
        :'compute_status_4xx' => :'compute_status_4xx',
        :'compute_status_5xx' => :'compute_status_5xx',
        :'compute_status_200' => :'compute_status_200',
        :'compute_status_204' => :'compute_status_204',
        :'compute_status_206' => :'compute_status_206',
        :'compute_status_301' => :'compute_status_301',
        :'compute_status_302' => :'compute_status_302',
        :'compute_status_304' => :'compute_status_304',
        :'compute_status_400' => :'compute_status_400',
        :'compute_status_401' => :'compute_status_401',
        :'compute_status_403' => :'compute_status_403',
        :'compute_status_404' => :'compute_status_404',
        :'compute_status_416' => :'compute_status_416',
        :'compute_status_429' => :'compute_status_429',
        :'compute_status_500' => :'compute_status_500',
        :'compute_status_501' => :'compute_status_501',
        :'compute_status_502' => :'compute_status_502',
        :'compute_status_503' => :'compute_status_503',
        :'compute_status_504' => :'compute_status_504',
        :'compute_status_505' => :'compute_status_505',
        :'compute_latency_0_to_1ms' => :'compute_latency_0_to_1ms',
        :'compute_latency_1_to_5ms' => :'compute_latency_1_to_5ms',
        :'compute_latency_5_to_10ms' => :'compute_latency_5_to_10ms',
        :'compute_latency_10_to_50ms' => :'compute_latency_10_to_50ms',
        :'compute_latency_50_to_100ms' => :'compute_latency_50_to_100ms',
        :'compute_latency_100_to_250ms' => :'compute_latency_100_to_250ms',
        :'compute_latency_250_to_500ms' => :'compute_latency_250_to_500ms',
        :'compute_latency_500_to_1000ms' => :'compute_latency_500_to_1000ms',
        :'compute_latency_1000_to_5000ms' => :'compute_latency_1000_to_5000ms',
        :'compute_latency_5000_to_10000ms' => :'compute_latency_5000_to_10000ms',
        :'compute_latency_10000_to_60000ms' => :'compute_latency_10000_to_60000ms',
        :'compute_latency_60000ms' => :'compute_latency_60000ms',
        :'all_responses' => :'all_responses',
        :'all_resp_header_bytes' => :'all_resp_header_bytes',
        :'all_resp_body_bytes' => :'all_resp_body_bytes',
        :'all_status_1xx' => :'all_status_1xx',
        :'all_status_2xx' => :'all_status_2xx',
        :'all_status_3xx' => :'all_status_3xx',
        :'all_status_4xx' => :'all_status_4xx',
        :'all_status_5xx' => :'all_status_5xx',
        :'all_status_200' => :'all_status_200',
        :'all_status_204' => :'all_status_204',
        :'all_status_206' => :'all_status_206',
        :'all_status_301' => :'all_status_301',
        :'all_status_302' => :'all_status_302',
        :'all_status_304' => :'all_status_304',
        :'all_status_400' => :'all_status_400',
        :'all_status_401' => :'all_status_401',
        :'all_status_403' => :'all_status_403',
        :'all_status_404' => :'all_status_404',
        :'all_status_416' => :'all_status_416',
        :'all_status_429' => :'all_status_429',
        :'all_status_500' => :'all_status_500',
        :'all_status_501' => :'all_status_501',
        :'all_status_502' => :'all_status_502',
        :'all_status_503' => :'all_status_503',
        :'all_status_504' => :'all_status_504',
        :'all_status_505' => :'all_status_505',
        :'all_latency_0_to_1ms' => :'all_latency_0_to_1ms',
        :'all_latency_1_to_5ms' => :'all_latency_1_to_5ms',
        :'all_latency_5_to_10ms' => :'all_latency_5_to_10ms',
        :'all_latency_10_to_50ms' => :'all_latency_10_to_50ms',
        :'all_latency_50_to_100ms' => :'all_latency_50_to_100ms',
        :'all_latency_100_to_250ms' => :'all_latency_100_to_250ms',
        :'all_latency_250_to_500ms' => :'all_latency_250_to_500ms',
        :'all_latency_500_to_1000ms' => :'all_latency_500_to_1000ms',
        :'all_latency_1000_to_5000ms' => :'all_latency_1000_to_5000ms',
        :'all_latency_5000_to_10000ms' => :'all_latency_5000_to_10000ms',
        :'all_latency_10000_to_60000ms' => :'all_latency_10000_to_60000ms',
        :'all_latency_60000ms' => :'all_latency_60000ms'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.fastly_types
      {
        :'responses' => :'Integer',
        :'resp_header_bytes' => :'Integer',
        :'resp_body_bytes' => :'Integer',
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
        :'status_416' => :'Integer',
        :'status_429' => :'Integer',
        :'status_500' => :'Integer',
        :'status_501' => :'Integer',
        :'status_502' => :'Integer',
        :'status_503' => :'Integer',
        :'status_504' => :'Integer',
        :'status_505' => :'Integer',
        :'latency_0_to_1ms' => :'Integer',
        :'latency_1_to_5ms' => :'Integer',
        :'latency_5_to_10ms' => :'Integer',
        :'latency_10_to_50ms' => :'Integer',
        :'latency_50_to_100ms' => :'Integer',
        :'latency_100_to_250ms' => :'Integer',
        :'latency_250_to_500ms' => :'Integer',
        :'latency_500_to_1000ms' => :'Integer',
        :'latency_1000_to_5000ms' => :'Integer',
        :'latency_5000_to_10000ms' => :'Integer',
        :'latency_10000_to_60000ms' => :'Integer',
        :'latency_60000ms' => :'Integer',
        :'waf_responses' => :'Integer',
        :'waf_resp_header_bytes' => :'Integer',
        :'waf_resp_body_bytes' => :'Integer',
        :'waf_status_1xx' => :'Integer',
        :'waf_status_2xx' => :'Integer',
        :'waf_status_3xx' => :'Integer',
        :'waf_status_4xx' => :'Integer',
        :'waf_status_5xx' => :'Integer',
        :'waf_status_200' => :'Integer',
        :'waf_status_204' => :'Integer',
        :'waf_status_206' => :'Integer',
        :'waf_status_301' => :'Integer',
        :'waf_status_302' => :'Integer',
        :'waf_status_304' => :'Integer',
        :'waf_status_400' => :'Integer',
        :'waf_status_401' => :'Integer',
        :'waf_status_403' => :'Integer',
        :'waf_status_404' => :'Integer',
        :'waf_status_416' => :'Integer',
        :'waf_status_429' => :'Integer',
        :'waf_status_500' => :'Integer',
        :'waf_status_501' => :'Integer',
        :'waf_status_502' => :'Integer',
        :'waf_status_503' => :'Integer',
        :'waf_status_504' => :'Integer',
        :'waf_status_505' => :'Integer',
        :'waf_latency_0_to_1ms' => :'Integer',
        :'waf_latency_1_to_5ms' => :'Integer',
        :'waf_latency_5_to_10ms' => :'Integer',
        :'waf_latency_10_to_50ms' => :'Integer',
        :'waf_latency_50_to_100ms' => :'Integer',
        :'waf_latency_100_to_250ms' => :'Integer',
        :'waf_latency_250_to_500ms' => :'Integer',
        :'waf_latency_500_to_1000ms' => :'Integer',
        :'waf_latency_1000_to_5000ms' => :'Integer',
        :'waf_latency_5000_to_10000ms' => :'Integer',
        :'waf_latency_10000_to_60000ms' => :'Integer',
        :'waf_latency_60000ms' => :'Integer',
        :'compute_responses' => :'Integer',
        :'compute_resp_header_bytes' => :'Integer',
        :'compute_resp_body_bytes' => :'Integer',
        :'compute_status_1xx' => :'Integer',
        :'compute_status_2xx' => :'Integer',
        :'compute_status_3xx' => :'Integer',
        :'compute_status_4xx' => :'Integer',
        :'compute_status_5xx' => :'Integer',
        :'compute_status_200' => :'Integer',
        :'compute_status_204' => :'Integer',
        :'compute_status_206' => :'Integer',
        :'compute_status_301' => :'Integer',
        :'compute_status_302' => :'Integer',
        :'compute_status_304' => :'Integer',
        :'compute_status_400' => :'Integer',
        :'compute_status_401' => :'Integer',
        :'compute_status_403' => :'Integer',
        :'compute_status_404' => :'Integer',
        :'compute_status_416' => :'Integer',
        :'compute_status_429' => :'Integer',
        :'compute_status_500' => :'Integer',
        :'compute_status_501' => :'Integer',
        :'compute_status_502' => :'Integer',
        :'compute_status_503' => :'Integer',
        :'compute_status_504' => :'Integer',
        :'compute_status_505' => :'Integer',
        :'compute_latency_0_to_1ms' => :'Integer',
        :'compute_latency_1_to_5ms' => :'Integer',
        :'compute_latency_5_to_10ms' => :'Integer',
        :'compute_latency_10_to_50ms' => :'Integer',
        :'compute_latency_50_to_100ms' => :'Integer',
        :'compute_latency_100_to_250ms' => :'Integer',
        :'compute_latency_250_to_500ms' => :'Integer',
        :'compute_latency_500_to_1000ms' => :'Integer',
        :'compute_latency_1000_to_5000ms' => :'Integer',
        :'compute_latency_5000_to_10000ms' => :'Integer',
        :'compute_latency_10000_to_60000ms' => :'Integer',
        :'compute_latency_60000ms' => :'Integer',
        :'all_responses' => :'Integer',
        :'all_resp_header_bytes' => :'Integer',
        :'all_resp_body_bytes' => :'Integer',
        :'all_status_1xx' => :'Integer',
        :'all_status_2xx' => :'Integer',
        :'all_status_3xx' => :'Integer',
        :'all_status_4xx' => :'Integer',
        :'all_status_5xx' => :'Integer',
        :'all_status_200' => :'Integer',
        :'all_status_204' => :'Integer',
        :'all_status_206' => :'Integer',
        :'all_status_301' => :'Integer',
        :'all_status_302' => :'Integer',
        :'all_status_304' => :'Integer',
        :'all_status_400' => :'Integer',
        :'all_status_401' => :'Integer',
        :'all_status_403' => :'Integer',
        :'all_status_404' => :'Integer',
        :'all_status_416' => :'Integer',
        :'all_status_429' => :'Integer',
        :'all_status_500' => :'Integer',
        :'all_status_501' => :'Integer',
        :'all_status_502' => :'Integer',
        :'all_status_503' => :'Integer',
        :'all_status_504' => :'Integer',
        :'all_status_505' => :'Integer',
        :'all_latency_0_to_1ms' => :'Integer',
        :'all_latency_1_to_5ms' => :'Integer',
        :'all_latency_5_to_10ms' => :'Integer',
        :'all_latency_10_to_50ms' => :'Integer',
        :'all_latency_50_to_100ms' => :'Integer',
        :'all_latency_100_to_250ms' => :'Integer',
        :'all_latency_250_to_500ms' => :'Integer',
        :'all_latency_500_to_1000ms' => :'Integer',
        :'all_latency_1000_to_5000ms' => :'Integer',
        :'all_latency_5000_to_10000ms' => :'Integer',
        :'all_latency_10000_to_60000ms' => :'Integer',
        :'all_latency_60000ms' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.fastly_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::OriginInspectorValues` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::OriginInspectorValues`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'responses')
        self.responses = attributes[:'responses']
      end

      if attributes.key?(:'resp_header_bytes')
        self.resp_header_bytes = attributes[:'resp_header_bytes']
      end

      if attributes.key?(:'resp_body_bytes')
        self.resp_body_bytes = attributes[:'resp_body_bytes']
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

      if attributes.key?(:'latency_0_to_1ms')
        self.latency_0_to_1ms = attributes[:'latency_0_to_1ms']
      end

      if attributes.key?(:'latency_1_to_5ms')
        self.latency_1_to_5ms = attributes[:'latency_1_to_5ms']
      end

      if attributes.key?(:'latency_5_to_10ms')
        self.latency_5_to_10ms = attributes[:'latency_5_to_10ms']
      end

      if attributes.key?(:'latency_10_to_50ms')
        self.latency_10_to_50ms = attributes[:'latency_10_to_50ms']
      end

      if attributes.key?(:'latency_50_to_100ms')
        self.latency_50_to_100ms = attributes[:'latency_50_to_100ms']
      end

      if attributes.key?(:'latency_100_to_250ms')
        self.latency_100_to_250ms = attributes[:'latency_100_to_250ms']
      end

      if attributes.key?(:'latency_250_to_500ms')
        self.latency_250_to_500ms = attributes[:'latency_250_to_500ms']
      end

      if attributes.key?(:'latency_500_to_1000ms')
        self.latency_500_to_1000ms = attributes[:'latency_500_to_1000ms']
      end

      if attributes.key?(:'latency_1000_to_5000ms')
        self.latency_1000_to_5000ms = attributes[:'latency_1000_to_5000ms']
      end

      if attributes.key?(:'latency_5000_to_10000ms')
        self.latency_5000_to_10000ms = attributes[:'latency_5000_to_10000ms']
      end

      if attributes.key?(:'latency_10000_to_60000ms')
        self.latency_10000_to_60000ms = attributes[:'latency_10000_to_60000ms']
      end

      if attributes.key?(:'latency_60000ms')
        self.latency_60000ms = attributes[:'latency_60000ms']
      end

      if attributes.key?(:'waf_responses')
        self.waf_responses = attributes[:'waf_responses']
      end

      if attributes.key?(:'waf_resp_header_bytes')
        self.waf_resp_header_bytes = attributes[:'waf_resp_header_bytes']
      end

      if attributes.key?(:'waf_resp_body_bytes')
        self.waf_resp_body_bytes = attributes[:'waf_resp_body_bytes']
      end

      if attributes.key?(:'waf_status_1xx')
        self.waf_status_1xx = attributes[:'waf_status_1xx']
      end

      if attributes.key?(:'waf_status_2xx')
        self.waf_status_2xx = attributes[:'waf_status_2xx']
      end

      if attributes.key?(:'waf_status_3xx')
        self.waf_status_3xx = attributes[:'waf_status_3xx']
      end

      if attributes.key?(:'waf_status_4xx')
        self.waf_status_4xx = attributes[:'waf_status_4xx']
      end

      if attributes.key?(:'waf_status_5xx')
        self.waf_status_5xx = attributes[:'waf_status_5xx']
      end

      if attributes.key?(:'waf_status_200')
        self.waf_status_200 = attributes[:'waf_status_200']
      end

      if attributes.key?(:'waf_status_204')
        self.waf_status_204 = attributes[:'waf_status_204']
      end

      if attributes.key?(:'waf_status_206')
        self.waf_status_206 = attributes[:'waf_status_206']
      end

      if attributes.key?(:'waf_status_301')
        self.waf_status_301 = attributes[:'waf_status_301']
      end

      if attributes.key?(:'waf_status_302')
        self.waf_status_302 = attributes[:'waf_status_302']
      end

      if attributes.key?(:'waf_status_304')
        self.waf_status_304 = attributes[:'waf_status_304']
      end

      if attributes.key?(:'waf_status_400')
        self.waf_status_400 = attributes[:'waf_status_400']
      end

      if attributes.key?(:'waf_status_401')
        self.waf_status_401 = attributes[:'waf_status_401']
      end

      if attributes.key?(:'waf_status_403')
        self.waf_status_403 = attributes[:'waf_status_403']
      end

      if attributes.key?(:'waf_status_404')
        self.waf_status_404 = attributes[:'waf_status_404']
      end

      if attributes.key?(:'waf_status_416')
        self.waf_status_416 = attributes[:'waf_status_416']
      end

      if attributes.key?(:'waf_status_429')
        self.waf_status_429 = attributes[:'waf_status_429']
      end

      if attributes.key?(:'waf_status_500')
        self.waf_status_500 = attributes[:'waf_status_500']
      end

      if attributes.key?(:'waf_status_501')
        self.waf_status_501 = attributes[:'waf_status_501']
      end

      if attributes.key?(:'waf_status_502')
        self.waf_status_502 = attributes[:'waf_status_502']
      end

      if attributes.key?(:'waf_status_503')
        self.waf_status_503 = attributes[:'waf_status_503']
      end

      if attributes.key?(:'waf_status_504')
        self.waf_status_504 = attributes[:'waf_status_504']
      end

      if attributes.key?(:'waf_status_505')
        self.waf_status_505 = attributes[:'waf_status_505']
      end

      if attributes.key?(:'waf_latency_0_to_1ms')
        self.waf_latency_0_to_1ms = attributes[:'waf_latency_0_to_1ms']
      end

      if attributes.key?(:'waf_latency_1_to_5ms')
        self.waf_latency_1_to_5ms = attributes[:'waf_latency_1_to_5ms']
      end

      if attributes.key?(:'waf_latency_5_to_10ms')
        self.waf_latency_5_to_10ms = attributes[:'waf_latency_5_to_10ms']
      end

      if attributes.key?(:'waf_latency_10_to_50ms')
        self.waf_latency_10_to_50ms = attributes[:'waf_latency_10_to_50ms']
      end

      if attributes.key?(:'waf_latency_50_to_100ms')
        self.waf_latency_50_to_100ms = attributes[:'waf_latency_50_to_100ms']
      end

      if attributes.key?(:'waf_latency_100_to_250ms')
        self.waf_latency_100_to_250ms = attributes[:'waf_latency_100_to_250ms']
      end

      if attributes.key?(:'waf_latency_250_to_500ms')
        self.waf_latency_250_to_500ms = attributes[:'waf_latency_250_to_500ms']
      end

      if attributes.key?(:'waf_latency_500_to_1000ms')
        self.waf_latency_500_to_1000ms = attributes[:'waf_latency_500_to_1000ms']
      end

      if attributes.key?(:'waf_latency_1000_to_5000ms')
        self.waf_latency_1000_to_5000ms = attributes[:'waf_latency_1000_to_5000ms']
      end

      if attributes.key?(:'waf_latency_5000_to_10000ms')
        self.waf_latency_5000_to_10000ms = attributes[:'waf_latency_5000_to_10000ms']
      end

      if attributes.key?(:'waf_latency_10000_to_60000ms')
        self.waf_latency_10000_to_60000ms = attributes[:'waf_latency_10000_to_60000ms']
      end

      if attributes.key?(:'waf_latency_60000ms')
        self.waf_latency_60000ms = attributes[:'waf_latency_60000ms']
      end

      if attributes.key?(:'compute_responses')
        self.compute_responses = attributes[:'compute_responses']
      end

      if attributes.key?(:'compute_resp_header_bytes')
        self.compute_resp_header_bytes = attributes[:'compute_resp_header_bytes']
      end

      if attributes.key?(:'compute_resp_body_bytes')
        self.compute_resp_body_bytes = attributes[:'compute_resp_body_bytes']
      end

      if attributes.key?(:'compute_status_1xx')
        self.compute_status_1xx = attributes[:'compute_status_1xx']
      end

      if attributes.key?(:'compute_status_2xx')
        self.compute_status_2xx = attributes[:'compute_status_2xx']
      end

      if attributes.key?(:'compute_status_3xx')
        self.compute_status_3xx = attributes[:'compute_status_3xx']
      end

      if attributes.key?(:'compute_status_4xx')
        self.compute_status_4xx = attributes[:'compute_status_4xx']
      end

      if attributes.key?(:'compute_status_5xx')
        self.compute_status_5xx = attributes[:'compute_status_5xx']
      end

      if attributes.key?(:'compute_status_200')
        self.compute_status_200 = attributes[:'compute_status_200']
      end

      if attributes.key?(:'compute_status_204')
        self.compute_status_204 = attributes[:'compute_status_204']
      end

      if attributes.key?(:'compute_status_206')
        self.compute_status_206 = attributes[:'compute_status_206']
      end

      if attributes.key?(:'compute_status_301')
        self.compute_status_301 = attributes[:'compute_status_301']
      end

      if attributes.key?(:'compute_status_302')
        self.compute_status_302 = attributes[:'compute_status_302']
      end

      if attributes.key?(:'compute_status_304')
        self.compute_status_304 = attributes[:'compute_status_304']
      end

      if attributes.key?(:'compute_status_400')
        self.compute_status_400 = attributes[:'compute_status_400']
      end

      if attributes.key?(:'compute_status_401')
        self.compute_status_401 = attributes[:'compute_status_401']
      end

      if attributes.key?(:'compute_status_403')
        self.compute_status_403 = attributes[:'compute_status_403']
      end

      if attributes.key?(:'compute_status_404')
        self.compute_status_404 = attributes[:'compute_status_404']
      end

      if attributes.key?(:'compute_status_416')
        self.compute_status_416 = attributes[:'compute_status_416']
      end

      if attributes.key?(:'compute_status_429')
        self.compute_status_429 = attributes[:'compute_status_429']
      end

      if attributes.key?(:'compute_status_500')
        self.compute_status_500 = attributes[:'compute_status_500']
      end

      if attributes.key?(:'compute_status_501')
        self.compute_status_501 = attributes[:'compute_status_501']
      end

      if attributes.key?(:'compute_status_502')
        self.compute_status_502 = attributes[:'compute_status_502']
      end

      if attributes.key?(:'compute_status_503')
        self.compute_status_503 = attributes[:'compute_status_503']
      end

      if attributes.key?(:'compute_status_504')
        self.compute_status_504 = attributes[:'compute_status_504']
      end

      if attributes.key?(:'compute_status_505')
        self.compute_status_505 = attributes[:'compute_status_505']
      end

      if attributes.key?(:'compute_latency_0_to_1ms')
        self.compute_latency_0_to_1ms = attributes[:'compute_latency_0_to_1ms']
      end

      if attributes.key?(:'compute_latency_1_to_5ms')
        self.compute_latency_1_to_5ms = attributes[:'compute_latency_1_to_5ms']
      end

      if attributes.key?(:'compute_latency_5_to_10ms')
        self.compute_latency_5_to_10ms = attributes[:'compute_latency_5_to_10ms']
      end

      if attributes.key?(:'compute_latency_10_to_50ms')
        self.compute_latency_10_to_50ms = attributes[:'compute_latency_10_to_50ms']
      end

      if attributes.key?(:'compute_latency_50_to_100ms')
        self.compute_latency_50_to_100ms = attributes[:'compute_latency_50_to_100ms']
      end

      if attributes.key?(:'compute_latency_100_to_250ms')
        self.compute_latency_100_to_250ms = attributes[:'compute_latency_100_to_250ms']
      end

      if attributes.key?(:'compute_latency_250_to_500ms')
        self.compute_latency_250_to_500ms = attributes[:'compute_latency_250_to_500ms']
      end

      if attributes.key?(:'compute_latency_500_to_1000ms')
        self.compute_latency_500_to_1000ms = attributes[:'compute_latency_500_to_1000ms']
      end

      if attributes.key?(:'compute_latency_1000_to_5000ms')
        self.compute_latency_1000_to_5000ms = attributes[:'compute_latency_1000_to_5000ms']
      end

      if attributes.key?(:'compute_latency_5000_to_10000ms')
        self.compute_latency_5000_to_10000ms = attributes[:'compute_latency_5000_to_10000ms']
      end

      if attributes.key?(:'compute_latency_10000_to_60000ms')
        self.compute_latency_10000_to_60000ms = attributes[:'compute_latency_10000_to_60000ms']
      end

      if attributes.key?(:'compute_latency_60000ms')
        self.compute_latency_60000ms = attributes[:'compute_latency_60000ms']
      end

      if attributes.key?(:'all_responses')
        self.all_responses = attributes[:'all_responses']
      end

      if attributes.key?(:'all_resp_header_bytes')
        self.all_resp_header_bytes = attributes[:'all_resp_header_bytes']
      end

      if attributes.key?(:'all_resp_body_bytes')
        self.all_resp_body_bytes = attributes[:'all_resp_body_bytes']
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

      if attributes.key?(:'all_status_200')
        self.all_status_200 = attributes[:'all_status_200']
      end

      if attributes.key?(:'all_status_204')
        self.all_status_204 = attributes[:'all_status_204']
      end

      if attributes.key?(:'all_status_206')
        self.all_status_206 = attributes[:'all_status_206']
      end

      if attributes.key?(:'all_status_301')
        self.all_status_301 = attributes[:'all_status_301']
      end

      if attributes.key?(:'all_status_302')
        self.all_status_302 = attributes[:'all_status_302']
      end

      if attributes.key?(:'all_status_304')
        self.all_status_304 = attributes[:'all_status_304']
      end

      if attributes.key?(:'all_status_400')
        self.all_status_400 = attributes[:'all_status_400']
      end

      if attributes.key?(:'all_status_401')
        self.all_status_401 = attributes[:'all_status_401']
      end

      if attributes.key?(:'all_status_403')
        self.all_status_403 = attributes[:'all_status_403']
      end

      if attributes.key?(:'all_status_404')
        self.all_status_404 = attributes[:'all_status_404']
      end

      if attributes.key?(:'all_status_416')
        self.all_status_416 = attributes[:'all_status_416']
      end

      if attributes.key?(:'all_status_429')
        self.all_status_429 = attributes[:'all_status_429']
      end

      if attributes.key?(:'all_status_500')
        self.all_status_500 = attributes[:'all_status_500']
      end

      if attributes.key?(:'all_status_501')
        self.all_status_501 = attributes[:'all_status_501']
      end

      if attributes.key?(:'all_status_502')
        self.all_status_502 = attributes[:'all_status_502']
      end

      if attributes.key?(:'all_status_503')
        self.all_status_503 = attributes[:'all_status_503']
      end

      if attributes.key?(:'all_status_504')
        self.all_status_504 = attributes[:'all_status_504']
      end

      if attributes.key?(:'all_status_505')
        self.all_status_505 = attributes[:'all_status_505']
      end

      if attributes.key?(:'all_latency_0_to_1ms')
        self.all_latency_0_to_1ms = attributes[:'all_latency_0_to_1ms']
      end

      if attributes.key?(:'all_latency_1_to_5ms')
        self.all_latency_1_to_5ms = attributes[:'all_latency_1_to_5ms']
      end

      if attributes.key?(:'all_latency_5_to_10ms')
        self.all_latency_5_to_10ms = attributes[:'all_latency_5_to_10ms']
      end

      if attributes.key?(:'all_latency_10_to_50ms')
        self.all_latency_10_to_50ms = attributes[:'all_latency_10_to_50ms']
      end

      if attributes.key?(:'all_latency_50_to_100ms')
        self.all_latency_50_to_100ms = attributes[:'all_latency_50_to_100ms']
      end

      if attributes.key?(:'all_latency_100_to_250ms')
        self.all_latency_100_to_250ms = attributes[:'all_latency_100_to_250ms']
      end

      if attributes.key?(:'all_latency_250_to_500ms')
        self.all_latency_250_to_500ms = attributes[:'all_latency_250_to_500ms']
      end

      if attributes.key?(:'all_latency_500_to_1000ms')
        self.all_latency_500_to_1000ms = attributes[:'all_latency_500_to_1000ms']
      end

      if attributes.key?(:'all_latency_1000_to_5000ms')
        self.all_latency_1000_to_5000ms = attributes[:'all_latency_1000_to_5000ms']
      end

      if attributes.key?(:'all_latency_5000_to_10000ms')
        self.all_latency_5000_to_10000ms = attributes[:'all_latency_5000_to_10000ms']
      end

      if attributes.key?(:'all_latency_10000_to_60000ms')
        self.all_latency_10000_to_60000ms = attributes[:'all_latency_10000_to_60000ms']
      end

      if attributes.key?(:'all_latency_60000ms')
        self.all_latency_60000ms = attributes[:'all_latency_60000ms']
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
          responses == o.responses &&
          resp_header_bytes == o.resp_header_bytes &&
          resp_body_bytes == o.resp_body_bytes &&
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
          status_416 == o.status_416 &&
          status_429 == o.status_429 &&
          status_500 == o.status_500 &&
          status_501 == o.status_501 &&
          status_502 == o.status_502 &&
          status_503 == o.status_503 &&
          status_504 == o.status_504 &&
          status_505 == o.status_505 &&
          latency_0_to_1ms == o.latency_0_to_1ms &&
          latency_1_to_5ms == o.latency_1_to_5ms &&
          latency_5_to_10ms == o.latency_5_to_10ms &&
          latency_10_to_50ms == o.latency_10_to_50ms &&
          latency_50_to_100ms == o.latency_50_to_100ms &&
          latency_100_to_250ms == o.latency_100_to_250ms &&
          latency_250_to_500ms == o.latency_250_to_500ms &&
          latency_500_to_1000ms == o.latency_500_to_1000ms &&
          latency_1000_to_5000ms == o.latency_1000_to_5000ms &&
          latency_5000_to_10000ms == o.latency_5000_to_10000ms &&
          latency_10000_to_60000ms == o.latency_10000_to_60000ms &&
          latency_60000ms == o.latency_60000ms &&
          waf_responses == o.waf_responses &&
          waf_resp_header_bytes == o.waf_resp_header_bytes &&
          waf_resp_body_bytes == o.waf_resp_body_bytes &&
          waf_status_1xx == o.waf_status_1xx &&
          waf_status_2xx == o.waf_status_2xx &&
          waf_status_3xx == o.waf_status_3xx &&
          waf_status_4xx == o.waf_status_4xx &&
          waf_status_5xx == o.waf_status_5xx &&
          waf_status_200 == o.waf_status_200 &&
          waf_status_204 == o.waf_status_204 &&
          waf_status_206 == o.waf_status_206 &&
          waf_status_301 == o.waf_status_301 &&
          waf_status_302 == o.waf_status_302 &&
          waf_status_304 == o.waf_status_304 &&
          waf_status_400 == o.waf_status_400 &&
          waf_status_401 == o.waf_status_401 &&
          waf_status_403 == o.waf_status_403 &&
          waf_status_404 == o.waf_status_404 &&
          waf_status_416 == o.waf_status_416 &&
          waf_status_429 == o.waf_status_429 &&
          waf_status_500 == o.waf_status_500 &&
          waf_status_501 == o.waf_status_501 &&
          waf_status_502 == o.waf_status_502 &&
          waf_status_503 == o.waf_status_503 &&
          waf_status_504 == o.waf_status_504 &&
          waf_status_505 == o.waf_status_505 &&
          waf_latency_0_to_1ms == o.waf_latency_0_to_1ms &&
          waf_latency_1_to_5ms == o.waf_latency_1_to_5ms &&
          waf_latency_5_to_10ms == o.waf_latency_5_to_10ms &&
          waf_latency_10_to_50ms == o.waf_latency_10_to_50ms &&
          waf_latency_50_to_100ms == o.waf_latency_50_to_100ms &&
          waf_latency_100_to_250ms == o.waf_latency_100_to_250ms &&
          waf_latency_250_to_500ms == o.waf_latency_250_to_500ms &&
          waf_latency_500_to_1000ms == o.waf_latency_500_to_1000ms &&
          waf_latency_1000_to_5000ms == o.waf_latency_1000_to_5000ms &&
          waf_latency_5000_to_10000ms == o.waf_latency_5000_to_10000ms &&
          waf_latency_10000_to_60000ms == o.waf_latency_10000_to_60000ms &&
          waf_latency_60000ms == o.waf_latency_60000ms &&
          compute_responses == o.compute_responses &&
          compute_resp_header_bytes == o.compute_resp_header_bytes &&
          compute_resp_body_bytes == o.compute_resp_body_bytes &&
          compute_status_1xx == o.compute_status_1xx &&
          compute_status_2xx == o.compute_status_2xx &&
          compute_status_3xx == o.compute_status_3xx &&
          compute_status_4xx == o.compute_status_4xx &&
          compute_status_5xx == o.compute_status_5xx &&
          compute_status_200 == o.compute_status_200 &&
          compute_status_204 == o.compute_status_204 &&
          compute_status_206 == o.compute_status_206 &&
          compute_status_301 == o.compute_status_301 &&
          compute_status_302 == o.compute_status_302 &&
          compute_status_304 == o.compute_status_304 &&
          compute_status_400 == o.compute_status_400 &&
          compute_status_401 == o.compute_status_401 &&
          compute_status_403 == o.compute_status_403 &&
          compute_status_404 == o.compute_status_404 &&
          compute_status_416 == o.compute_status_416 &&
          compute_status_429 == o.compute_status_429 &&
          compute_status_500 == o.compute_status_500 &&
          compute_status_501 == o.compute_status_501 &&
          compute_status_502 == o.compute_status_502 &&
          compute_status_503 == o.compute_status_503 &&
          compute_status_504 == o.compute_status_504 &&
          compute_status_505 == o.compute_status_505 &&
          compute_latency_0_to_1ms == o.compute_latency_0_to_1ms &&
          compute_latency_1_to_5ms == o.compute_latency_1_to_5ms &&
          compute_latency_5_to_10ms == o.compute_latency_5_to_10ms &&
          compute_latency_10_to_50ms == o.compute_latency_10_to_50ms &&
          compute_latency_50_to_100ms == o.compute_latency_50_to_100ms &&
          compute_latency_100_to_250ms == o.compute_latency_100_to_250ms &&
          compute_latency_250_to_500ms == o.compute_latency_250_to_500ms &&
          compute_latency_500_to_1000ms == o.compute_latency_500_to_1000ms &&
          compute_latency_1000_to_5000ms == o.compute_latency_1000_to_5000ms &&
          compute_latency_5000_to_10000ms == o.compute_latency_5000_to_10000ms &&
          compute_latency_10000_to_60000ms == o.compute_latency_10000_to_60000ms &&
          compute_latency_60000ms == o.compute_latency_60000ms &&
          all_responses == o.all_responses &&
          all_resp_header_bytes == o.all_resp_header_bytes &&
          all_resp_body_bytes == o.all_resp_body_bytes &&
          all_status_1xx == o.all_status_1xx &&
          all_status_2xx == o.all_status_2xx &&
          all_status_3xx == o.all_status_3xx &&
          all_status_4xx == o.all_status_4xx &&
          all_status_5xx == o.all_status_5xx &&
          all_status_200 == o.all_status_200 &&
          all_status_204 == o.all_status_204 &&
          all_status_206 == o.all_status_206 &&
          all_status_301 == o.all_status_301 &&
          all_status_302 == o.all_status_302 &&
          all_status_304 == o.all_status_304 &&
          all_status_400 == o.all_status_400 &&
          all_status_401 == o.all_status_401 &&
          all_status_403 == o.all_status_403 &&
          all_status_404 == o.all_status_404 &&
          all_status_416 == o.all_status_416 &&
          all_status_429 == o.all_status_429 &&
          all_status_500 == o.all_status_500 &&
          all_status_501 == o.all_status_501 &&
          all_status_502 == o.all_status_502 &&
          all_status_503 == o.all_status_503 &&
          all_status_504 == o.all_status_504 &&
          all_status_505 == o.all_status_505 &&
          all_latency_0_to_1ms == o.all_latency_0_to_1ms &&
          all_latency_1_to_5ms == o.all_latency_1_to_5ms &&
          all_latency_5_to_10ms == o.all_latency_5_to_10ms &&
          all_latency_10_to_50ms == o.all_latency_10_to_50ms &&
          all_latency_50_to_100ms == o.all_latency_50_to_100ms &&
          all_latency_100_to_250ms == o.all_latency_100_to_250ms &&
          all_latency_250_to_500ms == o.all_latency_250_to_500ms &&
          all_latency_500_to_1000ms == o.all_latency_500_to_1000ms &&
          all_latency_1000_to_5000ms == o.all_latency_1000_to_5000ms &&
          all_latency_5000_to_10000ms == o.all_latency_5000_to_10000ms &&
          all_latency_10000_to_60000ms == o.all_latency_10000_to_60000ms &&
          all_latency_60000ms == o.all_latency_60000ms
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [responses, resp_header_bytes, resp_body_bytes, status_1xx, status_2xx, status_3xx, status_4xx, status_5xx, status_200, status_204, status_206, status_301, status_302, status_304, status_400, status_401, status_403, status_404, status_416, status_429, status_500, status_501, status_502, status_503, status_504, status_505, latency_0_to_1ms, latency_1_to_5ms, latency_5_to_10ms, latency_10_to_50ms, latency_50_to_100ms, latency_100_to_250ms, latency_250_to_500ms, latency_500_to_1000ms, latency_1000_to_5000ms, latency_5000_to_10000ms, latency_10000_to_60000ms, latency_60000ms, waf_responses, waf_resp_header_bytes, waf_resp_body_bytes, waf_status_1xx, waf_status_2xx, waf_status_3xx, waf_status_4xx, waf_status_5xx, waf_status_200, waf_status_204, waf_status_206, waf_status_301, waf_status_302, waf_status_304, waf_status_400, waf_status_401, waf_status_403, waf_status_404, waf_status_416, waf_status_429, waf_status_500, waf_status_501, waf_status_502, waf_status_503, waf_status_504, waf_status_505, waf_latency_0_to_1ms, waf_latency_1_to_5ms, waf_latency_5_to_10ms, waf_latency_10_to_50ms, waf_latency_50_to_100ms, waf_latency_100_to_250ms, waf_latency_250_to_500ms, waf_latency_500_to_1000ms, waf_latency_1000_to_5000ms, waf_latency_5000_to_10000ms, waf_latency_10000_to_60000ms, waf_latency_60000ms, compute_responses, compute_resp_header_bytes, compute_resp_body_bytes, compute_status_1xx, compute_status_2xx, compute_status_3xx, compute_status_4xx, compute_status_5xx, compute_status_200, compute_status_204, compute_status_206, compute_status_301, compute_status_302, compute_status_304, compute_status_400, compute_status_401, compute_status_403, compute_status_404, compute_status_416, compute_status_429, compute_status_500, compute_status_501, compute_status_502, compute_status_503, compute_status_504, compute_status_505, compute_latency_0_to_1ms, compute_latency_1_to_5ms, compute_latency_5_to_10ms, compute_latency_10_to_50ms, compute_latency_50_to_100ms, compute_latency_100_to_250ms, compute_latency_250_to_500ms, compute_latency_500_to_1000ms, compute_latency_1000_to_5000ms, compute_latency_5000_to_10000ms, compute_latency_10000_to_60000ms, compute_latency_60000ms, all_responses, all_resp_header_bytes, all_resp_body_bytes, all_status_1xx, all_status_2xx, all_status_3xx, all_status_4xx, all_status_5xx, all_status_200, all_status_204, all_status_206, all_status_301, all_status_302, all_status_304, all_status_400, all_status_401, all_status_403, all_status_404, all_status_416, all_status_429, all_status_500, all_status_501, all_status_502, all_status_503, all_status_504, all_status_505, all_latency_0_to_1ms, all_latency_1_to_5ms, all_latency_5_to_10ms, all_latency_10_to_50ms, all_latency_50_to_100ms, all_latency_100_to_250ms, all_latency_250_to_500ms, all_latency_500_to_1000ms, all_latency_1000_to_5000ms, all_latency_5000_to_10000ms, all_latency_10000_to_60000ms, all_latency_60000ms].hash
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
