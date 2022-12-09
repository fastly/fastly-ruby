# Fastly::TokenResponseAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **user_id** | **String** |  | [optional][readonly] |
| **created_at** | **String** | Time-stamp (UTC) of when the token was created. | [optional] |
| **last_used_at** | **String** | Time-stamp (UTC) of when the token was last used. | [optional][readonly] |
| **expires_at** | **String** | Time-stamp (UTC) of when the token will expire (optional). | [optional] |
| **ip** | **String** | IP Address of the client that last used the token. | [optional] |
| **user_agent** | **String** | User-Agent header of the client that last used the token. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

