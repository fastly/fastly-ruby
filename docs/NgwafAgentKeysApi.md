# Fastly::NgwafAgentKeysApi


```ruby
require 'fastly'
api_instance = Fastly::NgwafAgentKeysApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**ngwaf_list_agent_keys**](NgwafAgentKeysApi.md#ngwaf_list_agent_keys) | **GET** /ngwaf/v1/workspaces/{workspace_id}/agent-keys | List agent keys for a workspace


## `ngwaf_list_agent_keys()`

```ruby
ngwaf_list_agent_keys(opts): <InlineResponse20019> # List agent keys for a workspace
```

List agent keys for a workspace.

### Examples

```ruby
api_instance = Fastly::NgwafAgentKeysApi.new
opts = {
    workspace_id: 'SU1Z0isxPaozGVKXdv0eY', # String | The ID of the workspace.
}

begin
  # List agent keys for a workspace
  result = api_instance.ngwaf_list_agent_keys(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling NgwafAgentKeysApi->ngwaf_list_agent_keys: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** | The ID of the workspace. |  |

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
