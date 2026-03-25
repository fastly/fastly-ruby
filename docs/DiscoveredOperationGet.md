# Fastly::DiscoveredOperationGet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **method** | **String** | The HTTP method for the operation. |  |
| **domain** | **String** | The domain for the operation. |  |
| **path** | **String** | The path for the operation, which may include path parameters. |  |
| **id** | **String** | The unique identifier of the discovered operation. | [readonly] |
| **updated_at** | **Time** | The timestamp when the operation was last updated. | [optional][readonly] |
| **last_seen_at** | **Time** | The timestamp when the operation was last seen in traffic. | [optional][readonly] |
| **rps** | **Float** | Requests per second observed for this operation. | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

