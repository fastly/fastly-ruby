# Fastly::RequestSettingsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **service_id** | **String** |  | [optional][readonly] |
| **version** | **String** |  | [optional][readonly] |
| **action** | **String** | Allows you to terminate request handling and immediately perform an action. | [optional] |
| **default_host** | **String** | Sets the host header. | [optional] |
| **hash_keys** | **String** | Comma separated list of varnish request object fields that should be in the hash key. | [optional] |
| **name** | **String** | Name for the request settings. | [optional] |
| **request_condition** | **String** | Condition which, if met, will select this configuration during a request. Optional. | [optional] |
| **xff** | **String** | Short for X-Forwarded-For. | [optional] |
| **bypass_busy_wait** | **String** | Disable collapsed forwarding, so you don&#39;t wait for other objects to origin. | [optional] |
| **force_miss** | **String** | Allows you to force a cache miss for the request. Replaces the item in the cache if the content is cacheable. | [optional] |
| **force_ssl** | **String** | Forces the request use SSL (redirects a non-SSL to SSL). | [optional] |
| **geo_headers** | **String** | Injects Fastly-Geo-Country, Fastly-Geo-City, and Fastly-Geo-Region into the request headers. | [optional] |
| **max_stale_age** | **String** | How old an object is allowed to be to serve stale-if-error or stale-while-revalidate. | [optional] |
| **timer_support** | **String** | Injects the X-Timer info into the request for viewing origin fetch durations. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

