# Fastly::AclEntryApi


```ruby
require 'fastly'
api_instance = Fastly::AclEntryApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bulk_update_acl_entries**](AclEntryApi.md#bulk_update_acl_entries) | **PATCH** /service/{service_id}/acl/{acl_id}/entries | Update multiple ACL entries |
| [**delete_acl_entry**](AclEntryApi.md#delete_acl_entry) | **DELETE** /service/{service_id}/acl/{acl_id}/entry/{acl_entry_id} | Delete an ACL entry |


## `bulk_update_acl_entries()`

```ruby
bulk_update_acl_entries(opts): <InlineResponse200> # Update multiple ACL entries
```

Update multiple ACL entries on the same ACL.

### Examples

```ruby
api_instance = Fastly::AclEntryApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    acl_id: 'acl_id_example', # String | Alphanumeric string identifying a ACL.
    bulk_update_acl_entries_request: Fastly::BulkUpdateAclEntriesRequest.new, # BulkUpdateAclEntriesRequest | 
}

begin
  # Update multiple ACL entries
  result = api_instance.bulk_update_acl_entries(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AclEntryApi->bulk_update_acl_entries: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **acl_id** | **String** | Alphanumeric string identifying a ACL. |  |
| **bulk_update_acl_entries_request** | [**BulkUpdateAclEntriesRequest**](BulkUpdateAclEntriesRequest.md) |  | [optional] |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_acl_entry()`

```ruby
delete_acl_entry(opts): <InlineResponse200> # Delete an ACL entry
```

Delete an ACL entry from a specified ACL.

### Examples

```ruby
api_instance = Fastly::AclEntryApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    acl_id: 'acl_id_example', # String | Alphanumeric string identifying a ACL.
    acl_entry_id: 'acl_entry_id_example', # String | Alphanumeric string identifying an ACL Entry.
}

begin
  # Delete an ACL entry
  result = api_instance.delete_acl_entry(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AclEntryApi->delete_acl_entry: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **acl_id** | **String** | Alphanumeric string identifying a ACL. |  |
| **acl_entry_id** | **String** | Alphanumeric string identifying an ACL Entry. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
