=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class TlsConfigurationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a TLS configuration
    # Show a TLS configuration.
    # @option opts [String] :tls_configuration_id Alphanumeric string identifying a TLS configuration. (required)
    # @option opts [String] :include Include related objects. Optional, comma-separated values. Permitted values: &#x60;dns_records&#x60;. 
    # @return [TlsConfigurationResponse]
    def get_tls_config(opts = {})
      data, _status_code, _headers = get_tls_config_with_http_info(opts)
      data
    end

    # Get a TLS configuration
    # Show a TLS configuration.
    # @option opts [String] :tls_configuration_id Alphanumeric string identifying a TLS configuration. (required)
    # @option opts [String] :include Include related objects. Optional, comma-separated values. Permitted values: &#x60;dns_records&#x60;. 
    # @return [Array<(TlsConfigurationResponse, Integer, Hash)>] TlsConfigurationResponse data, response status code and response headers
    def get_tls_config_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsConfigurationsApi.get_tls_config ...'
      end
      # unbox the parameters from the hash
      tls_configuration_id = opts[:'tls_configuration_id']
      # verify the required parameter 'tls_configuration_id' is set
      if @api_client.config.client_side_validation && tls_configuration_id.nil?
        fail ArgumentError, "Missing the required parameter 'tls_configuration_id' when calling TlsConfigurationsApi.get_tls_config"
      end
      # resource path
      local_var_path = '/tls/configurations/{tls_configuration_id}'.sub('{' + 'tls_configuration_id' + '}', CGI.escape(tls_configuration_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TlsConfigurationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsConfigurationsApi.get_tls_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsConfigurationsApi#get_tls_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List TLS configurations
    # List all TLS configurations.
    # @option opts [String] :filter_bulk Optionally filters by the bulk attribute.
    # @option opts [String] :include Include related objects. Optional, comma-separated values. Permitted values: &#x60;dns_records&#x60;. 
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @return [TlsConfigurationsResponse]
    def list_tls_configs(opts = {})
      data, _status_code, _headers = list_tls_configs_with_http_info(opts)
      data
    end

    # List TLS configurations
    # List all TLS configurations.
    # @option opts [String] :filter_bulk Optionally filters by the bulk attribute.
    # @option opts [String] :include Include related objects. Optional, comma-separated values. Permitted values: &#x60;dns_records&#x60;. 
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @return [Array<(TlsConfigurationsResponse, Integer, Hash)>] TlsConfigurationsResponse data, response status code and response headers
    def list_tls_configs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsConfigurationsApi.list_tls_configs ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling TlsConfigurationsApi.list_tls_configs, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling TlsConfigurationsApi.list_tls_configs, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/tls/configurations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter[bulk]'] = opts[:'filter_bulk'] if !opts[:'filter_bulk'].nil?
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?
      query_params[:'page[number]'] = opts[:'page_number'] if !opts[:'page_number'].nil?
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TlsConfigurationsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsConfigurationsApi.list_tls_configs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsConfigurationsApi#list_tls_configs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a TLS configuration
    # Update a TLS configuration.
    # @option opts [String] :tls_configuration_id Alphanumeric string identifying a TLS configuration. (required)
    # @option opts [TlsConfiguration] :tls_configuration 
    # @return [TlsConfigurationResponse]
    def update_tls_config(opts = {})
      data, _status_code, _headers = update_tls_config_with_http_info(opts)
      data
    end

    # Update a TLS configuration
    # Update a TLS configuration.
    # @option opts [String] :tls_configuration_id Alphanumeric string identifying a TLS configuration. (required)
    # @option opts [TlsConfiguration] :tls_configuration 
    # @return [Array<(TlsConfigurationResponse, Integer, Hash)>] TlsConfigurationResponse data, response status code and response headers
    def update_tls_config_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsConfigurationsApi.update_tls_config ...'
      end
      # unbox the parameters from the hash
      tls_configuration_id = opts[:'tls_configuration_id']
      # verify the required parameter 'tls_configuration_id' is set
      if @api_client.config.client_side_validation && tls_configuration_id.nil?
        fail ArgumentError, "Missing the required parameter 'tls_configuration_id' when calling TlsConfigurationsApi.update_tls_config"
      end
      # resource path
      local_var_path = '/tls/configurations/{tls_configuration_id}'.sub('{' + 'tls_configuration_id' + '}', CGI.escape(tls_configuration_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'tls_configuration'])

      # return_type
      return_type = opts[:debug_return_type] || 'TlsConfigurationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsConfigurationsApi.update_tls_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsConfigurationsApi#update_tls_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
