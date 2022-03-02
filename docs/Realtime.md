# Fastly::Realtime

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timestamp** | **Integer** | Value to use for subsequent requests. | [optional] |
| **aggregate_delay** | **Integer** | How long the system will wait before aggregating messages for each second. The most recent data returned will have happened at the moment of the request, minus the aggregation delay. | [optional] |
| **data** | [**Array&lt;RealtimeEntry&gt;**](RealtimeEntry.md) | A list of [records](#record-data-model), each representing one second of time. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

