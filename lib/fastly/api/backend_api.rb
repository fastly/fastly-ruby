=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class BackendApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a backend
    # Create a backend for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :address A hostname, IPv4, or IPv6 address for the backend. This is the preferred way to specify the location of your backend.
    # @option opts [Boolean] :auto_loadbalance Whether or not this backend should be automatically load balanced. If true, all backends with this setting that don&#39;t have a &#x60;request_condition&#x60; will be selected based on their &#x60;weight&#x60;.
    # @option opts [Integer] :between_bytes_timeout Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, the response received so far will be considered complete and the fetch will end. May be set at runtime using &#x60;bereq.between_bytes_timeout&#x60;.
    # @option opts [String] :client_cert Unused.
    # @option opts [String] :comment A freeform descriptive note.
    # @option opts [Integer] :connect_timeout Maximum duration in milliseconds to wait for a connection to this backend to be established. If exceeded, the connection is aborted and a synthethic &#x60;503&#x60; response will be presented instead. May be set at runtime using &#x60;bereq.connect_timeout&#x60;.
    # @option opts [Integer] :first_byte_timeout Maximum duration in milliseconds to wait for the server response to begin after a TCP connection is established and the request has been sent. If exceeded, the connection is aborted and a synthethic &#x60;503&#x60; response will be presented instead. May be set at runtime using &#x60;bereq.first_byte_timeout&#x60;.
    # @option opts [String] :healthcheck The name of the healthcheck to use with this backend.
    # @option opts [String] :hostname The hostname of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location.
    # @option opts [String] :ipv4 IPv4 address of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location.
    # @option opts [String] :ipv6 IPv6 address of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location.
    # @option opts [Integer] :max_conn Maximum number of concurrent connections this backend will accept.
    # @option opts [String] :max_tls_version Maximum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated.
    # @option opts [String] :min_tls_version Minimum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated.
    # @option opts [String] :name The name of the backend.
    # @option opts [String] :override_host If set, will replace the client-supplied HTTP &#x60;Host&#x60; header on connections to this backend. Applied after VCL has been processed, so this setting will take precedence over changing &#x60;bereq.http.Host&#x60; in VCL.
    # @option opts [Integer] :port Port on which the backend server is listening for connections from Fastly. Setting &#x60;port&#x60; to 80 or 443 will also set &#x60;use_ssl&#x60; automatically (to false and true respectively), unless explicitly overridden by setting &#x60;use_ssl&#x60; in the same request.
    # @option opts [String] :request_condition Name of a Condition, which if satisfied, will select this backend during a request. If set, will override any &#x60;auto_loadbalance&#x60; setting. By default, the first backend added to a service is selected for all requests.
    # @option opts [String] :shield Identifier of the POP to use as a [shield](https://docs.fastly.com/en/guides/shielding).
    # @option opts [String] :ssl_ca_cert CA certificate attached to origin.
    # @option opts [String] :ssl_cert_hostname Overrides &#x60;ssl_hostname&#x60;, but only for cert verification. Does not affect SNI at all.
    # @option opts [Boolean] :ssl_check_cert Be strict on checking SSL certs. (default to true)
    # @option opts [String] :ssl_ciphers List of [OpenSSL ciphers](https://www.openssl.org/docs/manmaster/man1/ciphers.html) to support for connections to this origin. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated.
    # @option opts [String] :ssl_client_cert Client certificate attached to origin.
    # @option opts [String] :ssl_client_key Client key attached to origin.
    # @option opts [String] :ssl_hostname Use &#x60;ssl_cert_hostname&#x60; and &#x60;ssl_sni_hostname&#x60; to configure certificate validation.
    # @option opts [String] :ssl_sni_hostname Overrides &#x60;ssl_hostname&#x60;, but only for SNI in the handshake. Does not affect cert validation at all.
    # @option opts [Boolean] :use_ssl Whether or not to require TLS for connections to this backend.
    # @option opts [Integer] :weight Weight used to load balance this backend against others. May be any positive integer. If &#x60;auto_loadbalance&#x60; is true, the chance of this backend being selected is equal to its own weight over the sum of all weights for backends that have &#x60;auto_loadbalance&#x60; set to true.
    # @return [BackendResponse]
    def create_backend(opts = {})
      data, _status_code, _headers = create_backend_with_http_info(opts)
      data
    end

    # Create a backend
    # Create a backend for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :address A hostname, IPv4, or IPv6 address for the backend. This is the preferred way to specify the location of your backend.
    # @option opts [Boolean] :auto_loadbalance Whether or not this backend should be automatically load balanced. If true, all backends with this setting that don&#39;t have a &#x60;request_condition&#x60; will be selected based on their &#x60;weight&#x60;.
    # @option opts [Integer] :between_bytes_timeout Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, the response received so far will be considered complete and the fetch will end. May be set at runtime using &#x60;bereq.between_bytes_timeout&#x60;.
    # @option opts [String] :client_cert Unused.
    # @option opts [String] :comment A freeform descriptive note.
    # @option opts [Integer] :connect_timeout Maximum duration in milliseconds to wait for a connection to this backend to be established. If exceeded, the connection is aborted and a synthethic &#x60;503&#x60; response will be presented instead. May be set at runtime using &#x60;bereq.connect_timeout&#x60;.
    # @option opts [Integer] :first_byte_timeout Maximum duration in milliseconds to wait for the server response to begin after a TCP connection is established and the request has been sent. If exceeded, the connection is aborted and a synthethic &#x60;503&#x60; response will be presented instead. May be set at runtime using &#x60;bereq.first_byte_timeout&#x60;.
    # @option opts [String] :healthcheck The name of the healthcheck to use with this backend.
    # @option opts [String] :hostname The hostname of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location.
    # @option opts [String] :ipv4 IPv4 address of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location.
    # @option opts [String] :ipv6 IPv6 address of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location.
    # @option opts [Integer] :max_conn Maximum number of concurrent connections this backend will accept.
    # @option opts [String] :max_tls_version Maximum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated.
    # @option opts [String] :min_tls_version Minimum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated.
    # @option opts [String] :name The name of the backend.
    # @option opts [String] :override_host If set, will replace the client-supplied HTTP &#x60;Host&#x60; header on connections to this backend. Applied after VCL has been processed, so this setting will take precedence over changing &#x60;bereq.http.Host&#x60; in VCL.
    # @option opts [Integer] :port Port on which the backend server is listening for connections from Fastly. Setting &#x60;port&#x60; to 80 or 443 will also set &#x60;use_ssl&#x60; automatically (to false and true respectively), unless explicitly overridden by setting &#x60;use_ssl&#x60; in the same request.
    # @option opts [String] :request_condition Name of a Condition, which if satisfied, will select this backend during a request. If set, will override any &#x60;auto_loadbalance&#x60; setting. By default, the first backend added to a service is selected for all requests.
    # @option opts [String] :shield Identifier of the POP to use as a [shield](https://docs.fastly.com/en/guides/shielding).
    # @option opts [String] :ssl_ca_cert CA certificate attached to origin.
    # @option opts [String] :ssl_cert_hostname Overrides &#x60;ssl_hostname&#x60;, but only for cert verification. Does not affect SNI at all.
    # @option opts [Boolean] :ssl_check_cert Be strict on checking SSL certs. (default to true)
    # @option opts [String] :ssl_ciphers List of [OpenSSL ciphers](https://www.openssl.org/docs/manmaster/man1/ciphers.html) to support for connections to this origin. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated.
    # @option opts [String] :ssl_client_cert Client certificate attached to origin.
    # @option opts [String] :ssl_client_key Client key attached to origin.
    # @option opts [String] :ssl_hostname Use &#x60;ssl_cert_hostname&#x60; and &#x60;ssl_sni_hostname&#x60; to configure certificate validation.
    # @option opts [String] :ssl_sni_hostname Overrides &#x60;ssl_hostname&#x60;, but only for SNI in the handshake. Does not affect cert validation at all.
    # @option opts [Boolean] :use_ssl Whether or not to require TLS for connections to this backend.
    # @option opts [Integer] :weight Weight used to load balance this backend against others. May be any positive integer. If &#x60;auto_loadbalance&#x60; is true, the chance of this backend being selected is equal to its own weight over the sum of all weights for backends that have &#x60;auto_loadbalance&#x60; set to true.
    # @return [Array<(BackendResponse, Integer, Hash)>] BackendResponse data, response status code and response headers
    def create_backend_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BackendApi.create_backend ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling BackendApi.create_backend"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling BackendApi.create_backend"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/backend'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      form_params['address'] = opts[:'address'] if !opts[:'address'].nil?
      form_params['auto_loadbalance'] = opts[:'auto_loadbalance'] if !opts[:'auto_loadbalance'].nil?
      form_params['between_bytes_timeout'] = opts[:'between_bytes_timeout'] if !opts[:'between_bytes_timeout'].nil?
      form_params['client_cert'] = opts[:'client_cert'] if !opts[:'client_cert'].nil?
      form_params['comment'] = opts[:'comment'] if !opts[:'comment'].nil?
      form_params['connect_timeout'] = opts[:'connect_timeout'] if !opts[:'connect_timeout'].nil?
      form_params['first_byte_timeout'] = opts[:'first_byte_timeout'] if !opts[:'first_byte_timeout'].nil?
      form_params['healthcheck'] = opts[:'healthcheck'] if !opts[:'healthcheck'].nil?
      form_params['hostname'] = opts[:'hostname'] if !opts[:'hostname'].nil?
      form_params['ipv4'] = opts[:'ipv4'] if !opts[:'ipv4'].nil?
      form_params['ipv6'] = opts[:'ipv6'] if !opts[:'ipv6'].nil?
      form_params['max_conn'] = opts[:'max_conn'] if !opts[:'max_conn'].nil?
      form_params['max_tls_version'] = opts[:'max_tls_version'] if !opts[:'max_tls_version'].nil?
      form_params['min_tls_version'] = opts[:'min_tls_version'] if !opts[:'min_tls_version'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['override_host'] = opts[:'override_host'] if !opts[:'override_host'].nil?
      form_params['port'] = opts[:'port'] if !opts[:'port'].nil?
      form_params['request_condition'] = opts[:'request_condition'] if !opts[:'request_condition'].nil?
      form_params['shield'] = opts[:'shield'] if !opts[:'shield'].nil?
      form_params['ssl_ca_cert'] = opts[:'ssl_ca_cert'] if !opts[:'ssl_ca_cert'].nil?
      form_params['ssl_cert_hostname'] = opts[:'ssl_cert_hostname'] if !opts[:'ssl_cert_hostname'].nil?
      form_params['ssl_check_cert'] = opts[:'ssl_check_cert'] if !opts[:'ssl_check_cert'].nil?
      form_params['ssl_ciphers'] = opts[:'ssl_ciphers'] if !opts[:'ssl_ciphers'].nil?
      form_params['ssl_client_cert'] = opts[:'ssl_client_cert'] if !opts[:'ssl_client_cert'].nil?
      form_params['ssl_client_key'] = opts[:'ssl_client_key'] if !opts[:'ssl_client_key'].nil?
      form_params['ssl_hostname'] = opts[:'ssl_hostname'] if !opts[:'ssl_hostname'].nil?
      form_params['ssl_sni_hostname'] = opts[:'ssl_sni_hostname'] if !opts[:'ssl_sni_hostname'].nil?
      form_params['use_ssl'] = opts[:'use_ssl'] if !opts[:'use_ssl'].nil?
      form_params['weight'] = opts[:'weight'] if !opts[:'weight'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BackendResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BackendApi.create_backend",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BackendApi#create_backend\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a backend
    # Delete the backend for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :backend_name The name of the backend. (required)
    # @return [InlineResponse200]
    def delete_backend(opts = {})
      data, _status_code, _headers = delete_backend_with_http_info(opts)
      data
    end

    # Delete a backend
    # Delete the backend for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :backend_name The name of the backend. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_backend_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BackendApi.delete_backend ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      backend_name = opts[:'backend_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling BackendApi.delete_backend"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling BackendApi.delete_backend"
      end
      # verify the required parameter 'backend_name' is set
      if @api_client.config.client_side_validation && backend_name.nil?
        fail ArgumentError, "Missing the required parameter 'backend_name' when calling BackendApi.delete_backend"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/backend/{backend_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'backend_name' + '}', CGI.escape(backend_name.to_s))

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
        :operation => :"BackendApi.delete_backend",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BackendApi#delete_backend\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Describe a backend
    # Get the backend for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :backend_name The name of the backend. (required)
    # @return [BackendResponse]
    def get_backend(opts = {})
      data, _status_code, _headers = get_backend_with_http_info(opts)
      data
    end

    # Describe a backend
    # Get the backend for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :backend_name The name of the backend. (required)
    # @return [Array<(BackendResponse, Integer, Hash)>] BackendResponse data, response status code and response headers
    def get_backend_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BackendApi.get_backend ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      backend_name = opts[:'backend_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling BackendApi.get_backend"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling BackendApi.get_backend"
      end
      # verify the required parameter 'backend_name' is set
      if @api_client.config.client_side_validation && backend_name.nil?
        fail ArgumentError, "Missing the required parameter 'backend_name' when calling BackendApi.get_backend"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/backend/{backend_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'backend_name' + '}', CGI.escape(backend_name.to_s))

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
      return_type = opts[:debug_return_type] || 'BackendResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BackendApi.get_backend",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BackendApi#get_backend\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List backends
    # List all backends for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<BackendResponse>]
    def list_backends(opts = {})
      data, _status_code, _headers = list_backends_with_http_info(opts)
      data
    end

    # List backends
    # List all backends for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(Array<BackendResponse>, Integer, Hash)>] Array<BackendResponse> data, response status code and response headers
    def list_backends_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BackendApi.list_backends ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling BackendApi.list_backends"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling BackendApi.list_backends"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/backend'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<BackendResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BackendApi.list_backends",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BackendApi#list_backends\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a backend
    # Update the backend for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :backend_name The name of the backend. (required)
    # @option opts [String] :address A hostname, IPv4, or IPv6 address for the backend. This is the preferred way to specify the location of your backend.
    # @option opts [Boolean] :auto_loadbalance Whether or not this backend should be automatically load balanced. If true, all backends with this setting that don&#39;t have a &#x60;request_condition&#x60; will be selected based on their &#x60;weight&#x60;.
    # @option opts [Integer] :between_bytes_timeout Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, the response received so far will be considered complete and the fetch will end. May be set at runtime using &#x60;bereq.between_bytes_timeout&#x60;.
    # @option opts [String] :client_cert Unused.
    # @option opts [String] :comment A freeform descriptive note.
    # @option opts [Integer] :connect_timeout Maximum duration in milliseconds to wait for a connection to this backend to be established. If exceeded, the connection is aborted and a synthethic &#x60;503&#x60; response will be presented instead. May be set at runtime using &#x60;bereq.connect_timeout&#x60;.
    # @option opts [Integer] :first_byte_timeout Maximum duration in milliseconds to wait for the server response to begin after a TCP connection is established and the request has been sent. If exceeded, the connection is aborted and a synthethic &#x60;503&#x60; response will be presented instead. May be set at runtime using &#x60;bereq.first_byte_timeout&#x60;.
    # @option opts [String] :healthcheck The name of the healthcheck to use with this backend.
    # @option opts [String] :hostname The hostname of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location.
    # @option opts [String] :ipv4 IPv4 address of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location.
    # @option opts [String] :ipv6 IPv6 address of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location.
    # @option opts [Integer] :max_conn Maximum number of concurrent connections this backend will accept.
    # @option opts [String] :max_tls_version Maximum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated.
    # @option opts [String] :min_tls_version Minimum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated.
    # @option opts [String] :name The name of the backend.
    # @option opts [String] :override_host If set, will replace the client-supplied HTTP &#x60;Host&#x60; header on connections to this backend. Applied after VCL has been processed, so this setting will take precedence over changing &#x60;bereq.http.Host&#x60; in VCL.
    # @option opts [Integer] :port Port on which the backend server is listening for connections from Fastly. Setting &#x60;port&#x60; to 80 or 443 will also set &#x60;use_ssl&#x60; automatically (to false and true respectively), unless explicitly overridden by setting &#x60;use_ssl&#x60; in the same request.
    # @option opts [String] :request_condition Name of a Condition, which if satisfied, will select this backend during a request. If set, will override any &#x60;auto_loadbalance&#x60; setting. By default, the first backend added to a service is selected for all requests.
    # @option opts [String] :shield Identifier of the POP to use as a [shield](https://docs.fastly.com/en/guides/shielding).
    # @option opts [String] :ssl_ca_cert CA certificate attached to origin.
    # @option opts [String] :ssl_cert_hostname Overrides &#x60;ssl_hostname&#x60;, but only for cert verification. Does not affect SNI at all.
    # @option opts [Boolean] :ssl_check_cert Be strict on checking SSL certs. (default to true)
    # @option opts [String] :ssl_ciphers List of [OpenSSL ciphers](https://www.openssl.org/docs/manmaster/man1/ciphers.html) to support for connections to this origin. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated.
    # @option opts [String] :ssl_client_cert Client certificate attached to origin.
    # @option opts [String] :ssl_client_key Client key attached to origin.
    # @option opts [String] :ssl_hostname Use &#x60;ssl_cert_hostname&#x60; and &#x60;ssl_sni_hostname&#x60; to configure certificate validation.
    # @option opts [String] :ssl_sni_hostname Overrides &#x60;ssl_hostname&#x60;, but only for SNI in the handshake. Does not affect cert validation at all.
    # @option opts [Boolean] :use_ssl Whether or not to require TLS for connections to this backend.
    # @option opts [Integer] :weight Weight used to load balance this backend against others. May be any positive integer. If &#x60;auto_loadbalance&#x60; is true, the chance of this backend being selected is equal to its own weight over the sum of all weights for backends that have &#x60;auto_loadbalance&#x60; set to true.
    # @return [BackendResponse]
    def update_backend(opts = {})
      data, _status_code, _headers = update_backend_with_http_info(opts)
      data
    end

    # Update a backend
    # Update the backend for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :backend_name The name of the backend. (required)
    # @option opts [String] :address A hostname, IPv4, or IPv6 address for the backend. This is the preferred way to specify the location of your backend.
    # @option opts [Boolean] :auto_loadbalance Whether or not this backend should be automatically load balanced. If true, all backends with this setting that don&#39;t have a &#x60;request_condition&#x60; will be selected based on their &#x60;weight&#x60;.
    # @option opts [Integer] :between_bytes_timeout Maximum duration in milliseconds that Fastly will wait while receiving no data on a download from a backend. If exceeded, the response received so far will be considered complete and the fetch will end. May be set at runtime using &#x60;bereq.between_bytes_timeout&#x60;.
    # @option opts [String] :client_cert Unused.
    # @option opts [String] :comment A freeform descriptive note.
    # @option opts [Integer] :connect_timeout Maximum duration in milliseconds to wait for a connection to this backend to be established. If exceeded, the connection is aborted and a synthethic &#x60;503&#x60; response will be presented instead. May be set at runtime using &#x60;bereq.connect_timeout&#x60;.
    # @option opts [Integer] :first_byte_timeout Maximum duration in milliseconds to wait for the server response to begin after a TCP connection is established and the request has been sent. If exceeded, the connection is aborted and a synthethic &#x60;503&#x60; response will be presented instead. May be set at runtime using &#x60;bereq.first_byte_timeout&#x60;.
    # @option opts [String] :healthcheck The name of the healthcheck to use with this backend.
    # @option opts [String] :hostname The hostname of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location.
    # @option opts [String] :ipv4 IPv4 address of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location.
    # @option opts [String] :ipv6 IPv6 address of the backend. May be used as an alternative to &#x60;address&#x60; to set the backend location.
    # @option opts [Integer] :max_conn Maximum number of concurrent connections this backend will accept.
    # @option opts [String] :max_tls_version Maximum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated.
    # @option opts [String] :min_tls_version Minimum allowed TLS version on SSL connections to this backend. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated.
    # @option opts [String] :name The name of the backend.
    # @option opts [String] :override_host If set, will replace the client-supplied HTTP &#x60;Host&#x60; header on connections to this backend. Applied after VCL has been processed, so this setting will take precedence over changing &#x60;bereq.http.Host&#x60; in VCL.
    # @option opts [Integer] :port Port on which the backend server is listening for connections from Fastly. Setting &#x60;port&#x60; to 80 or 443 will also set &#x60;use_ssl&#x60; automatically (to false and true respectively), unless explicitly overridden by setting &#x60;use_ssl&#x60; in the same request.
    # @option opts [String] :request_condition Name of a Condition, which if satisfied, will select this backend during a request. If set, will override any &#x60;auto_loadbalance&#x60; setting. By default, the first backend added to a service is selected for all requests.
    # @option opts [String] :shield Identifier of the POP to use as a [shield](https://docs.fastly.com/en/guides/shielding).
    # @option opts [String] :ssl_ca_cert CA certificate attached to origin.
    # @option opts [String] :ssl_cert_hostname Overrides &#x60;ssl_hostname&#x60;, but only for cert verification. Does not affect SNI at all.
    # @option opts [Boolean] :ssl_check_cert Be strict on checking SSL certs. (default to true)
    # @option opts [String] :ssl_ciphers List of [OpenSSL ciphers](https://www.openssl.org/docs/manmaster/man1/ciphers.html) to support for connections to this origin. If your backend server is not able to negotiate a connection meeting this constraint, a synthetic &#x60;503&#x60; error response will be generated.
    # @option opts [String] :ssl_client_cert Client certificate attached to origin.
    # @option opts [String] :ssl_client_key Client key attached to origin.
    # @option opts [String] :ssl_hostname Use &#x60;ssl_cert_hostname&#x60; and &#x60;ssl_sni_hostname&#x60; to configure certificate validation.
    # @option opts [String] :ssl_sni_hostname Overrides &#x60;ssl_hostname&#x60;, but only for SNI in the handshake. Does not affect cert validation at all.
    # @option opts [Boolean] :use_ssl Whether or not to require TLS for connections to this backend.
    # @option opts [Integer] :weight Weight used to load balance this backend against others. May be any positive integer. If &#x60;auto_loadbalance&#x60; is true, the chance of this backend being selected is equal to its own weight over the sum of all weights for backends that have &#x60;auto_loadbalance&#x60; set to true.
    # @return [Array<(BackendResponse, Integer, Hash)>] BackendResponse data, response status code and response headers
    def update_backend_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BackendApi.update_backend ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      backend_name = opts[:'backend_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling BackendApi.update_backend"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling BackendApi.update_backend"
      end
      # verify the required parameter 'backend_name' is set
      if @api_client.config.client_side_validation && backend_name.nil?
        fail ArgumentError, "Missing the required parameter 'backend_name' when calling BackendApi.update_backend"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/backend/{backend_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'backend_name' + '}', CGI.escape(backend_name.to_s))

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
      form_params['address'] = opts[:'address'] if !opts[:'address'].nil?
      form_params['auto_loadbalance'] = opts[:'auto_loadbalance'] if !opts[:'auto_loadbalance'].nil?
      form_params['between_bytes_timeout'] = opts[:'between_bytes_timeout'] if !opts[:'between_bytes_timeout'].nil?
      form_params['client_cert'] = opts[:'client_cert'] if !opts[:'client_cert'].nil?
      form_params['comment'] = opts[:'comment'] if !opts[:'comment'].nil?
      form_params['connect_timeout'] = opts[:'connect_timeout'] if !opts[:'connect_timeout'].nil?
      form_params['first_byte_timeout'] = opts[:'first_byte_timeout'] if !opts[:'first_byte_timeout'].nil?
      form_params['healthcheck'] = opts[:'healthcheck'] if !opts[:'healthcheck'].nil?
      form_params['hostname'] = opts[:'hostname'] if !opts[:'hostname'].nil?
      form_params['ipv4'] = opts[:'ipv4'] if !opts[:'ipv4'].nil?
      form_params['ipv6'] = opts[:'ipv6'] if !opts[:'ipv6'].nil?
      form_params['max_conn'] = opts[:'max_conn'] if !opts[:'max_conn'].nil?
      form_params['max_tls_version'] = opts[:'max_tls_version'] if !opts[:'max_tls_version'].nil?
      form_params['min_tls_version'] = opts[:'min_tls_version'] if !opts[:'min_tls_version'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['override_host'] = opts[:'override_host'] if !opts[:'override_host'].nil?
      form_params['port'] = opts[:'port'] if !opts[:'port'].nil?
      form_params['request_condition'] = opts[:'request_condition'] if !opts[:'request_condition'].nil?
      form_params['shield'] = opts[:'shield'] if !opts[:'shield'].nil?
      form_params['ssl_ca_cert'] = opts[:'ssl_ca_cert'] if !opts[:'ssl_ca_cert'].nil?
      form_params['ssl_cert_hostname'] = opts[:'ssl_cert_hostname'] if !opts[:'ssl_cert_hostname'].nil?
      form_params['ssl_check_cert'] = opts[:'ssl_check_cert'] if !opts[:'ssl_check_cert'].nil?
      form_params['ssl_ciphers'] = opts[:'ssl_ciphers'] if !opts[:'ssl_ciphers'].nil?
      form_params['ssl_client_cert'] = opts[:'ssl_client_cert'] if !opts[:'ssl_client_cert'].nil?
      form_params['ssl_client_key'] = opts[:'ssl_client_key'] if !opts[:'ssl_client_key'].nil?
      form_params['ssl_hostname'] = opts[:'ssl_hostname'] if !opts[:'ssl_hostname'].nil?
      form_params['ssl_sni_hostname'] = opts[:'ssl_sni_hostname'] if !opts[:'ssl_sni_hostname'].nil?
      form_params['use_ssl'] = opts[:'use_ssl'] if !opts[:'use_ssl'].nil?
      form_params['weight'] = opts[:'weight'] if !opts[:'weight'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BackendResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BackendApi.update_backend",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BackendApi#update_backend\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
