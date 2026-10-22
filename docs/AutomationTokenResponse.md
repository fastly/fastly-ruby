# Fastly::AutomationTokenResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the token. | [optional] |
| **role** | **String** |  | [optional] |
| **roles** | [**Array&lt;AutomationTokenRole&gt;**](AutomationTokenRole.md) | All roles assigned to the token. Each role includes an `id` and `name`. | [optional] |
| **services** | **Array&lt;String&gt;** | The service IDs of the services the token has access to. Empty when `limit_services` is `false` (full access) or when the token has no service access. | [optional] |
| **limit_services** | **Boolean** | When `true`, the token is restricted to only the services in the `services` array. When `false`, the token has access to all services. | [optional] |
| **limit_workspaces** | **Boolean** | When `true`, the token is restricted to only the workspaces in the `workspaces` array. When `false`, the token has access to all workspaces. Only applies to roles that support workspace access. | [optional] |
| **workspaces** | **Array&lt;String&gt;** | The workspace IDs of the workspaces the token has access to. Returns an empty array for tokens without workspace access. | [optional] |
| **scope** | **String** | A space-delimited list of authorization scope. | [optional][default to &#39;global&#39;] |
| **expires_at** | **String** | (optional) A UTC timestamp of when the token will expire. | [optional] |
| **id** | [**ReadOnlyId**](ReadOnlyId.md) |  | [optional] |
| **customer_id** | [**ReadOnlyCustomerId**](ReadOnlyCustomerId.md) |  | [optional] |
| **ip** | **String** | The IP address of the client that last used the token. | [optional] |
| **user_agent** | **String** | The User-Agent header of the client that last used the token. | [optional] |
| **tls_access** | **Boolean** | Indicates whether TLS access is enabled for the token. | [optional] |
| **last_used_at** | **Time** | A UTC timestamp of when the token was last used. | [optional][readonly] |
| **created_at** | **String** | A UTC timestamp of when the token was created. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

