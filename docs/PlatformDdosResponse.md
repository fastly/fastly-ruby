# Fastly::PlatformDdosResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Whether or not we were able to successfully execute the query. | [optional] |
| **meta** | [**HistoricalDdosMeta**](HistoricalDdosMeta.md) |  | [optional] |
| **msg** | **String** | If the query was not successful, this will provide a string that explains why. | [optional] |
| **data** | [**Array&lt;PlatformDdosEntry&gt;**](PlatformDdosEntry.md) | A list of timeseries. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

