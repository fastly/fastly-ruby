# Fastly::PathResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **id** | **String** | Alphanumeric string identifying the path. Stable across versions of the routing config. | [optional][readonly] |
| **path** | **String** | The URL path pattern, beginning with `/`. Maximum 2048 characters. | [optional] |
| **links** | **Hash&lt;String, String&gt;** | HATEOAS links to related resources. | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

