# Fastly::HistoricalUsageAggregatedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Whether or not we were able to successfully execute the query. | [optional] |
| **meta** | [**HistoricalMeta**](HistoricalMeta.md) |  | [optional] |
| **msg** | **String** | If the query was not successful, this will provide a string that explains why. | [optional] |
| **data** | [**Hash&lt;String, HistoricalUsageData&gt;**](HistoricalUsageData.md) | Organized by *region*. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

