# Fastly::ArcUsageMetric

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **String** | The date (or hour) the usage was measured. Formatted as `YYYY-MM-DD` when `granularity` is `daily`, or `YYYY-MM-DD HH:00:00` when `granularity` is `hourly`.  |  |
| **usage_type** | **String** | The type of usage being measured. |  |
| **quantity** | **Integer** | The quantity of the usage type for this date. |  |
| **virtual_key_id** | **String** | The ID of the virtual key this usage is attributed to. | [optional] |
| **virtual_key_name** | **String** | The display name of the virtual key this usage is attributed to. | [optional] |
| **primary_provider** | **String** | The ID of the provider connection originally requested, before any failover occurred. | [optional] |
| **provider** | **String** | The name of the provider connection that ultimately served the request. | [optional] |
| **provider_connection_id** | **String** | The ID of the provider connection that ultimately served the request. | [optional] |
| **model** | **String** | The AI model identifier used. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

