=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class LoggingHttpsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an HTTPS log endpoint
    # Create an HTTPS object for a particular service and version.
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
    # @option opts [Integer] :request_max_entries The maximum number of logs sent in one request. Defaults &#x60;0&#x60; (10k). (default to 0)
    # @option opts [Integer] :request_max_bytes The maximum number of bytes sent in one request. Defaults &#x60;0&#x60; (100MB). (default to 0)
    # @option opts [String] :url The URL to send logs to. Must use HTTPS. Required.
    # @option opts [String] :content_type Content type of the header sent with the request. (default to 'null')
    # @option opts [String] :header_name Name of the custom header sent with the request. (default to 'null')
    # @option opts [LoggingMessageType] :message_type  (default to 'classic')
    # @option opts [String] :header_value Value of the custom header sent with the request. (default to 'null')
    # @option opts [String] :method HTTP method used for request. (default to 'POST')
    # @option opts [String] :json_format Enforces valid JSON formatting for log entries.
    # @return [LoggingHttpsResponse]
    def create_log_https(opts = {})
      data, _status_code, _headers = create_log_https_with_http_info(opts)
      data
    end

    # Create an HTTPS log endpoint
    # Create an HTTPS object for a particular service and version.
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
    # @option opts [Integer] :request_max_entries The maximum number of logs sent in one request. Defaults &#x60;0&#x60; (10k). (default to 0)
    # @option opts [Integer] :request_max_bytes The maximum number of bytes sent in one request. Defaults &#x60;0&#x60; (100MB). (default to 0)
    # @option opts [String] :url The URL to send logs to. Must use HTTPS. Required.
    # @option opts [String] :content_type Content type of the header sent with the request. (default to 'null')
    # @option opts [String] :header_name Name of the custom header sent with the request. (default to 'null')
    # @option opts [LoggingMessageType] :message_type  (default to 'classic')
    # @option opts [String] :header_value Value of the custom header sent with the request. (default to 'null')
    # @option opts [String] :method HTTP method used for request. (default to 'POST')
    # @option opts [String] :json_format Enforces valid JSON formatting for log entries.
    # @return [Array<(LoggingHttpsResponse, Integer, Hash)>] LoggingHttpsResponse data, response status code and response headers
    def create_log_https_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingHttpsApi.create_log_https ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingHttpsApi.create_log_https"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingHttpsApi.create_log_https"
      end
      allowable_values = ["none", "waf_debug", "null"]
      if @api_client.config.client_side_validation && opts[:'placement'] && !allowable_values.include?(opts[:'placement'])
        fail ArgumentError, "invalid value for \"placement\", must be one of #{allowable_values}"
      end
      allowable_values = [1, 2]
      if @api_client.config.client_side_validation && opts[:'format_version'] && !allowable_values.include?(opts[:'format_version'])
        fail ArgumentError, "invalid value for \"format_version\", must be one of #{allowable_values}"
      end
      allowable_values = ["POST", "PUT"]
      if @api_client.config.client_side_validation && opts[:'method'] && !allowable_values.include?(opts[:'method'])
        fail ArgumentError, "invalid value for \"method\", must be one of #{allowable_values}"
      end
      allowable_values = ["0", "1", "2"]
      if @api_client.config.client_side_validation && opts[:'json_format'] && !allowable_values.include?(opts[:'json_format'])
        fail ArgumentError, "invalid value for \"json_format\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/https'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      form_params['request_max_entries'] = opts[:'request_max_entries'] if !opts[:'request_max_entries'].nil?
      form_params['request_max_bytes'] = opts[:'request_max_bytes'] if !opts[:'request_max_bytes'].nil?
      form_params['url'] = opts[:'url'] if !opts[:'url'].nil?
      form_params['content_type'] = opts[:'content_type'] if !opts[:'content_type'].nil?
      form_params['header_name'] = opts[:'header_name'] if !opts[:'header_name'].nil?
      form_params['message_type'] = opts[:'message_type'] if !opts[:'message_type'].nil?
      form_params['header_value'] = opts[:'header_value'] if !opts[:'header_value'].nil?
      form_params['method'] = opts[:'method'] if !opts[:'method'].nil?
      form_params['json_format'] = opts[:'json_format'] if !opts[:'json_format'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LoggingHttpsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingHttpsApi.create_log_https",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingHttpsApi#create_log_https\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an HTTPS log endpoint
    # Delete the HTTPS object for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_https_name The name for the real-time logging configuration. (required)
    # @return [InlineResponse200]
    def delete_log_https(opts = {})
      data, _status_code, _headers = delete_log_https_with_http_info(opts)
      data
    end

    # Delete an HTTPS log endpoint
    # Delete the HTTPS object for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_https_name The name for the real-time logging configuration. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_log_https_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingHttpsApi.delete_log_https ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      logging_https_name = opts[:'logging_https_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingHttpsApi.delete_log_https"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingHttpsApi.delete_log_https"
      end
      # verify the required parameter 'logging_https_name' is set
      if @api_client.config.client_side_validation && logging_https_name.nil?
        fail ArgumentError, "Missing the required parameter 'logging_https_name' when calling LoggingHttpsApi.delete_log_https"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/https/{logging_https_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'logging_https_name' + '}', CGI.escape(logging_https_name.to_s))

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
        :operation => :"LoggingHttpsApi.delete_log_https",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingHttpsApi#delete_log_https\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an HTTPS log endpoint
    # Get the HTTPS object for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_https_name The name for the real-time logging configuration. (required)
    # @return [LoggingHttpsResponse]
    def get_log_https(opts = {})
      data, _status_code, _headers = get_log_https_with_http_info(opts)
      data
    end

    # Get an HTTPS log endpoint
    # Get the HTTPS object for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_https_name The name for the real-time logging configuration. (required)
    # @return [Array<(LoggingHttpsResponse, Integer, Hash)>] LoggingHttpsResponse data, response status code and response headers
    def get_log_https_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingHttpsApi.get_log_https ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      logging_https_name = opts[:'logging_https_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingHttpsApi.get_log_https"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingHttpsApi.get_log_https"
      end
      # verify the required parameter 'logging_https_name' is set
      if @api_client.config.client_side_validation && logging_https_name.nil?
        fail ArgumentError, "Missing the required parameter 'logging_https_name' when calling LoggingHttpsApi.get_log_https"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/https/{logging_https_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'logging_https_name' + '}', CGI.escape(logging_https_name.to_s))

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
      return_type = opts[:debug_return_type] || 'LoggingHttpsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingHttpsApi.get_log_https",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingHttpsApi#get_log_https\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List HTTPS log endpoints
    # List all of the HTTPS objects for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<LoggingHttpsResponse>]
    def list_log_https(opts = {})
      data, _status_code, _headers = list_log_https_with_http_info(opts)
      data
    end

    # List HTTPS log endpoints
    # List all of the HTTPS objects for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(Array<LoggingHttpsResponse>, Integer, Hash)>] Array<LoggingHttpsResponse> data, response status code and response headers
    def list_log_https_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingHttpsApi.list_log_https ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingHttpsApi.list_log_https"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingHttpsApi.list_log_https"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/https'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<LoggingHttpsResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingHttpsApi.list_log_https",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingHttpsApi#list_log_https\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an HTTPS log endpoint
    # Update the HTTPS object for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_https_name The name for the real-time logging configuration. (required)
    # @option opts [String] :name The name for the real-time logging configuration.
    # @option opts [String] :placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. 
    # @option opts [String] :response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute.
    # @option opts [String] :format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). (default to '%h %l %u %t \"%r\" %&gt;s %b')
    # @option opts [Integer] :format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (default to FORMAT_VERSION::v2)
    # @option opts [String] :tls_ca_cert A secure certificate to authenticate a server with. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_client_cert The client certificate used to make authenticated requests. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_client_key The client private key used to make authenticated requests. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_hostname The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. (default to 'null')
    # @option opts [Integer] :request_max_entries The maximum number of logs sent in one request. Defaults &#x60;0&#x60; (10k). (default to 0)
    # @option opts [Integer] :request_max_bytes The maximum number of bytes sent in one request. Defaults &#x60;0&#x60; (100MB). (default to 0)
    # @option opts [String] :url The URL to send logs to. Must use HTTPS. Required.
    # @option opts [String] :content_type Content type of the header sent with the request. (default to 'null')
    # @option opts [String] :header_name Name of the custom header sent with the request. (default to 'null')
    # @option opts [LoggingMessageType] :message_type  (default to 'classic')
    # @option opts [String] :header_value Value of the custom header sent with the request. (default to 'null')
    # @option opts [String] :method HTTP method used for request. (default to 'POST')
    # @option opts [String] :json_format Enforces valid JSON formatting for log entries.
    # @return [LoggingHttpsResponse]
    def update_log_https(opts = {})
      data, _status_code, _headers = update_log_https_with_http_info(opts)
      data
    end

    # Update an HTTPS log endpoint
    # Update the HTTPS object for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_https_name The name for the real-time logging configuration. (required)
    # @option opts [String] :name The name for the real-time logging configuration.
    # @option opts [String] :placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. 
    # @option opts [String] :response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute.
    # @option opts [String] :format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). (default to '%h %l %u %t \"%r\" %&gt;s %b')
    # @option opts [Integer] :format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (default to FORMAT_VERSION::v2)
    # @option opts [String] :tls_ca_cert A secure certificate to authenticate a server with. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_client_cert The client certificate used to make authenticated requests. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_client_key The client private key used to make authenticated requests. Must be in PEM format. (default to 'null')
    # @option opts [String] :tls_hostname The hostname to verify the server&#39;s certificate. This should be one of the Subject Alternative Name (SAN) fields for the certificate. Common Names (CN) are not supported. (default to 'null')
    # @option opts [Integer] :request_max_entries The maximum number of logs sent in one request. Defaults &#x60;0&#x60; (10k). (default to 0)
    # @option opts [Integer] :request_max_bytes The maximum number of bytes sent in one request. Defaults &#x60;0&#x60; (100MB). (default to 0)
    # @option opts [String] :url The URL to send logs to. Must use HTTPS. Required.
    # @option opts [String] :content_type Content type of the header sent with the request. (default to 'null')
    # @option opts [String] :header_name Name of the custom header sent with the request. (default to 'null')
    # @option opts [LoggingMessageType] :message_type  (default to 'classic')
    # @option opts [String] :header_value Value of the custom header sent with the request. (default to 'null')
    # @option opts [String] :method HTTP method used for request. (default to 'POST')
    # @option opts [String] :json_format Enforces valid JSON formatting for log entries.
    # @return [Array<(LoggingHttpsResponse, Integer, Hash)>] LoggingHttpsResponse data, response status code and response headers
    def update_log_https_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingHttpsApi.update_log_https ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      logging_https_name = opts[:'logging_https_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingHttpsApi.update_log_https"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingHttpsApi.update_log_https"
      end
      # verify the required parameter 'logging_https_name' is set
      if @api_client.config.client_side_validation && logging_https_name.nil?
        fail ArgumentError, "Missing the required parameter 'logging_https_name' when calling LoggingHttpsApi.update_log_https"
      end
      allowable_values = ["none", "waf_debug", "null"]
      if @api_client.config.client_side_validation && opts[:'placement'] && !allowable_values.include?(opts[:'placement'])
        fail ArgumentError, "invalid value for \"placement\", must be one of #{allowable_values}"
      end
      allowable_values = [1, 2]
      if @api_client.config.client_side_validation && opts[:'format_version'] && !allowable_values.include?(opts[:'format_version'])
        fail ArgumentError, "invalid value for \"format_version\", must be one of #{allowable_values}"
      end
      allowable_values = ["POST", "PUT"]
      if @api_client.config.client_side_validation && opts[:'method'] && !allowable_values.include?(opts[:'method'])
        fail ArgumentError, "invalid value for \"method\", must be one of #{allowable_values}"
      end
      allowable_values = ["0", "1", "2"]
      if @api_client.config.client_side_validation && opts[:'json_format'] && !allowable_values.include?(opts[:'json_format'])
        fail ArgumentError, "invalid value for \"json_format\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/https/{logging_https_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'logging_https_name' + '}', CGI.escape(logging_https_name.to_s))

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
      form_params['request_max_entries'] = opts[:'request_max_entries'] if !opts[:'request_max_entries'].nil?
      form_params['request_max_bytes'] = opts[:'request_max_bytes'] if !opts[:'request_max_bytes'].nil?
      form_params['url'] = opts[:'url'] if !opts[:'url'].nil?
      form_params['content_type'] = opts[:'content_type'] if !opts[:'content_type'].nil?
      form_params['header_name'] = opts[:'header_name'] if !opts[:'header_name'].nil?
      form_params['message_type'] = opts[:'message_type'] if !opts[:'message_type'].nil?
      form_params['header_value'] = opts[:'header_value'] if !opts[:'header_value'].nil?
      form_params['method'] = opts[:'method'] if !opts[:'method'].nil?
      form_params['json_format'] = opts[:'json_format'] if !opts[:'json_format'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LoggingHttpsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingHttpsApi.update_log_https",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingHttpsApi#update_log_https\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
