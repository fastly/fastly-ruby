# Fastly::ContactApi


```ruby
require 'fastly'
api_instance = Fastly::ContactApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_contact**](ContactApi.md#delete_contact) | **DELETE** /customer/{customer_id}/contact/{contact_id} | Delete a contact |
| [**list_contacts**](ContactApi.md#list_contacts) | **GET** /customer/{customer_id}/contacts | List contacts |


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
