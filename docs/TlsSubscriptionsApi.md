# Fastly::TlsSubscriptionsApi


```ruby
require 'fastly'
api_instance = Fastly::TlsSubscriptionsApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_globalsign_email_challenge**](TlsSubscriptionsApi.md#create_globalsign_email_challenge) | **POST** /tls/subscriptions/{tls_subscription_id}/authorizations/{tls_authorization_id}/globalsign_email_challenges | Creates a GlobalSign email challenge. |
| [**create_tls_sub**](TlsSubscriptionsApi.md#create_tls_sub) | **POST** /tls/subscriptions | Create a TLS subscription |
| [**delete_globalsign_email_challenge**](TlsSubscriptionsApi.md#delete_globalsign_email_challenge) | **DELETE** /tls/subscriptions/{tls_subscription_id}/authorizations/{tls_authorization_id}/globalsign_email_challenges/{globalsign_email_challenge_id} | Delete a GlobalSign email challenge |
| [**delete_tls_sub**](TlsSubscriptionsApi.md#delete_tls_sub) | **DELETE** /tls/subscriptions/{tls_subscription_id} | Delete a TLS subscription |
| [**get_tls_sub**](TlsSubscriptionsApi.md#get_tls_sub) | **GET** /tls/subscriptions/{tls_subscription_id} | Get a TLS subscription |
| [**list_tls_subs**](TlsSubscriptionsApi.md#list_tls_subs) | **GET** /tls/subscriptions | List TLS subscriptions |
| [**patch_tls_sub**](TlsSubscriptionsApi.md#patch_tls_sub) | **PATCH** /tls/subscriptions/{tls_subscription_id} | Update a TLS subscription |


## `create_globalsign_email_challenge()`

```ruby
create_globalsign_email_challenge(opts): Object # Creates a GlobalSign email challenge.
```

Creates an email challenge for a domain on a GlobalSign subscription. An email challenge will generate an email that can be used to validate domain ownership. If this challenge is created, then the domain can only be validated using email for the given subscription. 

### Examples

```ruby
api_instance = Fastly::TlsSubscriptionsApi.new
opts = {
    tls_subscription_id: 'tls_subscription_id_example', # String | Alphanumeric string identifying a TLS subscription.
    tls_authorization_id: 'tls_authorization_id_example', # String | Alphanumeric string identifying a TLS subscription.
    request_body: { key: 3.56}, # Hash<String, Object> | 
}

begin
  # Creates a GlobalSign email challenge.
  result = api_instance.create_globalsign_email_challenge(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TlsSubscriptionsApi->create_globalsign_email_challenge: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tls_subscription_id** | **String** | Alphanumeric string identifying a TLS subscription. |  |
| **tls_authorization_id** | **String** | Alphanumeric string identifying a TLS subscription. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

**Object**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `create_tls_sub()`

```ruby
create_tls_sub(opts): <TlsSubscriptionResponse> # Create a TLS subscription
```

Create a new TLS subscription. This response includes a list of possible challenges to verify domain ownership.

### Examples

```ruby
api_instance = Fastly::TlsSubscriptionsApi.new
opts = {
    force: true, # Boolean | A flag that allows you to edit and delete a subscription with active domains. Valid to use on PATCH and DELETE actions. As a warning, removing an active domain from a subscription or forcing the deletion of a subscription may result in breaking TLS termination to that domain. 
    tls_subscription: Fastly::TlsSubscription.new, # TlsSubscription | 
}

begin
  # Create a TLS subscription
  result = api_instance.create_tls_sub(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TlsSubscriptionsApi->create_tls_sub: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **force** | **Boolean** | A flag that allows you to edit and delete a subscription with active domains. Valid to use on PATCH and DELETE actions. As a warning, removing an active domain from a subscription or forcing the deletion of a subscription may result in breaking TLS termination to that domain.  | [optional] |
| **tls_subscription** | [**TlsSubscription**](TlsSubscription.md) |  | [optional] |

### Return type

[**TlsSubscriptionResponse**](TlsSubscriptionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_globalsign_email_challenge()`

```ruby
delete_globalsign_email_challenge(opts) # Delete a GlobalSign email challenge
```

Deletes a GlobalSign email challenge. After a GlobalSign email challenge is deleted, the domain can use HTTP and DNS validation methods again.

### Examples

```ruby
api_instance = Fastly::TlsSubscriptionsApi.new
opts = {
    tls_subscription_id: 'tls_subscription_id_example', # String | Alphanumeric string identifying a TLS subscription.
    tls_authorization_id: 'tls_authorization_id_example', # String | Alphanumeric string identifying a TLS subscription.
    globalsign_email_challenge_id: 'gU3guUGZzb2W9Euo4Mo0r', # String | Alphanumeric string identifying a GlobalSign email challenge.
}

begin
  # Delete a GlobalSign email challenge
  api_instance.delete_globalsign_email_challenge(opts)
rescue Fastly::ApiError => e
  puts "Error when calling TlsSubscriptionsApi->delete_globalsign_email_challenge: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tls_subscription_id** | **String** | Alphanumeric string identifying a TLS subscription. |  |
| **tls_authorization_id** | **String** | Alphanumeric string identifying a TLS subscription. |  |
| **globalsign_email_challenge_id** | **String** | Alphanumeric string identifying a GlobalSign email challenge. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_tls_sub()`

```ruby
delete_tls_sub(opts) # Delete a TLS subscription
```

Destroy a TLS subscription. A subscription cannot be destroyed if there are domains in the TLS enabled state.

### Examples

```ruby
api_instance = Fastly::TlsSubscriptionsApi.new
opts = {
    tls_subscription_id: 'tls_subscription_id_example', # String | Alphanumeric string identifying a TLS subscription.
}

begin
  # Delete a TLS subscription
  api_instance.delete_tls_sub(opts)
rescue Fastly::ApiError => e
  puts "Error when calling TlsSubscriptionsApi->delete_tls_sub: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tls_subscription_id** | **String** | Alphanumeric string identifying a TLS subscription. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_tls_sub()`

```ruby
get_tls_sub(opts): <TlsSubscriptionResponse> # Get a TLS subscription
```

Show a TLS subscription.

### Examples

```ruby
api_instance = Fastly::TlsSubscriptionsApi.new
opts = {
    tls_subscription_id: 'tls_subscription_id_example', # String | Alphanumeric string identifying a TLS subscription.
    include: 'tls_authorizations', # String | Include related objects. Optional, comma-separated values. Permitted values: `tls_authorizations` and `tls_authorizations.globalsign_email_challenge`. 
}

begin
  # Get a TLS subscription
  result = api_instance.get_tls_sub(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TlsSubscriptionsApi->get_tls_sub: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Include related objects. Optional, comma-separated values. Permitted values: `tls_authorizations` and `tls_authorizations.globalsign_email_challenge`.  | [optional] |
| **tls_subscription_id** | **String** | Alphanumeric string identifying a TLS subscription. |  |

### Return type

[**TlsSubscriptionResponse**](TlsSubscriptionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_tls_subs()`

```ruby
list_tls_subs(opts): <TlsSubscriptionsResponse> # List TLS subscriptions
```

List all TLS subscriptions.

### Examples

```ruby
api_instance = Fastly::TlsSubscriptionsApi.new
opts = {
    filter_state: 'filter_state_example', # String | Limit the returned subscriptions by state. Valid values are `pending`, `processing`, `issued`, `renewing`, and `failed`. Accepts parameters: `not` (e.g., `filter[state][not]=renewing`). 
    filter_tls_domains_id: 'filter_tls_domains_id_example', # String | Limit the returned subscriptions to those that include the specific domain.
    filter_has_active_order: true, # Boolean | Limit the returned subscriptions to those that have currently active orders. Permitted values: `true`. 
    include: 'tls_authorizations', # String | Include related objects. Optional, comma-separated values. Permitted values: `tls_authorizations` and `tls_authorizations.globalsign_email_challenge`. 
    page_number: 1, # Integer | Current page.
    page_size: 20, # Integer | Number of records per page.
    sort: 'created_at', # String | The order in which to list the results by creation date.
}

begin
  # List TLS subscriptions
  result = api_instance.list_tls_subs(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TlsSubscriptionsApi->list_tls_subs: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_state** | **String** | Limit the returned subscriptions by state. Valid values are `pending`, `processing`, `issued`, `renewing`, and `failed`. Accepts parameters: `not` (e.g., `filter[state][not]&#x3D;renewing`).  | [optional] |
| **filter_tls_domains_id** | **String** | Limit the returned subscriptions to those that include the specific domain. | [optional] |
| **filter_has_active_order** | **Boolean** | Limit the returned subscriptions to those that have currently active orders. Permitted values: `true`.  | [optional] |
| **include** | **String** | Include related objects. Optional, comma-separated values. Permitted values: `tls_authorizations` and `tls_authorizations.globalsign_email_challenge`.  | [optional] |
| **page_number** | **Integer** | Current page. | [optional] |
| **page_size** | **Integer** | Number of records per page. | [optional][default to 20] |
| **sort** | **String** | The order in which to list the results by creation date. | [optional][default to &#39;created_at&#39;] |

### Return type

[**TlsSubscriptionsResponse**](TlsSubscriptionsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `patch_tls_sub()`

```ruby
patch_tls_sub(opts): <TlsSubscriptionResponse> # Update a TLS subscription
```

Change the TLS domains or common name associated with this subscription, update the TLS configuration for this set of domains, or retry a subscription with state `failed` by setting the state to `retry`.

### Examples

```ruby
api_instance = Fastly::TlsSubscriptionsApi.new
opts = {
    tls_subscription_id: 'tls_subscription_id_example', # String | Alphanumeric string identifying a TLS subscription.
    force: true, # Boolean | A flag that allows you to edit and delete a subscription with active domains. Valid to use on PATCH and DELETE actions. As a warning, removing an active domain from a subscription or forcing the deletion of a subscription may result in breaking TLS termination to that domain. 
    tls_subscription: Fastly::TlsSubscription.new, # TlsSubscription | 
}

begin
  # Update a TLS subscription
  result = api_instance.patch_tls_sub(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling TlsSubscriptionsApi->patch_tls_sub: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tls_subscription_id** | **String** | Alphanumeric string identifying a TLS subscription. |  |
| **force** | **Boolean** | A flag that allows you to edit and delete a subscription with active domains. Valid to use on PATCH and DELETE actions. As a warning, removing an active domain from a subscription or forcing the deletion of a subscription may result in breaking TLS termination to that domain.  | [optional] |
| **tls_subscription** | [**TlsSubscription**](TlsSubscription.md) |  | [optional] |

### Return type

[**TlsSubscriptionResponse**](TlsSubscriptionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
