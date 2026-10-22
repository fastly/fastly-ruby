# Fastly::BotRequestMetricsMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Time** | An RFC-8339-formatted date and time string indicating the inclusive start of the query time range. | [optional] |
| **to** | **Time** | An RFC-8339-formatted date and time indicating the exclusive end of the query time range. | [optional] |
| **group_by** | **String** | List of dimensions (comma-separated) being summed over in the results. | [optional] |
| **next_cursor** | **String** | Optional string that can be used to request the next page of results, if any. | [optional] |
| **limit** | **Integer** | The maximum number of results to return. Defaults to 1000. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

