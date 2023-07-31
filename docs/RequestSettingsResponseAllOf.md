# Fastly::RequestSettingsResponseAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bypass_busy_wait** | **String** | Disable collapsed forwarding, so you don&#39;t wait for other objects to origin. | [optional] |
| **force_miss** | **String** | Allows you to force a cache miss for the request. Replaces the item in the cache if the content is cacheable. | [optional] |
| **force_ssl** | **String** | Forces the request use SSL (redirects a non-SSL to SSL). | [optional] |
| **geo_headers** | **String** | Injects Fastly-Geo-Country, Fastly-Geo-City, and Fastly-Geo-Region into the request headers. | [optional] |
| **max_stale_age** | **String** | How old an object is allowed to be to serve stale-if-error or stale-while-revalidate. | [optional] |
| **timer_support** | **String** | Injects the X-Timer info into the request for viewing origin fetch durations. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

