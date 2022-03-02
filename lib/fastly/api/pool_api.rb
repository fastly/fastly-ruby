=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0


=end

require 'cgi'

module Fastly
  class PoolApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a server pool
    # Creates a pool for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :tls_ca_cert A secure certificate to authenticate a server with. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_client_cert The client certificate used to make authenticated requests. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_client_key The client private key used to make authenticated requests. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_cert_hostname The hostname used to verify a server&#39;s certificate. It can either be the Common Name (CN) or a Subject Alternative Name (SAN). (default to 'null')
    # @option opts [Integer] :use_tls Whether to use TLS. (default to 0)
    # @option opts [String] :name Name for the Pool.
    # @option opts [String] :shield Selected POP to serve as a shield for the servers. Defaults to &#x60;null&#x60; meaning no origin shielding if not set. Refer to the [POPs API endpoint](/reference/api/utils/pops/) to get a list of available POPs used for shielding. (default to 'null')
    # @option opts [String] :request_condition Condition which, if met, will select this configuration during a request. Optional.
    # @option opts [Integer] :max_conn_default Maximum number of connections. Optional. (default to 200)
    # @option opts [Integer] :connect_timeout How long to wait for a timeout in milliseconds. Optional.
    # @option opts [Integer] :first_byte_timeout How long to wait for the first byte in milliseconds. Optional.
    # @option opts [Integer] :quorum Percentage of capacity (&#x60;0-100&#x60;) that needs to be operationally available for a pool to be considered up. (default to 75)
    # @option opts [String] :tls_ciphers List of OpenSSL ciphers (see the [openssl.org manpages](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) for details). Optional.
    # @option opts [String] :tls_sni_hostname SNI hostname. Optional.
    # @option opts [Integer] :tls_check_cert Be strict on checking TLS certs. Optional.
    # @option opts [Integer] :min_tls_version Minimum allowed TLS version on connections to this server. Optional.
    # @option opts [Integer] :max_tls_version Maximum allowed TLS version on connections to this server. Optional.
    # @option opts [String] :healthcheck Name of the healthcheck to use with this pool. Can be empty and could be reused across multiple backend and pools.
    # @option opts [String] :comment A freeform descriptive note.
    # @option opts [String] :type What type of load balance group to use.
    # @option opts [String] :override_host The hostname to [override the Host header](https://docs.fastly.com/en/guides/specifying-an-override-host). Defaults to &#x60;null&#x60; meaning no override of the Host header will occur. This setting can also be added to a Server definition. If the field is set on a Server definition it will override the Pool setting. (default to 'null')
    # @return [PoolResponse]
    def create_server_pool(opts = {})
      data, _status_code, _headers = create_server_pool_with_http_info(opts)
      data
    end

    # Create a server pool
    # Creates a pool for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :tls_ca_cert A secure certificate to authenticate a server with. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_client_cert The client certificate used to make authenticated requests. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_client_key The client private key used to make authenticated requests. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_cert_hostname The hostname used to verify a server&#39;s certificate. It can either be the Common Name (CN) or a Subject Alternative Name (SAN). (default to 'null')
    # @option opts [Integer] :use_tls Whether to use TLS. (default to 0)
    # @option opts [String] :name Name for the Pool.
    # @option opts [String] :shield Selected POP to serve as a shield for the servers. Defaults to &#x60;null&#x60; meaning no origin shielding if not set. Refer to the [POPs API endpoint](/reference/api/utils/pops/) to get a list of available POPs used for shielding. (default to 'null')
    # @option opts [String] :request_condition Condition which, if met, will select this configuration during a request. Optional.
    # @option opts [Integer] :max_conn_default Maximum number of connections. Optional. (default to 200)
    # @option opts [Integer] :connect_timeout How long to wait for a timeout in milliseconds. Optional.
    # @option opts [Integer] :first_byte_timeout How long to wait for the first byte in milliseconds. Optional.
    # @option opts [Integer] :quorum Percentage of capacity (&#x60;0-100&#x60;) that needs to be operationally available for a pool to be considered up. (default to 75)
    # @option opts [String] :tls_ciphers List of OpenSSL ciphers (see the [openssl.org manpages](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) for details). Optional.
    # @option opts [String] :tls_sni_hostname SNI hostname. Optional.
    # @option opts [Integer] :tls_check_cert Be strict on checking TLS certs. Optional.
    # @option opts [Integer] :min_tls_version Minimum allowed TLS version on connections to this server. Optional.
    # @option opts [Integer] :max_tls_version Maximum allowed TLS version on connections to this server. Optional.
    # @option opts [String] :healthcheck Name of the healthcheck to use with this pool. Can be empty and could be reused across multiple backend and pools.
    # @option opts [String] :comment A freeform descriptive note.
    # @option opts [String] :type What type of load balance group to use.
    # @option opts [String] :override_host The hostname to [override the Host header](https://docs.fastly.com/en/guides/specifying-an-override-host). Defaults to &#x60;null&#x60; meaning no override of the Host header will occur. This setting can also be added to a Server definition. If the field is set on a Server definition it will override the Pool setting. (default to 'null')
    # @return [Array<(PoolResponse, Integer, Hash)>] PoolResponse data, response status code and response headers
    def create_server_pool_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PoolApi.create_server_pool ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling PoolApi.create_server_pool"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling PoolApi.create_server_pool"
      end
      allowable_values = [0, 1]
      if @api_client.config.client_side_validation && opts[:'use_tls'] && !allowable_values.include?(opts[:'use_tls'])
        fail ArgumentError, "invalid value for \"use_tls\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'quorum'].nil? && opts[:'quorum'] > 100
        fail ArgumentError, 'invalid value for "opts[:"quorum"]" when calling PoolApi.create_server_pool, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'quorum'].nil? && opts[:'quorum'] < 0
        fail ArgumentError, 'invalid value for "opts[:"quorum"]" when calling PoolApi.create_server_pool, must be greater than or equal to 0.'
      end

      allowable_values = ["random", "hash", "client"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/pool'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      form_params['tls_ca_cert'] = opts[:'tls_ca_cert'] if !opts[:'tls_ca_cert'].nil?
      form_params['tls_client_cert'] = opts[:'tls_client_cert'] if !opts[:'tls_client_cert'].nil?
      form_params['tls_client_key'] = opts[:'tls_client_key'] if !opts[:'tls_client_key'].nil?
      form_params['tls_cert_hostname'] = opts[:'tls_cert_hostname'] if !opts[:'tls_cert_hostname'].nil?
      form_params['use_tls'] = opts[:'use_tls'] if !opts[:'use_tls'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['shield'] = opts[:'shield'] if !opts[:'shield'].nil?
      form_params['request_condition'] = opts[:'request_condition'] if !opts[:'request_condition'].nil?
      form_params['max_conn_default'] = opts[:'max_conn_default'] if !opts[:'max_conn_default'].nil?
      form_params['connect_timeout'] = opts[:'connect_timeout'] if !opts[:'connect_timeout'].nil?
      form_params['first_byte_timeout'] = opts[:'first_byte_timeout'] if !opts[:'first_byte_timeout'].nil?
      form_params['quorum'] = opts[:'quorum'] if !opts[:'quorum'].nil?
      form_params['tls_ciphers'] = opts[:'tls_ciphers'] if !opts[:'tls_ciphers'].nil?
      form_params['tls_sni_hostname'] = opts[:'tls_sni_hostname'] if !opts[:'tls_sni_hostname'].nil?
      form_params['tls_check_cert'] = opts[:'tls_check_cert'] if !opts[:'tls_check_cert'].nil?
      form_params['min_tls_version'] = opts[:'min_tls_version'] if !opts[:'min_tls_version'].nil?
      form_params['max_tls_version'] = opts[:'max_tls_version'] if !opts[:'max_tls_version'].nil?
      form_params['healthcheck'] = opts[:'healthcheck'] if !opts[:'healthcheck'].nil?
      form_params['comment'] = opts[:'comment'] if !opts[:'comment'].nil?
      form_params['type'] = opts[:'type'] if !opts[:'type'].nil?
      form_params['override_host'] = opts[:'override_host'] if !opts[:'override_host'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PoolResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"PoolApi.create_server_pool",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PoolApi#create_server_pool\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a server pool
    # Deletes a specific pool for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :pool_name Name for the Pool. (required)
    # @return [InlineResponse200]
    def delete_server_pool(opts = {})
      data, _status_code, _headers = delete_server_pool_with_http_info(opts)
      data
    end

    # Delete a server pool
    # Deletes a specific pool for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :pool_name Name for the Pool. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_server_pool_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PoolApi.delete_server_pool ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      pool_name = opts[:'pool_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling PoolApi.delete_server_pool"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling PoolApi.delete_server_pool"
      end
      # verify the required parameter 'pool_name' is set
      if @api_client.config.client_side_validation && pool_name.nil?
        fail ArgumentError, "Missing the required parameter 'pool_name' when calling PoolApi.delete_server_pool"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/pool/{pool_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'pool_name' + '}', CGI.escape(pool_name.to_s))

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
        :operation => :"PoolApi.delete_server_pool",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PoolApi#delete_server_pool\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a server pool
    # Gets a single pool for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :pool_name Name for the Pool. (required)
    # @return [PoolResponse]
    def get_server_pool(opts = {})
      data, _status_code, _headers = get_server_pool_with_http_info(opts)
      data
    end

    # Get a server pool
    # Gets a single pool for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :pool_name Name for the Pool. (required)
    # @return [Array<(PoolResponse, Integer, Hash)>] PoolResponse data, response status code and response headers
    def get_server_pool_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PoolApi.get_server_pool ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      pool_name = opts[:'pool_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling PoolApi.get_server_pool"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling PoolApi.get_server_pool"
      end
      # verify the required parameter 'pool_name' is set
      if @api_client.config.client_side_validation && pool_name.nil?
        fail ArgumentError, "Missing the required parameter 'pool_name' when calling PoolApi.get_server_pool"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/pool/{pool_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'pool_name' + '}', CGI.escape(pool_name.to_s))

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
      return_type = opts[:debug_return_type] || 'PoolResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"PoolApi.get_server_pool",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PoolApi#get_server_pool\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List server pools
    # Lists all pools for a particular service and pool.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<PoolResponse>]
    def list_server_pools(opts = {})
      data, _status_code, _headers = list_server_pools_with_http_info(opts)
      data
    end

    # List server pools
    # Lists all pools for a particular service and pool.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(Array<PoolResponse>, Integer, Hash)>] Array<PoolResponse> data, response status code and response headers
    def list_server_pools_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PoolApi.list_server_pools ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling PoolApi.list_server_pools"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling PoolApi.list_server_pools"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/pool'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<PoolResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"PoolApi.list_server_pools",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PoolApi#list_server_pools\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a server pool
    # Updates a specific pool for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :pool_name Name for the Pool. (required)
    # @option opts [String] :tls_ca_cert A secure certificate to authenticate a server with. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_client_cert The client certificate used to make authenticated requests. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_client_key The client private key used to make authenticated requests. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_cert_hostname The hostname used to verify a server&#39;s certificate. It can either be the Common Name (CN) or a Subject Alternative Name (SAN). (default to 'null')
    # @option opts [Integer] :use_tls Whether to use TLS. (default to USE_TLS::no_tls)
    # @option opts [String] :name Name for the Pool.
    # @option opts [String] :shield Selected POP to serve as a shield for the servers. Defaults to &#x60;null&#x60; meaning no origin shielding if not set. Refer to the [POPs API endpoint](/reference/api/utils/pops/) to get a list of available POPs used for shielding. (default to 'null')
    # @option opts [String] :request_condition Condition which, if met, will select this configuration during a request. Optional.
    # @option opts [Integer] :max_conn_default Maximum number of connections. Optional. (default to 200)
    # @option opts [Integer] :connect_timeout How long to wait for a timeout in milliseconds. Optional.
    # @option opts [Integer] :first_byte_timeout How long to wait for the first byte in milliseconds. Optional.
    # @option opts [Integer] :quorum Percentage of capacity (&#x60;0-100&#x60;) that needs to be operationally available for a pool to be considered up. (default to 75)
    # @option opts [String] :tls_ciphers List of OpenSSL ciphers (see the [openssl.org manpages](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) for details). Optional.
    # @option opts [String] :tls_sni_hostname SNI hostname. Optional.
    # @option opts [Integer] :tls_check_cert Be strict on checking TLS certs. Optional.
    # @option opts [Integer] :min_tls_version Minimum allowed TLS version on connections to this server. Optional.
    # @option opts [Integer] :max_tls_version Maximum allowed TLS version on connections to this server. Optional.
    # @option opts [String] :healthcheck Name of the healthcheck to use with this pool. Can be empty and could be reused across multiple backend and pools.
    # @option opts [String] :comment A freeform descriptive note.
    # @option opts [String] :type What type of load balance group to use.
    # @option opts [String] :override_host The hostname to [override the Host header](https://docs.fastly.com/en/guides/specifying-an-override-host). Defaults to &#x60;null&#x60; meaning no override of the Host header will occur. This setting can also be added to a Server definition. If the field is set on a Server definition it will override the Pool setting. (default to 'null')
    # @return [PoolResponse]
    def update_server_pool(opts = {})
      data, _status_code, _headers = update_server_pool_with_http_info(opts)
      data
    end

    # Update a server pool
    # Updates a specific pool for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :pool_name Name for the Pool. (required)
    # @option opts [String] :tls_ca_cert A secure certificate to authenticate a server with. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_client_cert The client certificate used to make authenticated requests. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_client_key The client private key used to make authenticated requests. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_cert_hostname The hostname used to verify a server&#39;s certificate. It can either be the Common Name (CN) or a Subject Alternative Name (SAN). (default to 'null')
    # @option opts [Integer] :use_tls Whether to use TLS. (default to USE_TLS::no_tls)
    # @option opts [String] :name Name for the Pool.
    # @option opts [String] :shield Selected POP to serve as a shield for the servers. Defaults to &#x60;null&#x60; meaning no origin shielding if not set. Refer to the [POPs API endpoint](/reference/api/utils/pops/) to get a list of available POPs used for shielding. (default to 'null')
    # @option opts [String] :request_condition Condition which, if met, will select this configuration during a request. Optional.
    # @option opts [Integer] :max_conn_default Maximum number of connections. Optional. (default to 200)
    # @option opts [Integer] :connect_timeout How long to wait for a timeout in milliseconds. Optional.
    # @option opts [Integer] :first_byte_timeout How long to wait for the first byte in milliseconds. Optional.
    # @option opts [Integer] :quorum Percentage of capacity (&#x60;0-100&#x60;) that needs to be operationally available for a pool to be considered up. (default to 75)
    # @option opts [String] :tls_ciphers List of OpenSSL ciphers (see the [openssl.org manpages](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) for details). Optional.
    # @option opts [String] :tls_sni_hostname SNI hostname. Optional.
    # @option opts [Integer] :tls_check_cert Be strict on checking TLS certs. Optional.
    # @option opts [Integer] :min_tls_version Minimum allowed TLS version on connections to this server. Optional.
    # @option opts [Integer] :max_tls_version Maximum allowed TLS version on connections to this server. Optional.
    # @option opts [String] :healthcheck Name of the healthcheck to use with this pool. Can be empty and could be reused across multiple backend and pools.
    # @option opts [String] :comment A freeform descriptive note.
    # @option opts [String] :type What type of load balance group to use.
    # @option opts [String] :override_host The hostname to [override the Host header](https://docs.fastly.com/en/guides/specifying-an-override-host). Defaults to &#x60;null&#x60; meaning no override of the Host header will occur. This setting can also be added to a Server definition. If the field is set on a Server definition it will override the Pool setting. (default to 'null')
    # @return [Array<(PoolResponse, Integer, Hash)>] PoolResponse data, response status code and response headers
    def update_server_pool_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PoolApi.update_server_pool ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      pool_name = opts[:'pool_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling PoolApi.update_server_pool"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling PoolApi.update_server_pool"
      end
      # verify the required parameter 'pool_name' is set
      if @api_client.config.client_side_validation && pool_name.nil?
        fail ArgumentError, "Missing the required parameter 'pool_name' when calling PoolApi.update_server_pool"
      end
      allowable_values = [0, 1]
      if @api_client.config.client_side_validation && opts[:'use_tls'] && !allowable_values.include?(opts[:'use_tls'])
        fail ArgumentError, "invalid value for \"use_tls\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'quorum'].nil? && opts[:'quorum'] > 100
        fail ArgumentError, 'invalid value for "opts[:"quorum"]" when calling PoolApi.update_server_pool, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'quorum'].nil? && opts[:'quorum'] < 0
        fail ArgumentError, 'invalid value for "opts[:"quorum"]" when calling PoolApi.update_server_pool, must be greater than or equal to 0.'
      end

      allowable_values = ["random", "hash", "client"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/pool/{pool_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'pool_name' + '}', CGI.escape(pool_name.to_s))

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
      form_params['tls_ca_cert'] = opts[:'tls_ca_cert'] if !opts[:'tls_ca_cert'].nil?
      form_params['tls_client_cert'] = opts[:'tls_client_cert'] if !opts[:'tls_client_cert'].nil?
      form_params['tls_client_key'] = opts[:'tls_client_key'] if !opts[:'tls_client_key'].nil?
      form_params['tls_cert_hostname'] = opts[:'tls_cert_hostname'] if !opts[:'tls_cert_hostname'].nil?
      form_params['use_tls'] = opts[:'use_tls'] if !opts[:'use_tls'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['shield'] = opts[:'shield'] if !opts[:'shield'].nil?
      form_params['request_condition'] = opts[:'request_condition'] if !opts[:'request_condition'].nil?
      form_params['max_conn_default'] = opts[:'max_conn_default'] if !opts[:'max_conn_default'].nil?
      form_params['connect_timeout'] = opts[:'connect_timeout'] if !opts[:'connect_timeout'].nil?
      form_params['first_byte_timeout'] = opts[:'first_byte_timeout'] if !opts[:'first_byte_timeout'].nil?
      form_params['quorum'] = opts[:'quorum'] if !opts[:'quorum'].nil?
      form_params['tls_ciphers'] = opts[:'tls_ciphers'] if !opts[:'tls_ciphers'].nil?
      form_params['tls_sni_hostname'] = opts[:'tls_sni_hostname'] if !opts[:'tls_sni_hostname'].nil?
      form_params['tls_check_cert'] = opts[:'tls_check_cert'] if !opts[:'tls_check_cert'].nil?
      form_params['min_tls_version'] = opts[:'min_tls_version'] if !opts[:'min_tls_version'].nil?
      form_params['max_tls_version'] = opts[:'max_tls_version'] if !opts[:'max_tls_version'].nil?
      form_params['healthcheck'] = opts[:'healthcheck'] if !opts[:'healthcheck'].nil?
      form_params['comment'] = opts[:'comment'] if !opts[:'comment'].nil?
      form_params['type'] = opts[:'type'] if !opts[:'type'].nil?
      form_params['override_host'] = opts[:'override_host'] if !opts[:'override_host'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PoolResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"PoolApi.update_server_pool",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PoolApi#update_server_pool\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
