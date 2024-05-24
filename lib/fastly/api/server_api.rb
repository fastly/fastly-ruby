=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class ServerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a server to a pool
    # Creates a single server for a particular service and pool.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :pool_id Alphanumeric string identifying a Pool. (required)
    # @option opts [Integer] :weight Weight (&#x60;1-100&#x60;) used to load balance this server against others. (default to 100)
    # @option opts [Integer] :max_conn Maximum number of connections. If the value is &#x60;0&#x60;, it inherits the value from pool&#39;s &#x60;max_conn_default&#x60;. (default to 0)
    # @option opts [Integer] :port Port number. Setting port &#x60;443&#x60; does not force TLS. Set &#x60;use_tls&#x60; in pool to force TLS. (default to 80)
    # @option opts [String] :address A hostname, IPv4, or IPv6 address for the server. Required.
    # @option opts [String] :comment A freeform descriptive note.
    # @option opts [Boolean] :disabled Allows servers to be enabled and disabled in a pool. (default to false)
    # @option opts [String] :override_host The hostname to override the Host header. Defaults to &#x60;null&#x60; meaning no override of the Host header if not set. This setting can also be added to a Pool definition. However, the server setting will override the Pool setting. (default to 'null')
    # @return [ServerResponse]
    def create_pool_server(opts = {})
      data, _status_code, _headers = create_pool_server_with_http_info(opts)
      data
    end

    # Add a server to a pool
    # Creates a single server for a particular service and pool.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :pool_id Alphanumeric string identifying a Pool. (required)
    # @option opts [Integer] :weight Weight (&#x60;1-100&#x60;) used to load balance this server against others. (default to 100)
    # @option opts [Integer] :max_conn Maximum number of connections. If the value is &#x60;0&#x60;, it inherits the value from pool&#39;s &#x60;max_conn_default&#x60;. (default to 0)
    # @option opts [Integer] :port Port number. Setting port &#x60;443&#x60; does not force TLS. Set &#x60;use_tls&#x60; in pool to force TLS. (default to 80)
    # @option opts [String] :address A hostname, IPv4, or IPv6 address for the server. Required.
    # @option opts [String] :comment A freeform descriptive note.
    # @option opts [Boolean] :disabled Allows servers to be enabled and disabled in a pool. (default to false)
    # @option opts [String] :override_host The hostname to override the Host header. Defaults to &#x60;null&#x60; meaning no override of the Host header if not set. This setting can also be added to a Pool definition. However, the server setting will override the Pool setting. (default to 'null')
    # @return [Array<(ServerResponse, Integer, Hash)>] ServerResponse data, response status code and response headers
    def create_pool_server_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServerApi.create_pool_server ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      pool_id = opts[:'pool_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ServerApi.create_pool_server"
      end
      # verify the required parameter 'pool_id' is set
      if @api_client.config.client_side_validation && pool_id.nil?
        fail ArgumentError, "Missing the required parameter 'pool_id' when calling ServerApi.create_pool_server"
      end
      if @api_client.config.client_side_validation && !opts[:'weight'].nil? && opts[:'weight'] > 100
        fail ArgumentError, 'invalid value for "opts[:"weight"]" when calling ServerApi.create_pool_server, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'weight'].nil? && opts[:'weight'] < 1
        fail ArgumentError, 'invalid value for "opts[:"weight"]" when calling ServerApi.create_pool_server, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/service/{service_id}/pool/{pool_id}/server'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'pool_id' + '}', CGI.escape(pool_id.to_s))

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
      form_params['weight'] = opts[:'weight'] if !opts[:'weight'].nil?
      form_params['max_conn'] = opts[:'max_conn'] if !opts[:'max_conn'].nil?
      form_params['port'] = opts[:'port'] if !opts[:'port'].nil?
      form_params['address'] = opts[:'address'] if !opts[:'address'].nil?
      form_params['comment'] = opts[:'comment'] if !opts[:'comment'].nil?
      form_params['disabled'] = opts[:'disabled'] if !opts[:'disabled'].nil?
      form_params['override_host'] = opts[:'override_host'] if !opts[:'override_host'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ServerResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ServerApi.create_pool_server",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServerApi#create_pool_server\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a server from a pool
    # Deletes a single server for a particular service and pool.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :pool_id Alphanumeric string identifying a Pool. (required)
    # @option opts [String] :server_id Alphanumeric string identifying a Server. (required)
    # @return [InlineResponse200]
    def delete_pool_server(opts = {})
      data, _status_code, _headers = delete_pool_server_with_http_info(opts)
      data
    end

    # Delete a server from a pool
    # Deletes a single server for a particular service and pool.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :pool_id Alphanumeric string identifying a Pool. (required)
    # @option opts [String] :server_id Alphanumeric string identifying a Server. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_pool_server_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServerApi.delete_pool_server ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      pool_id = opts[:'pool_id']
      server_id = opts[:'server_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ServerApi.delete_pool_server"
      end
      # verify the required parameter 'pool_id' is set
      if @api_client.config.client_side_validation && pool_id.nil?
        fail ArgumentError, "Missing the required parameter 'pool_id' when calling ServerApi.delete_pool_server"
      end
      # verify the required parameter 'server_id' is set
      if @api_client.config.client_side_validation && server_id.nil?
        fail ArgumentError, "Missing the required parameter 'server_id' when calling ServerApi.delete_pool_server"
      end
      # resource path
      local_var_path = '/service/{service_id}/pool/{pool_id}/server/{server_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'pool_id' + '}', CGI.escape(pool_id.to_s)).sub('{' + 'server_id' + '}', CGI.escape(server_id.to_s))

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
        :operation => :"ServerApi.delete_pool_server",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServerApi#delete_pool_server\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a pool server
    # Gets a single server for a particular service and pool.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :pool_id Alphanumeric string identifying a Pool. (required)
    # @option opts [String] :server_id Alphanumeric string identifying a Server. (required)
    # @return [ServerResponse]
    def get_pool_server(opts = {})
      data, _status_code, _headers = get_pool_server_with_http_info(opts)
      data
    end

    # Get a pool server
    # Gets a single server for a particular service and pool.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :pool_id Alphanumeric string identifying a Pool. (required)
    # @option opts [String] :server_id Alphanumeric string identifying a Server. (required)
    # @return [Array<(ServerResponse, Integer, Hash)>] ServerResponse data, response status code and response headers
    def get_pool_server_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServerApi.get_pool_server ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      pool_id = opts[:'pool_id']
      server_id = opts[:'server_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ServerApi.get_pool_server"
      end
      # verify the required parameter 'pool_id' is set
      if @api_client.config.client_side_validation && pool_id.nil?
        fail ArgumentError, "Missing the required parameter 'pool_id' when calling ServerApi.get_pool_server"
      end
      # verify the required parameter 'server_id' is set
      if @api_client.config.client_side_validation && server_id.nil?
        fail ArgumentError, "Missing the required parameter 'server_id' when calling ServerApi.get_pool_server"
      end
      # resource path
      local_var_path = '/service/{service_id}/pool/{pool_id}/server/{server_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'pool_id' + '}', CGI.escape(pool_id.to_s)).sub('{' + 'server_id' + '}', CGI.escape(server_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ServerResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ServerApi.get_pool_server",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServerApi#get_pool_server\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List servers in a pool
    # Lists all servers for a particular service and pool.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :pool_id Alphanumeric string identifying a Pool. (required)
    # @return [Array<ServerResponse>]
    def list_pool_servers(opts = {})
      data, _status_code, _headers = list_pool_servers_with_http_info(opts)
      data
    end

    # List servers in a pool
    # Lists all servers for a particular service and pool.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :pool_id Alphanumeric string identifying a Pool. (required)
    # @return [Array<(Array<ServerResponse>, Integer, Hash)>] Array<ServerResponse> data, response status code and response headers
    def list_pool_servers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServerApi.list_pool_servers ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      pool_id = opts[:'pool_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ServerApi.list_pool_servers"
      end
      # verify the required parameter 'pool_id' is set
      if @api_client.config.client_side_validation && pool_id.nil?
        fail ArgumentError, "Missing the required parameter 'pool_id' when calling ServerApi.list_pool_servers"
      end
      # resource path
      local_var_path = '/service/{service_id}/pool/{pool_id}/servers'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'pool_id' + '}', CGI.escape(pool_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<ServerResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ServerApi.list_pool_servers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServerApi#list_pool_servers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a server
    # Updates a single server for a particular service and pool.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :pool_id Alphanumeric string identifying a Pool. (required)
    # @option opts [String] :server_id Alphanumeric string identifying a Server. (required)
    # @option opts [Integer] :weight Weight (&#x60;1-100&#x60;) used to load balance this server against others. (default to 100)
    # @option opts [Integer] :max_conn Maximum number of connections. If the value is &#x60;0&#x60;, it inherits the value from pool&#39;s &#x60;max_conn_default&#x60;. (default to 0)
    # @option opts [Integer] :port Port number. Setting port &#x60;443&#x60; does not force TLS. Set &#x60;use_tls&#x60; in pool to force TLS. (default to 80)
    # @option opts [String] :address A hostname, IPv4, or IPv6 address for the server. Required.
    # @option opts [String] :comment A freeform descriptive note.
    # @option opts [Boolean] :disabled Allows servers to be enabled and disabled in a pool. (default to false)
    # @option opts [String] :override_host The hostname to override the Host header. Defaults to &#x60;null&#x60; meaning no override of the Host header if not set. This setting can also be added to a Pool definition. However, the server setting will override the Pool setting. (default to 'null')
    # @return [ServerResponse]
    def update_pool_server(opts = {})
      data, _status_code, _headers = update_pool_server_with_http_info(opts)
      data
    end

    # Update a server
    # Updates a single server for a particular service and pool.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :pool_id Alphanumeric string identifying a Pool. (required)
    # @option opts [String] :server_id Alphanumeric string identifying a Server. (required)
    # @option opts [Integer] :weight Weight (&#x60;1-100&#x60;) used to load balance this server against others. (default to 100)
    # @option opts [Integer] :max_conn Maximum number of connections. If the value is &#x60;0&#x60;, it inherits the value from pool&#39;s &#x60;max_conn_default&#x60;. (default to 0)
    # @option opts [Integer] :port Port number. Setting port &#x60;443&#x60; does not force TLS. Set &#x60;use_tls&#x60; in pool to force TLS. (default to 80)
    # @option opts [String] :address A hostname, IPv4, or IPv6 address for the server. Required.
    # @option opts [String] :comment A freeform descriptive note.
    # @option opts [Boolean] :disabled Allows servers to be enabled and disabled in a pool. (default to false)
    # @option opts [String] :override_host The hostname to override the Host header. Defaults to &#x60;null&#x60; meaning no override of the Host header if not set. This setting can also be added to a Pool definition. However, the server setting will override the Pool setting. (default to 'null')
    # @return [Array<(ServerResponse, Integer, Hash)>] ServerResponse data, response status code and response headers
    def update_pool_server_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServerApi.update_pool_server ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      pool_id = opts[:'pool_id']
      server_id = opts[:'server_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ServerApi.update_pool_server"
      end
      # verify the required parameter 'pool_id' is set
      if @api_client.config.client_side_validation && pool_id.nil?
        fail ArgumentError, "Missing the required parameter 'pool_id' when calling ServerApi.update_pool_server"
      end
      # verify the required parameter 'server_id' is set
      if @api_client.config.client_side_validation && server_id.nil?
        fail ArgumentError, "Missing the required parameter 'server_id' when calling ServerApi.update_pool_server"
      end
      if @api_client.config.client_side_validation && !opts[:'weight'].nil? && opts[:'weight'] > 100
        fail ArgumentError, 'invalid value for "opts[:"weight"]" when calling ServerApi.update_pool_server, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'weight'].nil? && opts[:'weight'] < 1
        fail ArgumentError, 'invalid value for "opts[:"weight"]" when calling ServerApi.update_pool_server, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/service/{service_id}/pool/{pool_id}/server/{server_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'pool_id' + '}', CGI.escape(pool_id.to_s)).sub('{' + 'server_id' + '}', CGI.escape(server_id.to_s))

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
      form_params['weight'] = opts[:'weight'] if !opts[:'weight'].nil?
      form_params['max_conn'] = opts[:'max_conn'] if !opts[:'max_conn'].nil?
      form_params['port'] = opts[:'port'] if !opts[:'port'].nil?
      form_params['address'] = opts[:'address'] if !opts[:'address'].nil?
      form_params['comment'] = opts[:'comment'] if !opts[:'comment'].nil?
      form_params['disabled'] = opts[:'disabled'] if !opts[:'disabled'].nil?
      form_params['override_host'] = opts[:'override_host'] if !opts[:'override_host'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ServerResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ServerApi.update_pool_server",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServerApi#update_pool_server\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
