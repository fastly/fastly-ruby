# Fastly::HistoricalDomains

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Whether or not we were able to successfully execute the query. | [optional] |
| **meta** | [**HistoricalDomainsMeta**](HistoricalDomainsMeta.md) |  | [optional] |
| **msg** | **String** | If the query was not successful, this will provide a string that explains why. | [optional] |
| **data** | [**Array&lt;HistoricalDomainsData&gt;**](HistoricalDomainsData.md) | A list of [entries](#entry-data-model), each representing one unique combination of dimensions, such as domain, region, or POP. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

