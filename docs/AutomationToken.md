# Fastly::AutomationToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the token. | [optional] |
| **role** | **String** | The primary role on the token. For tokens with multiple roles, this returns the highest-priority role for backwards compatibility. | [optional] |
| **roles** | [**Array&lt;AutomationTokenRole&gt;**](AutomationTokenRole.md) | All roles assigned to the token. Each role includes an `id` and `name`. | [optional] |
| **services** | **Array&lt;String&gt;** | The service IDs of the services the token has access to. Empty when `limit_services` is `false` (full access) or when the token has no service access. | [optional] |
| **limit_services** | **Boolean** | When `true`, the token is restricted to only the services in the `services` array. When `false`, the token has access to all services. | [optional] |
| **limit_workspaces** | **Boolean** | When `true`, the token is restricted to only the workspaces in the `workspaces` array. When `false`, the token has access to all workspaces. Only applies to roles that support workspace access. | [optional] |
| **workspaces** | **Array&lt;String&gt;** | The workspace IDs of the workspaces the token has access to. Returns an empty array for tokens without workspace access. | [optional] |
| **scope** | **String** | A space-delimited list of authorization scope. | [optional][default to &#39;global&#39;] |
| **expires_at** | **String** | A UTC timestamp of when the token expires. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

