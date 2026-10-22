=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class BotManagementApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a bot
    # Get the attributes of a bot in a category.
    # @option opts [String] :workspace_id The ID of the bot management workspace. (required)
    # @option opts [String] :category_id The ID of the bot category. (required)
    # @option opts [String] :bot_id The ID of the bot. (required)
    # @return [BotManagementBotResponse]
    def bot_management_get_bot(opts = {})
      data, _status_code, _headers = bot_management_get_bot_with_http_info(opts)
      data
    end

    # Get a bot
    # Get the attributes of a bot in a category.
    # @option opts [String] :workspace_id The ID of the bot management workspace. (required)
    # @option opts [String] :category_id The ID of the bot category. (required)
    # @option opts [String] :bot_id The ID of the bot. (required)
    # @return [Array<(BotManagementBotResponse, Integer, Hash)>] BotManagementBotResponse data, response status code and response headers
    def bot_management_get_bot_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BotManagementApi.bot_management_get_bot ...'
      end
      # unbox the parameters from the hash
      workspace_id = opts[:'workspace_id']
      category_id = opts[:'category_id']
      bot_id = opts[:'bot_id']
      # verify the required parameter 'workspace_id' is set
      if @api_client.config.client_side_validation && workspace_id.nil?
        fail ArgumentError, "Missing the required parameter 'workspace_id' when calling BotManagementApi.bot_management_get_bot"
      end
      # verify the required parameter 'category_id' is set
      if @api_client.config.client_side_validation && category_id.nil?
        fail ArgumentError, "Missing the required parameter 'category_id' when calling BotManagementApi.bot_management_get_bot"
      end
      # verify the required parameter 'bot_id' is set
      if @api_client.config.client_side_validation && bot_id.nil?
        fail ArgumentError, "Missing the required parameter 'bot_id' when calling BotManagementApi.bot_management_get_bot"
      end
      # resource path
      local_var_path = '/bot-management/v1/workspaces/{workspace_id}/policy/categories/{category_id}/bots/{bot_id}'.sub('{' + 'workspace_id' + '}', CGI.escape(workspace_id.to_s)).sub('{' + 'category_id' + '}', CGI.escape(category_id.to_s)).sub('{' + 'bot_id' + '}', CGI.escape(bot_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BotManagementBotResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BotManagementApi.bot_management_get_bot",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BotManagementApi#bot_management_get_bot\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a category
    # Get the attributes of a bot category.
    # @option opts [String] :workspace_id The ID of the bot management workspace. (required)
    # @option opts [String] :category_id The ID of the bot category. (required)
    # @return [BotManagementCategoryResponse]
    def bot_management_get_category(opts = {})
      data, _status_code, _headers = bot_management_get_category_with_http_info(opts)
      data
    end

    # Get a category
    # Get the attributes of a bot category.
    # @option opts [String] :workspace_id The ID of the bot management workspace. (required)
    # @option opts [String] :category_id The ID of the bot category. (required)
    # @return [Array<(BotManagementCategoryResponse, Integer, Hash)>] BotManagementCategoryResponse data, response status code and response headers
    def bot_management_get_category_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BotManagementApi.bot_management_get_category ...'
      end
      # unbox the parameters from the hash
      workspace_id = opts[:'workspace_id']
      category_id = opts[:'category_id']
      # verify the required parameter 'workspace_id' is set
      if @api_client.config.client_side_validation && workspace_id.nil?
        fail ArgumentError, "Missing the required parameter 'workspace_id' when calling BotManagementApi.bot_management_get_category"
      end
      # verify the required parameter 'category_id' is set
      if @api_client.config.client_side_validation && category_id.nil?
        fail ArgumentError, "Missing the required parameter 'category_id' when calling BotManagementApi.bot_management_get_category"
      end
      # resource path
      local_var_path = '/bot-management/v1/workspaces/{workspace_id}/policy/categories/{category_id}'.sub('{' + 'workspace_id' + '}', CGI.escape(workspace_id.to_s)).sub('{' + 'category_id' + '}', CGI.escape(category_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BotManagementCategoryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BotManagementApi.bot_management_get_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BotManagementApi#bot_management_get_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a workspace
    # Retrieve a bot management workspace.
    # @option opts [String] :workspace_id The ID of the bot management workspace. (required)
    # @return [BotManagementWorkspaceResponse]
    def bot_management_get_workspace(opts = {})
      data, _status_code, _headers = bot_management_get_workspace_with_http_info(opts)
      data
    end

    # Get a workspace
    # Retrieve a bot management workspace.
    # @option opts [String] :workspace_id The ID of the bot management workspace. (required)
    # @return [Array<(BotManagementWorkspaceResponse, Integer, Hash)>] BotManagementWorkspaceResponse data, response status code and response headers
    def bot_management_get_workspace_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BotManagementApi.bot_management_get_workspace ...'
      end
      # unbox the parameters from the hash
      workspace_id = opts[:'workspace_id']
      # verify the required parameter 'workspace_id' is set
      if @api_client.config.client_side_validation && workspace_id.nil?
        fail ArgumentError, "Missing the required parameter 'workspace_id' when calling BotManagementApi.bot_management_get_workspace"
      end
      # resource path
      local_var_path = '/bot-management/v1/workspaces/{workspace_id}'.sub('{' + 'workspace_id' + '}', CGI.escape(workspace_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BotManagementWorkspaceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BotManagementApi.bot_management_get_workspace",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BotManagementApi#bot_management_get_workspace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all bots in a workspace
    # List all bots in a workspace's policy across all categories.
    # @option opts [String] :workspace_id The ID of the bot management workspace. (required)
    # @option opts [Integer] :limit Limit how many results are returned. (default to 100)
    # @option opts [String] :cursor Cursor for pagination. Use the &#x60;next_cursor&#x60; value from a previous response to request the next page of results.
    # @return [BotManagementWorkspaceBotsResponse]
    def bot_management_list_bots(opts = {})
      data, _status_code, _headers = bot_management_list_bots_with_http_info(opts)
      data
    end

    # List all bots in a workspace
    # List all bots in a workspace&#39;s policy across all categories.
    # @option opts [String] :workspace_id The ID of the bot management workspace. (required)
    # @option opts [Integer] :limit Limit how many results are returned. (default to 100)
    # @option opts [String] :cursor Cursor for pagination. Use the &#x60;next_cursor&#x60; value from a previous response to request the next page of results.
    # @return [Array<(BotManagementWorkspaceBotsResponse, Integer, Hash)>] BotManagementWorkspaceBotsResponse data, response status code and response headers
    def bot_management_list_bots_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BotManagementApi.bot_management_list_bots ...'
      end
      # unbox the parameters from the hash
      workspace_id = opts[:'workspace_id']
      # verify the required parameter 'workspace_id' is set
      if @api_client.config.client_side_validation && workspace_id.nil?
        fail ArgumentError, "Missing the required parameter 'workspace_id' when calling BotManagementApi.bot_management_list_bots"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling BotManagementApi.bot_management_list_bots, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling BotManagementApi.bot_management_list_bots, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/bot-management/v1/workspaces/{workspace_id}/policy/bots'.sub('{' + 'workspace_id' + '}', CGI.escape(workspace_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BotManagementWorkspaceBotsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BotManagementApi.bot_management_list_bots",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BotManagementApi#bot_management_list_bots\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List categories
    # List all bot categories in a workspace's policy. Each category has an action that applies to every bot in the category. To list the bots themselves, use [list all bots in a workspace](#bot-management-list-bots) or [list bots in a category](#bot-management-list-category-bots).
    # @option opts [String] :workspace_id The ID of the bot management workspace. (required)
    # @option opts [Integer] :limit Limit how many results are returned. (default to 100)
    # @option opts [String] :cursor Cursor for pagination. Use the &#x60;next_cursor&#x60; value from a previous response to request the next page of results.
    # @return [BotManagementCategoriesResponse]
    def bot_management_list_categories(opts = {})
      data, _status_code, _headers = bot_management_list_categories_with_http_info(opts)
      data
    end

    # List categories
    # List all bot categories in a workspace&#39;s policy. Each category has an action that applies to every bot in the category. To list the bots themselves, use [list all bots in a workspace](#bot-management-list-bots) or [list bots in a category](#bot-management-list-category-bots).
    # @option opts [String] :workspace_id The ID of the bot management workspace. (required)
    # @option opts [Integer] :limit Limit how many results are returned. (default to 100)
    # @option opts [String] :cursor Cursor for pagination. Use the &#x60;next_cursor&#x60; value from a previous response to request the next page of results.
    # @return [Array<(BotManagementCategoriesResponse, Integer, Hash)>] BotManagementCategoriesResponse data, response status code and response headers
    def bot_management_list_categories_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BotManagementApi.bot_management_list_categories ...'
      end
      # unbox the parameters from the hash
      workspace_id = opts[:'workspace_id']
      # verify the required parameter 'workspace_id' is set
      if @api_client.config.client_side_validation && workspace_id.nil?
        fail ArgumentError, "Missing the required parameter 'workspace_id' when calling BotManagementApi.bot_management_list_categories"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling BotManagementApi.bot_management_list_categories, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling BotManagementApi.bot_management_list_categories, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/bot-management/v1/workspaces/{workspace_id}/policy/categories'.sub('{' + 'workspace_id' + '}', CGI.escape(workspace_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BotManagementCategoriesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BotManagementApi.bot_management_list_categories",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BotManagementApi#bot_management_list_categories\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List bots in a category
    # List all bots in a bot category.
    # @option opts [String] :workspace_id The ID of the bot management workspace. (required)
    # @option opts [String] :category_id The ID of the bot category. (required)
    # @option opts [Integer] :limit Limit how many results are returned. (default to 100)
    # @option opts [String] :cursor Cursor for pagination. Use the &#x60;next_cursor&#x60; value from a previous response to request the next page of results.
    # @return [BotManagementBotsResponse]
    def bot_management_list_category_bots(opts = {})
      data, _status_code, _headers = bot_management_list_category_bots_with_http_info(opts)
      data
    end

    # List bots in a category
    # List all bots in a bot category.
    # @option opts [String] :workspace_id The ID of the bot management workspace. (required)
    # @option opts [String] :category_id The ID of the bot category. (required)
    # @option opts [Integer] :limit Limit how many results are returned. (default to 100)
    # @option opts [String] :cursor Cursor for pagination. Use the &#x60;next_cursor&#x60; value from a previous response to request the next page of results.
    # @return [Array<(BotManagementBotsResponse, Integer, Hash)>] BotManagementBotsResponse data, response status code and response headers
    def bot_management_list_category_bots_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BotManagementApi.bot_management_list_category_bots ...'
      end
      # unbox the parameters from the hash
      workspace_id = opts[:'workspace_id']
      category_id = opts[:'category_id']
      # verify the required parameter 'workspace_id' is set
      if @api_client.config.client_side_validation && workspace_id.nil?
        fail ArgumentError, "Missing the required parameter 'workspace_id' when calling BotManagementApi.bot_management_list_category_bots"
      end
      # verify the required parameter 'category_id' is set
      if @api_client.config.client_side_validation && category_id.nil?
        fail ArgumentError, "Missing the required parameter 'category_id' when calling BotManagementApi.bot_management_list_category_bots"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling BotManagementApi.bot_management_list_category_bots, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling BotManagementApi.bot_management_list_category_bots, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/bot-management/v1/workspaces/{workspace_id}/policy/categories/{category_id}/bots'.sub('{' + 'workspace_id' + '}', CGI.escape(workspace_id.to_s)).sub('{' + 'category_id' + '}', CGI.escape(category_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BotManagementBotsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BotManagementApi.bot_management_list_category_bots",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BotManagementApi#bot_management_list_category_bots\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List workspaces
    # List bot management workspaces.
    # @option opts [String] :service_id Filter results to the workspace attached to this service. Returns an empty list if the service is not attached to a workspace.
    # @option opts [Integer] :limit Limit how many results are returned. (default to 100)
    # @option opts [String] :cursor Cursor for pagination. Use the &#x60;next_cursor&#x60; value from a previous response to request the next page of results.
    # @return [BotManagementWorkspacesResponse]
    def bot_management_list_workspaces(opts = {})
      data, _status_code, _headers = bot_management_list_workspaces_with_http_info(opts)
      data
    end

    # List workspaces
    # List bot management workspaces.
    # @option opts [String] :service_id Filter results to the workspace attached to this service. Returns an empty list if the service is not attached to a workspace.
    # @option opts [Integer] :limit Limit how many results are returned. (default to 100)
    # @option opts [String] :cursor Cursor for pagination. Use the &#x60;next_cursor&#x60; value from a previous response to request the next page of results.
    # @return [Array<(BotManagementWorkspacesResponse, Integer, Hash)>] BotManagementWorkspacesResponse data, response status code and response headers
    def bot_management_list_workspaces_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BotManagementApi.bot_management_list_workspaces ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling BotManagementApi.bot_management_list_workspaces, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling BotManagementApi.bot_management_list_workspaces, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/bot-management/v1/workspaces'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'service_id'] = opts[:'service_id'] if !opts[:'service_id'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BotManagementWorkspacesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BotManagementApi.bot_management_list_workspaces",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BotManagementApi#bot_management_list_workspaces\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set a bot action
    # Set the action for a bot. Set the action to 'inherit' to apply the category's action or to a specific value to override the category's action.
    # @option opts [String] :workspace_id The ID of the bot management workspace. (required)
    # @option opts [String] :category_id The ID of the bot category. (required)
    # @option opts [String] :bot_id The ID of the bot. (required)
    # @option opts [BotManagementBot] :bot_management_bot  (required)
    # @return [BotManagementBotResponse]
    def bot_management_update_bot(opts = {})
      data, _status_code, _headers = bot_management_update_bot_with_http_info(opts)
      data
    end

    # Set a bot action
    # Set the action for a bot. Set the action to &#39;inherit&#39; to apply the category&#39;s action or to a specific value to override the category&#39;s action.
    # @option opts [String] :workspace_id The ID of the bot management workspace. (required)
    # @option opts [String] :category_id The ID of the bot category. (required)
    # @option opts [String] :bot_id The ID of the bot. (required)
    # @option opts [BotManagementBot] :bot_management_bot  (required)
    # @return [Array<(BotManagementBotResponse, Integer, Hash)>] BotManagementBotResponse data, response status code and response headers
    def bot_management_update_bot_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BotManagementApi.bot_management_update_bot ...'
      end
      # unbox the parameters from the hash
      workspace_id = opts[:'workspace_id']
      category_id = opts[:'category_id']
      bot_id = opts[:'bot_id']
      bot_management_bot = opts[:'bot_management_bot']
      # verify the required parameter 'workspace_id' is set
      if @api_client.config.client_side_validation && workspace_id.nil?
        fail ArgumentError, "Missing the required parameter 'workspace_id' when calling BotManagementApi.bot_management_update_bot"
      end
      # verify the required parameter 'category_id' is set
      if @api_client.config.client_side_validation && category_id.nil?
        fail ArgumentError, "Missing the required parameter 'category_id' when calling BotManagementApi.bot_management_update_bot"
      end
      # verify the required parameter 'bot_id' is set
      if @api_client.config.client_side_validation && bot_id.nil?
        fail ArgumentError, "Missing the required parameter 'bot_id' when calling BotManagementApi.bot_management_update_bot"
      end
      # verify the required parameter 'bot_management_bot' is set
      if @api_client.config.client_side_validation && bot_management_bot.nil?
        fail ArgumentError, "Missing the required parameter 'bot_management_bot' when calling BotManagementApi.bot_management_update_bot"
      end
      # resource path
      local_var_path = '/bot-management/v1/workspaces/{workspace_id}/policy/categories/{category_id}/bots/{bot_id}'.sub('{' + 'workspace_id' + '}', CGI.escape(workspace_id.to_s)).sub('{' + 'category_id' + '}', CGI.escape(category_id.to_s)).sub('{' + 'bot_id' + '}', CGI.escape(bot_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bot_management_bot)

      # return_type
      return_type = opts[:debug_return_type] || 'BotManagementBotResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BotManagementApi.bot_management_update_bot",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BotManagementApi#bot_management_update_bot\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set a category action
    # Set the action for a bot category. Every bot in the category configured with the 'inherit' action uses the action set for the category.
    # @option opts [String] :workspace_id The ID of the bot management workspace. (required)
    # @option opts [String] :category_id The ID of the bot category. (required)
    # @option opts [BotManagementCategory] :bot_management_category  (required)
    # @return [BotManagementCategoryResponse]
    def bot_management_update_category(opts = {})
      data, _status_code, _headers = bot_management_update_category_with_http_info(opts)
      data
    end

    # Set a category action
    # Set the action for a bot category. Every bot in the category configured with the &#39;inherit&#39; action uses the action set for the category.
    # @option opts [String] :workspace_id The ID of the bot management workspace. (required)
    # @option opts [String] :category_id The ID of the bot category. (required)
    # @option opts [BotManagementCategory] :bot_management_category  (required)
    # @return [Array<(BotManagementCategoryResponse, Integer, Hash)>] BotManagementCategoryResponse data, response status code and response headers
    def bot_management_update_category_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BotManagementApi.bot_management_update_category ...'
      end
      # unbox the parameters from the hash
      workspace_id = opts[:'workspace_id']
      category_id = opts[:'category_id']
      bot_management_category = opts[:'bot_management_category']
      # verify the required parameter 'workspace_id' is set
      if @api_client.config.client_side_validation && workspace_id.nil?
        fail ArgumentError, "Missing the required parameter 'workspace_id' when calling BotManagementApi.bot_management_update_category"
      end
      # verify the required parameter 'category_id' is set
      if @api_client.config.client_side_validation && category_id.nil?
        fail ArgumentError, "Missing the required parameter 'category_id' when calling BotManagementApi.bot_management_update_category"
      end
      # verify the required parameter 'bot_management_category' is set
      if @api_client.config.client_side_validation && bot_management_category.nil?
        fail ArgumentError, "Missing the required parameter 'bot_management_category' when calling BotManagementApi.bot_management_update_category"
      end
      # resource path
      local_var_path = '/bot-management/v1/workspaces/{workspace_id}/policy/categories/{category_id}'.sub('{' + 'workspace_id' + '}', CGI.escape(workspace_id.to_s)).sub('{' + 'category_id' + '}', CGI.escape(category_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bot_management_category)

      # return_type
      return_type = opts[:debug_return_type] || 'BotManagementCategoryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BotManagementApi.bot_management_update_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BotManagementApi#bot_management_update_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a workspace
    # Update the attributes of a bot management workspace.
    # @option opts [String] :workspace_id The ID of the bot management workspace. (required)
    # @option opts [BotManagementWorkspace] :bot_management_workspace  (required)
    # @return [BotManagementWorkspaceResponse]
    def bot_management_update_workspace(opts = {})
      data, _status_code, _headers = bot_management_update_workspace_with_http_info(opts)
      data
    end

    # Update a workspace
    # Update the attributes of a bot management workspace.
    # @option opts [String] :workspace_id The ID of the bot management workspace. (required)
    # @option opts [BotManagementWorkspace] :bot_management_workspace  (required)
    # @return [Array<(BotManagementWorkspaceResponse, Integer, Hash)>] BotManagementWorkspaceResponse data, response status code and response headers
    def bot_management_update_workspace_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BotManagementApi.bot_management_update_workspace ...'
      end
      # unbox the parameters from the hash
      workspace_id = opts[:'workspace_id']
      bot_management_workspace = opts[:'bot_management_workspace']
      # verify the required parameter 'workspace_id' is set
      if @api_client.config.client_side_validation && workspace_id.nil?
        fail ArgumentError, "Missing the required parameter 'workspace_id' when calling BotManagementApi.bot_management_update_workspace"
      end
      # verify the required parameter 'bot_management_workspace' is set
      if @api_client.config.client_side_validation && bot_management_workspace.nil?
        fail ArgumentError, "Missing the required parameter 'bot_management_workspace' when calling BotManagementApi.bot_management_update_workspace"
      end
      # resource path
      local_var_path = '/bot-management/v1/workspaces/{workspace_id}'.sub('{' + 'workspace_id' + '}', CGI.escape(workspace_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bot_management_workspace)

      # return_type
      return_type = opts[:debug_return_type] || 'BotManagementWorkspaceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BotManagementApi.bot_management_update_workspace",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BotManagementApi#bot_management_update_workspace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
