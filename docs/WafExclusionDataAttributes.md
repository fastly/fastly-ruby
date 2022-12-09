# Fastly::WafExclusionDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **condition** | **String** | A conditional expression in VCL used to determine if the condition is met. | [optional] |
| **exclusion_type** | **String** | The type of exclusion. | [optional] |
| **logging** | **Boolean** | Whether to generate a log upon matching. | [optional][default to true] |
| **name** | **String** | Name of the exclusion. | [optional] |
| **number** | **Integer** | A numeric ID identifying a WAF exclusion. | [optional] |
| **variable** | **String** | The variable to exclude. An optional selector can be specified after the variable separated by a colon (`:`) to restrict the variable to a particular parameter. Required for `exclusion_type&#x3D;variable`. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

