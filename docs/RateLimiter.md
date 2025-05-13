# Fastly::RateLimiter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human readable name for the rate limiting rule. | [optional] |
| **uri_dictionary_name** | **String** | The name of a Dictionary containing URIs as keys. If not defined or `null`, all origin URIs will be rate limited. | [optional] |
| **http_methods** | **Array&lt;String&gt;** | Array of HTTP methods to apply rate limiting to. | [optional] |
| **rps_limit** | **Integer** | Upper limit of requests per second allowed by the rate limiter. | [optional] |
| **window_size** | **Integer** | Number of seconds during which the RPS limit must be exceeded in order to trigger a violation. | [optional] |
| **client_key** | **Array&lt;String&gt;** | Array of VCL variables used to generate a counter key to identify a client. Example variables include `req.http.Fastly-Client-IP`, `req.http.User-Agent`, or a custom header like `req.http.API-Key`. | [optional] |
| **penalty_box_duration** | **Integer** | Length of time in minutes that the rate limiter is in effect after the initial violation is detected. | [optional] |
| **action** | **String** | The action to take when a rate limiter violation is detected. | [optional] |
| **response** | **Hash&lt;String, String&gt;** | Custom response to be sent when the rate limit is exceeded. Required if `action` is `response`. | [optional] |
| **response_object_name** | **String** | Name of existing response object. Required if `action` is `response_object`. Note that the rate limiter response is only updated to reflect the response object content when saving the rate limiter configuration. | [optional] |
| **logger_type** | **String** | Name of the type of logging endpoint to be used when action is `log_only`. The logging endpoint type is used to determine the appropriate log format to use when emitting log entries. | [optional] |
| **feature_revision** | **Integer** | Revision number of the rate limiting feature implementation. Defaults to the most recent revision. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

