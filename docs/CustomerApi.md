# Fastly::CustomerApi


```ruby
require 'fastly'
api_instance = Fastly::CustomerApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**delete_customer**](CustomerApi.md#delete_customer) | **DELETE** /customer/{customer_id} | Delete a customer
[**get_customer**](CustomerApi.md#get_customer) | **GET** /customer/{customer_id} | Get a customer
[**get_logged_in_customer**](CustomerApi.md#get_logged_in_customer) | **GET** /current_customer | Get the logged in customer
[**list_users**](CustomerApi.md#list_users) | **GET** /customer/{customer_id}/users | List users
[**update_customer**](CustomerApi.md#update_customer) | **PUT** /customer/{customer_id} | Update a customer


## `delete_customer()`

```ruby
delete_customer(opts): <InlineResponse200> # Delete a customer
```

Delete a customer.

### Examples

```ruby
api_instance = Fastly::CustomerApi.new
opts = {
    customer_id: 'customer_id_example', # String | Alphanumeric string identifying the customer.
}

begin
  # Delete a customer
  result = api_instance.delete_customer(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling CustomerApi->delete_customer: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Alphanumeric string identifying the customer. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_customer()`

```ruby
get_customer(opts): <CustomerResponse> # Get a customer
```

Get a specific customer.

### Examples

```ruby
api_instance = Fastly::CustomerApi.new
opts = {
    customer_id: 'customer_id_example', # String | Alphanumeric string identifying the customer.
}

begin
  # Get a customer
  result = api_instance.get_customer(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling CustomerApi->get_customer: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Alphanumeric string identifying the customer. |  |

### Return type

[**CustomerResponse**](CustomerResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_logged_in_customer()`

```ruby
get_logged_in_customer: <CustomerResponse> # Get the logged in customer
```

Get the logged in customer.

### Examples

```ruby
api_instance = Fastly::CustomerApi.new

begin
  # Get the logged in customer
  result = api_instance.get_logged_in_customer
  p result
rescue Fastly::ApiError => e
  puts "Error when calling CustomerApi->get_logged_in_customer: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**CustomerResponse**](CustomerResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_users()`

```ruby
list_users(opts): <Array<SchemasUserResponse>> # List users
```

List all users from a specified customer id.

### Examples

```ruby
api_instance = Fastly::CustomerApi.new
opts = {
    customer_id: 'customer_id_example', # String | Alphanumeric string identifying the customer.
}

begin
  # List users
  result = api_instance.list_users(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling CustomerApi->list_users: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Alphanumeric string identifying the customer. |  |

### Return type

[**Array&lt;SchemasUserResponse&gt;**](SchemasUserResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_customer()`

```ruby
update_customer(opts): <CustomerResponse> # Update a customer
```

Update a customer.

### Examples

```ruby
api_instance = Fastly::CustomerApi.new
opts = {
    customer_id: 'customer_id_example', # String | Alphanumeric string identifying the customer.
    billing_contact_id: 'billing_contact_id_example', # String | The alphanumeric string representing the primary billing contact.
    billing_network_type: 'public', # String | Customer's current network revenue type.
    billing_ref: 'billing_ref_example', # String | Used for adding purchased orders to customer's account.
    can_configure_wordpress: true, # Boolean | Whether this customer can view or edit wordpress.
    can_reset_passwords: true, # Boolean | Whether this customer can reset passwords.
    can_upload_vcl: true, # Boolean | Whether this customer can upload VCL.
    force_2fa: true, # Boolean | Specifies whether 2FA is forced or not forced on the customer account. Logs out non-2FA users once 2FA is force enabled.
    force_sso: true, # Boolean | Specifies whether SSO is forced or not forced on the customer account.
    has_account_panel: true, # Boolean | Specifies whether the account has access or does not have access to the account panel.
    has_improved_events: true, # Boolean | Specifies whether the account has access or does not have access to the improved events.
    has_improved_ssl_config: true, # Boolean | Whether this customer can view or edit the SSL config.
    has_openstack_logging: true, # Boolean | Specifies whether the account has enabled or not enabled openstack logging.
    has_pci: true, # Boolean | Specifies whether the account can edit PCI for a service.
    has_pci_passwords: true, # Boolean | Specifies whether PCI passwords are required for the account.
    ip_whitelist: 'ip_whitelist_example', # String | The range of IP addresses authorized to access the customer account.
    legal_contact_id: 'legal_contact_id_example', # String | The alphanumeric string identifying the account's legal contact.
    name: 'name_example', # String | The name of the customer, generally the company name.
    owner_id: 'owner_id_example', # String | The alphanumeric string identifying the account owner.
    phone_number: 'phone_number_example', # String | The phone number associated with the account.
    postal_address: 'postal_address_example', # String | The postal address associated with the account.
    pricing_plan: 'pricing_plan_example', # String | The pricing plan this customer is under.
    pricing_plan_id: 'pricing_plan_id_example', # String | The alphanumeric string identifying the pricing plan.
    security_contact_id: 'security_contact_id_example', # String | The alphanumeric string identifying the account's security contact.
    technical_contact_id: 'technical_contact_id_example', # String | The alphanumeric string identifying the account's technical contact.
}

begin
  # Update a customer
  result = api_instance.update_customer(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling CustomerApi->update_customer: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Alphanumeric string identifying the customer. |  |
| **billing_contact_id** | **String** | The alphanumeric string representing the primary billing contact. | [optional] |
| **billing_network_type** | **String** | Customer&#39;s current network revenue type. | [optional] |
| **billing_ref** | **String** | Used for adding purchased orders to customer&#39;s account. | [optional] |
| **can_configure_wordpress** | **Boolean** | Whether this customer can view or edit wordpress. | [optional] |
| **can_reset_passwords** | **Boolean** | Whether this customer can reset passwords. | [optional] |
| **can_upload_vcl** | **Boolean** | Whether this customer can upload VCL. | [optional] |
| **force_2fa** | **Boolean** | Specifies whether 2FA is forced or not forced on the customer account. Logs out non-2FA users once 2FA is force enabled. | [optional] |
| **force_sso** | **Boolean** | Specifies whether SSO is forced or not forced on the customer account. | [optional] |
| **has_account_panel** | **Boolean** | Specifies whether the account has access or does not have access to the account panel. | [optional] |
| **has_improved_events** | **Boolean** | Specifies whether the account has access or does not have access to the improved events. | [optional] |
| **has_improved_ssl_config** | **Boolean** | Whether this customer can view or edit the SSL config. | [optional] |
| **has_openstack_logging** | **Boolean** | Specifies whether the account has enabled or not enabled openstack logging. | [optional] |
| **has_pci** | **Boolean** | Specifies whether the account can edit PCI for a service. | [optional] |
| **has_pci_passwords** | **Boolean** | Specifies whether PCI passwords are required for the account. | [optional] |
| **ip_whitelist** | **String** | The range of IP addresses authorized to access the customer account. | [optional] |
| **legal_contact_id** | **String** | The alphanumeric string identifying the account&#39;s legal contact. | [optional] |
| **name** | **String** | The name of the customer, generally the company name. | [optional] |
| **owner_id** | **String** | The alphanumeric string identifying the account owner. | [optional] |
| **phone_number** | **String** | The phone number associated with the account. | [optional] |
| **postal_address** | **String** | The postal address associated with the account. | [optional] |
| **pricing_plan** | **String** | The pricing plan this customer is under. | [optional] |
| **pricing_plan_id** | **String** | The alphanumeric string identifying the pricing plan. | [optional] |
| **security_contact_id** | **String** | The alphanumeric string identifying the account&#39;s security contact. | [optional] |
| **technical_contact_id** | **String** | The alphanumeric string identifying the account&#39;s technical contact. | [optional] |

### Return type

[**CustomerResponse**](CustomerResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
