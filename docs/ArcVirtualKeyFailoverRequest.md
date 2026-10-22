# Fastly::ArcVirtualKeyFailoverRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **targets** | [**Array&lt;ArcFailoverTarget&gt;**](ArcFailoverTarget.md) | The provider connections to retry against, in order. |  |
| **timeout_enabled** | **Boolean** | Whether a request timeout triggers failover. | [optional] |
| **rate_limit_429_enabled** | **Boolean** | Whether a `429 Too Many Requests` response from the provider triggers failover. | [optional] |
| **server_error_5xx_enabled** | **Boolean** | Whether a `5xx` server error response from the provider triggers failover. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

