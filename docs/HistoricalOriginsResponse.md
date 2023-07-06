# Fastly::HistoricalOriginsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Whether or not we were able to successfully execute the query. | [optional] |
| **meta** | [**OriginInspectorHistoricalMeta**](OriginInspectorHistoricalMeta.md) |  | [optional] |
| **msg** | **String** | If the query was not successful, this will provide a string that explains why. | [optional] |
| **data** | [**Array&lt;OriginInspectorEntry&gt;**](OriginInspectorEntry.md) | A list of timeseries. Each individual timeseries represents a unique combination of dimensions, such as origin host, region or POP. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

