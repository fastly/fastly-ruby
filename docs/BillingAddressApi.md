# Fastly::BillingAddressApi


```ruby
require 'fastly'
api_instance = Fastly::BillingAddressApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_billing_addr**](BillingAddressApi.md#add_billing_addr) | **POST** /customer/{customer_id}/billing_address | Add a billing address to a customer |
| [**delete_billing_addr**](BillingAddressApi.md#delete_billing_addr) | **DELETE** /customer/{customer_id}/billing_address | Delete a billing address |
| [**get_billing_addr**](BillingAddressApi.md#get_billing_addr) | **GET** /customer/{customer_id}/billing_address | Get a billing address |
| [**update_billing_addr**](BillingAddressApi.md#update_billing_addr) | **PATCH** /customer/{customer_id}/billing_address | Update a billing address |


## `add_billing_addr()`

```ruby
add_billing_addr(opts): <BillingAddressResponse> # Add a billing address to a customer
```

Add a billing address to a customer.

### Examples

```ruby
api_instance = Fastly::BillingAddressApi.new
opts = {
    customer_id: 'customer_id_example', # String | Alphanumeric string identifying the customer.
    billing_address_request: Fastly::BillingAddressRequest.new, # BillingAddressRequest | Billing address
}

begin
  # Add a billing address to a customer
  result = api_instance.add_billing_addr(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BillingAddressApi->add_billing_addr: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Alphanumeric string identifying the customer. |  |
| **billing_address_request** | [**BillingAddressRequest**](BillingAddressRequest.md) | Billing address | [optional] |

### Return type

[**BillingAddressResponse**](BillingAddressResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_billing_addr()`

```ruby
delete_billing_addr(opts) # Delete a billing address
```

Delete a customer's billing address.

### Examples

```ruby
api_instance = Fastly::BillingAddressApi.new
opts = {
    customer_id: 'customer_id_example', # String | Alphanumeric string identifying the customer.
}

begin
  # Delete a billing address
  api_instance.delete_billing_addr(opts)
rescue Fastly::ApiError => e
  puts "Error when calling BillingAddressApi->delete_billing_addr: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Alphanumeric string identifying the customer. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_billing_addr()`

```ruby
get_billing_addr(opts): <BillingAddressResponse> # Get a billing address
```

Get a customer's billing address.

### Examples

```ruby
api_instance = Fastly::BillingAddressApi.new
opts = {
    customer_id: 'customer_id_example', # String | Alphanumeric string identifying the customer.
}

begin
  # Get a billing address
  result = api_instance.get_billing_addr(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BillingAddressApi->get_billing_addr: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Alphanumeric string identifying the customer. |  |

### Return type

[**BillingAddressResponse**](BillingAddressResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_billing_addr()`

```ruby
update_billing_addr(opts): <BillingAddressResponse> # Update a billing address
```

Update a customer's billing address. You may update only part of the customer's billing address.

### Examples

```ruby
api_instance = Fastly::BillingAddressApi.new
opts = {
    customer_id: 'customer_id_example', # String | Alphanumeric string identifying the customer.
    update_billing_address_request: Fastly::UpdateBillingAddressRequest.new, # UpdateBillingAddressRequest | One or more billing address attributes
}

begin
  # Update a billing address
  result = api_instance.update_billing_addr(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BillingAddressApi->update_billing_addr: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Alphanumeric string identifying the customer. |  |
| **update_billing_address_request** | [**UpdateBillingAddressRequest**](UpdateBillingAddressRequest.md) | One or more billing address attributes | [optional] |

### Return type

[**BillingAddressResponse**](BillingAddressResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
