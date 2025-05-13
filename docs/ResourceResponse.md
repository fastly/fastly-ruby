# Fastly::ResourceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_id** | **String** | The ID of the underlying linked resource. | [optional] |
| **name** | **String** | The name of the resource link. Note this is separate from the resource store name and might not match the store name. | [optional] |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **id** | **String** | An alphanumeric string identifying the resource link. | [optional] |
| **href** | **String** | The path to the resource. | [optional] |
| **service_id** | **String** | Alphanumeric string identifying the service. | [optional] |
| **version** | **Integer** | Integer identifying a service version. | [optional] |
| **resource_type** | [**TypeResource**](TypeResource.md) |  | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

