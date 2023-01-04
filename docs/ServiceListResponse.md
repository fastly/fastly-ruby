# Fastly::ServiceListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **name** | **String** | The name of the service. | [optional] |
| **customer_id** | **String** | Alphanumeric string identifying the customer. | [optional] |
| **type** | **String** | The type of this service. | [optional] |
| **id** | **String** |  | [optional][readonly] |
| **version** | **Integer** | Current [version](/reference/api/services/version/) of the service. | [optional] |
| **versions** | [**Array&lt;SchemasVersionResponse&gt;**](SchemasVersionResponse.md) | A list of [versions](/reference/api/services/version/) associated with the service. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
