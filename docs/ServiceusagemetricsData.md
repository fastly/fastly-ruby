# Fastly::ServiceusagemetricsData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional][readonly] |
| **start_time** | **Time** | Date and time (in ISO 8601 format) for initiation point of a billing cycle, signifying the start of charges for a service or subscription. | [optional] |
| **end_time** | **Time** | Date and time (in ISO 8601 format) for termination point of a billing cycle, signifying the end of charges for a service or subscription. | [optional] |
| **usage_type** | **String** | The usage type identifier for the usage. This is a single, billable metric for the product. | [optional] |
| **unit** | **String** | The unit for the usage as shown on an invoice. If there is no explicit unit, this field will be \&quot;unit\&quot; (e.g., a request with `product_id` of &#39;cdn_usage&#39; and `usage_type` of &#39;North America Requests&#39; has no unit, and will return \&quot;unit\&quot;). | [optional] |
| **details** | [**Array&lt;Serviceusagemetric&gt;**](Serviceusagemetric.md) |  | [optional] |
| **meta** | [**Metadata**](Metadata.md) |  | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

