=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class LegacyWafConfigurationSetsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List configuration sets
    # List all Configuration sets.
    # @return [Object]
    def list_waf_config_sets(opts = {})
      data, _status_code, _headers = list_waf_config_sets_with_http_info(opts)
      data
    end

    # List configuration sets
    # List all Configuration sets.
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def list_waf_config_sets_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafConfigurationSetsApi.list_waf_config_sets ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/wafs/configuration_sets'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LegacyWafConfigurationSetsApi.list_waf_config_sets",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafConfigurationSetsApi#list_waf_config_sets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List WAFs currently using a configuration set
    # List the WAF objects currently using the specified configuration set.
    # @option opts [String] :configuration_set_id Alphanumeric string identifying a WAF configuration set. (required)
    # @return [Object]
    def list_wafs_config_set(opts = {})
      data, _status_code, _headers = list_wafs_config_set_with_http_info(opts)
      data
    end

    # List WAFs currently using a configuration set
    # List the WAF objects currently using the specified configuration set.
    # @option opts [String] :configuration_set_id Alphanumeric string identifying a WAF configuration set. (required)
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def list_wafs_config_set_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafConfigurationSetsApi.list_wafs_config_set ...'
      end
      # unbox the parameters from the hash
      configuration_set_id = opts[:'configuration_set_id']
      # verify the required parameter 'configuration_set_id' is set
      if @api_client.config.client_side_validation && configuration_set_id.nil?
        fail ArgumentError, "Missing the required parameter 'configuration_set_id' when calling LegacyWafConfigurationSetsApi.list_wafs_config_set"
      end
      # resource path
      local_var_path = '/wafs/configuration_sets/{configuration_set_id}/relationships/wafs'.sub('{' + 'configuration_set_id' + '}', CGI.escape(configuration_set_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LegacyWafConfigurationSetsApi.list_wafs_config_set",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafConfigurationSetsApi#list_wafs_config_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Apply a configuration set to a WAF
    # Update one or more WAF objects to use the specified configuration set.
    # @option opts [String] :configuration_set_id Alphanumeric string identifying a WAF configuration set. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Object]
    def use_waf_config_set(opts = {})
      data, _status_code, _headers = use_waf_config_set_with_http_info(opts)
      data
    end

    # Apply a configuration set to a WAF
    # Update one or more WAF objects to use the specified configuration set.
    # @option opts [String] :configuration_set_id Alphanumeric string identifying a WAF configuration set. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def use_waf_config_set_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafConfigurationSetsApi.use_waf_config_set ...'
      end
      # unbox the parameters from the hash
      configuration_set_id = opts[:'configuration_set_id']
      # verify the required parameter 'configuration_set_id' is set
      if @api_client.config.client_side_validation && configuration_set_id.nil?
        fail ArgumentError, "Missing the required parameter 'configuration_set_id' when calling LegacyWafConfigurationSetsApi.use_waf_config_set"
      end
      # resource path
      local_var_path = '/wafs/configuration_sets/{configuration_set_id}/relationships/wafs'.sub('{' + 'configuration_set_id' + '}', CGI.escape(configuration_set_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/vnd.api+json'])
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
        :operation => :"LegacyWafConfigurationSetsApi.use_waf_config_set",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafConfigurationSetsApi#use_waf_config_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
