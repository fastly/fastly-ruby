# Fastly::BotManagementApi


```ruby
require 'fastly'
api_instance = Fastly::BotManagementApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**bot_management_get_bot**](BotManagementApi.md#bot_management_get_bot) | **GET** /bot-management/v1/workspaces/{workspace_id}/policy/categories/{category_id}/bots/{bot_id} | Get a bot
[**bot_management_get_category**](BotManagementApi.md#bot_management_get_category) | **GET** /bot-management/v1/workspaces/{workspace_id}/policy/categories/{category_id} | Get a category
[**bot_management_get_workspace**](BotManagementApi.md#bot_management_get_workspace) | **GET** /bot-management/v1/workspaces/{workspace_id} | Get a workspace
[**bot_management_list_bots**](BotManagementApi.md#bot_management_list_bots) | **GET** /bot-management/v1/workspaces/{workspace_id}/policy/bots | List all bots in a workspace
[**bot_management_list_categories**](BotManagementApi.md#bot_management_list_categories) | **GET** /bot-management/v1/workspaces/{workspace_id}/policy/categories | List categories
[**bot_management_list_category_bots**](BotManagementApi.md#bot_management_list_category_bots) | **GET** /bot-management/v1/workspaces/{workspace_id}/policy/categories/{category_id}/bots | List bots in a category
[**bot_management_list_workspaces**](BotManagementApi.md#bot_management_list_workspaces) | **GET** /bot-management/v1/workspaces | List workspaces
[**bot_management_update_bot**](BotManagementApi.md#bot_management_update_bot) | **PATCH** /bot-management/v1/workspaces/{workspace_id}/policy/categories/{category_id}/bots/{bot_id} | Set a bot action
[**bot_management_update_category**](BotManagementApi.md#bot_management_update_category) | **PATCH** /bot-management/v1/workspaces/{workspace_id}/policy/categories/{category_id} | Set a category action
[**bot_management_update_workspace**](BotManagementApi.md#bot_management_update_workspace) | **PATCH** /bot-management/v1/workspaces/{workspace_id} | Update a workspace


## `bot_management_get_bot()`

```ruby
bot_management_get_bot(opts): <BotManagementBotResponse> # Get a bot
```

Get the attributes of a bot in a category.

### Examples

```ruby
api_instance = Fastly::BotManagementApi.new
opts = {
    workspace_id: 'SU1Z0isxPaozGVKXdv0eY', # String | The ID of the bot management workspace.
    category_id: 'ai_crawlers', # String | The ID of the bot category.
    bot_id: 'gptbot', # String | The ID of the bot.
}

begin
  # Get a bot
  result = api_instance.bot_management_get_bot(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BotManagementApi->bot_management_get_bot: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** | The ID of the bot management workspace. |  |
| **category_id** | **String** | The ID of the bot category. |  |
| **bot_id** | **String** | The ID of the bot. |  |

### Return type

[**BotManagementBotResponse**](BotManagementBotResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `bot_management_get_category()`

```ruby
bot_management_get_category(opts): <BotManagementCategoryResponse> # Get a category
```

Get the attributes of a bot category.

### Examples

```ruby
api_instance = Fastly::BotManagementApi.new
opts = {
    workspace_id: 'SU1Z0isxPaozGVKXdv0eY', # String | The ID of the bot management workspace.
    category_id: 'ai_crawlers', # String | The ID of the bot category.
}

begin
  # Get a category
  result = api_instance.bot_management_get_category(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BotManagementApi->bot_management_get_category: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** | The ID of the bot management workspace. |  |
| **category_id** | **String** | The ID of the bot category. |  |

### Return type

[**BotManagementCategoryResponse**](BotManagementCategoryResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `bot_management_get_workspace()`

```ruby
bot_management_get_workspace(opts): <BotManagementWorkspaceResponse> # Get a workspace
```

Retrieve a bot management workspace.

### Examples

```ruby
api_instance = Fastly::BotManagementApi.new
opts = {
    workspace_id: 'SU1Z0isxPaozGVKXdv0eY', # String | The ID of the bot management workspace.
}

begin
  # Get a workspace
  result = api_instance.bot_management_get_workspace(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BotManagementApi->bot_management_get_workspace: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** | The ID of the bot management workspace. |  |

### Return type

[**BotManagementWorkspaceResponse**](BotManagementWorkspaceResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `bot_management_list_bots()`

```ruby
bot_management_list_bots(opts): <BotManagementWorkspaceBotsResponse> # List all bots in a workspace
```

List all bots in a workspace's policy across all categories.

### Examples

```ruby
api_instance = Fastly::BotManagementApi.new
opts = {
    workspace_id: 'SU1Z0isxPaozGVKXdv0eY', # String | The ID of the bot management workspace.
    limit: 100, # Integer | Limit how many results are returned.
    cursor: 'MTAwOjA', # String | Cursor for pagination. Use the `next_cursor` value from a previous response to request the next page of results.
}

begin
  # List all bots in a workspace
  result = api_instance.bot_management_list_bots(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BotManagementApi->bot_management_list_bots: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** | The ID of the bot management workspace. |  |
| **limit** | **Integer** | Limit how many results are returned. | [optional][default to 100] |
| **cursor** | **String** | Cursor for pagination. Use the `next_cursor` value from a previous response to request the next page of results. | [optional] |

### Return type

[**BotManagementWorkspaceBotsResponse**](BotManagementWorkspaceBotsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `bot_management_list_categories()`

```ruby
bot_management_list_categories(opts): <BotManagementCategoriesResponse> # List categories
```

List all bot categories in a workspace's policy. Each category has an action that applies to every bot in the category. To list the bots themselves, use [list all bots in a workspace](#bot-management-list-bots) or [list bots in a category](#bot-management-list-category-bots).

### Examples

```ruby
api_instance = Fastly::BotManagementApi.new
opts = {
    workspace_id: 'SU1Z0isxPaozGVKXdv0eY', # String | The ID of the bot management workspace.
    limit: 100, # Integer | Limit how many results are returned.
    cursor: 'MTAwOjA', # String | Cursor for pagination. Use the `next_cursor` value from a previous response to request the next page of results.
}

begin
  # List categories
  result = api_instance.bot_management_list_categories(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BotManagementApi->bot_management_list_categories: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** | The ID of the bot management workspace. |  |
| **limit** | **Integer** | Limit how many results are returned. | [optional][default to 100] |
| **cursor** | **String** | Cursor for pagination. Use the `next_cursor` value from a previous response to request the next page of results. | [optional] |

### Return type

[**BotManagementCategoriesResponse**](BotManagementCategoriesResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `bot_management_list_category_bots()`

```ruby
bot_management_list_category_bots(opts): <BotManagementBotsResponse> # List bots in a category
```

List all bots in a bot category.

### Examples

```ruby
api_instance = Fastly::BotManagementApi.new
opts = {
    workspace_id: 'SU1Z0isxPaozGVKXdv0eY', # String | The ID of the bot management workspace.
    category_id: 'ai_crawlers', # String | The ID of the bot category.
    limit: 100, # Integer | Limit how many results are returned.
    cursor: 'MTAwOjA', # String | Cursor for pagination. Use the `next_cursor` value from a previous response to request the next page of results.
}

begin
  # List bots in a category
  result = api_instance.bot_management_list_category_bots(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BotManagementApi->bot_management_list_category_bots: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** | The ID of the bot management workspace. |  |
| **category_id** | **String** | The ID of the bot category. |  |
| **limit** | **Integer** | Limit how many results are returned. | [optional][default to 100] |
| **cursor** | **String** | Cursor for pagination. Use the `next_cursor` value from a previous response to request the next page of results. | [optional] |

### Return type

[**BotManagementBotsResponse**](BotManagementBotsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `bot_management_list_workspaces()`

```ruby
bot_management_list_workspaces(opts): <BotManagementWorkspacesResponse> # List workspaces
```

List bot management workspaces.

### Examples

```ruby
api_instance = Fastly::BotManagementApi.new
opts = {
    service_id: '6oMkSHsKCMBjQJPLHgMxu1', # String | Filter results to the workspace attached to this service. Returns an empty list if the service is not attached to a workspace.
    limit: 100, # Integer | Limit how many results are returned.
    cursor: 'MTAwOjA', # String | Cursor for pagination. Use the `next_cursor` value from a previous response to request the next page of results.
}

begin
  # List workspaces
  result = api_instance.bot_management_list_workspaces(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BotManagementApi->bot_management_list_workspaces: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Filter results to the workspace attached to this service. Returns an empty list if the service is not attached to a workspace. | [optional] |
| **limit** | **Integer** | Limit how many results are returned. | [optional][default to 100] |
| **cursor** | **String** | Cursor for pagination. Use the `next_cursor` value from a previous response to request the next page of results. | [optional] |

### Return type

[**BotManagementWorkspacesResponse**](BotManagementWorkspacesResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `bot_management_update_bot()`

```ruby
bot_management_update_bot(opts): <BotManagementBotResponse> # Set a bot action
```

Set the action for a bot. Set the action to 'inherit' to apply the category's action or to a specific value to override the category's action.

### Examples

```ruby
api_instance = Fastly::BotManagementApi.new
opts = {
    workspace_id: 'SU1Z0isxPaozGVKXdv0eY', # String | The ID of the bot management workspace.
    category_id: 'ai_crawlers', # String | The ID of the bot category.
    bot_id: 'gptbot', # String | The ID of the bot.
    bot_management_bot: Fastly::BotManagementBot.new({action: Fastly::BotManagementBotAction.new({type: 'allow'})}), # BotManagementBot | 
}

begin
  # Set a bot action
  result = api_instance.bot_management_update_bot(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BotManagementApi->bot_management_update_bot: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** | The ID of the bot management workspace. |  |
| **category_id** | **String** | The ID of the bot category. |  |
| **bot_id** | **String** | The ID of the bot. |  |
| **bot_management_bot** | [**BotManagementBot**](BotManagementBot.md) |  |  |

### Return type

[**BotManagementBotResponse**](BotManagementBotResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `bot_management_update_category()`

```ruby
bot_management_update_category(opts): <BotManagementCategoryResponse> # Set a category action
```

Set the action for a bot category. Every bot in the category configured with the 'inherit' action uses the action set for the category.

### Examples

```ruby
api_instance = Fastly::BotManagementApi.new
opts = {
    workspace_id: 'SU1Z0isxPaozGVKXdv0eY', # String | The ID of the bot management workspace.
    category_id: 'ai_crawlers', # String | The ID of the bot category.
    bot_management_category: Fastly::BotManagementCategory.new({action: Fastly::BotManagementAction.new({type: 'allow'})}), # BotManagementCategory | 
}

begin
  # Set a category action
  result = api_instance.bot_management_update_category(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BotManagementApi->bot_management_update_category: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** | The ID of the bot management workspace. |  |
| **category_id** | **String** | The ID of the bot category. |  |
| **bot_management_category** | [**BotManagementCategory**](BotManagementCategory.md) |  |  |

### Return type

[**BotManagementCategoryResponse**](BotManagementCategoryResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `bot_management_update_workspace()`

```ruby
bot_management_update_workspace(opts): <BotManagementWorkspaceResponse> # Update a workspace
```

Update the attributes of a bot management workspace.

### Examples

```ruby
api_instance = Fastly::BotManagementApi.new
opts = {
    workspace_id: 'SU1Z0isxPaozGVKXdv0eY', # String | The ID of the bot management workspace.
    bot_management_workspace: Fastly::BotManagementWorkspace.new, # BotManagementWorkspace | 
}

begin
  # Update a workspace
  result = api_instance.bot_management_update_workspace(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling BotManagementApi->bot_management_update_workspace: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** | The ID of the bot management workspace. |  |
| **bot_management_workspace** | [**BotManagementWorkspace**](BotManagementWorkspace.md) |  |  |

### Return type

[**BotManagementWorkspaceResponse**](BotManagementWorkspaceResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
