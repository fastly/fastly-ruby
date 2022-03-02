=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0


=end

require 'cgi'

module Fastly
  class DirectorBackendApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a director-backend relationship
    # Establishes a relationship between a Backend and a Director. The Backend is then considered a member of the Director and can be used to balance traffic onto.
    # @option opts [String] :director_name Name for the Director. (required)
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :backend_name The name of the backend. (required)
    # @return [DirectorBackend]
    def create_director_backend(opts = {})
      data, _status_code, _headers = create_director_backend_with_http_info(opts)
      data
    end

    # Create a director-backend relationship
    # Establishes a relationship between a Backend and a Director. The Backend is then considered a member of the Director and can be used to balance traffic onto.
    # @option opts [String] :director_name Name for the Director. (required)
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :backend_name The name of the backend. (required)
    # @return [Array<(DirectorBackend, Integer, Hash)>] DirectorBackend data, response status code and response headers
    def create_director_backend_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DirectorBackendApi.create_director_backend ...'
      end
      # unbox the parameters from the hash
      director_name = opts[:'director_name']
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      backend_name = opts[:'backend_name']
      # verify the required parameter 'director_name' is set
      if @api_client.config.client_side_validation && director_name.nil?
        fail ArgumentError, "Missing the required parameter 'director_name' when calling DirectorBackendApi.create_director_backend"
      end
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling DirectorBackendApi.create_director_backend"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling DirectorBackendApi.create_director_backend"
      end
      # verify the required parameter 'backend_name' is set
      if @api_client.config.client_side_validation && backend_name.nil?
        fail ArgumentError, "Missing the required parameter 'backend_name' when calling DirectorBackendApi.create_director_backend"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/director/{director_name}/backend/{backend_name}'.sub('{' + 'director_name' + '}', CGI.escape(director_name.to_s)).sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'backend_name' + '}', CGI.escape(backend_name.to_s))

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
      return_type = opts[:debug_return_type] || 'DirectorBackend'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DirectorBackendApi.create_director_backend",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DirectorBackendApi#create_director_backend\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a director-backend relationship
    # Deletes the relationship between a Backend and a Director. The Backend is no longer considered a member of the Director and thus will not have traffic balanced onto it from this Director.
    # @option opts [String] :director_name Name for the Director. (required)
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :backend_name The name of the backend. (required)
    # @return [InlineResponse200]
    def delete_director_backend(opts = {})
      data, _status_code, _headers = delete_director_backend_with_http_info(opts)
      data
    end

    # Delete a director-backend relationship
    # Deletes the relationship between a Backend and a Director. The Backend is no longer considered a member of the Director and thus will not have traffic balanced onto it from this Director.
    # @option opts [String] :director_name Name for the Director. (required)
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :backend_name The name of the backend. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_director_backend_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DirectorBackendApi.delete_director_backend ...'
      end
      # unbox the parameters from the hash
      director_name = opts[:'director_name']
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      backend_name = opts[:'backend_name']
      # verify the required parameter 'director_name' is set
      if @api_client.config.client_side_validation && director_name.nil?
        fail ArgumentError, "Missing the required parameter 'director_name' when calling DirectorBackendApi.delete_director_backend"
      end
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling DirectorBackendApi.delete_director_backend"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling DirectorBackendApi.delete_director_backend"
      end
      # verify the required parameter 'backend_name' is set
      if @api_client.config.client_side_validation && backend_name.nil?
        fail ArgumentError, "Missing the required parameter 'backend_name' when calling DirectorBackendApi.delete_director_backend"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/director/{director_name}/backend/{backend_name}'.sub('{' + 'director_name' + '}', CGI.escape(director_name.to_s)).sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'backend_name' + '}', CGI.escape(backend_name.to_s))

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
        :operation => :"DirectorBackendApi.delete_director_backend",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DirectorBackendApi#delete_director_backend\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a director-backend relationship
    # Returns the relationship between a Backend and a Director. If the Backend has been associated with the Director, it returns a simple record indicating this. Otherwise, returns a 404.
    # @option opts [String] :director_name Name for the Director. (required)
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :backend_name The name of the backend. (required)
    # @return [DirectorBackend]
    def get_director_backend(opts = {})
      data, _status_code, _headers = get_director_backend_with_http_info(opts)
      data
    end

    # Get a director-backend relationship
    # Returns the relationship between a Backend and a Director. If the Backend has been associated with the Director, it returns a simple record indicating this. Otherwise, returns a 404.
    # @option opts [String] :director_name Name for the Director. (required)
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :backend_name The name of the backend. (required)
    # @return [Array<(DirectorBackend, Integer, Hash)>] DirectorBackend data, response status code and response headers
    def get_director_backend_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DirectorBackendApi.get_director_backend ...'
      end
      # unbox the parameters from the hash
      director_name = opts[:'director_name']
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      backend_name = opts[:'backend_name']
      # verify the required parameter 'director_name' is set
      if @api_client.config.client_side_validation && director_name.nil?
        fail ArgumentError, "Missing the required parameter 'director_name' when calling DirectorBackendApi.get_director_backend"
      end
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling DirectorBackendApi.get_director_backend"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling DirectorBackendApi.get_director_backend"
      end
      # verify the required parameter 'backend_name' is set
      if @api_client.config.client_side_validation && backend_name.nil?
        fail ArgumentError, "Missing the required parameter 'backend_name' when calling DirectorBackendApi.get_director_backend"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/director/{director_name}/backend/{backend_name}'.sub('{' + 'director_name' + '}', CGI.escape(director_name.to_s)).sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'backend_name' + '}', CGI.escape(backend_name.to_s))

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
      return_type = opts[:debug_return_type] || 'DirectorBackend'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DirectorBackendApi.get_director_backend",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DirectorBackendApi#get_director_backend\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
