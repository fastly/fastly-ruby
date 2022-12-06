# Fastly::AutomationTokenCreateRequestAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | name of the token | [optional] |
| **role** | **String** |  | [optional] |
| **services** | **Array&lt;String&gt;** | List of service ids to limit the token | [optional] |
| **scope** | **String** |  | [optional][default to &#39;global&#39;] |
| **expires_at** | **Time** | A UTC time-stamp of when the token will expire. | [optional] |
| **tls_access** | **Boolean** | Indicates whether TLS access is enabled for the token. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

