# Fastly::BillingTotal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bandwidth** | **Float** | The total amount of bandwidth used this month (See bandwidth_units for measurement). | [optional] |
| **bandwidth_cost** | **Float** | The cost of the bandwidth used this month in USD. | [optional] |
| **bandwidth_units** | **String** | Bandwidth measurement units based on billing plan. | [optional] |
| **cost** | **Float** | The final amount to be paid. | [optional] |
| **cost_before_discount** | **Float** | Total incurred cost plus extras cost. | [optional] |
| **discount** | **Float** | Calculated discount rate. | [optional] |
| **extras** | [**Array&lt;BillingTotalExtras&gt;**](BillingTotalExtras.md) | A list of any extras for this invoice. | [optional] |
| **extras_cost** | **Float** | Total cost of all extras. | [optional] |
| **incurred_cost** | **Float** | The total cost of bandwidth and requests used this month. | [optional] |
| **overage** | **Float** | How much over the plan minimum has been incurred. | [optional] |
| **plan_code** | **String** | The short code the plan this invoice was generated under. | [optional] |
| **plan_minimum** | **Float** | The minimum cost of this plan. | [optional] |
| **plan_name** | **String** | The name of the plan this invoice was generated under. | [optional] |
| **requests** | **Float** | The total number of requests used this month. | [optional] |
| **requests_cost** | **Float** | The cost of the requests used this month. | [optional] |
| **terms** | **String** | Payment terms. Almost always Net15. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

