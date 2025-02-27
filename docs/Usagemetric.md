# Fastly::Usagemetric

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **month** | **String** | The year and month of the usage element. | [optional] |
| **usage_type** | **String** | The usage type identifier for the usage. This is a single, billable metric for the product. | [optional] |
| **name** | **String** | Full name of the product usage type as it might appear on a customer&#39;s invoice. | [optional] |
| **region** | **String** | The geographical area applicable for regionally based products. | [optional] |
| **unit** | **String** | The unit for the usage as shown on an invoice. If there is no explicit unit, this field will be \&quot;unit\&quot; (e.g., a request with `product_id` of &#39;cdn_usage&#39; and `usage_type` of &#39;North America Requests&#39; has no unit, and will return \&quot;unit\&quot;). | [optional] |
| **quantity** | **Float** | The quantity of the usage for the product. | [optional] |
| **raw_quantity** | **Float** | The raw units measured for the product. | [optional] |
| **product_id** | **String** | The product identifier associated with the usage type. This corresponds to a Fastly product offering. | [optional] |
| **last_updated_at** | **String** | The date when the usage metric was last updated. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

