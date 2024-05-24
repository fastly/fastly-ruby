# Fastly::BillingApi


```ruby
require 'fastly'
api_instance = Fastly::BillingApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**get_invoice**](BillingApi.md#get_invoice) | **GET** /billing/v2/year/{year}/month/{month} | Get an invoice
[**get_invoice_by_id**](BillingApi.md#get_invoice_by_id) | **GET** /billing/v2/account_customers/{customer_id}/invoices/{invoice_id} | Get an invoice
[**get_invoice_mtd**](BillingApi.md#get_invoice_mtd) | **GET** /billing/v2/account_customers/{customer_id}/mtd_invoice | Get month-to-date billing estimate


## `get_invoice()`

```ruby
get_invoice(opts): <BillingResponse> # Get an invoice
```

Get the invoice for a given year and month. Can be any month from when the Customer was created to the current month.

### Examples

```ruby
api_instance = Fastly::BillingApi.new
opts = {
    month: '05', # String | 2-digit month.
    year: '2020', # String | 4-digit year.
}

begin
  # Get an invoice
  result = api_instance.get_invoice(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BillingApi->get_invoice: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **month** | **String** | 2-digit month. |  |
| **year** | **String** | 4-digit year. |  |

### Return type

[**BillingResponse**](BillingResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_invoice_by_id()`

```ruby
get_invoice_by_id(opts): <BillingResponse> # Get an invoice
```

Get the invoice for the given invoice_id.

### Examples

```ruby
api_instance = Fastly::BillingApi.new
opts = {
    customer_id: 'customer_id_example', # String | Alphanumeric string identifying the customer.
    invoice_id: 'invoice_id_example', # String | Alphanumeric string identifying the invoice.
}

begin
  # Get an invoice
  result = api_instance.get_invoice_by_id(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BillingApi->get_invoice_by_id: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Alphanumeric string identifying the customer. |  |
| **invoice_id** | **String** | Alphanumeric string identifying the invoice. |  |

### Return type

[**BillingResponse**](BillingResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_invoice_mtd()`

```ruby
get_invoice_mtd(opts): <BillingEstimateResponse> # Get month-to-date billing estimate
```

Get the current month-to-date estimate. This endpoint has two different responses. Under normal circumstances, it generally takes less than 5 seconds to generate but in certain cases can take up to 60 seconds. Once generated the month-to-date estimate is cached for 4 hours, and is available the next request will return the JSON representation of the month-to-date estimate. While a report is being generated in the background, this endpoint will return a `202 Accepted` response. The full format of which can be found in detail in our [billing calculation guide](https://docs.fastly.com/en/guides/how-we-calculate-your-bill). There are certain accounts for which we are unable to generate a month-to-date estimate. For example, accounts who have parent-pay are unable to generate an MTD estimate. The parent accounts are able to generate a month-to-date estimate but that estimate will not include the child accounts amounts at this time.

### Examples

```ruby
api_instance = Fastly::BillingApi.new
opts = {
    customer_id: 'customer_id_example', # String | Alphanumeric string identifying the customer.
    month: '05', # String | 2-digit month.
    year: '2020', # String | 4-digit year.
}

begin
  # Get month-to-date billing estimate
  result = api_instance.get_invoice_mtd(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BillingApi->get_invoice_mtd: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Alphanumeric string identifying the customer. |  |
| **month** | **String** | 2-digit month. | [optional] |
| **year** | **String** | 4-digit year. | [optional] |

### Return type

[**BillingEstimateResponse**](BillingEstimateResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
