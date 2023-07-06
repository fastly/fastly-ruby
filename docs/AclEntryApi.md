# Fastly::AclEntryApi


```ruby
require 'fastly'
api_instance = Fastly::AclEntryApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bulk_update_acl_entries**](AclEntryApi.md#bulk_update_acl_entries) | **PATCH** /service/{service_id}/acl/{acl_id}/entries | Update multiple ACL entries |
| [**create_acl_entry**](AclEntryApi.md#create_acl_entry) | **POST** /service/{service_id}/acl/{acl_id}/entry | Create an ACL entry |
| [**delete_acl_entry**](AclEntryApi.md#delete_acl_entry) | **DELETE** /service/{service_id}/acl/{acl_id}/entry/{acl_entry_id} | Delete an ACL entry |
| [**get_acl_entry**](AclEntryApi.md#get_acl_entry) | **GET** /service/{service_id}/acl/{acl_id}/entry/{acl_entry_id} | Describe an ACL entry |
| [**list_acl_entries**](AclEntryApi.md#list_acl_entries) | **GET** /service/{service_id}/acl/{acl_id}/entries | List ACL entries |
| [**update_acl_entry**](AclEntryApi.md#update_acl_entry) | **PATCH** /service/{service_id}/acl/{acl_id}/entry/{acl_entry_id} | Update an ACL entry |


## `bulk_update_acl_entries()`

```ruby
bulk_update_acl_entries(opts): <InlineResponse200> # Update multiple ACL entries
```

Update multiple ACL entries on the same ACL. For faster updates to your service, group your changes into large batches. The maximum batch size is 1000 entries. [Contact support](https://support.fastly.com/) to discuss raising this limit.

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
## `create_acl_entry()`

```ruby
create_acl_entry(opts): <AclEntryResponse> # Create an ACL entry
```

Add an ACL entry to an ACL.

### Examples

```ruby
api_instance = Fastly::AclEntryApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    acl_id: 'acl_id_example', # String | Alphanumeric string identifying a ACL.
    acl_entry: Fastly::AclEntry.new, # AclEntry | 
}

begin
  # Create an ACL entry
  result = api_instance.create_acl_entry(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AclEntryApi->create_acl_entry: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **acl_id** | **String** | Alphanumeric string identifying a ACL. |  |
| **acl_entry** | [**AclEntry**](AclEntry.md) |  | [optional] |

### Return type

[**AclEntryResponse**](AclEntryResponse.md)

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
## `get_acl_entry()`

```ruby
get_acl_entry(opts): <AclEntryResponse> # Describe an ACL entry
```

Retrieve a single ACL entry.

### Examples

```ruby
api_instance = Fastly::AclEntryApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    acl_id: 'acl_id_example', # String | Alphanumeric string identifying a ACL.
    acl_entry_id: 'acl_entry_id_example', # String | Alphanumeric string identifying an ACL Entry.
}

begin
  # Describe an ACL entry
  result = api_instance.get_acl_entry(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AclEntryApi->get_acl_entry: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **acl_id** | **String** | Alphanumeric string identifying a ACL. |  |
| **acl_entry_id** | **String** | Alphanumeric string identifying an ACL Entry. |  |

### Return type

[**AclEntryResponse**](AclEntryResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_acl_entries()`

```ruby
list_acl_entries(opts): <Array<AclEntryResponse>> # List ACL entries
```

List ACL entries for a specified ACL.

### Examples

```ruby
api_instance = Fastly::AclEntryApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    acl_id: 'acl_id_example', # String | Alphanumeric string identifying a ACL.
    page: 1, # Integer | Current page.
    per_page: 20, # Integer | Number of records per page.
    sort: 'created', # String | Field on which to sort.
    direction: 'ascend', # String | Direction in which to sort results.
}

begin
  # List ACL entries
  result = api_instance.list_acl_entries(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AclEntryApi->list_acl_entries: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **acl_id** | **String** | Alphanumeric string identifying a ACL. |  |
| **page** | **Integer** | Current page. | [optional] |
| **per_page** | **Integer** | Number of records per page. | [optional][default to 20] |
| **sort** | **String** | Field on which to sort. | [optional][default to &#39;created&#39;] |
| **direction** | **String** | Direction in which to sort results. | [optional][default to &#39;ascend&#39;] |

### Return type

[**Array&lt;AclEntryResponse&gt;**](AclEntryResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_acl_entry()`

```ruby
update_acl_entry(opts): <AclEntryResponse> # Update an ACL entry
```

Update an ACL entry for a specified ACL.

### Examples

```ruby
api_instance = Fastly::AclEntryApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    acl_id: 'acl_id_example', # String | Alphanumeric string identifying a ACL.
    acl_entry_id: 'acl_entry_id_example', # String | Alphanumeric string identifying an ACL Entry.
    acl_entry: Fastly::AclEntry.new, # AclEntry | 
}

begin
  # Update an ACL entry
  result = api_instance.update_acl_entry(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AclEntryApi->update_acl_entry: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **acl_id** | **String** | Alphanumeric string identifying a ACL. |  |
| **acl_entry_id** | **String** | Alphanumeric string identifying an ACL Entry. |  |
| **acl_entry** | [**AclEntry**](AclEntry.md) |  | [optional] |

### Return type

[**AclEntryResponse**](AclEntryResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
