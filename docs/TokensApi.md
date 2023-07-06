# Fastly::TokensApi


```ruby
require 'fastly'
api_instance = Fastly::TokensApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bulk_revoke_tokens**](TokensApi.md#bulk_revoke_tokens) | **DELETE** /tokens | Revoke multiple tokens |
| [**create_token**](TokensApi.md#create_token) | **POST** /tokens | Create a token |
| [**get_token**](TokensApi.md#get_token) | **GET** /tokens/{token_id} | Get a token |
| [**get_token_current**](TokensApi.md#get_token_current) | **GET** /tokens/self | Get the current token |
| [**list_tokens_customer**](TokensApi.md#list_tokens_customer) | **GET** /customer/{customer_id}/tokens | List tokens for a customer |
| [**list_tokens_user**](TokensApi.md#list_tokens_user) | **GET** /tokens | List tokens for the authenticated user |
| [**revoke_token**](TokensApi.md#revoke_token) | **DELETE** /tokens/{token_id} | Revoke a token |
| [**revoke_token_current**](TokensApi.md#revoke_token_current) | **DELETE** /tokens/self | Revoke the current token |


## `bulk_revoke_tokens()`

```ruby
bulk_revoke_tokens(opts) # Revoke multiple tokens
```

Revoke Tokens in bulk format. Users may only revoke their own tokens. Superusers may revoke tokens of others.

### Examples

```ruby
api_instance = Fastly::TokensApi.new
opts = {
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Revoke multiple tokens
  api_instance.bulk_revoke_tokens(opts)
rescue Fastly::ApiError => e
  puts "Error when calling TokensApi->bulk_revoke_tokens: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `create_token()`

```ruby
create_token: <TokenCreatedResponse> # Create a token
```

Create an API token. If two-factor authentication is enabled for your account, review [the instructions](/reference/api/auth-tokens/user/) for including a one-time password in the request. 

### Examples

```ruby
api_instance = Fastly::TokensApi.new

begin
  # Create a token
  result = api_instance.create_token
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TokensApi->create_token: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**TokenCreatedResponse**](TokenCreatedResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_token()`

```ruby
get_token(opts): <TokenResponse> # Get a token
```

Get a single token by its id.

### Examples

```ruby
api_instance = Fastly::TokensApi.new
opts = {
    token_id: 'token_id_example', # String | Alphanumeric string identifying a token.
}

begin
  # Get a token
  result = api_instance.get_token(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TokensApi->get_token: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token_id** | **String** | Alphanumeric string identifying a token. |  |

### Return type

[**TokenResponse**](TokenResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_token_current()`

```ruby
get_token_current: <TokenResponse> # Get the current token
```

Get a single token based on the access_token used in the request.

### Examples

```ruby
api_instance = Fastly::TokensApi.new

begin
  # Get the current token
  result = api_instance.get_token_current
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TokensApi->get_token_current: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**TokenResponse**](TokenResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_tokens_customer()`

```ruby
list_tokens_customer(opts): <Array<TokenResponse>> # List tokens for a customer
```

List all tokens belonging to a specific customer.

### Examples

```ruby
api_instance = Fastly::TokensApi.new
opts = {
    customer_id: 'customer_id_example', # String | Alphanumeric string identifying the customer.
}

begin
  # List tokens for a customer
  result = api_instance.list_tokens_customer(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TokensApi->list_tokens_customer: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Alphanumeric string identifying the customer. |  |

### Return type

[**Array&lt;TokenResponse&gt;**](TokenResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_tokens_user()`

```ruby
list_tokens_user: <Array<TokenResponse>> # List tokens for the authenticated user
```

List all tokens belonging to the authenticated user.

### Examples

```ruby
api_instance = Fastly::TokensApi.new

begin
  # List tokens for the authenticated user
  result = api_instance.list_tokens_user
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TokensApi->list_tokens_user: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**Array&lt;TokenResponse&gt;**](TokenResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `revoke_token()`

```ruby
revoke_token(opts) # Revoke a token
```

Revoke a specific token by its id.

### Examples

```ruby
api_instance = Fastly::TokensApi.new
opts = {
    token_id: 'token_id_example', # String | Alphanumeric string identifying a token.
}

begin
  # Revoke a token
  api_instance.revoke_token(opts)
rescue Fastly::ApiError => e
  puts "Error when calling TokensApi->revoke_token: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token_id** | **String** | Alphanumeric string identifying a token. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `revoke_token_current()`

```ruby
revoke_token_current # Revoke the current token
```

Revoke a token that is used to authenticate the request.

### Examples

```ruby
api_instance = Fastly::TokensApi.new

begin
  # Revoke the current token
  api_instance.revoke_token_current
rescue Fastly::ApiError => e
  puts "Error when calling TokensApi->revoke_token_current: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
