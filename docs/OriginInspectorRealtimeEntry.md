# Fastly::OriginInspectorRealtimeEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recorded** | **Integer** | The Unix timestamp at which this record&#39;s data was generated. | [optional] |
| **aggregated** | [**Hash&lt;String, OriginInspectorMeasurements&gt;**](OriginInspectorMeasurements.md) | Groups [measurements](#measurements-data-model) by backend name. | [optional] |
| **datacenter** | **Hash&lt;String, Hash&lt;String, OriginInspectorMeasurements&gt;&gt;** | Groups [measurements](#measurements-data-model) by POP, then backend name. See the [POPs API](https://www.fastly.com/documentation/reference/api/utils/pops/) for details about POP identifiers. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

