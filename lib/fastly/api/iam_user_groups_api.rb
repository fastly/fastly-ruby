=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class IamUserGroupsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add members to a user group
    # Add members to a user group.
    # @option opts [String] :user_group_id Alphanumeric string identifying the user group. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Object]
    def add_user_group_members(opts = {})
      data, _status_code, _headers = add_user_group_members_with_http_info(opts)
      data
    end

    # Add members to a user group
    # Add members to a user group.
    # @option opts [String] :user_group_id Alphanumeric string identifying the user group. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def add_user_group_members_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamUserGroupsApi.add_user_group_members ...'
      end
      # unbox the parameters from the hash
      user_group_id = opts[:'user_group_id']
      # verify the required parameter 'user_group_id' is set
      if @api_client.config.client_side_validation && user_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_group_id' when calling IamUserGroupsApi.add_user_group_members"
      end
      # resource path
      local_var_path = '/user-groups/{user_group_id}/members'.sub('{' + 'user_group_id' + '}', CGI.escape(user_group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"IamUserGroupsApi.add_user_group_members",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamUserGroupsApi#add_user_group_members\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add roles to a user group
    # Add roles to a user group.
    # @option opts [String] :user_group_id Alphanumeric string identifying the user group. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Object]
    def add_user_group_roles(opts = {})
      data, _status_code, _headers = add_user_group_roles_with_http_info(opts)
      data
    end

    # Add roles to a user group
    # Add roles to a user group.
    # @option opts [String] :user_group_id Alphanumeric string identifying the user group. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def add_user_group_roles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamUserGroupsApi.add_user_group_roles ...'
      end
      # unbox the parameters from the hash
      user_group_id = opts[:'user_group_id']
      # verify the required parameter 'user_group_id' is set
      if @api_client.config.client_side_validation && user_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_group_id' when calling IamUserGroupsApi.add_user_group_roles"
      end
      # resource path
      local_var_path = '/user-groups/{user_group_id}/roles'.sub('{' + 'user_group_id' + '}', CGI.escape(user_group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"IamUserGroupsApi.add_user_group_roles",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamUserGroupsApi#add_user_group_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add service groups to a user group
    # Add service groups to a user group.
    # @option opts [String] :user_group_id Alphanumeric string identifying the user group. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Object]
    def add_user_group_service_groups(opts = {})
      data, _status_code, _headers = add_user_group_service_groups_with_http_info(opts)
      data
    end

    # Add service groups to a user group
    # Add service groups to a user group.
    # @option opts [String] :user_group_id Alphanumeric string identifying the user group. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def add_user_group_service_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamUserGroupsApi.add_user_group_service_groups ...'
      end
      # unbox the parameters from the hash
      user_group_id = opts[:'user_group_id']
      # verify the required parameter 'user_group_id' is set
      if @api_client.config.client_side_validation && user_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_group_id' when calling IamUserGroupsApi.add_user_group_service_groups"
      end
      # resource path
      local_var_path = '/user-groups/{user_group_id}/service-groups'.sub('{' + 'user_group_id' + '}', CGI.escape(user_group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"IamUserGroupsApi.add_user_group_service_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamUserGroupsApi#add_user_group_service_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a user group
    # Create a user group.
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Object]
    def create_a_user_group(opts = {})
      data, _status_code, _headers = create_a_user_group_with_http_info(opts)
      data
    end

    # Create a user group
    # Create a user group.
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def create_a_user_group_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamUserGroupsApi.create_a_user_group ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/user-groups'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"IamUserGroupsApi.create_a_user_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamUserGroupsApi#create_a_user_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a user group
    # Delete a user group.
    # @option opts [String] :user_group_id Alphanumeric string identifying the user group. (required)
    # @return [nil]
    def delete_a_user_group(opts = {})
      delete_a_user_group_with_http_info(opts)
      nil
    end

    # Delete a user group
    # Delete a user group.
    # @option opts [String] :user_group_id Alphanumeric string identifying the user group. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_a_user_group_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamUserGroupsApi.delete_a_user_group ...'
      end
      # unbox the parameters from the hash
      user_group_id = opts[:'user_group_id']
      # verify the required parameter 'user_group_id' is set
      if @api_client.config.client_side_validation && user_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_group_id' when calling IamUserGroupsApi.delete_a_user_group"
      end
      # resource path
      local_var_path = '/user-groups/{user_group_id}'.sub('{' + 'user_group_id' + '}', CGI.escape(user_group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"IamUserGroupsApi.delete_a_user_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamUserGroupsApi#delete_a_user_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a user group
    # Get a user group.
    # @option opts [String] :user_group_id Alphanumeric string identifying the user group. (required)
    # @return [Object]
    def get_a_user_group(opts = {})
      data, _status_code, _headers = get_a_user_group_with_http_info(opts)
      data
    end

    # Get a user group
    # Get a user group.
    # @option opts [String] :user_group_id Alphanumeric string identifying the user group. (required)
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_a_user_group_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamUserGroupsApi.get_a_user_group ...'
      end
      # unbox the parameters from the hash
      user_group_id = opts[:'user_group_id']
      # verify the required parameter 'user_group_id' is set
      if @api_client.config.client_side_validation && user_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_group_id' when calling IamUserGroupsApi.get_a_user_group"
      end
      # resource path
      local_var_path = '/user-groups/{user_group_id}'.sub('{' + 'user_group_id' + '}', CGI.escape(user_group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"IamUserGroupsApi.get_a_user_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamUserGroupsApi#get_a_user_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List members of a user group
    # List members of a user group.
    # @option opts [String] :user_group_id Alphanumeric string identifying the user group. (required)
    # @option opts [Integer] :per_page Number of records per page. (default to 20)
    # @option opts [Integer] :page Current page.
    # @return [Object]
    def list_user_group_members(opts = {})
      data, _status_code, _headers = list_user_group_members_with_http_info(opts)
      data
    end

    # List members of a user group
    # List members of a user group.
    # @option opts [String] :user_group_id Alphanumeric string identifying the user group. (required)
    # @option opts [Integer] :per_page Number of records per page. (default to 20)
    # @option opts [Integer] :page Current page.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def list_user_group_members_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamUserGroupsApi.list_user_group_members ...'
      end
      # unbox the parameters from the hash
      user_group_id = opts[:'user_group_id']
      # verify the required parameter 'user_group_id' is set
      if @api_client.config.client_side_validation && user_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_group_id' when calling IamUserGroupsApi.list_user_group_members"
      end
      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling IamUserGroupsApi.list_user_group_members, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling IamUserGroupsApi.list_user_group_members, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/user-groups/{user_group_id}/members'.sub('{' + 'user_group_id' + '}', CGI.escape(user_group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"IamUserGroupsApi.list_user_group_members",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamUserGroupsApi#list_user_group_members\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List roles in a user group
    # List roles in a user group.
    # @option opts [String] :user_group_id Alphanumeric string identifying the user group. (required)
    # @option opts [Integer] :per_page Number of records per page. (default to 20)
    # @option opts [Integer] :page Current page.
    # @return [Object]
    def list_user_group_roles(opts = {})
      data, _status_code, _headers = list_user_group_roles_with_http_info(opts)
      data
    end

    # List roles in a user group
    # List roles in a user group.
    # @option opts [String] :user_group_id Alphanumeric string identifying the user group. (required)
    # @option opts [Integer] :per_page Number of records per page. (default to 20)
    # @option opts [Integer] :page Current page.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def list_user_group_roles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamUserGroupsApi.list_user_group_roles ...'
      end
      # unbox the parameters from the hash
      user_group_id = opts[:'user_group_id']
      # verify the required parameter 'user_group_id' is set
      if @api_client.config.client_side_validation && user_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_group_id' when calling IamUserGroupsApi.list_user_group_roles"
      end
      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling IamUserGroupsApi.list_user_group_roles, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling IamUserGroupsApi.list_user_group_roles, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/user-groups/{user_group_id}/roles'.sub('{' + 'user_group_id' + '}', CGI.escape(user_group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"IamUserGroupsApi.list_user_group_roles",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamUserGroupsApi#list_user_group_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List service groups in a user group
    # List service groups in a user group.
    # @option opts [String] :user_group_id Alphanumeric string identifying the user group. (required)
    # @option opts [Integer] :per_page Number of records per page. (default to 20)
    # @option opts [Integer] :page Current page.
    # @return [Object]
    def list_user_group_service_groups(opts = {})
      data, _status_code, _headers = list_user_group_service_groups_with_http_info(opts)
      data
    end

    # List service groups in a user group
    # List service groups in a user group.
    # @option opts [String] :user_group_id Alphanumeric string identifying the user group. (required)
    # @option opts [Integer] :per_page Number of records per page. (default to 20)
    # @option opts [Integer] :page Current page.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def list_user_group_service_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamUserGroupsApi.list_user_group_service_groups ...'
      end
      # unbox the parameters from the hash
      user_group_id = opts[:'user_group_id']
      # verify the required parameter 'user_group_id' is set
      if @api_client.config.client_side_validation && user_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_group_id' when calling IamUserGroupsApi.list_user_group_service_groups"
      end
      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling IamUserGroupsApi.list_user_group_service_groups, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling IamUserGroupsApi.list_user_group_service_groups, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/user-groups/{user_group_id}/service-groups'.sub('{' + 'user_group_id' + '}', CGI.escape(user_group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"IamUserGroupsApi.list_user_group_service_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamUserGroupsApi#list_user_group_service_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List user groups
    # List all user groups.
    # @option opts [Integer] :per_page Number of records per page. (default to 20)
    # @option opts [Integer] :page Current page.
    # @return [Object]
    def list_user_groups(opts = {})
      data, _status_code, _headers = list_user_groups_with_http_info(opts)
      data
    end

    # List user groups
    # List all user groups.
    # @option opts [Integer] :per_page Number of records per page. (default to 20)
    # @option opts [Integer] :page Current page.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def list_user_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamUserGroupsApi.list_user_groups ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling IamUserGroupsApi.list_user_groups, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling IamUserGroupsApi.list_user_groups, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/user-groups'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"IamUserGroupsApi.list_user_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamUserGroupsApi#list_user_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove members of a user group
    # Remove members of a user group
    # @option opts [String] :user_group_id Alphanumeric string identifying the user group. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [nil]
    def remove_user_group_members(opts = {})
      remove_user_group_members_with_http_info(opts)
      nil
    end

    # Remove members of a user group
    # Remove members of a user group
    # @option opts [String] :user_group_id Alphanumeric string identifying the user group. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def remove_user_group_members_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamUserGroupsApi.remove_user_group_members ...'
      end
      # unbox the parameters from the hash
      user_group_id = opts[:'user_group_id']
      # verify the required parameter 'user_group_id' is set
      if @api_client.config.client_side_validation && user_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_group_id' when calling IamUserGroupsApi.remove_user_group_members"
      end
      # resource path
      local_var_path = '/user-groups/{user_group_id}/members'.sub('{' + 'user_group_id' + '}', CGI.escape(user_group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'request_body'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"IamUserGroupsApi.remove_user_group_members",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamUserGroupsApi#remove_user_group_members\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove roles from a user group
    # Remove roles from a user group.
    # @option opts [String] :user_group_id Alphanumeric string identifying the user group. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [nil]
    def remove_user_group_roles(opts = {})
      remove_user_group_roles_with_http_info(opts)
      nil
    end

    # Remove roles from a user group
    # Remove roles from a user group.
    # @option opts [String] :user_group_id Alphanumeric string identifying the user group. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def remove_user_group_roles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamUserGroupsApi.remove_user_group_roles ...'
      end
      # unbox the parameters from the hash
      user_group_id = opts[:'user_group_id']
      # verify the required parameter 'user_group_id' is set
      if @api_client.config.client_side_validation && user_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_group_id' when calling IamUserGroupsApi.remove_user_group_roles"
      end
      # resource path
      local_var_path = '/user-groups/{user_group_id}/roles'.sub('{' + 'user_group_id' + '}', CGI.escape(user_group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'request_body'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"IamUserGroupsApi.remove_user_group_roles",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamUserGroupsApi#remove_user_group_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove service groups from a user group
    # Remove service groups from a user group.
    # @option opts [String] :user_group_id Alphanumeric string identifying the user group. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [nil]
    def remove_user_group_service_groups(opts = {})
      remove_user_group_service_groups_with_http_info(opts)
      nil
    end

    # Remove service groups from a user group
    # Remove service groups from a user group.
    # @option opts [String] :user_group_id Alphanumeric string identifying the user group. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def remove_user_group_service_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamUserGroupsApi.remove_user_group_service_groups ...'
      end
      # unbox the parameters from the hash
      user_group_id = opts[:'user_group_id']
      # verify the required parameter 'user_group_id' is set
      if @api_client.config.client_side_validation && user_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_group_id' when calling IamUserGroupsApi.remove_user_group_service_groups"
      end
      # resource path
      local_var_path = '/user-groups/{user_group_id}/service-groups'.sub('{' + 'user_group_id' + '}', CGI.escape(user_group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'request_body'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"IamUserGroupsApi.remove_user_group_service_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamUserGroupsApi#remove_user_group_service_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a user group
    # Update a user group.
    # @option opts [String] :user_group_id Alphanumeric string identifying the user group. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Object]
    def update_a_user_group(opts = {})
      data, _status_code, _headers = update_a_user_group_with_http_info(opts)
      data
    end

    # Update a user group
    # Update a user group.
    # @option opts [String] :user_group_id Alphanumeric string identifying the user group. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def update_a_user_group_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamUserGroupsApi.update_a_user_group ...'
      end
      # unbox the parameters from the hash
      user_group_id = opts[:'user_group_id']
      # verify the required parameter 'user_group_id' is set
      if @api_client.config.client_side_validation && user_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_group_id' when calling IamUserGroupsApi.update_a_user_group"
      end
      # resource path
      local_var_path = '/user-groups/{user_group_id}'.sub('{' + 'user_group_id' + '}', CGI.escape(user_group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"IamUserGroupsApi.update_a_user_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamUserGroupsApi#update_a_user_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
