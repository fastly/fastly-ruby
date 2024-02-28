# Fastly::AutomationTokensApi


```ruby
require 'fastly'
api_instance = Fastly::AutomationTokensApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_automation_token**](AutomationTokensApi.md#create_automation_token) | **POST** /automation-tokens | Create Automation Token |
| [**get_automation_token_id**](AutomationTokensApi.md#get_automation_token_id) | **GET** /automation-tokens/{id} | Retrieve an Automation Token by ID |
| [**get_automation_tokens_id_services**](AutomationTokensApi.md#get_automation_tokens_id_services) | **GET** /automation-tokens/{id}/services | List Automation Token Services |
| [**list_automation_tokens**](AutomationTokensApi.md#list_automation_tokens) | **GET** /automation-tokens | List Customer Automation Tokens |
| [**revoke_automation_token_id**](AutomationTokensApi.md#revoke_automation_token_id) | **DELETE** /automation-tokens/{id} | Revoke an Automation Token by ID |


## `create_automation_token()`

```ruby
create_automation_token(opts): <AutomationTokenCreateResponse> # Create Automation Token
```

Creates a new automation token.

### Examples

```ruby
api_instance = Fastly::AutomationTokensApi.new
opts = {
    automation_token_create_request: Fastly::AutomationTokenCreateRequest.new, # AutomationTokenCreateRequest | 
}

begin
  # Create Automation Token
  result = api_instance.create_automation_token(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AutomationTokensApi->create_automation_token: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automation_token_create_request** | [**AutomationTokenCreateRequest**](AutomationTokenCreateRequest.md) |  | [optional] |

### Return type

[**AutomationTokenCreateResponse**](AutomationTokenCreateResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_automation_token_id()`

```ruby
get_automation_token_id(opts): <AutomationTokenResponse> # Retrieve an Automation Token by ID
```

Retrieves an automation token by ID.

### Examples

```ruby
api_instance = Fastly::AutomationTokensApi.new
opts = {
    id: 'id_example', # String | 
}

begin
  # Retrieve an Automation Token by ID
  result = api_instance.get_automation_token_id(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AutomationTokensApi->get_automation_token_id: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**AutomationTokenResponse**](AutomationTokenResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_automation_tokens_id_services()`

```ruby
get_automation_tokens_id_services(opts): <InlineResponse2001> # List Automation Token Services
```

List of services associated with the automation token.

### Examples

```ruby
api_instance = Fastly::AutomationTokensApi.new
opts = {
    id: 'id_example', # String | 
    per_page: 56, # Integer | 
    page: 56, # Integer | 
}

begin
  # List Automation Token Services
  result = api_instance.get_automation_tokens_id_services(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AutomationTokensApi->get_automation_tokens_id_services: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **per_page** | **Integer** |  | [optional] |
| **page** | **Integer** |  | [optional] |

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_automation_tokens()`

```ruby
list_automation_tokens(opts): <Array<AutomationTokenResponse>> # List Customer Automation Tokens
```

Lists all automation tokens for a customer.

### Examples

```ruby
api_instance = Fastly::AutomationTokensApi.new
opts = {
    per_page: 56, # Integer | 
    page: 56, # Integer | 
}

begin
  # List Customer Automation Tokens
  result = api_instance.list_automation_tokens(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AutomationTokensApi->list_automation_tokens: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **per_page** | **Integer** |  | [optional] |
| **page** | **Integer** |  | [optional] |

### Return type

[**Array&lt;AutomationTokenResponse&gt;**](AutomationTokenResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `revoke_automation_token_id()`

```ruby
revoke_automation_token_id(opts): <AutomationTokenErrorResponse> # Revoke an Automation Token by ID
```

Revoke an automation token by ID.

### Examples

```ruby
api_instance = Fastly::AutomationTokensApi.new
opts = {
    id: 'id_example', # String | 
}

begin
  # Revoke an Automation Token by ID
  result = api_instance.revoke_automation_token_id(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AutomationTokensApi->revoke_automation_token_id: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**AutomationTokenErrorResponse**](AutomationTokenErrorResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
