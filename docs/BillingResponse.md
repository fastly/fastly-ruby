# Fastly::BillingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **end_time** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **start_time** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **customer_id** | **String** |  | [optional][readonly] |
| **vendor_state** | **String** | The current state of our third-party billing vendor. One of `up` or `down`. | [optional][readonly] |
| **status** | [**BillingStatus**](BillingStatus.md) |  | [optional] |
| **total** | [**BillingTotal**](BillingTotal.md) |  | [optional] |
| **regions** | [**Hash&lt;String, BillingRegions&gt;**](BillingRegions.md) | Breakdown of regional data for products that are region based. | [optional] |
| **invoice_id** | **Integer** |  | [optional][readonly] |
| **line_items** | [**Array&lt;BillingResponseLineItem&gt;**](BillingResponseLineItem.md) |  | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

