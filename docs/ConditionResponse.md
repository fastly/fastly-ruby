# Fastly::ConditionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **name** | **String** | Name of the condition. Required. | [optional] |
| **priority** | **String** | A numeric string. Priority determines execution order. Lower numbers execute first. | [optional][default to &#39;100&#39;] |
| **statement** | **String** | A conditional expression in VCL used to determine if the condition is met. | [optional] |
| **service_id** | **String** |  | [optional][readonly] |
| **version** | **String** | A numeric string that represents the service version. | [optional] |
| **type** | **String** | Type of the condition. Required. | [optional] |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

