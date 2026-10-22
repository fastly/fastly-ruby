# Fastly::ArcVirtualKeyResponseExtra

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the virtual key. | [readonly] |
| **type** | **String** | The type of the resource. | [readonly] |
| **user_id** | **String** | The ID of the user who created the key. | [readonly] |
| **created_at** | **Time** | The date and time the key was created, in RFC 3339 format. | [readonly] |
| **updated_at** | **Time** | The date and time the key was last updated, in RFC 3339 format. | [readonly] |
| **created_by** | **String** | The display name of the user who created the key. | [optional][readonly] |
| **last_used_at** | **Time** | The date and time the key was last used to make a request, in RFC 3339 format. `null` if the key has never been used. | [optional][readonly] |
| **deleted_at** | **Time** | The date and time the key was deleted, in RFC 3339 format. `null` unless the key was deleted and `include_deleted` was used to retrieve it. | [optional][readonly] |
| **spend_limit_enabled** | **Boolean** | Whether a spend limit is enabled for this key. | [optional][readonly] |
| **spend_limit_enabled_on** | **Time** | The date and time `spend_limit_enabled` was last set to `true`, in RFC 3339 format. `null` if the spend limit has never been enabled. This timestamp is not cleared when `spend_limit_enabled` is later set back to `false`, so it can be non-null even when the spend limit is currently disabled.  | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

