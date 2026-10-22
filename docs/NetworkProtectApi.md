# Fastly::NetworkProtectApi


```ruby
require 'fastly'
api_instance = Fastly::NetworkProtectApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**create_network_protect_endpoint**](NetworkProtectApi.md#create_network_protect_endpoint) | **POST** /network-protect/v1/endpoints | Create a Network Protect endpoint
[**create_network_protect_network**](NetworkProtectApi.md#create_network_protect_network) | **POST** /network-protect/v1/networks | Create a Network Protect network
[**create_network_protect_prefix_list**](NetworkProtectApi.md#create_network_protect_prefix_list) | **POST** /network-protect/v1/prefix-lists | Create a Network Protect prefix list
[**create_network_protect_rule_set**](NetworkProtectApi.md#create_network_protect_rule_set) | **POST** /network-protect/v1/rule-sets | Create a Network Protect rule set
[**delete_network_protect_endpoint**](NetworkProtectApi.md#delete_network_protect_endpoint) | **DELETE** /network-protect/v1/endpoints/{endpoint_id} | Delete a Network Protect endpoint
[**delete_network_protect_network**](NetworkProtectApi.md#delete_network_protect_network) | **DELETE** /network-protect/v1/networks/{network_id} | Delete a Network Protect network
[**delete_network_protect_prefix_list**](NetworkProtectApi.md#delete_network_protect_prefix_list) | **DELETE** /network-protect/v1/prefix-lists/{prefix_list_id} | Delete a Network Protect prefix list
[**delete_network_protect_rule_set**](NetworkProtectApi.md#delete_network_protect_rule_set) | **DELETE** /network-protect/v1/rule-sets/{rule_set_id} | Delete a Network Protect rule set
[**get_network_protect_endpoint**](NetworkProtectApi.md#get_network_protect_endpoint) | **GET** /network-protect/v1/endpoints/{endpoint_id} | Get a Network Protect endpoint
[**get_network_protect_network**](NetworkProtectApi.md#get_network_protect_network) | **GET** /network-protect/v1/networks/{network_id} | Get a Network Protect network
[**get_network_protect_prefix_list**](NetworkProtectApi.md#get_network_protect_prefix_list) | **GET** /network-protect/v1/prefix-lists/{prefix_list_id} | Get a Network Protect prefix list
[**get_network_protect_rule_set**](NetworkProtectApi.md#get_network_protect_rule_set) | **GET** /network-protect/v1/rule-sets/{rule_set_id} | Get a Network Protect rule set
[**list_network_protect_endpoints**](NetworkProtectApi.md#list_network_protect_endpoints) | **GET** /network-protect/v1/endpoints | List Network Protect endpoints
[**list_network_protect_networks**](NetworkProtectApi.md#list_network_protect_networks) | **GET** /network-protect/v1/networks | List Network Protect networks
[**list_network_protect_prefix_lists**](NetworkProtectApi.md#list_network_protect_prefix_lists) | **GET** /network-protect/v1/prefix-lists | List Network Protect prefix lists
[**list_network_protect_rule_sets**](NetworkProtectApi.md#list_network_protect_rule_sets) | **GET** /network-protect/v1/rule-sets | List Network Protect rule sets
[**update_network_protect_endpoint**](NetworkProtectApi.md#update_network_protect_endpoint) | **PATCH** /network-protect/v1/endpoints/{endpoint_id} | Update a Network Protect endpoint
[**update_network_protect_network**](NetworkProtectApi.md#update_network_protect_network) | **PATCH** /network-protect/v1/networks/{network_id} | Update a Network Protect network
[**update_network_protect_prefix_list**](NetworkProtectApi.md#update_network_protect_prefix_list) | **PATCH** /network-protect/v1/prefix-lists/{prefix_list_id} | Update a Network Protect prefix list
[**update_network_protect_rule_set**](NetworkProtectApi.md#update_network_protect_rule_set) | **PATCH** /network-protect/v1/rule-sets/{rule_set_id} | Update a Network Protect rule set


## `create_network_protect_endpoint()`

```ruby
create_network_protect_endpoint(opts): <NetworkProtectEndpointResponse> # Create a Network Protect endpoint
```

Creates a GRE delivery destination. A new endpoint is not attached to a network until it is added to an endpoint policy.

### Examples

```ruby
api_instance = Fastly::NetworkProtectApi.new
opts = {
    network_protect_endpoint_create: Fastly::NetworkProtectEndpointCreate.new({name: 'Transit network', ip_address: '192.0.2.10'}), # NetworkProtectEndpointCreate | 
}

begin
  # Create a Network Protect endpoint
  result = api_instance.create_network_protect_endpoint(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling NetworkProtectApi->create_network_protect_endpoint: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_protect_endpoint_create** | [**NetworkProtectEndpointCreate**](NetworkProtectEndpointCreate.md) |  |  |

### Return type

[**NetworkProtectEndpointResponse**](NetworkProtectEndpointResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `create_network_protect_network()`

```ruby
create_network_protect_network(opts): <NetworkProtectNetworkResponse> # Create a Network Protect network
```

Registers customer-owned IP space for protection. The network starts with advertisement disabled and Fastly does not announce its prefix. Turn advertisement on after LOA and ROA authorization are ready. The create request cannot include advertise; sending it returns a `400 Bad Request` error.

### Examples

```ruby
api_instance = Fastly::NetworkProtectApi.new
opts = {
    network_protect_network_create: Fastly::NetworkProtectNetworkCreate.new({name: 'Transit network', prefix: '198.51.100.0/24'}), # NetworkProtectNetworkCreate | 
}

begin
  # Create a Network Protect network
  result = api_instance.create_network_protect_network(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling NetworkProtectApi->create_network_protect_network: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_protect_network_create** | [**NetworkProtectNetworkCreate**](NetworkProtectNetworkCreate.md) |  |  |

### Return type

[**NetworkProtectNetworkResponse**](NetworkProtectNetworkResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `create_network_protect_prefix_list()`

```ruby
create_network_protect_prefix_list(opts): <NetworkProtectPrefixListResponse> # Create a Network Protect prefix list
```

Creates a typed list of addresses that rules can reference. The family is required and cannot be changed. The addresses list may remain empty.

### Examples

```ruby
api_instance = Fastly::NetworkProtectApi.new
opts = {
    network_protect_prefix_list_create: Fastly::NetworkProtectPrefixListCreate.new({name: 'Transit network', family: Fastly::NetworkProtectPrefixListFamily::V4, addresses: ["192.0.2.20", "203.0.113.0/24"]}), # NetworkProtectPrefixListCreate | 
}

begin
  # Create a Network Protect prefix list
  result = api_instance.create_network_protect_prefix_list(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling NetworkProtectApi->create_network_protect_prefix_list: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_protect_prefix_list_create** | [**NetworkProtectPrefixListCreate**](NetworkProtectPrefixListCreate.md) |  |  |

### Return type

[**NetworkProtectPrefixListResponse**](NetworkProtectPrefixListResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `create_network_protect_rule_set()`

```ruby
create_network_protect_rule_set(opts): <NetworkProtectRuleSetResponse> # Create a Network Protect rule set
```

Creates an ordered rule set and stores its filtering intent. A rule set has at most 64 rules and uses the default action when no rule matches. Custom attachment and detachment are restricted in this release.

### Examples

```ruby
api_instance = Fastly::NetworkProtectApi.new
opts = {
    network_protect_rule_set_create: Fastly::NetworkProtectRuleSetCreate.new({default_action: Fastly::NetworkProtectRuleSetDefaultAction::ALLOW}), # NetworkProtectRuleSetCreate | 
}

begin
  # Create a Network Protect rule set
  result = api_instance.create_network_protect_rule_set(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling NetworkProtectApi->create_network_protect_rule_set: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_protect_rule_set_create** | [**NetworkProtectRuleSetCreate**](NetworkProtectRuleSetCreate.md) |  |  |

### Return type

[**NetworkProtectRuleSetResponse**](NetworkProtectRuleSetResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_network_protect_endpoint()`

```ruby
delete_network_protect_endpoint(opts) # Delete a Network Protect endpoint
```

Deletes an endpoint. The endpoint must first be removed from every network policy; active references return a `409 Conflict` error.

### Examples

```ruby
api_instance = Fastly::NetworkProtectApi.new
opts = {
    endpoint_id: 'DBOEWyMXebAir5qwjWEwK1', # String | Unique identifier of the Network Protect endpoint.
}

begin
  # Delete a Network Protect endpoint
  api_instance.delete_network_protect_endpoint(opts)
rescue Fastly::ApiError => e
  puts "Error when calling NetworkProtectApi->delete_network_protect_endpoint: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **endpoint_id** | **String** | Unique identifier of the Network Protect endpoint. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_network_protect_network()`

```ruby
delete_network_protect_network(opts) # Delete a Network Protect network
```

Deletes a network and stops its advertisement and filtering. Endpoints and rule sets used by the network are not deleted.

### Examples

```ruby
api_instance = Fastly::NetworkProtectApi.new
opts = {
    network_id: 'an7NWnhOjjOkwSNvrwphTd', # String | Unique identifier of the Network Protect network.
}

begin
  # Delete a Network Protect network
  api_instance.delete_network_protect_network(opts)
rescue Fastly::ApiError => e
  puts "Error when calling NetworkProtectApi->delete_network_protect_network: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_id** | **String** | Unique identifier of the Network Protect network. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_network_protect_prefix_list()`

```ruby
delete_network_protect_prefix_list(opts) # Delete a Network Protect prefix list
```

Deletes a prefix list. Active rule references must be removed first; referenced lists return a `409 Conflict` error. Unknown and foreign IDs are indistinguishable and return a `404 Not Found` error.

### Examples

```ruby
api_instance = Fastly::NetworkProtectApi.new
opts = {
    prefix_list_id: 'QoavyX1BHOMGQm2zmVyEbS', # String | Unique identifier of the Network Protect prefix list.
}

begin
  # Delete a Network Protect prefix list
  api_instance.delete_network_protect_prefix_list(opts)
rescue Fastly::ApiError => e
  puts "Error when calling NetworkProtectApi->delete_network_protect_prefix_list: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prefix_list_id** | **String** | Unique identifier of the Network Protect prefix list. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_network_protect_rule_set()`

```ruby
delete_network_protect_rule_set(opts) # Delete a Network Protect rule set
```

Deletes a rule set. Attached rule sets cannot be deleted and return a `409 Conflict` error until their references are removed.

### Examples

```ruby
api_instance = Fastly::NetworkProtectApi.new
opts = {
    rule_set_id: 'Z4xQoBznwNb5GJfdJbp58Y', # String | Unique identifier of the Network Protect rule set.
}

begin
  # Delete a Network Protect rule set
  api_instance.delete_network_protect_rule_set(opts)
rescue Fastly::ApiError => e
  puts "Error when calling NetworkProtectApi->delete_network_protect_rule_set: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_set_id** | **String** | Unique identifier of the Network Protect rule set. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_network_protect_endpoint()`

```ruby
get_network_protect_endpoint(opts): <NetworkProtectEndpointResponse> # Get a Network Protect endpoint
```

Retrieves a single endpoint by its identifier.

### Examples

```ruby
api_instance = Fastly::NetworkProtectApi.new
opts = {
    endpoint_id: 'DBOEWyMXebAir5qwjWEwK1', # String | Unique identifier of the Network Protect endpoint.
}

begin
  # Get a Network Protect endpoint
  result = api_instance.get_network_protect_endpoint(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling NetworkProtectApi->get_network_protect_endpoint: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **endpoint_id** | **String** | Unique identifier of the Network Protect endpoint. |  |

### Return type

[**NetworkProtectEndpointResponse**](NetworkProtectEndpointResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_network_protect_network()`

```ruby
get_network_protect_network(opts): <NetworkProtectNetworkResponse> # Get a Network Protect network
```

Retrieves a single network by its identifier.

### Examples

```ruby
api_instance = Fastly::NetworkProtectApi.new
opts = {
    network_id: 'an7NWnhOjjOkwSNvrwphTd', # String | Unique identifier of the Network Protect network.
}

begin
  # Get a Network Protect network
  result = api_instance.get_network_protect_network(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling NetworkProtectApi->get_network_protect_network: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_id** | **String** | Unique identifier of the Network Protect network. |  |

### Return type

[**NetworkProtectNetworkResponse**](NetworkProtectNetworkResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_network_protect_prefix_list()`

```ruby
get_network_protect_prefix_list(opts): <NetworkProtectPrefixListResponse> # Get a Network Protect prefix list
```

Retrieves a single prefix list by its identifier. Unknown and foreign IDs are indistinguishable and return a `404 Not Found` error.

### Examples

```ruby
api_instance = Fastly::NetworkProtectApi.new
opts = {
    prefix_list_id: 'QoavyX1BHOMGQm2zmVyEbS', # String | Unique identifier of the Network Protect prefix list.
}

begin
  # Get a Network Protect prefix list
  result = api_instance.get_network_protect_prefix_list(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling NetworkProtectApi->get_network_protect_prefix_list: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prefix_list_id** | **String** | Unique identifier of the Network Protect prefix list. |  |

### Return type

[**NetworkProtectPrefixListResponse**](NetworkProtectPrefixListResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_network_protect_rule_set()`

```ruby
get_network_protect_rule_set(opts): <NetworkProtectRuleSetResponse> # Get a Network Protect rule set
```

Retrieves a single rule set with rules in evaluation order.

### Examples

```ruby
api_instance = Fastly::NetworkProtectApi.new
opts = {
    rule_set_id: 'Z4xQoBznwNb5GJfdJbp58Y', # String | Unique identifier of the Network Protect rule set.
}

begin
  # Get a Network Protect rule set
  result = api_instance.get_network_protect_rule_set(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling NetworkProtectApi->get_network_protect_rule_set: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_set_id** | **String** | Unique identifier of the Network Protect rule set. |  |

### Return type

[**NetworkProtectRuleSetResponse**](NetworkProtectRuleSetResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_network_protect_endpoints()`

```ruby
list_network_protect_endpoints(opts): <NetworkProtectEndpointsResponse> # List Network Protect endpoints
```

Lists the customer's GRE delivery endpoints in ascending ID order. The response is cursor-paginated and includes the effective page limit.

### Examples

```ruby
api_instance = Fastly::NetworkProtectApi.new
opts = {
    limit: 100, # Integer | Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a `400 Bad Request` error.
    cursor: 'network-cursor-next', # String | Continuation value from a previous response's meta.next_cursor. Omit this parameter to request the first page.
}

begin
  # List Network Protect endpoints
  result = api_instance.list_network_protect_endpoints(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling NetworkProtectApi->list_network_protect_endpoints: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a `400 Bad Request` error. | [optional][default to 100] |
| **cursor** | **String** | Continuation value from a previous response&#39;s meta.next_cursor. Omit this parameter to request the first page. | [optional] |

### Return type

[**NetworkProtectEndpointsResponse**](NetworkProtectEndpointsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_network_protect_networks()`

```ruby
list_network_protect_networks(opts): <NetworkProtectNetworksResponse> # List Network Protect networks
```

Lists the customer's networks in ascending ID order. The response is cursor-paginated and includes the effective page limit.

### Examples

```ruby
api_instance = Fastly::NetworkProtectApi.new
opts = {
    limit: 100, # Integer | Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a `400 Bad Request` error.
    cursor: 'network-cursor-next', # String | Continuation value from a previous response's meta.next_cursor. Omit this parameter to request the first page.
}

begin
  # List Network Protect networks
  result = api_instance.list_network_protect_networks(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling NetworkProtectApi->list_network_protect_networks: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a `400 Bad Request` error. | [optional][default to 100] |
| **cursor** | **String** | Continuation value from a previous response&#39;s meta.next_cursor. Omit this parameter to request the first page. | [optional] |

### Return type

[**NetworkProtectNetworksResponse**](NetworkProtectNetworksResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_network_protect_prefix_lists()`

```ruby
list_network_protect_prefix_lists(opts): <NetworkProtectPrefixListsResponse> # List Network Protect prefix lists
```

Lists prefix lists in ascending ID order. Positive limits above 1000 are accepted and clamped to 1000. Invalid limits return a `400 Bad Request` error.

### Examples

```ruby
api_instance = Fastly::NetworkProtectApi.new
opts = {
    limit: 100, # Integer | Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a `400 Bad Request` error.
    cursor: 'network-cursor-next', # String | Continuation value from a previous response's meta.next_cursor. Omit this parameter to request the first page.
}

begin
  # List Network Protect prefix lists
  result = api_instance.list_network_protect_prefix_lists(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling NetworkProtectApi->list_network_protect_prefix_lists: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a `400 Bad Request` error. | [optional][default to 100] |
| **cursor** | **String** | Continuation value from a previous response&#39;s meta.next_cursor. Omit this parameter to request the first page. | [optional] |

### Return type

[**NetworkProtectPrefixListsResponse**](NetworkProtectPrefixListsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_network_protect_rule_sets()`

```ruby
list_network_protect_rule_sets(opts): <NetworkProtectRuleSetsResponse> # List Network Protect rule sets
```

Lists rule sets in ascending ID order. Positive limits above 1000 are accepted and clamped to 1000; invalid limits return a `400 Bad Request` error.

### Examples

```ruby
api_instance = Fastly::NetworkProtectApi.new
opts = {
    limit: 100, # Integer | Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a `400 Bad Request` error.
    cursor: 'network-cursor-next', # String | Continuation value from a previous response's meta.next_cursor. Omit this parameter to request the first page.
}

begin
  # List Network Protect rule sets
  result = api_instance.list_network_protect_rule_sets(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling NetworkProtectApi->list_network_protect_rule_sets: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a `400 Bad Request` error. | [optional][default to 100] |
| **cursor** | **String** | Continuation value from a previous response&#39;s meta.next_cursor. Omit this parameter to request the first page. | [optional] |

### Return type

[**NetworkProtectRuleSetsResponse**](NetworkProtectRuleSetsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_network_protect_endpoint()`

```ruby
update_network_protect_endpoint(opts): <NetworkProtectEndpointResponse> # Update a Network Protect endpoint
```

Updates an endpoint. Omitted fields remain unchanged. The IP address cannot be changed; create a new endpoint if the destination changes.

### Examples

```ruby
api_instance = Fastly::NetworkProtectApi.new
opts = {
    endpoint_id: 'DBOEWyMXebAir5qwjWEwK1', # String | Unique identifier of the Network Protect endpoint.
    network_protect_endpoint_update: Fastly::NetworkProtectEndpointUpdate.new({name: 'Transit network'}), # NetworkProtectEndpointUpdate | 
}

begin
  # Update a Network Protect endpoint
  result = api_instance.update_network_protect_endpoint(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling NetworkProtectApi->update_network_protect_endpoint: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **endpoint_id** | **String** | Unique identifier of the Network Protect endpoint. |  |
| **network_protect_endpoint_update** | [**NetworkProtectEndpointUpdate**](NetworkProtectEndpointUpdate.md) |  |  |

### Return type

[**NetworkProtectEndpointResponse**](NetworkProtectEndpointResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_network_protect_network()`

```ruby
update_network_protect_network(opts): <NetworkProtectNetworkResponse> # Update a Network Protect network
```

Updates a network. Omitted fields remain unchanged. The prefix cannot be changed. Sending `endpoint_policies` replaces the complete policy list; an empty array removes every policy. Advertisement is desired state. Enabling it requires an approved LOA, a valid ROA, and a ready default-region delivery policy. A readiness failure returns a `409 Conflict` error.

### Examples

```ruby
api_instance = Fastly::NetworkProtectApi.new
opts = {
    network_id: 'an7NWnhOjjOkwSNvrwphTd', # String | Unique identifier of the Network Protect network.
    network_protect_network_update: Fastly::NetworkProtectNetworkUpdate.new, # NetworkProtectNetworkUpdate | 
}

begin
  # Update a Network Protect network
  result = api_instance.update_network_protect_network(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling NetworkProtectApi->update_network_protect_network: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_id** | **String** | Unique identifier of the Network Protect network. |  |
| **network_protect_network_update** | [**NetworkProtectNetworkUpdate**](NetworkProtectNetworkUpdate.md) |  |  |

### Return type

[**NetworkProtectNetworkResponse**](NetworkProtectNetworkResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_network_protect_prefix_list()`

```ruby
update_network_protect_prefix_list(opts): <NetworkProtectPrefixListResponse> # Update a Network Protect prefix list
```

Updates a prefix list. The family cannot be changed. Sending addresses replaces the complete list; an empty array clears it when no active source-list restriction applies. Addresses are canonicalized, deduplicated, and sorted by the backend.

### Examples

```ruby
api_instance = Fastly::NetworkProtectApi.new
opts = {
    prefix_list_id: 'QoavyX1BHOMGQm2zmVyEbS', # String | Unique identifier of the Network Protect prefix list.
    network_protect_prefix_list_update: Fastly::NetworkProtectPrefixListUpdate.new, # NetworkProtectPrefixListUpdate | 
}

begin
  # Update a Network Protect prefix list
  result = api_instance.update_network_protect_prefix_list(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling NetworkProtectApi->update_network_protect_prefix_list: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prefix_list_id** | **String** | Unique identifier of the Network Protect prefix list. |  |
| **network_protect_prefix_list_update** | [**NetworkProtectPrefixListUpdate**](NetworkProtectPrefixListUpdate.md) |  |  |

### Return type

[**NetworkProtectPrefixListResponse**](NetworkProtectPrefixListResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_network_protect_rule_set()`

```ruby
update_network_protect_rule_set(opts): <NetworkProtectRuleSetResponse> # Update a Network Protect rule set
```

Updates a rule set. Omitted fields remain unchanged. Sending rules replaces the complete ordered list; an empty array removes every rule. Custom attachment and detachment remain restricted in this release.

### Examples

```ruby
api_instance = Fastly::NetworkProtectApi.new
opts = {
    rule_set_id: 'Z4xQoBznwNb5GJfdJbp58Y', # String | Unique identifier of the Network Protect rule set.
    network_protect_rule_set_update: Fastly::NetworkProtectRuleSetUpdate.new, # NetworkProtectRuleSetUpdate | 
}

begin
  # Update a Network Protect rule set
  result = api_instance.update_network_protect_rule_set(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling NetworkProtectApi->update_network_protect_rule_set: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_set_id** | **String** | Unique identifier of the Network Protect rule set. |  |
| **network_protect_rule_set_update** | [**NetworkProtectRuleSetUpdate**](NetworkProtectRuleSetUpdate.md) |  |  |

### Return type

[**NetworkProtectRuleSetResponse**](NetworkProtectRuleSetResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
