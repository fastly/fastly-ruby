=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class GzipApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a gzip configuration
    # Create a named gzip configuration on a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :cache_condition Name of the cache condition controlling when this configuration applies.
    # @option opts [String] :content_types Space-separated list of content types to compress. If you omit this field a default list will be used.
    # @option opts [String] :extensions Space-separated list of file extensions to compress. If you omit this field a default list will be used.
    # @option opts [String] :name Name of the gzip configuration.
    # @return [GzipResponse]
    def create_gzip_config(opts = {})
      data, _status_code, _headers = create_gzip_config_with_http_info(opts)
      data
    end

    # Create a gzip configuration
    # Create a named gzip configuration on a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :cache_condition Name of the cache condition controlling when this configuration applies.
    # @option opts [String] :content_types Space-separated list of content types to compress. If you omit this field a default list will be used.
    # @option opts [String] :extensions Space-separated list of file extensions to compress. If you omit this field a default list will be used.
    # @option opts [String] :name Name of the gzip configuration.
    # @return [Array<(GzipResponse, Integer, Hash)>] GzipResponse data, response status code and response headers
    def create_gzip_config_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GzipApi.create_gzip_config ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling GzipApi.create_gzip_config"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling GzipApi.create_gzip_config"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/gzip'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      form_params['cache_condition'] = opts[:'cache_condition'] if !opts[:'cache_condition'].nil?
      form_params['content_types'] = opts[:'content_types'] if !opts[:'content_types'].nil?
      form_params['extensions'] = opts[:'extensions'] if !opts[:'extensions'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GzipResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"GzipApi.create_gzip_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GzipApi#create_gzip_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a gzip configuration
    # Delete a named gzip configuration on a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :gzip_name Name of the gzip configuration. (required)
    # @return [InlineResponse200]
    def delete_gzip_config(opts = {})
      data, _status_code, _headers = delete_gzip_config_with_http_info(opts)
      data
    end

    # Delete a gzip configuration
    # Delete a named gzip configuration on a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :gzip_name Name of the gzip configuration. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_gzip_config_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GzipApi.delete_gzip_config ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      gzip_name = opts[:'gzip_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling GzipApi.delete_gzip_config"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling GzipApi.delete_gzip_config"
      end
      # verify the required parameter 'gzip_name' is set
      if @api_client.config.client_side_validation && gzip_name.nil?
        fail ArgumentError, "Missing the required parameter 'gzip_name' when calling GzipApi.delete_gzip_config"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/gzip/{gzip_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'gzip_name' + '}', CGI.escape(gzip_name.to_s))

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
        :operation => :"GzipApi.delete_gzip_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GzipApi#delete_gzip_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a gzip configuration
    # Get the gzip configuration for a particular service, version, and name.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :gzip_name Name of the gzip configuration. (required)
    # @return [GzipResponse]
    def get_gzip_configs(opts = {})
      data, _status_code, _headers = get_gzip_configs_with_http_info(opts)
      data
    end

    # Get a gzip configuration
    # Get the gzip configuration for a particular service, version, and name.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :gzip_name Name of the gzip configuration. (required)
    # @return [Array<(GzipResponse, Integer, Hash)>] GzipResponse data, response status code and response headers
    def get_gzip_configs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GzipApi.get_gzip_configs ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      gzip_name = opts[:'gzip_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling GzipApi.get_gzip_configs"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling GzipApi.get_gzip_configs"
      end
      # verify the required parameter 'gzip_name' is set
      if @api_client.config.client_side_validation && gzip_name.nil?
        fail ArgumentError, "Missing the required parameter 'gzip_name' when calling GzipApi.get_gzip_configs"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/gzip/{gzip_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'gzip_name' + '}', CGI.escape(gzip_name.to_s))

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
      return_type = opts[:debug_return_type] || 'GzipResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"GzipApi.get_gzip_configs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GzipApi#get_gzip_configs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List gzip configurations
    # List all gzip configurations for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<GzipResponse>]
    def list_gzip_configs(opts = {})
      data, _status_code, _headers = list_gzip_configs_with_http_info(opts)
      data
    end

    # List gzip configurations
    # List all gzip configurations for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(Array<GzipResponse>, Integer, Hash)>] Array<GzipResponse> data, response status code and response headers
    def list_gzip_configs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GzipApi.list_gzip_configs ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling GzipApi.list_gzip_configs"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling GzipApi.list_gzip_configs"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/gzip'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<GzipResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"GzipApi.list_gzip_configs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GzipApi#list_gzip_configs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a gzip configuration
    # Update a named gzip configuration on a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :gzip_name Name of the gzip configuration. (required)
    # @option opts [String] :cache_condition Name of the cache condition controlling when this configuration applies.
    # @option opts [String] :content_types Space-separated list of content types to compress. If you omit this field a default list will be used.
    # @option opts [String] :extensions Space-separated list of file extensions to compress. If you omit this field a default list will be used.
    # @option opts [String] :name Name of the gzip configuration.
    # @return [GzipResponse]
    def update_gzip_config(opts = {})
      data, _status_code, _headers = update_gzip_config_with_http_info(opts)
      data
    end

    # Update a gzip configuration
    # Update a named gzip configuration on a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :gzip_name Name of the gzip configuration. (required)
    # @option opts [String] :cache_condition Name of the cache condition controlling when this configuration applies.
    # @option opts [String] :content_types Space-separated list of content types to compress. If you omit this field a default list will be used.
    # @option opts [String] :extensions Space-separated list of file extensions to compress. If you omit this field a default list will be used.
    # @option opts [String] :name Name of the gzip configuration.
    # @return [Array<(GzipResponse, Integer, Hash)>] GzipResponse data, response status code and response headers
    def update_gzip_config_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GzipApi.update_gzip_config ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      gzip_name = opts[:'gzip_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling GzipApi.update_gzip_config"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling GzipApi.update_gzip_config"
      end
      # verify the required parameter 'gzip_name' is set
      if @api_client.config.client_side_validation && gzip_name.nil?
        fail ArgumentError, "Missing the required parameter 'gzip_name' when calling GzipApi.update_gzip_config"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/gzip/{gzip_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'gzip_name' + '}', CGI.escape(gzip_name.to_s))

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
      form_params['cache_condition'] = opts[:'cache_condition'] if !opts[:'cache_condition'].nil?
      form_params['content_types'] = opts[:'content_types'] if !opts[:'content_types'].nil?
      form_params['extensions'] = opts[:'extensions'] if !opts[:'extensions'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GzipResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"GzipApi.update_gzip_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GzipApi#update_gzip_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
