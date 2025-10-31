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
    # Get IAM role by ID
    # Retrieve a single IAM role by its unique identifier. 
    # @option opts [String] :role_id Alphanumeric string identifying the role. (required)
    # @option opts [String] :include Include related data (i.e., permissions).
    # @return [IamV1RoleResponse]
    def iam_v1_roles_get(opts = {})
      data, _status_code, _headers = iam_v1_roles_get_with_http_info(opts)
      data
    end

    # Get IAM role by ID
    # Retrieve a single IAM role by its unique identifier. 
    # @option opts [String] :role_id Alphanumeric string identifying the role. (required)
    # @option opts [String] :include Include related data (i.e., permissions).
    # @return [Array<(IamV1RoleResponse, Integer, Hash)>] IamV1RoleResponse data, response status code and response headers
    def iam_v1_roles_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamRolesApi.iam_v1_roles_get ...'
      end
      # unbox the parameters from the hash
      role_id = opts[:'role_id']
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling IamRolesApi.iam_v1_roles_get"
      end
      allowable_values = ["permissions"]
      if @api_client.config.client_side_validation && opts[:'include'] && !allowable_values.include?(opts[:'include'])
        fail ArgumentError, "invalid value for \"include\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/iam/v1/roles/{role_id}'.sub('{' + 'role_id' + '}', CGI.escape(role_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'IamV1RoleResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"IamRolesApi.iam_v1_roles_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamRolesApi#iam_v1_roles_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List IAM roles
    # Retrieve a paginated list of IAM roles available in the account. 
    # @option opts [Integer] :limit Number of results per page. The maximum is 1000. (default to 100)
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @return [IamV1RoleListResponse]
    def iam_v1_roles_list(opts = {})
      data, _status_code, _headers = iam_v1_roles_list_with_http_info(opts)
      data
    end

    # List IAM roles
    # Retrieve a paginated list of IAM roles available in the account. 
    # @option opts [Integer] :limit Number of results per page. The maximum is 1000. (default to 100)
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @return [Array<(IamV1RoleListResponse, Integer, Hash)>] IamV1RoleListResponse data, response status code and response headers
    def iam_v1_roles_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamRolesApi.iam_v1_roles_list ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling IamRolesApi.iam_v1_roles_list, must be smaller than or equal to 1000.'
      end

      # resource path
      local_var_path = '/iam/v1/roles'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'IamV1RoleListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"IamRolesApi.iam_v1_roles_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamRolesApi#iam_v1_roles_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
