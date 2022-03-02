# Fastly::SchemasSnippetResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name for the snippet. | [optional] |
| **dynamic** | **Integer** | Sets the snippet version. | [optional] |
| **type** | **String** | The location in generated VCL where the snippet should be placed. | [optional] |
| **content** | **String** | The VCL code that specifies exactly what the snippet does. | [optional] |
| **priority** | **Integer** | Priority determines execution order. Lower numbers execute first. | [optional][default to 100] |
| **service_id** | **String** |  | [optional][readonly] |
| **version** | **Integer** |  | [optional][readonly] |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **id** | **String** |  | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

