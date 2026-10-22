# Fastly::AutomationTokenCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the token. |  |
| **expires_at** | **Time** | A UTC timestamp of when the token will expire. |  |
| **role** | **String** | The role for the token. The `roles` field is the preferred way to assign roles. This field is supported for backwards compatibility with single-role tokens. | [optional] |
| **roles** | **Array&lt;String&gt;** | Array of role IDs to assign to the token. Use this field for tokens with multiple roles. When provided, this takes precedence over the `role` field. To get available role IDs, use [GET /roles](https://www.fastly.com/documentation/reference/api/account/roles/). | [optional] |
| **services** | **Array&lt;String&gt;** | List of service IDs the token can access. Only used when `limit_services` is `true`. | [optional] |
| **limit_services** | **Boolean** | When `true`, restricts the token to only the services specified in the `services` array. When `false` (default), the token has access to all services. | [optional][default to false] |
| **limit_workspaces** | **Boolean** | When `true` (default), restricts the token to only the workspaces specified in the `workspaces` array. When `false`, the token has access to all workspaces. Only applies to roles that support workspace access (such as Next-Gen WAF roles). For roles without workspace support, this field has no effect. | [optional][default to true] |
| **workspaces** | **Array&lt;String&gt;** | List of workspace IDs the token can access. Only used when `limit_workspaces` is `true` and the token has roles that support workspace access. | [optional] |
| **scope** | **String** |  | [optional][default to &#39;global&#39;] |
| **tls_access** | **Boolean** | Indicates whether TLS access is enabled for the token. Only applicable when using the single-role `role` field. For tokens with multiple roles, assign TLS roles (`tls_admin` or `tls_viewer`) via the `roles` field instead. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

