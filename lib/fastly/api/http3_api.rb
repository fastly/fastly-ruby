=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0


=end

require 'cgi'

module Fastly
  class Http3Api
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Enable support for HTTP/3
    # Enable HTTP/3 (QUIC) support for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :service_id 
    # @option opts [Integer] :version 
    # @option opts [Time] :created_at Date and time in ISO 8601 format.
    # @option opts [Time] :deleted_at Date and time in ISO 8601 format.
    # @option opts [Time] :updated_at Date and time in ISO 8601 format.
    # @option opts [Integer] :feature_revision Revision number of the HTTP/3 feature implementation. Defaults to the most recent revision.
    # @return [Http3]
    def create_http3(opts = {})
      data, _status_code, _headers = create_http3_with_http_info(opts)
      data
    end

    # Enable support for HTTP/3
    # Enable HTTP/3 (QUIC) support for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :service_id 
    # @option opts [Integer] :version 
    # @option opts [Time] :created_at Date and time in ISO 8601 format.
    # @option opts [Time] :deleted_at Date and time in ISO 8601 format.
    # @option opts [Time] :updated_at Date and time in ISO 8601 format.
    # @option opts [Integer] :feature_revision Revision number of the HTTP/3 feature implementation. Defaults to the most recent revision.
    # @return [Array<(Http3, Integer, Hash)>] Http3 data, response status code and response headers
    def create_http3_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Http3Api.create_http3 ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling Http3Api.create_http3"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling Http3Api.create_http3"
      end
      if @api_client.config.client_side_validation && !opts[:'feature_revision'].nil? && opts[:'feature_revision'] < 1
        fail ArgumentError, 'invalid value for "opts[:"feature_revision"]" when calling Http3Api.create_http3, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/http3'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      form_params['service_id'] = opts[:'service_id'] if !opts[:'service_id'].nil?
      form_params['version'] = opts[:'version'] if !opts[:'version'].nil?
      form_params['created_at'] = opts[:'created_at'] if !opts[:'created_at'].nil?
      form_params['deleted_at'] = opts[:'deleted_at'] if !opts[:'deleted_at'].nil?
      form_params['updated_at'] = opts[:'updated_at'] if !opts[:'updated_at'].nil?
      form_params['feature_revision'] = opts[:'feature_revision'] if !opts[:'feature_revision'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Http3'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"Http3Api.create_http3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Http3Api#create_http3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Disable support for HTTP/3
    # Disable HTTP/3 (QUIC) support for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [InlineResponse200]
    def delete_http3(opts = {})
      data, _status_code, _headers = delete_http3_with_http_info(opts)
      data
    end

    # Disable support for HTTP/3
    # Disable HTTP/3 (QUIC) support for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_http3_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Http3Api.delete_http3 ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling Http3Api.delete_http3"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling Http3Api.delete_http3"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/http3'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
        :operation => :"Http3Api.delete_http3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Http3Api#delete_http3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get HTTP/3 status
    # Get the status of HTTP/3 (QUIC) support for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Http3]
    def get_http3(opts = {})
      data, _status_code, _headers = get_http3_with_http_info(opts)
      data
    end

    # Get HTTP/3 status
    # Get the status of HTTP/3 (QUIC) support for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(Http3, Integer, Hash)>] Http3 data, response status code and response headers
    def get_http3_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Http3Api.get_http3 ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling Http3Api.get_http3"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling Http3Api.get_http3"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/http3'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Http3'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"Http3Api.get_http3",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Http3Api#get_http3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
