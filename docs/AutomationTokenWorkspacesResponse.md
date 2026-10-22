# Fastly::AutomationTokenWorkspacesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;AutomationTokenWorkspace&gt;**](AutomationTokenWorkspace.md) | Workspaces the token can access. Empty if the token has no workspace-specific permissions or if `limit_workspaces` is `false` (unrestricted access). |  |
| **meta** | [**AutomationTokenWorkspacesMeta**](AutomationTokenWorkspacesMeta.md) |  |  |
| **limit_workspaces** | **Boolean** | Indicates whether workspace access is restricted: - `true`: Token can only access workspaces listed in `data` - `false`: Token has unrestricted access to all workspaces  |  |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

