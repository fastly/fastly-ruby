# Fastly::AutomationTokenCreateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the token. | [optional] |
| **role** | **String** | The role on the token. | [optional] |
| **services** | **Array&lt;String&gt;** | (Optional) The service IDs of the services the token will have access to. Separate service IDs with a space. If no services are specified, the token will have access to all services on the account.  | [optional] |
| **scope** | **String** | A space-delimited list of authorization scope. | [optional][default to &#39;global&#39;] |
| **expires_at** | **String** | A UTC time-stamp of when the token expires. | [optional] |
| **created_at** | **Time** | A UTC time-stamp of when the token was created.  | [optional][readonly] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **id** | **String** |  | [optional][readonly] |
| **user_id** | **String** |  | [optional][readonly] |
| **customer_id** | **String** |  | [optional][readonly] |
| **sudo_expires_at** | **Time** |  | [optional][readonly] |
| **access_token** | **String** |  | [optional][readonly] |
| **last_used_at** | **Time** | A UTC time-stamp of when the token was last used. | [optional][readonly] |
| **user_agent** | **String** | The User-Agent header of the client that last used the token. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

