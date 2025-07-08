=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class LoggingPapertrailApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Papertrail log endpoint
    # Create a Papertrail for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :name The name for the real-time logging configuration.
    # @option opts [String] :placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. 
    # @option opts [String] :response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute.
    # @option opts [String] :format A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/). (default to '%h %l %u %t \"%r\" %&gt;s %b')
    # @option opts [String] :log_processing_region The geographic region where the logs will be processed before streaming. Valid values are &#x60;us&#x60;, &#x60;eu&#x60;, and &#x60;none&#x60; for global. (default to 'none')
    # @option opts [Integer] :format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (default to FORMAT_VERSION::v2)
    # @option opts [String] :address A hostname or IPv4 address.
    # @option opts [Integer] :port The port number. (default to 514)
    # @return [LoggingPapertrailResponse]
    def create_log_papertrail(opts = {})
      data, _status_code, _headers = create_log_papertrail_with_http_info(opts)
      data
    end

    # Create a Papertrail log endpoint
    # Create a Papertrail for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :name The name for the real-time logging configuration.
    # @option opts [String] :placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. 
    # @option opts [String] :response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute.
    # @option opts [String] :format A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/). (default to '%h %l %u %t \"%r\" %&gt;s %b')
    # @option opts [String] :log_processing_region The geographic region where the logs will be processed before streaming. Valid values are &#x60;us&#x60;, &#x60;eu&#x60;, and &#x60;none&#x60; for global. (default to 'none')
    # @option opts [Integer] :format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (default to FORMAT_VERSION::v2)
    # @option opts [String] :address A hostname or IPv4 address.
    # @option opts [Integer] :port The port number. (default to 514)
    # @return [Array<(LoggingPapertrailResponse, Integer, Hash)>] LoggingPapertrailResponse data, response status code and response headers
    def create_log_papertrail_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingPapertrailApi.create_log_papertrail ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingPapertrailApi.create_log_papertrail"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingPapertrailApi.create_log_papertrail"
      end
      allowable_values = ["none", "null"]
      if @api_client.config.client_side_validation && opts[:'placement'] && !allowable_values.include?(opts[:'placement'])
        fail ArgumentError, "invalid value for \"placement\", must be one of #{allowable_values}"
      end
      allowable_values = ["none", "eu", "us"]
      if @api_client.config.client_side_validation && opts[:'log_processing_region'] && !allowable_values.include?(opts[:'log_processing_region'])
        fail ArgumentError, "invalid value for \"log_processing_region\", must be one of #{allowable_values}"
      end
      allowable_values = [1, 2]
      if @api_client.config.client_side_validation && opts[:'format_version'] && !allowable_values.include?(opts[:'format_version'])
        fail ArgumentError, "invalid value for \"format_version\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/papertrail'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      form_params['log_processing_region'] = opts[:'log_processing_region'] if !opts[:'log_processing_region'].nil?
      form_params['format_version'] = opts[:'format_version'] if !opts[:'format_version'].nil?
      form_params['address'] = opts[:'address'] if !opts[:'address'].nil?
      form_params['port'] = opts[:'port'] if !opts[:'port'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LoggingPapertrailResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingPapertrailApi.create_log_papertrail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingPapertrailApi#create_log_papertrail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Papertrail log endpoint
    # Delete the Papertrail for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_papertrail_name The name for the real-time logging configuration. (required)
    # @return [InlineResponse200]
    def delete_log_papertrail(opts = {})
      data, _status_code, _headers = delete_log_papertrail_with_http_info(opts)
      data
    end

    # Delete a Papertrail log endpoint
    # Delete the Papertrail for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_papertrail_name The name for the real-time logging configuration. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_log_papertrail_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingPapertrailApi.delete_log_papertrail ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      logging_papertrail_name = opts[:'logging_papertrail_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingPapertrailApi.delete_log_papertrail"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingPapertrailApi.delete_log_papertrail"
      end
      # verify the required parameter 'logging_papertrail_name' is set
      if @api_client.config.client_side_validation && logging_papertrail_name.nil?
        fail ArgumentError, "Missing the required parameter 'logging_papertrail_name' when calling LoggingPapertrailApi.delete_log_papertrail"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/papertrail/{logging_papertrail_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'logging_papertrail_name' + '}', CGI.escape(logging_papertrail_name.to_s))

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
        :operation => :"LoggingPapertrailApi.delete_log_papertrail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingPapertrailApi#delete_log_papertrail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Papertrail log endpoint
    # Get the Papertrail for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_papertrail_name The name for the real-time logging configuration. (required)
    # @return [LoggingPapertrailResponse]
    def get_log_papertrail(opts = {})
      data, _status_code, _headers = get_log_papertrail_with_http_info(opts)
      data
    end

    # Get a Papertrail log endpoint
    # Get the Papertrail for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_papertrail_name The name for the real-time logging configuration. (required)
    # @return [Array<(LoggingPapertrailResponse, Integer, Hash)>] LoggingPapertrailResponse data, response status code and response headers
    def get_log_papertrail_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingPapertrailApi.get_log_papertrail ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      logging_papertrail_name = opts[:'logging_papertrail_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingPapertrailApi.get_log_papertrail"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingPapertrailApi.get_log_papertrail"
      end
      # verify the required parameter 'logging_papertrail_name' is set
      if @api_client.config.client_side_validation && logging_papertrail_name.nil?
        fail ArgumentError, "Missing the required parameter 'logging_papertrail_name' when calling LoggingPapertrailApi.get_log_papertrail"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/papertrail/{logging_papertrail_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'logging_papertrail_name' + '}', CGI.escape(logging_papertrail_name.to_s))

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
      return_type = opts[:debug_return_type] || 'LoggingPapertrailResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingPapertrailApi.get_log_papertrail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingPapertrailApi#get_log_papertrail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Papertrail log endpoints
    # List all of the Papertrails for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<LoggingPapertrailResponse>]
    def list_log_papertrail(opts = {})
      data, _status_code, _headers = list_log_papertrail_with_http_info(opts)
      data
    end

    # List Papertrail log endpoints
    # List all of the Papertrails for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(Array<LoggingPapertrailResponse>, Integer, Hash)>] Array<LoggingPapertrailResponse> data, response status code and response headers
    def list_log_papertrail_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingPapertrailApi.list_log_papertrail ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingPapertrailApi.list_log_papertrail"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingPapertrailApi.list_log_papertrail"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/papertrail'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<LoggingPapertrailResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingPapertrailApi.list_log_papertrail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingPapertrailApi#list_log_papertrail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Papertrail log endpoint
    # Update the Papertrail for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_papertrail_name The name for the real-time logging configuration. (required)
    # @option opts [String] :name The name for the real-time logging configuration.
    # @option opts [String] :placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. 
    # @option opts [String] :response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute.
    # @option opts [String] :format A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/). (default to '%h %l %u %t \"%r\" %&gt;s %b')
    # @option opts [String] :log_processing_region The geographic region where the logs will be processed before streaming. Valid values are &#x60;us&#x60;, &#x60;eu&#x60;, and &#x60;none&#x60; for global. (default to 'none')
    # @option opts [Integer] :format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (default to FORMAT_VERSION::v2)
    # @option opts [String] :address A hostname or IPv4 address.
    # @option opts [Integer] :port The port number. (default to 514)
    # @return [LoggingPapertrailResponse]
    def update_log_papertrail(opts = {})
      data, _status_code, _headers = update_log_papertrail_with_http_info(opts)
      data
    end

    # Update a Papertrail log endpoint
    # Update the Papertrail for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_papertrail_name The name for the real-time logging configuration. (required)
    # @option opts [String] :name The name for the real-time logging configuration.
    # @option opts [String] :placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. 
    # @option opts [String] :response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute.
    # @option opts [String] :format A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/). (default to '%h %l %u %t \"%r\" %&gt;s %b')
    # @option opts [String] :log_processing_region The geographic region where the logs will be processed before streaming. Valid values are &#x60;us&#x60;, &#x60;eu&#x60;, and &#x60;none&#x60; for global. (default to 'none')
    # @option opts [Integer] :format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (default to FORMAT_VERSION::v2)
    # @option opts [String] :address A hostname or IPv4 address.
    # @option opts [Integer] :port The port number. (default to 514)
    # @return [Array<(LoggingPapertrailResponse, Integer, Hash)>] LoggingPapertrailResponse data, response status code and response headers
    def update_log_papertrail_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingPapertrailApi.update_log_papertrail ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      logging_papertrail_name = opts[:'logging_papertrail_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingPapertrailApi.update_log_papertrail"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingPapertrailApi.update_log_papertrail"
      end
      # verify the required parameter 'logging_papertrail_name' is set
      if @api_client.config.client_side_validation && logging_papertrail_name.nil?
        fail ArgumentError, "Missing the required parameter 'logging_papertrail_name' when calling LoggingPapertrailApi.update_log_papertrail"
      end
      allowable_values = ["none", "null"]
      if @api_client.config.client_side_validation && opts[:'placement'] && !allowable_values.include?(opts[:'placement'])
        fail ArgumentError, "invalid value for \"placement\", must be one of #{allowable_values}"
      end
      allowable_values = ["none", "eu", "us"]
      if @api_client.config.client_side_validation && opts[:'log_processing_region'] && !allowable_values.include?(opts[:'log_processing_region'])
        fail ArgumentError, "invalid value for \"log_processing_region\", must be one of #{allowable_values}"
      end
      allowable_values = [1, 2]
      if @api_client.config.client_side_validation && opts[:'format_version'] && !allowable_values.include?(opts[:'format_version'])
        fail ArgumentError, "invalid value for \"format_version\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/papertrail/{logging_papertrail_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'logging_papertrail_name' + '}', CGI.escape(logging_papertrail_name.to_s))

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
      form_params['log_processing_region'] = opts[:'log_processing_region'] if !opts[:'log_processing_region'].nil?
      form_params['format_version'] = opts[:'format_version'] if !opts[:'format_version'].nil?
      form_params['address'] = opts[:'address'] if !opts[:'address'].nil?
      form_params['port'] = opts[:'port'] if !opts[:'port'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LoggingPapertrailResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingPapertrailApi.update_log_papertrail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingPapertrailApi#update_log_papertrail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
