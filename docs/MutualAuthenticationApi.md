# Fastly::MutualAuthenticationApi


```ruby
require 'fastly'
api_instance = Fastly::MutualAuthenticationApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_mutual_tls_authentication**](MutualAuthenticationApi.md#create_mutual_tls_authentication) | **POST** /tls/mutual_authentications | Create a Mutual Authentication
[**delete_mutual_tls**](MutualAuthenticationApi.md#delete_mutual_tls) | **DELETE** /tls/mutual_authentications/{mutual_authentication_id} | Delete a Mutual TLS
[**get_mutual_authentication**](MutualAuthenticationApi.md#get_mutual_authentication) | **GET** /tls/mutual_authentications/{mutual_authentication_id} | Get a Mutual Authentication
[**list_mutual_authentications**](MutualAuthenticationApi.md#list_mutual_authentications) | **GET** /tls/mutual_authentications | List Mutual Authentications
[**patch_mutual_authentication**](MutualAuthenticationApi.md#patch_mutual_authentication) | **PATCH** /tls/mutual_authentications/{mutual_authentication_id} | Update a Mutual Authentication


## `create_mutual_tls_authentication()`

```ruby
create_mutual_tls_authentication(opts): <MutualAuthenticationResponse> # Create a Mutual Authentication
```

Create a mutual authentication using a bundle of certificates to enable client-to-server mutual TLS.

### Examples

```ruby
api_instance = Fastly::MutualAuthenticationApi.new
opts = {
    mutual_authentication: Fastly::MutualAuthentication.new, # MutualAuthentication | 
}

begin
  # Create a Mutual Authentication
  result = api_instance.create_mutual_tls_authentication(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling MutualAuthenticationApi->create_mutual_tls_authentication: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mutual_authentication** | [**MutualAuthentication**](MutualAuthentication.md) |  | [optional] |

### Return type

[**MutualAuthenticationResponse**](MutualAuthenticationResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_mutual_tls()`

```ruby
delete_mutual_tls(opts) # Delete a Mutual TLS
```

Remove a Mutual TLS authentication

### Examples

```ruby
api_instance = Fastly::MutualAuthenticationApi.new
opts = {
    mutual_authentication_id: 'mutual_authentication_id_example', # String | Alphanumeric string identifying a mutual authentication.
}

begin
  # Delete a Mutual TLS
  api_instance.delete_mutual_tls(opts)
rescue Fastly::ApiError => e
  puts "Error when calling MutualAuthenticationApi->delete_mutual_tls: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mutual_authentication_id** | **String** | Alphanumeric string identifying a mutual authentication. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_mutual_authentication()`

```ruby
get_mutual_authentication(opts): <MutualAuthenticationResponse> # Get a Mutual Authentication
```

Show a Mutual Authentication.

### Examples

```ruby
api_instance = Fastly::MutualAuthenticationApi.new
opts = {
    mutual_authentication_id: 'mutual_authentication_id_example', # String | Alphanumeric string identifying a mutual authentication.
    include: 'include_example', # String | Comma-separated list of related objects to include (optional). Permitted values: `tls_activations`. Including TLS activations will provide you with the TLS domain names that are related to your Mutual TLS authentication. 
}

begin
  # Get a Mutual Authentication
  result = api_instance.get_mutual_authentication(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling MutualAuthenticationApi->get_mutual_authentication: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-separated list of related objects to include (optional). Permitted values: `tls_activations`. Including TLS activations will provide you with the TLS domain names that are related to your Mutual TLS authentication.  | [optional] |
| **mutual_authentication_id** | **String** | Alphanumeric string identifying a mutual authentication. |  |

### Return type

[**MutualAuthenticationResponse**](MutualAuthenticationResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_mutual_authentications()`

```ruby
list_mutual_authentications(opts): <MutualAuthenticationsResponse> # List Mutual Authentications
```

List all mutual authentications.

### Examples

```ruby
api_instance = Fastly::MutualAuthenticationApi.new
opts = {
    include: 'include_example', # String | Comma-separated list of related objects to include (optional). Permitted values: `tls_activations`. Including TLS activations will provide you with the TLS domain names that are related to your Mutual TLS authentication. 
    page_number: 1, # Integer | Current page.
    page_size: 20, # Integer | Number of records per page.
}

begin
  # List Mutual Authentications
  result = api_instance.list_mutual_authentications(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling MutualAuthenticationApi->list_mutual_authentications: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Comma-separated list of related objects to include (optional). Permitted values: `tls_activations`. Including TLS activations will provide you with the TLS domain names that are related to your Mutual TLS authentication.  | [optional] |
| **page_number** | **Integer** | Current page. | [optional] |
| **page_size** | **Integer** | Number of records per page. | [optional][default to 20] |

### Return type

[**MutualAuthenticationsResponse**](MutualAuthenticationsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `patch_mutual_authentication()`

```ruby
patch_mutual_authentication(opts): <MutualAuthenticationResponse> # Update a Mutual Authentication
```

Update a Mutual Authentication.

### Examples

```ruby
api_instance = Fastly::MutualAuthenticationApi.new
opts = {
    mutual_authentication_id: 'mutual_authentication_id_example', # String | Alphanumeric string identifying a mutual authentication.
    mutual_authentication: Fastly::MutualAuthentication.new, # MutualAuthentication | 
}

begin
  # Update a Mutual Authentication
  result = api_instance.patch_mutual_authentication(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling MutualAuthenticationApi->patch_mutual_authentication: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mutual_authentication_id** | **String** | Alphanumeric string identifying a mutual authentication. |  |
| **mutual_authentication** | [**MutualAuthentication**](MutualAuthentication.md) |  | [optional] |

### Return type

[**MutualAuthenticationResponse**](MutualAuthenticationResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
