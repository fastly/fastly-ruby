# Fastly::AutomationTokenResponseAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**ReadOnlyId**](ReadOnlyId.md) |  | [optional] |
| **customer_id** | [**ReadOnlyCustomerId**](ReadOnlyCustomerId.md) |  | [optional] |
| **role** | **String** |  | [optional] |
| **ip** | **String** | The IP address of the client that last used the token. | [optional] |
| **user_agent** | **String** | The User-Agent header of the client that last used the token. | [optional] |
| **tls_access** | **Boolean** | Indicates whether TLS access is enabled for the token. | [optional] |
| **last_used_at** | **Time** | A UTC timestamp of when the token was last used. | [optional][readonly] |
| **created_at** | **String** | A UTC timestamp of when the token was created. | [optional] |
| **expires_at** | **String** | (optional) A UTC timestamp of when the token will expire. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

