# Fastly::OriginInspectorHistoricalMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **String** | Start time that was used to perform the query as an ISO-8601-formatted date and time. | [optional] |
| **_end** | **String** | End time that was used to perform the query as an ISO-8601-formatted date and time. | [optional] |
| **downsample** | **String** | Downsample that was used to perform the query. One of `minute`, `hour` or `day`. | [optional] |
| **metrics** | **String** | A comma-separated list of the metrics that were requested. | [optional] |
| **limit** | **Float** | The maximum number of results shown per page. | [optional] |
| **next_cursor** | **String** | A string that can be used to request the next page of results, if any. | [optional] |
| **sort** | **String** | A comma-separated list of keys the results are sorted by. | [optional] |
| **group_by** | **String** | A comma-separated list of dimensions being summed over in the query. | [optional] |
| **filters** | [**OriginInspectorHistoricalMetaFilters**](OriginInspectorHistoricalMetaFilters.md) |  | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

