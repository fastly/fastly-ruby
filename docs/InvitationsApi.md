# Fastly::InvitationsApi


```ruby
require 'fastly'
api_instance = Fastly::InvitationsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_invitation**](InvitationsApi.md#create_invitation) | **POST** /invitations | Create an invitation
[**delete_invitation**](InvitationsApi.md#delete_invitation) | **DELETE** /invitations/{invitation_id} | Delete an invitation
[**list_invitations**](InvitationsApi.md#list_invitations) | **GET** /invitations | List invitations


## `create_invitation()`

```ruby
create_invitation(opts): <InvitationResponse> # Create an invitation
```

Create an invitation.

### Examples

```ruby
api_instance = Fastly::InvitationsApi.new
opts = {
    invitation: Fastly::Invitation.new, # Invitation | 
}

begin
  # Create an invitation
  result = api_instance.create_invitation(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling InvitationsApi->create_invitation: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invitation** | [**Invitation**](Invitation.md) |  | [optional] |

### Return type

[**InvitationResponse**](InvitationResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_invitation()`

```ruby
delete_invitation(opts) # Delete an invitation
```

Delete an invitation.

### Examples

```ruby
api_instance = Fastly::InvitationsApi.new
opts = {
    invitation_id: 'invitation_id_example', # String | Alphanumeric string identifying an invitation.
}

begin
  # Delete an invitation
  api_instance.delete_invitation(opts)
rescue Fastly::ApiError => e
  puts "Error when calling InvitationsApi->delete_invitation: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invitation_id** | **String** | Alphanumeric string identifying an invitation. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_invitations()`

```ruby
list_invitations(opts): <InvitationsResponse> # List invitations
```

List all invitations.

### Examples

```ruby
api_instance = Fastly::InvitationsApi.new
opts = {
    page_number: 1, # Integer | Current page.
    page_size: 20, # Integer | Number of records per page.
}

begin
  # List invitations
  result = api_instance.list_invitations(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling InvitationsApi->list_invitations: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_number** | **Integer** | Current page. | [optional] |
| **page_size** | **Integer** | Number of records per page. | [optional][default to 20] |

### Return type

[**InvitationsResponse**](InvitationsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
