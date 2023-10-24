# Fastly::HistoricalDdos

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Whether or not we were able to successfully execute the query. | [optional] |
| **meta** | [**HistoricalDdosMeta**](HistoricalDdosMeta.md) |  | [optional] |
| **msg** | **String** | If the query was not successful, this will provide a string that explains why. | [optional] |
| **data** | [**Array&lt;PlatformDdosDataItems&gt;**](PlatformDdosDataItems.md) | A list of [entries](#entry-data-model). | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

