# Fastly::CreateResponseObjectRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the response object to create. | [optional] |
| **status** | **String** | The status code the response will have. Defaults to 200. | [optional] |
| **response** | **String** | The status text the response will have. Defaults to &#39;OK&#39;. | [optional] |
| **content** | **String** | The content the response will deliver. | [optional] |
| **content_type** | **String** | The MIME type of your response content. | [optional] |
| **request_condition** | **String** | Condition which, if met, will select this configuration during a request. Optional. | [optional] |
| **cache_condition** | **String** | Name of the cache condition controlling when this configuration applies. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

