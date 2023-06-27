# Fastly::AutomationTokenCreateResponseAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**ReadOnlyId**](ReadOnlyId.md) |  | [optional] |
| **user_id** | [**ReadOnlyUserId**](ReadOnlyUserId.md) |  | [optional] |
| **customer_id** | [**ReadOnlyCustomerId**](ReadOnlyCustomerId.md) |  | [optional] |
| **sudo_expires_at** | **Time** |  | [optional][readonly] |
| **created_at** | **Time** | A UTC time-stamp of when the token was created.  | [optional][readonly] |
| **access_token** | **String** |  | [optional][readonly] |
| **last_used_at** | **Time** | A UTC time-stamp of when the token was last used. | [optional][readonly] |
| **user_agent** | **String** | The User-Agent header of the client that last used the token. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

