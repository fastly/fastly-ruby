=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class ConditionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a condition
    # Creates a new condition.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :comment A freeform descriptive note.
    # @option opts [String] :name Name of the condition. Required.
    # @option opts [String] :priority A numeric string. Priority determines execution order. Lower numbers execute first. (default to '100')
    # @option opts [String] :statement A conditional expression in VCL used to determine if the condition is met.
    # @option opts [String] :service_id 
    # @option opts [String] :version A numeric string that represents the service version.
    # @option opts [String] :type Type of the condition. Required.
    # @return [ConditionResponse]
    def create_condition(opts = {})
      data, _status_code, _headers = create_condition_with_http_info(opts)
      data
    end

    # Create a condition
    # Creates a new condition.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :comment A freeform descriptive note.
    # @option opts [String] :name Name of the condition. Required.
    # @option opts [String] :priority A numeric string. Priority determines execution order. Lower numbers execute first. (default to '100')
    # @option opts [String] :statement A conditional expression in VCL used to determine if the condition is met.
    # @option opts [String] :service_id 
    # @option opts [String] :version A numeric string that represents the service version.
    # @option opts [String] :type Type of the condition. Required.
    # @return [Array<(ConditionResponse, Integer, Hash)>] ConditionResponse data, response status code and response headers
    def create_condition_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConditionApi.create_condition ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ConditionApi.create_condition"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling ConditionApi.create_condition"
      end
      allowable_values = ["REQUEST", "CACHE", "RESPONSE", "PREFETCH"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/condition'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['comment'] = opts[:'comment'] if !opts[:'comment'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['priority'] = opts[:'priority'] if !opts[:'priority'].nil?
      form_params['statement'] = opts[:'statement'] if !opts[:'statement'].nil?
      form_params['service_id'] = opts[:'service_id'] if !opts[:'service_id'].nil?
      form_params['version'] = opts[:'version'] if !opts[:'version'].nil?
      form_params['type'] = opts[:'type'] if !opts[:'type'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ConditionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ConditionApi.create_condition",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConditionApi#create_condition\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a condition
    # Deletes the specified condition.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :condition_name Name of the condition. Required. (required)
    # @return [InlineResponse200]
    def delete_condition(opts = {})
      data, _status_code, _headers = delete_condition_with_http_info(opts)
      data
    end

    # Delete a condition
    # Deletes the specified condition.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :condition_name Name of the condition. Required. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_condition_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConditionApi.delete_condition ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      condition_name = opts[:'condition_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ConditionApi.delete_condition"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling ConditionApi.delete_condition"
      end
      # verify the required parameter 'condition_name' is set
      if @api_client.config.client_side_validation && condition_name.nil?
        fail ArgumentError, "Missing the required parameter 'condition_name' when calling ConditionApi.delete_condition"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/condition/{condition_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'condition_name' + '}', CGI.escape(condition_name.to_s))

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
      return_type = opts[:debug_return_type] || 'InlineResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ConditionApi.delete_condition",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConditionApi#delete_condition\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Describe a condition
    # Gets the specified condition.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :condition_name Name of the condition. Required. (required)
    # @return [ConditionResponse]
    def get_condition(opts = {})
      data, _status_code, _headers = get_condition_with_http_info(opts)
      data
    end

    # Describe a condition
    # Gets the specified condition.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :condition_name Name of the condition. Required. (required)
    # @return [Array<(ConditionResponse, Integer, Hash)>] ConditionResponse data, response status code and response headers
    def get_condition_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConditionApi.get_condition ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      condition_name = opts[:'condition_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ConditionApi.get_condition"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling ConditionApi.get_condition"
      end
      # verify the required parameter 'condition_name' is set
      if @api_client.config.client_side_validation && condition_name.nil?
        fail ArgumentError, "Missing the required parameter 'condition_name' when calling ConditionApi.get_condition"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/condition/{condition_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'condition_name' + '}', CGI.escape(condition_name.to_s))

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
      return_type = opts[:debug_return_type] || 'ConditionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ConditionApi.get_condition",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConditionApi#get_condition\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List conditions
    # Gets all conditions for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<ConditionResponse>]
    def list_conditions(opts = {})
      data, _status_code, _headers = list_conditions_with_http_info(opts)
      data
    end

    # List conditions
    # Gets all conditions for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(Array<ConditionResponse>, Integer, Hash)>] Array<ConditionResponse> data, response status code and response headers
    def list_conditions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConditionApi.list_conditions ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ConditionApi.list_conditions"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling ConditionApi.list_conditions"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/condition'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<ConditionResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ConditionApi.list_conditions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConditionApi#list_conditions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a condition
    # Updates the specified condition.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :condition_name Name of the condition. Required. (required)
    # @option opts [String] :comment A freeform descriptive note.
    # @option opts [String] :name Name of the condition. Required.
    # @option opts [String] :priority A numeric string. Priority determines execution order. Lower numbers execute first. (default to '100')
    # @option opts [String] :statement A conditional expression in VCL used to determine if the condition is met.
    # @option opts [String] :service_id 
    # @option opts [String] :version A numeric string that represents the service version.
    # @option opts [String] :type Type of the condition. Required.
    # @return [ConditionResponse]
    def update_condition(opts = {})
      data, _status_code, _headers = update_condition_with_http_info(opts)
      data
    end

    # Update a condition
    # Updates the specified condition.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :condition_name Name of the condition. Required. (required)
    # @option opts [String] :comment A freeform descriptive note.
    # @option opts [String] :name Name of the condition. Required.
    # @option opts [String] :priority A numeric string. Priority determines execution order. Lower numbers execute first. (default to '100')
    # @option opts [String] :statement A conditional expression in VCL used to determine if the condition is met.
    # @option opts [String] :service_id 
    # @option opts [String] :version A numeric string that represents the service version.
    # @option opts [String] :type Type of the condition. Required.
    # @return [Array<(ConditionResponse, Integer, Hash)>] ConditionResponse data, response status code and response headers
    def update_condition_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConditionApi.update_condition ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      condition_name = opts[:'condition_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ConditionApi.update_condition"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling ConditionApi.update_condition"
      end
      # verify the required parameter 'condition_name' is set
      if @api_client.config.client_side_validation && condition_name.nil?
        fail ArgumentError, "Missing the required parameter 'condition_name' when calling ConditionApi.update_condition"
      end
      allowable_values = ["REQUEST", "CACHE", "RESPONSE", "PREFETCH"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/condition/{condition_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'condition_name' + '}', CGI.escape(condition_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['comment'] = opts[:'comment'] if !opts[:'comment'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['priority'] = opts[:'priority'] if !opts[:'priority'].nil?
      form_params['statement'] = opts[:'statement'] if !opts[:'statement'].nil?
      form_params['service_id'] = opts[:'service_id'] if !opts[:'service_id'].nil?
      form_params['version'] = opts[:'version'] if !opts[:'version'].nil?
      form_params['type'] = opts[:'type'] if !opts[:'type'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ConditionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ConditionApi.update_condition",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConditionApi#update_condition\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
