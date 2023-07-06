# Fastly::ContactApi


```ruby
require 'fastly'
api_instance = Fastly::ContactApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_contacts**](ContactApi.md#create_contacts) | **POST** /customer/{customer_id}/contacts | Add a new customer contact |
| [**delete_contact**](ContactApi.md#delete_contact) | **DELETE** /customer/{customer_id}/contact/{contact_id} | Delete a contact |
| [**list_contacts**](ContactApi.md#list_contacts) | **GET** /customer/{customer_id}/contacts | List contacts |


## `create_contacts()`

```ruby
create_contacts(opts): <ContactResponse> # Add a new customer contact
```

Create a contact.

### Examples

```ruby
api_instance = Fastly::ContactApi.new
opts = {
    customer_id: 'customer_id_example', # String | Alphanumeric string identifying the customer.
    user_id: 'user_id_example', # String | The alphanumeric string representing the user for this customer contact.
    contact_type: 'primary', # String | The type of contact.
    name: 'name_example', # String | The name of this contact, when user_id is not provided.
    email: 'email_example', # String | The email of this contact, when a user_id is not provided.
    phone: 'phone_example', # String | The phone number for this contact. Required for primary, technical, and security contact types.
    customer_id: 'customer_id_example', # String | The alphanumeric string representing the customer for this customer contact.
}

begin
  # Add a new customer contact
  result = api_instance.create_contacts(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ContactApi->create_contacts: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Alphanumeric string identifying the customer. |  |
| **user_id** | **String** | The alphanumeric string representing the user for this customer contact. | [optional] |
| **contact_type** | **String** | The type of contact. | [optional] |
| **name** | **String** | The name of this contact, when user_id is not provided. | [optional] |
| **email** | **String** | The email of this contact, when a user_id is not provided. | [optional] |
| **phone** | **String** | The phone number for this contact. Required for primary, technical, and security contact types. | [optional] |
| **customer_id** | **String** | The alphanumeric string representing the customer for this customer contact. | [optional] |

### Return type

[**ContactResponse**](ContactResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_contact()`

```ruby
delete_contact(opts): <InlineResponse200> # Delete a contact
```

Delete a contact.

### Examples

```ruby
api_instance = Fastly::ContactApi.new
opts = {
    customer_id: 'customer_id_example', # String | Alphanumeric string identifying the customer.
    contact_id: 'contact_id_example', # String | An alphanumeric string identifying the customer contact.
}

begin
  # Delete a contact
  result = api_instance.delete_contact(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ContactApi->delete_contact: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Alphanumeric string identifying the customer. |  |
| **contact_id** | **String** | An alphanumeric string identifying the customer contact. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_contacts()`

```ruby
list_contacts(opts): <Array<SchemasContactResponse>> # List contacts
```

List all contacts from a specified customer ID.

### Examples

```ruby
api_instance = Fastly::ContactApi.new
opts = {
    customer_id: 'customer_id_example', # String | Alphanumeric string identifying the customer.
}

begin
  # List contacts
  result = api_instance.list_contacts(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ContactApi->list_contacts: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Alphanumeric string identifying the customer. |  |

### Return type

[**Array&lt;SchemasContactResponse&gt;**](SchemasContactResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
