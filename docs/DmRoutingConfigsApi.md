# Fastly::DmRoutingConfigsApi


```ruby
require 'fastly'
api_instance = Fastly::DmRoutingConfigsApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**activate_dm_routing_config_draft**](DmRoutingConfigsApi.md#activate_dm_routing_config_draft) | **POST** /domain-management/v1/routing-configs/{config_id}/activate | Activate the draft
[**create_dm_routing_config**](DmRoutingConfigsApi.md#create_dm_routing_config) | **POST** /domain-management/v1/routing-configs | Create a routing config
[**create_dm_routing_config_path**](DmRoutingConfigsApi.md#create_dm_routing_config_path) | **POST** /domain-management/v1/routing-configs/{config_id}/paths | Create a path
[**create_dm_routing_config_rule**](DmRoutingConfigsApi.md#create_dm_routing_config_rule) | **POST** /domain-management/v1/routing-configs/{config_id}/paths/{path_id}/rules | Create a rule
[**deactivate_dm_routing_config**](DmRoutingConfigsApi.md#deactivate_dm_routing_config) | **POST** /domain-management/v1/routing-configs/{config_id}/deactivate | Deactivate a routing config
[**delete_dm_routing_config**](DmRoutingConfigsApi.md#delete_dm_routing_config) | **DELETE** /domain-management/v1/routing-configs/{config_id} | Delete a routing config
[**delete_dm_routing_config_inactive_versions**](DmRoutingConfigsApi.md#delete_dm_routing_config_inactive_versions) | **DELETE** /domain-management/v1/routing-configs/{config_id}/versions/inactive | Delete inactive versions
[**delete_dm_routing_config_path**](DmRoutingConfigsApi.md#delete_dm_routing_config_path) | **DELETE** /domain-management/v1/routing-configs/{config_id}/paths/{path_id} | Delete a path
[**delete_dm_routing_config_rule**](DmRoutingConfigsApi.md#delete_dm_routing_config_rule) | **DELETE** /domain-management/v1/routing-configs/{config_id}/paths/{path_id}/rules/{rule_id} | Delete a rule
[**discard_dm_routing_config_draft**](DmRoutingConfigsApi.md#discard_dm_routing_config_draft) | **DELETE** /domain-management/v1/routing-configs/{config_id}/draft | Discard the draft
[**get_dm_routing_config**](DmRoutingConfigsApi.md#get_dm_routing_config) | **GET** /domain-management/v1/routing-configs/{config_id} | Get a routing config
[**get_dm_routing_config_draft_diff**](DmRoutingConfigsApi.md#get_dm_routing_config_draft_diff) | **GET** /domain-management/v1/routing-configs/{config_id}/draft/diff | Get the draft diff
[**get_dm_routing_config_path**](DmRoutingConfigsApi.md#get_dm_routing_config_path) | **GET** /domain-management/v1/routing-configs/{config_id}/paths/{path_id} | Get a path
[**get_dm_routing_config_rule**](DmRoutingConfigsApi.md#get_dm_routing_config_rule) | **GET** /domain-management/v1/routing-configs/{config_id}/paths/{path_id}/rules/{rule_id} | Get a rule
[**list_dm_routing_config_paths**](DmRoutingConfigsApi.md#list_dm_routing_config_paths) | **GET** /domain-management/v1/routing-configs/{config_id}/paths | List paths
[**list_dm_routing_config_rules**](DmRoutingConfigsApi.md#list_dm_routing_config_rules) | **GET** /domain-management/v1/routing-configs/{config_id}/paths/{path_id}/rules | List rules
[**list_dm_routing_config_versions**](DmRoutingConfigsApi.md#list_dm_routing_config_versions) | **GET** /domain-management/v1/routing-configs/{config_id}/versions | List versions
[**list_dm_routing_configs**](DmRoutingConfigsApi.md#list_dm_routing_configs) | **GET** /domain-management/v1/routing-configs | List routing configs
[**reactivate_dm_routing_config_version**](DmRoutingConfigsApi.md#reactivate_dm_routing_config_version) | **POST** /domain-management/v1/routing-configs/{config_id}/versions/{version_id}/activate | Reactivate a version
[**update_dm_routing_config_draft**](DmRoutingConfigsApi.md#update_dm_routing_config_draft) | **PATCH** /domain-management/v1/routing-configs/{config_id}/draft | Update the draft
[**update_dm_routing_config_path**](DmRoutingConfigsApi.md#update_dm_routing_config_path) | **PATCH** /domain-management/v1/routing-configs/{config_id}/paths/{path_id} | Update a path
[**update_dm_routing_config_rule**](DmRoutingConfigsApi.md#update_dm_routing_config_rule) | **PATCH** /domain-management/v1/routing-configs/{config_id}/paths/{path_id}/rules/{rule_id} | Update a rule


## `activate_dm_routing_config_draft()`

```ruby
activate_dm_routing_config_draft(opts): <RoutingConfigVersionResponse> # Activate the draft
```

Activate the current draft version. The previously active version, if any, becomes inactive but is retained in version history.

### Examples

```ruby
api_instance = Fastly::DmRoutingConfigsApi.new
opts = {
    config_id: 'config_id_example', # String | 
}

begin
  # Activate the draft
  result = api_instance.activate_dm_routing_config_draft(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DmRoutingConfigsApi->activate_dm_routing_config_draft: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_id** | **String** |  |  |

### Return type

[**RoutingConfigVersionResponse**](RoutingConfigVersionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `create_dm_routing_config()`

```ruby
create_dm_routing_config(opts): <RoutingConfigResponse> # Create a routing config
```

Create a new routing config. An optional `initial_version` may be provided to seed the config with paths and rules in a single request, and may also be activated immediately.

### Examples

```ruby
api_instance = Fastly::DmRoutingConfigsApi.new
opts = {
    routing_config: Fastly::RoutingConfig.new({name: 'name_example'}), # RoutingConfig | 
}

begin
  # Create a routing config
  result = api_instance.create_dm_routing_config(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DmRoutingConfigsApi->create_dm_routing_config: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **routing_config** | [**RoutingConfig**](RoutingConfig.md) |  | [optional] |

### Return type

[**RoutingConfigResponse**](RoutingConfigResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `create_dm_routing_config_path()`

```ruby
create_dm_routing_config_path(opts): <PathResponse> # Create a path
```

Add a new path to the config's draft version. If no draft exists, one is created automatically by cloning the active version.

### Examples

```ruby
api_instance = Fastly::DmRoutingConfigsApi.new
opts = {
    config_id: 'config_id_example', # String | 
    path_create: Fastly::PathCreate.new({path: 'path_example'}), # PathCreate | 
}

begin
  # Create a path
  result = api_instance.create_dm_routing_config_path(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DmRoutingConfigsApi->create_dm_routing_config_path: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_id** | **String** |  |  |
| **path_create** | [**PathCreate**](PathCreate.md) |  | [optional] |

### Return type

[**PathResponse**](PathResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `create_dm_routing_config_rule()`

```ruby
create_dm_routing_config_rule(opts): <RuleResponse> # Create a rule
```

Add a new rule to a path on the config's draft version. If no draft exists, one is created automatically by cloning the active version. A rule with an empty `conditions` array is a default (catch-all) rule and there can be at most one default rule per path.

### Examples

```ruby
api_instance = Fastly::DmRoutingConfigsApi.new
opts = {
    config_id: 'config_id_example', # String | 
    path_id: 'path_id_example', # String | 
    rule_create: Fastly::RuleCreate.new({action: Fastly::Action.new({type: Fastly::ActionType::action_type_service, value: 'value_example'}), conditions: [Fastly::RoutingConfigCondition.new({type: Fastly::ConditionType::condition_type_header, operator: Fastly::ConditionOperator::condition_operator_equals, value: 'value_example'})]}), # RuleCreate | 
}

begin
  # Create a rule
  result = api_instance.create_dm_routing_config_rule(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DmRoutingConfigsApi->create_dm_routing_config_rule: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_id** | **String** |  |  |
| **path_id** | **String** |  |  |
| **rule_create** | [**RuleCreate**](RuleCreate.md) |  | [optional] |

### Return type

[**RuleResponse**](RuleResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `deactivate_dm_routing_config()`

```ruby
deactivate_dm_routing_config(opts): <RoutingConfigResponse> # Deactivate a routing config
```

Clear the active version designation. This is a bookkeeping operation only — it does not stop edge traffic. Minerva continues serving the last-activated version until the domain association is removed in Spotless. Only removing the routing config from the domain (via Spotless) triggers Neptune to drop the reference, which causes Minerva to stop fetching and eventually clean up the cached config. Idempotent: returns 200 even if already deactivated.

### Examples

```ruby
api_instance = Fastly::DmRoutingConfigsApi.new
opts = {
    config_id: 'config_id_example', # String | 
}

begin
  # Deactivate a routing config
  result = api_instance.deactivate_dm_routing_config(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DmRoutingConfigsApi->deactivate_dm_routing_config: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_id** | **String** |  |  |

### Return type

[**RoutingConfigResponse**](RoutingConfigResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_dm_routing_config()`

```ruby
delete_dm_routing_config(opts) # Delete a routing config
```

Delete a routing config. By default, configs that have an active version cannot be deleted. Pass `force=true` to bypass the active-version check — this is destructive and will immediately stop traffic routing for any paths the config serves. The `force` parameter does **not** bypass the domain-association check; if domains are still associated, deletion is rejected with 409 regardless of `force`.

### Examples

```ruby
api_instance = Fastly::DmRoutingConfigsApi.new
opts = {
    config_id: 'config_id_example', # String | 
    force: true, # Boolean | When `true`, allows deleting a routing config that has an active version. This is destructive — traffic routing for any paths served by the config will stop immediately.
}

begin
  # Delete a routing config
  api_instance.delete_dm_routing_config(opts)
rescue Fastly::ApiError => e
  puts "Error when calling DmRoutingConfigsApi->delete_dm_routing_config: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_id** | **String** |  |  |
| **force** | **Boolean** | When `true`, allows deleting a routing config that has an active version. This is destructive — traffic routing for any paths served by the config will stop immediately. | [optional][default to false] |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_dm_routing_config_inactive_versions()`

```ruby
delete_dm_routing_config_inactive_versions(opts) # Delete inactive versions
```

Delete all inactive versions for a routing config. The currently active version, if any, is retained.

### Examples

```ruby
api_instance = Fastly::DmRoutingConfigsApi.new
opts = {
    config_id: 'config_id_example', # String | 
}

begin
  # Delete inactive versions
  api_instance.delete_dm_routing_config_inactive_versions(opts)
rescue Fastly::ApiError => e
  puts "Error when calling DmRoutingConfigsApi->delete_dm_routing_config_inactive_versions: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_id** | **String** |  |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_dm_routing_config_path()`

```ruby
delete_dm_routing_config_path(opts) # Delete a path
```

Delete a path from the config's draft version. If no draft exists, one is created automatically by cloning the active version.

### Examples

```ruby
api_instance = Fastly::DmRoutingConfigsApi.new
opts = {
    config_id: 'config_id_example', # String | 
    path_id: 'path_id_example', # String | 
}

begin
  # Delete a path
  api_instance.delete_dm_routing_config_path(opts)
rescue Fastly::ApiError => e
  puts "Error when calling DmRoutingConfigsApi->delete_dm_routing_config_path: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_id** | **String** |  |  |
| **path_id** | **String** |  |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_dm_routing_config_rule()`

```ruby
delete_dm_routing_config_rule(opts) # Delete a rule
```

Delete a rule from the config's draft version. If no draft exists, one is created automatically by cloning the active version.

### Examples

```ruby
api_instance = Fastly::DmRoutingConfigsApi.new
opts = {
    config_id: 'config_id_example', # String | 
    path_id: 'path_id_example', # String | 
    rule_id: 'rule_id_example', # String | 
}

begin
  # Delete a rule
  api_instance.delete_dm_routing_config_rule(opts)
rescue Fastly::ApiError => e
  puts "Error when calling DmRoutingConfigsApi->delete_dm_routing_config_rule: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_id** | **String** |  |  |
| **path_id** | **String** |  |  |
| **rule_id** | **String** |  |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `discard_dm_routing_config_draft()`

```ruby
discard_dm_routing_config_draft(opts) # Discard the draft
```

Delete the current draft version, reverting any unactivated changes.

### Examples

```ruby
api_instance = Fastly::DmRoutingConfigsApi.new
opts = {
    config_id: 'config_id_example', # String | 
}

begin
  # Discard the draft
  api_instance.discard_dm_routing_config_draft(opts)
rescue Fastly::ApiError => e
  puts "Error when calling DmRoutingConfigsApi->discard_dm_routing_config_draft: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_id** | **String** |  |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_dm_routing_config()`

```ruby
get_dm_routing_config(opts): <RoutingConfigResponse> # Get a routing config
```

Retrieve a single routing config by its identifier.

### Examples

```ruby
api_instance = Fastly::DmRoutingConfigsApi.new
opts = {
    config_id: 'config_id_example', # String | 
}

begin
  # Get a routing config
  result = api_instance.get_dm_routing_config(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DmRoutingConfigsApi->get_dm_routing_config: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_id** | **String** |  |  |

### Return type

[**RoutingConfigResponse**](RoutingConfigResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_dm_routing_config_draft_diff()`

```ruby
get_dm_routing_config_draft_diff(opts): <DraftDiff> # Get the draft diff
```

Compare the current draft version against the active version and return the paths and rules that have been added, modified, or deleted.

### Examples

```ruby
api_instance = Fastly::DmRoutingConfigsApi.new
opts = {
    config_id: 'config_id_example', # String | 
}

begin
  # Get the draft diff
  result = api_instance.get_dm_routing_config_draft_diff(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DmRoutingConfigsApi->get_dm_routing_config_draft_diff: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_id** | **String** |  |  |

### Return type

[**DraftDiff**](DraftDiff.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_dm_routing_config_path()`

```ruby
get_dm_routing_config_path(opts): <PathResponse> # Get a path
```

Retrieve a single path by its stable identifier.

### Examples

```ruby
api_instance = Fastly::DmRoutingConfigsApi.new
opts = {
    config_id: 'config_id_example', # String | 
    path_id: 'path_id_example', # String | 
}

begin
  # Get a path
  result = api_instance.get_dm_routing_config_path(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DmRoutingConfigsApi->get_dm_routing_config_path: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_id** | **String** |  |  |
| **path_id** | **String** |  |  |

### Return type

[**PathResponse**](PathResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_dm_routing_config_rule()`

```ruby
get_dm_routing_config_rule(opts): <RuleResponse> # Get a rule
```

Retrieve a single rule by its stable identifier.

### Examples

```ruby
api_instance = Fastly::DmRoutingConfigsApi.new
opts = {
    config_id: 'config_id_example', # String | 
    path_id: 'path_id_example', # String | 
    rule_id: 'rule_id_example', # String | 
}

begin
  # Get a rule
  result = api_instance.get_dm_routing_config_rule(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DmRoutingConfigsApi->get_dm_routing_config_rule: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_id** | **String** |  |  |
| **path_id** | **String** |  |  |
| **rule_id** | **String** |  |  |

### Return type

[**RuleResponse**](RuleResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_dm_routing_config_paths()`

```ruby
list_dm_routing_config_paths(opts): <PathsResponse> # List paths
```

List paths for the config. Returns paths from the active version if one exists, otherwise from the draft.

### Examples

```ruby
api_instance = Fastly::DmRoutingConfigsApi.new
opts = {
    config_id: 'config_id_example', # String | 
    path: 'path_example', # String | Filter results by path pattern. The match strategy is controlled by the `match` parameter.
    match: 'exact', # String | How to match the value of the `path` filter against existing path patterns. Has no effect unless `path` is also provided.
    sort: 'created_at', # String | The order in which to list the results.
    cursor: 'cursor_example', # String | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    limit: 56, # Integer | Limit how many results are returned.
}

begin
  # List paths
  result = api_instance.list_dm_routing_config_paths(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DmRoutingConfigsApi->list_dm_routing_config_paths: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_id** | **String** |  |  |
| **path** | **String** | Filter results by path pattern. The match strategy is controlled by the `match` parameter. | [optional] |
| **match** | **String** | How to match the value of the `path` filter against existing path patterns. Has no effect unless `path` is also provided. | [optional][default to &#39;exact&#39;] |
| **sort** | **String** | The order in which to list the results. | [optional][default to &#39;-created_at&#39;] |
| **cursor** | **String** | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] |
| **limit** | **Integer** | Limit how many results are returned. | [optional][default to 20] |

### Return type

[**PathsResponse**](PathsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_dm_routing_config_rules()`

```ruby
list_dm_routing_config_rules(opts): <RulesResponse> # List rules
```

List all rules for a path in evaluation order.

### Examples

```ruby
api_instance = Fastly::DmRoutingConfigsApi.new
opts = {
    config_id: 'config_id_example', # String | 
    path_id: 'path_id_example', # String | 
    sort: 'created_at', # String | The order in which to list the results.
    cursor: 'cursor_example', # String | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    limit: 56, # Integer | Limit how many results are returned.
}

begin
  # List rules
  result = api_instance.list_dm_routing_config_rules(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DmRoutingConfigsApi->list_dm_routing_config_rules: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_id** | **String** |  |  |
| **path_id** | **String** |  |  |
| **sort** | **String** | The order in which to list the results. | [optional][default to &#39;position&#39;] |
| **cursor** | **String** | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] |
| **limit** | **Integer** | Limit how many results are returned. | [optional][default to 20] |

### Return type

[**RulesResponse**](RulesResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_dm_routing_config_versions()`

```ruby
list_dm_routing_config_versions(opts): <VersionsResponse> # List versions
```

List all versions for a routing config.

### Examples

```ruby
api_instance = Fastly::DmRoutingConfigsApi.new
opts = {
    config_id: 'config_id_example', # String | 
    sort: 'activated_at', # String | The order in which to list the results.
    cursor: 'cursor_example', # String | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    limit: 56, # Integer | Limit how many results are returned.
}

begin
  # List versions
  result = api_instance.list_dm_routing_config_versions(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DmRoutingConfigsApi->list_dm_routing_config_versions: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_id** | **String** |  |  |
| **sort** | **String** | The order in which to list the results. | [optional][default to &#39;-activated_at&#39;] |
| **cursor** | **String** | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] |
| **limit** | **Integer** | Limit how many results are returned. | [optional][default to 20] |

### Return type

[**VersionsResponse**](VersionsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_dm_routing_configs()`

```ruby
list_dm_routing_configs(opts): <RoutingConfigsResponse> # List routing configs
```

List all routing configs for the authenticated customer.

### Examples

```ruby
api_instance = Fastly::DmRoutingConfigsApi.new
opts = {
    state: ['draft-only'], # Array<String> | Filter configs by lifecycle state. Accepts a comma-separated list of state values (e.g. `?state=active,active-with-draft`). Returns only configs whose current state matches one of the provided values. Returns 400 if any value is not a recognised state.
    sort: 'created_at', # String | The order in which to list the results.
    cursor: 'cursor_example', # String | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    limit: 56, # Integer | Limit how many results are returned.
}

begin
  # List routing configs
  result = api_instance.list_dm_routing_configs(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DmRoutingConfigsApi->list_dm_routing_configs: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | [**Array&lt;String&gt;**](String.md) | Filter configs by lifecycle state. Accepts a comma-separated list of state values (e.g. `?state&#x3D;active,active-with-draft`). Returns only configs whose current state matches one of the provided values. Returns 400 if any value is not a recognised state. | [optional] |
| **sort** | **String** | The order in which to list the results. | [optional][default to &#39;-created_at&#39;] |
| **cursor** | **String** | Cursor value from the `next_cursor` field of a previous response, used to retrieve the next page. To request the first page, this should be empty. | [optional] |
| **limit** | **Integer** | Limit how many results are returned. | [optional][default to 20] |

### Return type

[**RoutingConfigsResponse**](RoutingConfigsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `reactivate_dm_routing_config_version()`

```ruby
reactivate_dm_routing_config_version(opts): <RoutingConfigVersionResponse> # Reactivate a version
```

Reactivate a previously-active version. The currently active version, if any, becomes inactive but is retained in version history.

### Examples

```ruby
api_instance = Fastly::DmRoutingConfigsApi.new
opts = {
    config_id: 'config_id_example', # String | 
    version_id: 'version_id_example', # String | 
}

begin
  # Reactivate a version
  result = api_instance.reactivate_dm_routing_config_version(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DmRoutingConfigsApi->reactivate_dm_routing_config_version: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_id** | **String** |  |  |
| **version_id** | **String** |  |  |

### Return type

[**RoutingConfigVersionResponse**](RoutingConfigVersionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_dm_routing_config_draft()`

```ruby
update_dm_routing_config_draft(opts): <RoutingConfigVersionResponse> # Update the draft
```

Update metadata on the draft version, such as its comment. If no draft exists, one is created automatically by cloning the active version.

### Examples

```ruby
api_instance = Fastly::DmRoutingConfigsApi.new
opts = {
    config_id: 'config_id_example', # String | 
    draft_update: Fastly::DraftUpdate.new, # DraftUpdate | 
}

begin
  # Update the draft
  result = api_instance.update_dm_routing_config_draft(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DmRoutingConfigsApi->update_dm_routing_config_draft: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_id** | **String** |  |  |
| **draft_update** | [**DraftUpdate**](DraftUpdate.md) |  | [optional] |

### Return type

[**RoutingConfigVersionResponse**](RoutingConfigVersionResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_dm_routing_config_path()`

```ruby
update_dm_routing_config_path(opts): <PathResponse> # Update a path
```

Update a path on the config's draft version. If no draft exists, one is created automatically by cloning the active version.

### Examples

```ruby
api_instance = Fastly::DmRoutingConfigsApi.new
opts = {
    config_id: 'config_id_example', # String | 
    path_id: 'path_id_example', # String | 
    path_update: Fastly::PathUpdate.new, # PathUpdate | 
}

begin
  # Update a path
  result = api_instance.update_dm_routing_config_path(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DmRoutingConfigsApi->update_dm_routing_config_path: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_id** | **String** |  |  |
| **path_id** | **String** |  |  |
| **path_update** | [**PathUpdate**](PathUpdate.md) |  | [optional] |

### Return type

[**PathResponse**](PathResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_dm_routing_config_rule()`

```ruby
update_dm_routing_config_rule(opts): <RuleResponse> # Update a rule
```

Update a rule on the config's draft version. If no draft exists, one is created automatically by cloning the active version.

### Examples

```ruby
api_instance = Fastly::DmRoutingConfigsApi.new
opts = {
    config_id: 'config_id_example', # String | 
    path_id: 'path_id_example', # String | 
    rule_id: 'rule_id_example', # String | 
    rule_update: Fastly::RuleUpdate.new, # RuleUpdate | 
}

begin
  # Update a rule
  result = api_instance.update_dm_routing_config_rule(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling DmRoutingConfigsApi->update_dm_routing_config_rule: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_id** | **String** |  |  |
| **path_id** | **String** |  |  |
| **rule_id** | **String** |  |  |
| **rule_update** | [**RuleUpdate**](RuleUpdate.md) |  | [optional] |

### Return type

[**RuleResponse**](RuleResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
