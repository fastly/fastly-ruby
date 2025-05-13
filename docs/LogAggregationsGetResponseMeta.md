# Fastly::LogAggregationsGetResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Specifies the ID of the service for which data should be returned. | [optional] |
| **start** | **String** | Start time for the query as supplied in the request. | [optional] |
| **_end** | **String** | End time for the query as supplied in the request. | [optional] |
| **limit** | **Integer** | Number of records per page. | [optional][default to 20] |
| **sort** | **String** | Comma-separated list of the series names whose values were used to sort the results. | [optional] |
| **filters** | [**LogAggregationsGetResponseMetaFilters**](LogAggregationsGetResponseMetaFilters.md) |  | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

