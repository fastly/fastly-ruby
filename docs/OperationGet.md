# Fastly::OperationGet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **method** | **String** | The HTTP method for the operation. |  |
| **domain** | **String** | The domain for the operation. |  |
| **path** | **String** | The path for the operation, which may include path parameters. |  |
| **id** | **String** | The unique identifier of the operation. | [readonly] |
| **updated_at** | **Time** | The timestamp when the operation was last updated. | [readonly] |
| **description** | **String** | A description of what the operation does. | [optional] |
| **tag_ids** | **Array&lt;String&gt;** | An array of operation tag IDs associated with this operation. | [optional] |
| **created_at** | **Time** | The timestamp when the operation was created. | [optional][readonly] |
| **last_seen_at** | **Time** | The timestamp when the operation was last seen in traffic. | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

