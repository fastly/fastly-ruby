# Fastly::ResponseObjectResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cache_condition** | **String** | Name of the cache condition controlling when this configuration applies. | [optional] |
| **content** | **String** | The content to deliver for the response object, can be empty. | [optional] |
| **content_type** | **String** | The MIME type of the content, can be empty. | [optional] |
| **name** | **String** | Name for the request settings. | [optional] |
| **status** | **String** | The HTTP status code. | [optional][default to &#39;200&#39;] |
| **response** | **String** | The HTTP response. | [optional][default to &#39;Ok&#39;] |
| **request_condition** | **String** | Condition which, if met, will select this configuration during a request. Optional. | [optional] |
| **service_id** | **String** |  | [optional][readonly] |
| **version** | **String** |  | [optional][readonly] |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

