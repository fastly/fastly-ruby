=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class IamRolesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add permissions to a role
    # Add permissions to a role.
    # @option opts [String] :role_id Alphanumeric string identifying the role. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Object]
    def add_role_permissions(opts = {})
      data, _status_code, _headers = add_role_permissions_with_http_info(opts)
      data
    end

    # Add permissions to a role
    # Add permissions to a role.
    # @option opts [String] :role_id Alphanumeric string identifying the role. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def add_role_permissions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamRolesApi.add_role_permissions ...'
      end
      # unbox the parameters from the hash
      role_id = opts[:'role_id']
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling IamRolesApi.add_role_permissions"
      end
      # resource path
      local_var_path = '/roles/{role_id}/permissions'.sub('{' + 'role_id' + '}', CGI.escape(role_id.to_s))

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
        :operation => :"IamRolesApi.add_role_permissions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamRolesApi#add_role_permissions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a role
    # Create a role.
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Object]
    def create_a_role(opts = {})
      data, _status_code, _headers = create_a_role_with_http_info(opts)
      data
    end

    # Create a role
    # Create a role.
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def create_a_role_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamRolesApi.create_a_role ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/roles'

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
        :operation => :"IamRolesApi.create_a_role",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamRolesApi#create_a_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a role
    # Delete a role.
    # @option opts [String] :role_id Alphanumeric string identifying the role. (required)
    # @return [nil]
    def delete_a_role(opts = {})
      delete_a_role_with_http_info(opts)
      nil
    end

    # Delete a role
    # Delete a role.
    # @option opts [String] :role_id Alphanumeric string identifying the role. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_a_role_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamRolesApi.delete_a_role ...'
      end
      # unbox the parameters from the hash
      role_id = opts[:'role_id']
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling IamRolesApi.delete_a_role"
      end
      # resource path
      local_var_path = '/roles/{role_id}'.sub('{' + 'role_id' + '}', CGI.escape(role_id.to_s))

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
        :operation => :"IamRolesApi.delete_a_role",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamRolesApi#delete_a_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a role
    # Get a role.
    # @option opts [String] :role_id Alphanumeric string identifying the role. (required)
    # @return [Object]
    def get_a_role(opts = {})
      data, _status_code, _headers = get_a_role_with_http_info(opts)
      data
    end

    # Get a role
    # Get a role.
    # @option opts [String] :role_id Alphanumeric string identifying the role. (required)
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_a_role_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamRolesApi.get_a_role ...'
      end
      # unbox the parameters from the hash
      role_id = opts[:'role_id']
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling IamRolesApi.get_a_role"
      end
      # resource path
      local_var_path = '/roles/{role_id}'.sub('{' + 'role_id' + '}', CGI.escape(role_id.to_s))

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
        :operation => :"IamRolesApi.get_a_role",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamRolesApi#get_a_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List permissions in a role
    # List all permissions in a role.
    # @option opts [String] :role_id Alphanumeric string identifying the role. (required)
    # @return [Object]
    def list_role_permissions(opts = {})
      data, _status_code, _headers = list_role_permissions_with_http_info(opts)
      data
    end

    # List permissions in a role
    # List all permissions in a role.
    # @option opts [String] :role_id Alphanumeric string identifying the role. (required)
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def list_role_permissions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamRolesApi.list_role_permissions ...'
      end
      # unbox the parameters from the hash
      role_id = opts[:'role_id']
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling IamRolesApi.list_role_permissions"
      end
      # resource path
      local_var_path = '/roles/{role_id}/permissions'.sub('{' + 'role_id' + '}', CGI.escape(role_id.to_s))

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
        :operation => :"IamRolesApi.list_role_permissions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamRolesApi#list_role_permissions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List roles
    # List all roles.
    # @option opts [Integer] :per_page Number of records per page. (default to 20)
    # @option opts [Integer] :page Current page.
    # @return [Object]
    def list_roles(opts = {})
      data, _status_code, _headers = list_roles_with_http_info(opts)
      data
    end

    # List roles
    # List all roles.
    # @option opts [Integer] :per_page Number of records per page. (default to 20)
    # @option opts [Integer] :page Current page.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def list_roles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamRolesApi.list_roles ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling IamRolesApi.list_roles, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling IamRolesApi.list_roles, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/roles'

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
        :operation => :"IamRolesApi.list_roles",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamRolesApi#list_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove permissions from a role
    # Remove permissions from a role.
    # @option opts [String] :role_id Alphanumeric string identifying the role. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [nil]
    def remove_role_permissions(opts = {})
      remove_role_permissions_with_http_info(opts)
      nil
    end

    # Remove permissions from a role
    # Remove permissions from a role.
    # @option opts [String] :role_id Alphanumeric string identifying the role. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def remove_role_permissions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamRolesApi.remove_role_permissions ...'
      end
      # unbox the parameters from the hash
      role_id = opts[:'role_id']
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling IamRolesApi.remove_role_permissions"
      end
      # resource path
      local_var_path = '/roles/{role_id}/permissions'.sub('{' + 'role_id' + '}', CGI.escape(role_id.to_s))

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
        :operation => :"IamRolesApi.remove_role_permissions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamRolesApi#remove_role_permissions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a role
    # Update a role.
    # @option opts [String] :role_id Alphanumeric string identifying the role. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Object]
    def update_a_role(opts = {})
      data, _status_code, _headers = update_a_role_with_http_info(opts)
      data
    end

    # Update a role
    # Update a role.
    # @option opts [String] :role_id Alphanumeric string identifying the role. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def update_a_role_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamRolesApi.update_a_role ...'
      end
      # unbox the parameters from the hash
      role_id = opts[:'role_id']
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling IamRolesApi.update_a_role"
      end
      # resource path
      local_var_path = '/roles/{role_id}'.sub('{' + 'role_id' + '}', CGI.escape(role_id.to_s))

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
        :operation => :"IamRolesApi.update_a_role",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamRolesApi#update_a_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
