=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class LegacyWafOwaspApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an OWASP settings object
    # Create an OWASP settings object for a particular service and firewall.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Object]
    def create_owasp_settings(opts = {})
      data, _status_code, _headers = create_owasp_settings_with_http_info(opts)
      data
    end

    # Create an OWASP settings object
    # Create an OWASP settings object for a particular service and firewall.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def create_owasp_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafOwaspApi.create_owasp_settings ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      firewall_id = opts[:'firewall_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LegacyWafOwaspApi.create_owasp_settings"
      end
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling LegacyWafOwaspApi.create_owasp_settings"
      end
      # resource path
      local_var_path = '/service/{service_id}/wafs/{firewall_id}/owasp'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s))

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
        :operation => :"LegacyWafOwaspApi.create_owasp_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafOwaspApi#create_owasp_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the OWASP settings object
    # Get the OWASP settings object for a particular service and firewall.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @return [Object]
    def get_owasp_settings(opts = {})
      data, _status_code, _headers = get_owasp_settings_with_http_info(opts)
      data
    end

    # Get the OWASP settings object
    # Get the OWASP settings object for a particular service and firewall.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_owasp_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafOwaspApi.get_owasp_settings ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      firewall_id = opts[:'firewall_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LegacyWafOwaspApi.get_owasp_settings"
      end
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling LegacyWafOwaspApi.get_owasp_settings"
      end
      # resource path
      local_var_path = '/service/{service_id}/wafs/{firewall_id}/owasp'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s))

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
        :operation => :"LegacyWafOwaspApi.get_owasp_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafOwaspApi#get_owasp_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the OWASP settings object
    # Update the OWASP settings object for a particular service and firewall.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Object]
    def update_owasp_settings(opts = {})
      data, _status_code, _headers = update_owasp_settings_with_http_info(opts)
      data
    end

    # Update the OWASP settings object
    # Update the OWASP settings object for a particular service and firewall.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def update_owasp_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafOwaspApi.update_owasp_settings ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      firewall_id = opts[:'firewall_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LegacyWafOwaspApi.update_owasp_settings"
      end
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling LegacyWafOwaspApi.update_owasp_settings"
      end
      # resource path
      local_var_path = '/service/{service_id}/wafs/{firewall_id}/owasp'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s))

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
        :operation => :"LegacyWafOwaspApi.update_owasp_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafOwaspApi#update_owasp_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
