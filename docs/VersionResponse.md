# Fastly::VersionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | Whether this is the active version or not. | [optional][default to false] |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **deployed** | **Boolean** | Unused at this time. | [optional] |
| **locked** | **Boolean** | Whether this version is locked or not. Objects can not be added or edited on locked versions. | [optional][default to false] |
| **number** | **Integer** | The number of this version. | [optional][readonly] |
| **staging** | **Boolean** | Unused at this time. | [optional][default to false] |
| **testing** | **Boolean** | Unused at this time. | [optional][default to false] |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **service_id** | **String** |  | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

