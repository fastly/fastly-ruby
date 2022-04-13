=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class IamServiceGroupsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a service group
    # Delete a service group.
    # @option opts [String] :service_group_id Alphanumeric string identifying the service group. (required)
    # @return [nil]
    def delete_a_service_group(opts = {})
      delete_a_service_group_with_http_info(opts)
      nil
    end

    # Delete a service group
    # Delete a service group.
    # @option opts [String] :service_group_id Alphanumeric string identifying the service group. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_a_service_group_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamServiceGroupsApi.delete_a_service_group ...'
      end
      # unbox the parameters from the hash
      service_group_id = opts[:'service_group_id']
      # verify the required parameter 'service_group_id' is set
      if @api_client.config.client_side_validation && service_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_group_id' when calling IamServiceGroupsApi.delete_a_service_group"
      end
      # resource path
      local_var_path = '/service-groups/{service_group_id}'.sub('{' + 'service_group_id' + '}', CGI.escape(service_group_id.to_s))

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
        :operation => :"IamServiceGroupsApi.delete_a_service_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamServiceGroupsApi#delete_a_service_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a service group
    # Get a service group.
    # @option opts [String] :service_group_id Alphanumeric string identifying the service group. (required)
    # @return [Object]
    def get_a_service_group(opts = {})
      data, _status_code, _headers = get_a_service_group_with_http_info(opts)
      data
    end

    # Get a service group
    # Get a service group.
    # @option opts [String] :service_group_id Alphanumeric string identifying the service group. (required)
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_a_service_group_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamServiceGroupsApi.get_a_service_group ...'
      end
      # unbox the parameters from the hash
      service_group_id = opts[:'service_group_id']
      # verify the required parameter 'service_group_id' is set
      if @api_client.config.client_side_validation && service_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_group_id' when calling IamServiceGroupsApi.get_a_service_group"
      end
      # resource path
      local_var_path = '/service-groups/{service_group_id}'.sub('{' + 'service_group_id' + '}', CGI.escape(service_group_id.to_s))

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
        :operation => :"IamServiceGroupsApi.get_a_service_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamServiceGroupsApi#get_a_service_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List services to a service group
    # List services to a service group.
    # @option opts [String] :service_group_id Alphanumeric string identifying the service group. (required)
    # @option opts [Integer] :per_page Number of records per page. (default to 20)
    # @option opts [Integer] :page Current page.
    # @return [Object]
    def list_service_group_services(opts = {})
      data, _status_code, _headers = list_service_group_services_with_http_info(opts)
      data
    end

    # List services to a service group
    # List services to a service group.
    # @option opts [String] :service_group_id Alphanumeric string identifying the service group. (required)
    # @option opts [Integer] :per_page Number of records per page. (default to 20)
    # @option opts [Integer] :page Current page.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def list_service_group_services_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamServiceGroupsApi.list_service_group_services ...'
      end
      # unbox the parameters from the hash
      service_group_id = opts[:'service_group_id']
      # verify the required parameter 'service_group_id' is set
      if @api_client.config.client_side_validation && service_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_group_id' when calling IamServiceGroupsApi.list_service_group_services"
      end
      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling IamServiceGroupsApi.list_service_group_services, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling IamServiceGroupsApi.list_service_group_services, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/service-groups/{service_group_id}/services'.sub('{' + 'service_group_id' + '}', CGI.escape(service_group_id.to_s))

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
        :operation => :"IamServiceGroupsApi.list_service_group_services",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamServiceGroupsApi#list_service_group_services\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List service groups
    # List all service groups.
    # @option opts [Integer] :per_page Number of records per page. (default to 20)
    # @option opts [Integer] :page Current page.
    # @return [Object]
    def list_service_groups(opts = {})
      data, _status_code, _headers = list_service_groups_with_http_info(opts)
      data
    end

    # List service groups
    # List all service groups.
    # @option opts [Integer] :per_page Number of records per page. (default to 20)
    # @option opts [Integer] :page Current page.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def list_service_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IamServiceGroupsApi.list_service_groups ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling IamServiceGroupsApi.list_service_groups, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling IamServiceGroupsApi.list_service_groups, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/service-groups'

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
        :operation => :"IamServiceGroupsApi.list_service_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IamServiceGroupsApi#list_service_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
