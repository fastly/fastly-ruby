# Fastly::CustomerAddressesApi


```ruby
require 'fastly'
api_instance = Fastly::CustomerAddressesApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_customer_address**](CustomerAddressesApi.md#create_customer_address) | **POST** /billing/v3/customer-addresses | Creates an address associated with a customer account.
[**list_customer_addresses**](CustomerAddressesApi.md#list_customer_addresses) | **GET** /billing/v3/customer-addresses | Return the list of addresses associated with a customer account.
[**update_customer_address**](CustomerAddressesApi.md#update_customer_address) | **PUT** /billing/v3/customer-addresses/{type} | Updates an address associated with a customer account.


## `create_customer_address()`

```ruby
create_customer_address(opts): <InlineResponse201> # Creates an address associated with a customer account.
```

Creates an address associated with a customer account.

### Examples

```ruby
api_instance = Fastly::CustomerAddressesApi.new
opts = {
    customer_address: Fastly::CustomerAddress.new, # CustomerAddress | 
}

begin
  # Creates an address associated with a customer account.
  result = api_instance.create_customer_address(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling CustomerAddressesApi->create_customer_address: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_address** | [**CustomerAddress**](CustomerAddress.md) |  |  |

### Return type

[**InlineResponse201**](InlineResponse201.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_customer_addresses()`

```ruby
list_customer_addresses: <ListCustomerAddressesResponse> # Return the list of addresses associated with a customer account.
```

Return the list of addresses associated with a customer account.

### Examples

```ruby
api_instance = Fastly::CustomerAddressesApi.new

begin
  # Return the list of addresses associated with a customer account.
  result = api_instance.list_customer_addresses
  p result
rescue Fastly::ApiError => e
  puts "Error when calling CustomerAddressesApi->list_customer_addresses: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**ListCustomerAddressesResponse**](ListCustomerAddressesResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_customer_address()`

```ruby
update_customer_address(opts) # Updates an address associated with a customer account.
```

Updates an address associated with a customer account.

### Examples

```ruby
api_instance = Fastly::CustomerAddressesApi.new
opts = {
    type: 'type_example', # String | Alphanumeric type of the address being modified.
    customer_address: Fastly::CustomerAddress.new, # CustomerAddress | 
}

begin
  # Updates an address associated with a customer account.
  api_instance.update_customer_address(opts)
rescue Fastly::ApiError => e
  puts "Error when calling CustomerAddressesApi->update_customer_address: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Alphanumeric type of the address being modified. |  |
| **customer_address** | [**CustomerAddress**](CustomerAddress.md) |  |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
