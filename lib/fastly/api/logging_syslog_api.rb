=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class LoggingSyslogApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a syslog log endpoint
    # Create a Syslog for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :name The name for the real-time logging configuration.
    # @option opts [String] :placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. 
    # @option opts [String] :response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute.
    # @option opts [String] :format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). (default to '%h %l %u %t \"%r\" %&gt;s %b')
    # @option opts [Integer] :format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (default to FORMAT_VERSION::v2)
    # @option opts [String] :tls_ca_cert A secure certificate to authenticate a server with. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_client_cert The client certificate used to make authenticated requests. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_client_key The client private key used to make authenticated requests. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_hostname The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. (default to 'null')
    # @option opts [String] :address A hostname or IPv4 address.
    # @option opts [Integer] :port The port number. (default to 514)
    # @option opts [LoggingMessageType] :message_type  (default to 'classic')
    # @option opts [String] :hostname The hostname used for the syslog endpoint.
    # @option opts [String] :ipv4 The IPv4 address used for the syslog endpoint.
    # @option opts [String] :token Whether to prepend each message with a specific token. (default to 'null')
    # @option opts [LoggingUseTlsString] :use_tls  (default to '0')
    # @return [LoggingSyslogResponse]
    def create_log_syslog(opts = {})
      data, _status_code, _headers = create_log_syslog_with_http_info(opts)
      data
    end

    # Create a syslog log endpoint
    # Create a Syslog for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :name The name for the real-time logging configuration.
    # @option opts [String] :placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. 
    # @option opts [String] :response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute.
    # @option opts [String] :format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). (default to '%h %l %u %t \"%r\" %&gt;s %b')
    # @option opts [Integer] :format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (default to FORMAT_VERSION::v2)
    # @option opts [String] :tls_ca_cert A secure certificate to authenticate a server with. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_client_cert The client certificate used to make authenticated requests. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_client_key The client private key used to make authenticated requests. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_hostname The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. (default to 'null')
    # @option opts [String] :address A hostname or IPv4 address.
    # @option opts [Integer] :port The port number. (default to 514)
    # @option opts [LoggingMessageType] :message_type  (default to 'classic')
    # @option opts [String] :hostname The hostname used for the syslog endpoint.
    # @option opts [String] :ipv4 The IPv4 address used for the syslog endpoint.
    # @option opts [String] :token Whether to prepend each message with a specific token. (default to 'null')
    # @option opts [LoggingUseTlsString] :use_tls  (default to '0')
    # @return [Array<(LoggingSyslogResponse, Integer, Hash)>] LoggingSyslogResponse data, response status code and response headers
    def create_log_syslog_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingSyslogApi.create_log_syslog ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingSyslogApi.create_log_syslog"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingSyslogApi.create_log_syslog"
      end
      allowable_values = ["none", "null"]
      if @api_client.config.client_side_validation && opts[:'placement'] && !allowable_values.include?(opts[:'placement'])
        fail ArgumentError, "invalid value for \"placement\", must be one of #{allowable_values}"
      end
      allowable_values = [1, 2]
      if @api_client.config.client_side_validation && opts[:'format_version'] && !allowable_values.include?(opts[:'format_version'])
        fail ArgumentError, "invalid value for \"format_version\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/syslog'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['placement'] = opts[:'placement'] if !opts[:'placement'].nil?
      form_params['response_condition'] = opts[:'response_condition'] if !opts[:'response_condition'].nil?
      form_params['format'] = opts[:'format'] if !opts[:'format'].nil?
      form_params['format_version'] = opts[:'format_version'] if !opts[:'format_version'].nil?
      form_params['tls_ca_cert'] = opts[:'tls_ca_cert'] if !opts[:'tls_ca_cert'].nil?
      form_params['tls_client_cert'] = opts[:'tls_client_cert'] if !opts[:'tls_client_cert'].nil?
      form_params['tls_client_key'] = opts[:'tls_client_key'] if !opts[:'tls_client_key'].nil?
      form_params['tls_hostname'] = opts[:'tls_hostname'] if !opts[:'tls_hostname'].nil?
      form_params['address'] = opts[:'address'] if !opts[:'address'].nil?
      form_params['port'] = opts[:'port'] if !opts[:'port'].nil?
      form_params['message_type'] = opts[:'message_type'] if !opts[:'message_type'].nil?
      form_params['hostname'] = opts[:'hostname'] if !opts[:'hostname'].nil?
      form_params['ipv4'] = opts[:'ipv4'] if !opts[:'ipv4'].nil?
      form_params['token'] = opts[:'token'] if !opts[:'token'].nil?
      form_params['use_tls'] = opts[:'use_tls'] if !opts[:'use_tls'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LoggingSyslogResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingSyslogApi.create_log_syslog",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingSyslogApi#create_log_syslog\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a syslog log endpoint
    # Delete the Syslog for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_syslog_name The name for the real-time logging configuration. (required)
    # @return [InlineResponse200]
    def delete_log_syslog(opts = {})
      data, _status_code, _headers = delete_log_syslog_with_http_info(opts)
      data
    end

    # Delete a syslog log endpoint
    # Delete the Syslog for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_syslog_name The name for the real-time logging configuration. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_log_syslog_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingSyslogApi.delete_log_syslog ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      logging_syslog_name = opts[:'logging_syslog_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingSyslogApi.delete_log_syslog"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingSyslogApi.delete_log_syslog"
      end
      # verify the required parameter 'logging_syslog_name' is set
      if @api_client.config.client_side_validation && logging_syslog_name.nil?
        fail ArgumentError, "Missing the required parameter 'logging_syslog_name' when calling LoggingSyslogApi.delete_log_syslog"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/syslog/{logging_syslog_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'logging_syslog_name' + '}', CGI.escape(logging_syslog_name.to_s))

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
        :operation => :"LoggingSyslogApi.delete_log_syslog",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingSyslogApi#delete_log_syslog\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a syslog log endpoint
    # Get the Syslog for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_syslog_name The name for the real-time logging configuration. (required)
    # @return [LoggingSyslogResponse]
    def get_log_syslog(opts = {})
      data, _status_code, _headers = get_log_syslog_with_http_info(opts)
      data
    end

    # Get a syslog log endpoint
    # Get the Syslog for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_syslog_name The name for the real-time logging configuration. (required)
    # @return [Array<(LoggingSyslogResponse, Integer, Hash)>] LoggingSyslogResponse data, response status code and response headers
    def get_log_syslog_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingSyslogApi.get_log_syslog ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      logging_syslog_name = opts[:'logging_syslog_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingSyslogApi.get_log_syslog"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingSyslogApi.get_log_syslog"
      end
      # verify the required parameter 'logging_syslog_name' is set
      if @api_client.config.client_side_validation && logging_syslog_name.nil?
        fail ArgumentError, "Missing the required parameter 'logging_syslog_name' when calling LoggingSyslogApi.get_log_syslog"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/syslog/{logging_syslog_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'logging_syslog_name' + '}', CGI.escape(logging_syslog_name.to_s))

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
      return_type = opts[:debug_return_type] || 'LoggingSyslogResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingSyslogApi.get_log_syslog",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingSyslogApi#get_log_syslog\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Syslog log endpoints
    # List all of the Syslogs for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<LoggingSyslogResponse>]
    def list_log_syslog(opts = {})
      data, _status_code, _headers = list_log_syslog_with_http_info(opts)
      data
    end

    # List Syslog log endpoints
    # List all of the Syslogs for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(Array<LoggingSyslogResponse>, Integer, Hash)>] Array<LoggingSyslogResponse> data, response status code and response headers
    def list_log_syslog_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingSyslogApi.list_log_syslog ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingSyslogApi.list_log_syslog"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingSyslogApi.list_log_syslog"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/syslog'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<LoggingSyslogResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingSyslogApi.list_log_syslog",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingSyslogApi#list_log_syslog\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a syslog log endpoint
    # Update the Syslog for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_syslog_name The name for the real-time logging configuration. (required)
    # @option opts [String] :name The name for the real-time logging configuration.
    # @option opts [String] :placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. 
    # @option opts [String] :response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute.
    # @option opts [String] :format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). (default to '%h %l %u %t \"%r\" %&gt;s %b')
    # @option opts [Integer] :format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (default to FORMAT_VERSION::v2)
    # @option opts [String] :tls_ca_cert A secure certificate to authenticate a server with. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_client_cert The client certificate used to make authenticated requests. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_client_key The client private key used to make authenticated requests. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_hostname The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. (default to 'null')
    # @option opts [String] :address A hostname or IPv4 address.
    # @option opts [Integer] :port The port number. (default to 514)
    # @option opts [LoggingMessageType] :message_type  (default to 'classic')
    # @option opts [String] :hostname The hostname used for the syslog endpoint.
    # @option opts [String] :ipv4 The IPv4 address used for the syslog endpoint.
    # @option opts [String] :token Whether to prepend each message with a specific token. (default to 'null')
    # @option opts [LoggingUseTlsString] :use_tls  (default to '0')
    # @return [LoggingSyslogResponse]
    def update_log_syslog(opts = {})
      data, _status_code, _headers = update_log_syslog_with_http_info(opts)
      data
    end

    # Update a syslog log endpoint
    # Update the Syslog for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_syslog_name The name for the real-time logging configuration. (required)
    # @option opts [String] :name The name for the real-time logging configuration.
    # @option opts [String] :placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. 
    # @option opts [String] :response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute.
    # @option opts [String] :format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). (default to '%h %l %u %t \"%r\" %&gt;s %b')
    # @option opts [Integer] :format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (default to FORMAT_VERSION::v2)
    # @option opts [String] :tls_ca_cert A secure certificate to authenticate a server with. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_client_cert The client certificate used to make authenticated requests. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_client_key The client private key used to make authenticated requests. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_hostname The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. (default to 'null')
    # @option opts [String] :address A hostname or IPv4 address.
    # @option opts [Integer] :port The port number. (default to 514)
    # @option opts [LoggingMessageType] :message_type  (default to 'classic')
    # @option opts [String] :hostname The hostname used for the syslog endpoint.
    # @option opts [String] :ipv4 The IPv4 address used for the syslog endpoint.
    # @option opts [String] :token Whether to prepend each message with a specific token. (default to 'null')
    # @option opts [LoggingUseTlsString] :use_tls  (default to '0')
    # @return [Array<(LoggingSyslogResponse, Integer, Hash)>] LoggingSyslogResponse data, response status code and response headers
    def update_log_syslog_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingSyslogApi.update_log_syslog ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      logging_syslog_name = opts[:'logging_syslog_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingSyslogApi.update_log_syslog"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingSyslogApi.update_log_syslog"
      end
      # verify the required parameter 'logging_syslog_name' is set
      if @api_client.config.client_side_validation && logging_syslog_name.nil?
        fail ArgumentError, "Missing the required parameter 'logging_syslog_name' when calling LoggingSyslogApi.update_log_syslog"
      end
      allowable_values = ["none", "null"]
      if @api_client.config.client_side_validation && opts[:'placement'] && !allowable_values.include?(opts[:'placement'])
        fail ArgumentError, "invalid value for \"placement\", must be one of #{allowable_values}"
      end
      allowable_values = [1, 2]
      if @api_client.config.client_side_validation && opts[:'format_version'] && !allowable_values.include?(opts[:'format_version'])
        fail ArgumentError, "invalid value for \"format_version\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/syslog/{logging_syslog_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'logging_syslog_name' + '}', CGI.escape(logging_syslog_name.to_s))

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
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['placement'] = opts[:'placement'] if !opts[:'placement'].nil?
      form_params['response_condition'] = opts[:'response_condition'] if !opts[:'response_condition'].nil?
      form_params['format'] = opts[:'format'] if !opts[:'format'].nil?
      form_params['format_version'] = opts[:'format_version'] if !opts[:'format_version'].nil?
      form_params['tls_ca_cert'] = opts[:'tls_ca_cert'] if !opts[:'tls_ca_cert'].nil?
      form_params['tls_client_cert'] = opts[:'tls_client_cert'] if !opts[:'tls_client_cert'].nil?
      form_params['tls_client_key'] = opts[:'tls_client_key'] if !opts[:'tls_client_key'].nil?
      form_params['tls_hostname'] = opts[:'tls_hostname'] if !opts[:'tls_hostname'].nil?
      form_params['address'] = opts[:'address'] if !opts[:'address'].nil?
      form_params['port'] = opts[:'port'] if !opts[:'port'].nil?
      form_params['message_type'] = opts[:'message_type'] if !opts[:'message_type'].nil?
      form_params['hostname'] = opts[:'hostname'] if !opts[:'hostname'].nil?
      form_params['ipv4'] = opts[:'ipv4'] if !opts[:'ipv4'].nil?
      form_params['token'] = opts[:'token'] if !opts[:'token'].nil?
      form_params['use_tls'] = opts[:'use_tls'] if !opts[:'use_tls'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LoggingSyslogResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingSyslogApi.update_log_syslog",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingSyslogApi#update_log_syslog\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
