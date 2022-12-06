# Fastly::AutomationTokenResponseAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **customer_id** | **String** |  | [optional][readonly] |
| **role** | **String** |  | [optional] |
| **ip** | **String** | The IP address of the client that last used the token. | [optional] |
| **user_agent** | **String** | The User-Agent header of the client that last used the token. | [optional] |
| **sudo_expires_at** | **String** |  | [optional][readonly] |
| **last_used_at** | **Time** | A UTC time-stamp of when the token was last used. | [optional][readonly] |
| **created_at** | **String** | A UTC time-stamp of when the token was created. | [optional] |
| **expires_at** | **String** | (optional) A UTC time-stamp of when the token will expire. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

