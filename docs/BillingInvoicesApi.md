# Fastly::BillingInvoicesApi


```ruby
require 'fastly'
api_instance = Fastly::BillingInvoicesApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_invoice_by_invoice_id**](BillingInvoicesApi.md#get_invoice_by_invoice_id) | **GET** /billing/v3/invoices/{invoice_id} | Get invoice by ID.
[**get_month_to_date_invoice**](BillingInvoicesApi.md#get_month_to_date_invoice) | **GET** /billing/v3/invoices/month-to-date | Get month-to-date invoice.
[**list_invoices**](BillingInvoicesApi.md#list_invoices) | **GET** /billing/v3/invoices | List of invoices.


## `get_invoice_by_invoice_id()`

```ruby
get_invoice_by_invoice_id(opts): <EomInvoiceResponse> # Get invoice by ID.
```

Returns invoice associated with the invoice id.

### Examples

```ruby
api_instance = Fastly::BillingInvoicesApi.new
opts = {
    invoice_id: 4183280, # Integer | 
}

begin
  # Get invoice by ID.
  result = api_instance.get_invoice_by_invoice_id(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BillingInvoicesApi->get_invoice_by_invoice_id: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **Integer** |  |  |

### Return type

[**EomInvoiceResponse**](EomInvoiceResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_month_to_date_invoice()`

```ruby
get_month_to_date_invoice: <MtdInvoiceResponse> # Get month-to-date invoice.
```

Returns month-to-date invoice for the current month.

### Examples

```ruby
api_instance = Fastly::BillingInvoicesApi.new

begin
  # Get month-to-date invoice.
  result = api_instance.get_month_to_date_invoice
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BillingInvoicesApi->get_month_to_date_invoice: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**MtdInvoiceResponse**](MtdInvoiceResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_invoices()`

```ruby
list_invoices(opts): <ListEomInvoicesResponse> # List of invoices.
```

Returns the list of invoices, sorted by billing start date (newest to oldest).

### Examples

```ruby
api_instance = Fastly::BillingInvoicesApi.new
opts = {
    billing_start_date: '2023-01-01', # String | 
    billing_end_date: '2023-01-31', # String | 
    limit: 'limit_example', # String | Number of results per page. The maximum is 200.
    cursor: 'cursor_example', # String | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
}

begin
  # List of invoices.
  result = api_instance.list_invoices(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BillingInvoicesApi->list_invoices: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billing_start_date** | **String** |  | [optional] |
| **billing_end_date** | **String** |  | [optional] |
| **limit** | **String** | Number of results per page. The maximum is 200. | [optional][default to &#39;100&#39;] |
| **cursor** | **String** | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] |

### Return type

[**ListEomInvoicesResponse**](ListEomInvoicesResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
