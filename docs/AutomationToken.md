# Fastly::AutomationToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the token. | [optional] |
| **role** | **String** | The role on the token. | [optional] |
| **services** | **Array&lt;String&gt;** | (Optional) The service IDs of the services the token will have access to. Separate service IDs with a space. If no services are specified, the token will have access to all services on the account.  | [optional] |
| **scope** | **String** | A space-delimited list of authorization scope. | [optional][default to &#39;global&#39;] |
| **expires_at** | **String** | A UTC time-stamp of when the token expires. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

