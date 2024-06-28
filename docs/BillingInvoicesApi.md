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
[**list_invoices**](BillingInvoicesApi.md#list_invoices) | **GET** /billing/v3/invoices | List of invoices.


## `get_invoice_by_invoice_id()`

```ruby
get_invoice_by_invoice_id(opts): <InvoiceResponse> # Get invoice by ID.
```

Returns invoice associated with the invoice id.

### Examples

```ruby
api_instance = Fastly::BillingInvoicesApi.new
opts = {
    invoice_id: 'invoice_id_example', # String | Alphanumeric string identifying the invoice.
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
| **invoice_id** | **String** | Alphanumeric string identifying the invoice. |  |

### Return type

[**InvoiceResponse**](InvoiceResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_invoices()`

```ruby
list_invoices(opts): <ListInvoicesResponse> # List of invoices.
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

[**ListInvoicesResponse**](ListInvoicesResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
