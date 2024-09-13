# Fastly::ServiceResponseAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **publish_key** | **String** | Unused at this time. | [optional] |
| **paused** | **Boolean** | Whether the service is paused. Services are paused due to a lack of traffic for an extended period of time. Services are resumed either when a draft version is activated or a locked version is cloned and reactivated. | [optional] |
| **versions** | [**Array&lt;SchemasVersionResponse&gt;**](SchemasVersionResponse.md) | A list of [versions](https://www.fastly.com/documentation/reference/api/services/version/) associated with the service. | [optional] |
| **environments** | [**Array&lt;Environment&gt;**](Environment.md) | A list of environments where the service has been deployed. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

