# Fastly::Invoice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Customer ID associated with the invoice. | [optional] |
| **invoice_id** | **String** | Numeric string identifying the invoice. | [optional] |
| **invoice_posted_on** | **Time** | Date and time invoice was posted on, in ISO 8601 format. | [optional] |
| **billing_start_date** | **Time** | Date and time (in ISO 8601 format) for initiation point of a billing cycle, signifying the start of charges for a service or subscription. | [optional] |
| **billing_end_date** | **Time** | Date and time (in ISO 8601 format) for termination point of a billing cycle, signifying the end of charges for a service or subscription. | [optional] |
| **statement_number** | **String** | Alphanumeric string identifying the statement number. | [optional] |
| **currency_code** | **String** | Three-letter code representing a specific currency used for financial transactions. | [optional] |
| **monthly_transaction_amount** | **Float** | Total billable amount for invoiced services charged within a single month. | [optional] |
| **transaction_line_items** | [**Array&lt;Invoicelineitems&gt;**](Invoicelineitems.md) |  | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

