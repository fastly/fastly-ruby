=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class LoggingNewrelicApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a New Relic log endpoint
    # Create a New Relic Logs logging object for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :name The name for the real-time logging configuration.
    # @option opts [String] :placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. 
    # @option opts [String] :response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute.
    # @option opts [String] :format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that New Relic Logs can ingest. (default to '{\"timestamp\":\"%{begin:%Y-%m-%dT%H:%M:%S}t\",\"time_elapsed\":\"%{time.elapsed.usec}V\",\"is_tls\":\"%{if(req.is_ssl, \\\"true\\\", \\\"false\\\")}V\",\"client_ip\":\"%{req.http.Fastly-Client-IP}V\",\"geo_city\":\"%{client.geo.city}V\",\"geo_country_code\":\"%{client.geo.country_code}V\",\"request\":\"%{req.request}V\",\"host\":\"%{req.http.Fastly-Orig-Host}V\",\"url\":\"%{json.escape(req.url)}V\",\"request_referer\":\"%{json.escape(req.http.Referer)}V\",\"request_user_agent\":\"%{json.escape(req.http.User-Agent)}V\",\"request_accept_language\":\"%{json.escape(req.http.Accept-Language)}V\",\"request_accept_charset\":\"%{json.escape(req.http.Accept-Charset)}V\",\"cache_status\":\"%{regsub(fastly_info.state, \\\"^(HIT-(SYNTH)|(HITPASS|HIT|MISS|PASS|ERROR|PIPE)).*\\\", \\\"\\\\2\\\\3\\\") }V\"}')
    # @option opts [Integer] :format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (default to FORMAT_VERSION::v2)
    # @option opts [String] :token The Insert API key from the Account page of your New Relic account. Required.
    # @option opts [String] :region The region to which to stream logs. (default to 'US')
    # @return [LoggingNewrelicResponse]
    def create_log_newrelic(opts = {})
      data, _status_code, _headers = create_log_newrelic_with_http_info(opts)
      data
    end

    # Create a New Relic log endpoint
    # Create a New Relic Logs logging object for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :name The name for the real-time logging configuration.
    # @option opts [String] :placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. 
    # @option opts [String] :response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute.
    # @option opts [String] :format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that New Relic Logs can ingest. (default to '{\"timestamp\":\"%{begin:%Y-%m-%dT%H:%M:%S}t\",\"time_elapsed\":\"%{time.elapsed.usec}V\",\"is_tls\":\"%{if(req.is_ssl, \\\"true\\\", \\\"false\\\")}V\",\"client_ip\":\"%{req.http.Fastly-Client-IP}V\",\"geo_city\":\"%{client.geo.city}V\",\"geo_country_code\":\"%{client.geo.country_code}V\",\"request\":\"%{req.request}V\",\"host\":\"%{req.http.Fastly-Orig-Host}V\",\"url\":\"%{json.escape(req.url)}V\",\"request_referer\":\"%{json.escape(req.http.Referer)}V\",\"request_user_agent\":\"%{json.escape(req.http.User-Agent)}V\",\"request_accept_language\":\"%{json.escape(req.http.Accept-Language)}V\",\"request_accept_charset\":\"%{json.escape(req.http.Accept-Charset)}V\",\"cache_status\":\"%{regsub(fastly_info.state, \\\"^(HIT-(SYNTH)|(HITPASS|HIT|MISS|PASS|ERROR|PIPE)).*\\\", \\\"\\\\2\\\\3\\\") }V\"}')
    # @option opts [Integer] :format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (default to FORMAT_VERSION::v2)
    # @option opts [String] :token The Insert API key from the Account page of your New Relic account. Required.
    # @option opts [String] :region The region to which to stream logs. (default to 'US')
    # @return [Array<(LoggingNewrelicResponse, Integer, Hash)>] LoggingNewrelicResponse data, response status code and response headers
    def create_log_newrelic_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingNewrelicApi.create_log_newrelic ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingNewrelicApi.create_log_newrelic"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingNewrelicApi.create_log_newrelic"
      end
      allowable_values = ["none", "null"]
      if @api_client.config.client_side_validation && opts[:'placement'] && !allowable_values.include?(opts[:'placement'])
        fail ArgumentError, "invalid value for \"placement\", must be one of #{allowable_values}"
      end
      allowable_values = [1, 2]
      if @api_client.config.client_side_validation && opts[:'format_version'] && !allowable_values.include?(opts[:'format_version'])
        fail ArgumentError, "invalid value for \"format_version\", must be one of #{allowable_values}"
      end
      allowable_values = ["US", "EU"]
      if @api_client.config.client_side_validation && opts[:'region'] && !allowable_values.include?(opts[:'region'])
        fail ArgumentError, "invalid value for \"region\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/newrelic'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      form_params['token'] = opts[:'token'] if !opts[:'token'].nil?
      form_params['region'] = opts[:'region'] if !opts[:'region'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LoggingNewrelicResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingNewrelicApi.create_log_newrelic",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingNewrelicApi#create_log_newrelic\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a New Relic log endpoint
    # Delete the New Relic Logs logging object for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_newrelic_name The name for the real-time logging configuration. (required)
    # @return [InlineResponse200]
    def delete_log_newrelic(opts = {})
      data, _status_code, _headers = delete_log_newrelic_with_http_info(opts)
      data
    end

    # Delete a New Relic log endpoint
    # Delete the New Relic Logs logging object for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_newrelic_name The name for the real-time logging configuration. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_log_newrelic_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingNewrelicApi.delete_log_newrelic ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      logging_newrelic_name = opts[:'logging_newrelic_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingNewrelicApi.delete_log_newrelic"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingNewrelicApi.delete_log_newrelic"
      end
      # verify the required parameter 'logging_newrelic_name' is set
      if @api_client.config.client_side_validation && logging_newrelic_name.nil?
        fail ArgumentError, "Missing the required parameter 'logging_newrelic_name' when calling LoggingNewrelicApi.delete_log_newrelic"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/newrelic/{logging_newrelic_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'logging_newrelic_name' + '}', CGI.escape(logging_newrelic_name.to_s))

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
        :operation => :"LoggingNewrelicApi.delete_log_newrelic",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingNewrelicApi#delete_log_newrelic\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a New Relic log endpoint
    # Get the details of a New Relic Logs logging object for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_newrelic_name The name for the real-time logging configuration. (required)
    # @return [LoggingNewrelicResponse]
    def get_log_newrelic(opts = {})
      data, _status_code, _headers = get_log_newrelic_with_http_info(opts)
      data
    end

    # Get a New Relic log endpoint
    # Get the details of a New Relic Logs logging object for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_newrelic_name The name for the real-time logging configuration. (required)
    # @return [Array<(LoggingNewrelicResponse, Integer, Hash)>] LoggingNewrelicResponse data, response status code and response headers
    def get_log_newrelic_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingNewrelicApi.get_log_newrelic ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      logging_newrelic_name = opts[:'logging_newrelic_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingNewrelicApi.get_log_newrelic"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingNewrelicApi.get_log_newrelic"
      end
      # verify the required parameter 'logging_newrelic_name' is set
      if @api_client.config.client_side_validation && logging_newrelic_name.nil?
        fail ArgumentError, "Missing the required parameter 'logging_newrelic_name' when calling LoggingNewrelicApi.get_log_newrelic"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/newrelic/{logging_newrelic_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'logging_newrelic_name' + '}', CGI.escape(logging_newrelic_name.to_s))

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
      return_type = opts[:debug_return_type] || 'LoggingNewrelicResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingNewrelicApi.get_log_newrelic",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingNewrelicApi#get_log_newrelic\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List New Relic log endpoints
    # List all of the New Relic Logs logging objects for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<LoggingNewrelicResponse>]
    def list_log_newrelic(opts = {})
      data, _status_code, _headers = list_log_newrelic_with_http_info(opts)
      data
    end

    # List New Relic log endpoints
    # List all of the New Relic Logs logging objects for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(Array<LoggingNewrelicResponse>, Integer, Hash)>] Array<LoggingNewrelicResponse> data, response status code and response headers
    def list_log_newrelic_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingNewrelicApi.list_log_newrelic ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingNewrelicApi.list_log_newrelic"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingNewrelicApi.list_log_newrelic"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/newrelic'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<LoggingNewrelicResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingNewrelicApi.list_log_newrelic",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingNewrelicApi#list_log_newrelic\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a New Relic log endpoint
    # Update a New Relic Logs logging object for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_newrelic_name The name for the real-time logging configuration. (required)
    # @option opts [String] :name The name for the real-time logging configuration.
    # @option opts [String] :placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. 
    # @option opts [String] :response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute.
    # @option opts [String] :format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that New Relic Logs can ingest. (default to '{\"timestamp\":\"%{begin:%Y-%m-%dT%H:%M:%S}t\",\"time_elapsed\":\"%{time.elapsed.usec}V\",\"is_tls\":\"%{if(req.is_ssl, \\\"true\\\", \\\"false\\\")}V\",\"client_ip\":\"%{req.http.Fastly-Client-IP}V\",\"geo_city\":\"%{client.geo.city}V\",\"geo_country_code\":\"%{client.geo.country_code}V\",\"request\":\"%{req.request}V\",\"host\":\"%{req.http.Fastly-Orig-Host}V\",\"url\":\"%{json.escape(req.url)}V\",\"request_referer\":\"%{json.escape(req.http.Referer)}V\",\"request_user_agent\":\"%{json.escape(req.http.User-Agent)}V\",\"request_accept_language\":\"%{json.escape(req.http.Accept-Language)}V\",\"request_accept_charset\":\"%{json.escape(req.http.Accept-Charset)}V\",\"cache_status\":\"%{regsub(fastly_info.state, \\\"^(HIT-(SYNTH)|(HITPASS|HIT|MISS|PASS|ERROR|PIPE)).*\\\", \\\"\\\\2\\\\3\\\") }V\"}')
    # @option opts [Integer] :format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (default to FORMAT_VERSION::v2)
    # @option opts [String] :token The Insert API key from the Account page of your New Relic account. Required.
    # @option opts [String] :region The region to which to stream logs. (default to 'US')
    # @return [LoggingNewrelicResponse]
    def update_log_newrelic(opts = {})
      data, _status_code, _headers = update_log_newrelic_with_http_info(opts)
      data
    end

    # Update a New Relic log endpoint
    # Update a New Relic Logs logging object for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_newrelic_name The name for the real-time logging configuration. (required)
    # @option opts [String] :name The name for the real-time logging configuration.
    # @option opts [String] :placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. 
    # @option opts [String] :response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute.
    # @option opts [String] :format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that New Relic Logs can ingest. (default to '{\"timestamp\":\"%{begin:%Y-%m-%dT%H:%M:%S}t\",\"time_elapsed\":\"%{time.elapsed.usec}V\",\"is_tls\":\"%{if(req.is_ssl, \\\"true\\\", \\\"false\\\")}V\",\"client_ip\":\"%{req.http.Fastly-Client-IP}V\",\"geo_city\":\"%{client.geo.city}V\",\"geo_country_code\":\"%{client.geo.country_code}V\",\"request\":\"%{req.request}V\",\"host\":\"%{req.http.Fastly-Orig-Host}V\",\"url\":\"%{json.escape(req.url)}V\",\"request_referer\":\"%{json.escape(req.http.Referer)}V\",\"request_user_agent\":\"%{json.escape(req.http.User-Agent)}V\",\"request_accept_language\":\"%{json.escape(req.http.Accept-Language)}V\",\"request_accept_charset\":\"%{json.escape(req.http.Accept-Charset)}V\",\"cache_status\":\"%{regsub(fastly_info.state, \\\"^(HIT-(SYNTH)|(HITPASS|HIT|MISS|PASS|ERROR|PIPE)).*\\\", \\\"\\\\2\\\\3\\\") }V\"}')
    # @option opts [Integer] :format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (default to FORMAT_VERSION::v2)
    # @option opts [String] :token The Insert API key from the Account page of your New Relic account. Required.
    # @option opts [String] :region The region to which to stream logs. (default to 'US')
    # @return [Array<(LoggingNewrelicResponse, Integer, Hash)>] LoggingNewrelicResponse data, response status code and response headers
    def update_log_newrelic_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingNewrelicApi.update_log_newrelic ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      logging_newrelic_name = opts[:'logging_newrelic_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingNewrelicApi.update_log_newrelic"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingNewrelicApi.update_log_newrelic"
      end
      # verify the required parameter 'logging_newrelic_name' is set
      if @api_client.config.client_side_validation && logging_newrelic_name.nil?
        fail ArgumentError, "Missing the required parameter 'logging_newrelic_name' when calling LoggingNewrelicApi.update_log_newrelic"
      end
      allowable_values = ["none", "null"]
      if @api_client.config.client_side_validation && opts[:'placement'] && !allowable_values.include?(opts[:'placement'])
        fail ArgumentError, "invalid value for \"placement\", must be one of #{allowable_values}"
      end
      allowable_values = [1, 2]
      if @api_client.config.client_side_validation && opts[:'format_version'] && !allowable_values.include?(opts[:'format_version'])
        fail ArgumentError, "invalid value for \"format_version\", must be one of #{allowable_values}"
      end
      allowable_values = ["US", "EU"]
      if @api_client.config.client_side_validation && opts[:'region'] && !allowable_values.include?(opts[:'region'])
        fail ArgumentError, "invalid value for \"region\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/newrelic/{logging_newrelic_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'logging_newrelic_name' + '}', CGI.escape(logging_newrelic_name.to_s))

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
      form_params['token'] = opts[:'token'] if !opts[:'token'].nil?
      form_params['region'] = opts[:'region'] if !opts[:'region'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LoggingNewrelicResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingNewrelicApi.update_log_newrelic",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingNewrelicApi#update_log_newrelic\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
