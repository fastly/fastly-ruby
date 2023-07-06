# Fastly::DomainInspector

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timestamp** | [**SubsequentRequestTimestamp**](SubsequentRequestTimestamp.md) |  | [optional] |
| **aggregate_delay** | **Integer** | Offset of entry timestamps from the current time due to processing time. | [optional] |
| **data** | [**Array&lt;DomainInspectorRealtimeEntry&gt;**](DomainInspectorRealtimeEntry.md) | A list of report [entries](#entry-data-model), each representing one second of time. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

