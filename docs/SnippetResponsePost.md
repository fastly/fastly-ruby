# Fastly::SnippetResponsePost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name for the snippet. | [optional] |
| **type** | **String** | The location in generated VCL where the snippet should be placed. | [optional] |
| **content** | **String** | The VCL code that specifies exactly what the snippet does. | [optional] |
| **priority** | **String** | Priority determines execution order. Lower numbers execute first. | [optional][default to &#39;100&#39;] |
| **dynamic** | **Float** | Sets the snippet version. | [optional] |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **service_id** | **String** |  | [optional][readonly] |
| **version** | **String** | String representing the number identifying a version of the service. | [optional][readonly] |
| **id** | **String** |  | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

