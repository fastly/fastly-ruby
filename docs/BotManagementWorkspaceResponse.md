# Fastly::BotManagementWorkspaceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The display name of the workspace. |  |
| **protection_mode** | [**BotManagementProtectionMode**](BotManagementProtectionMode.md) |  |  |
| **id** | **String** | A UUID used to uniquely identify the workspace. | [readonly] |
| **created_at** | **Time** | The date and time the workspace was created, in RFC 3339 format. | [readonly] |
| **updated_at** | **Time** | The date and time the workspace was last updated, in RFC 3339 format. | [readonly] |
| **description** | **String** | A description of the workspace. | [optional] |
| **services** | **Array&lt;String&gt;** | The IDs of the services attached to this workspace. | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

