=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class LoggingDigitaloceanApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a DigitalOcean Spaces log endpoint
    # Create a DigitalOcean Space for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :name The name for the real-time logging configuration.
    # @option opts [String] :placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. 
    # @option opts [String] :response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute.
    # @option opts [String] :format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). (default to '%h %l %u %t \"%r\" %&gt;s %b')
    # @option opts [Integer] :format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (default to FORMAT_VERSION::v2)
    # @option opts [String] :message_type How the message should be formatted. (default to 'classic')
    # @option opts [String] :timestamp_format A timestamp format
    # @option opts [String] :compression_codec The codec used for compressing your logs. Valid values are &#x60;zstd&#x60;, &#x60;snappy&#x60;, and &#x60;gzip&#x60;. Specifying both &#x60;compression_codec&#x60; and &#x60;gzip_level&#x60; in the same API request will result in an error.
    # @option opts [Integer] :period How frequently log files are finalized so they can be available for reading (in seconds). (default to 3600)
    # @option opts [Integer] :gzip_level The level of gzip encoding when sending logs (default &#x60;0&#x60;, no compression). Specifying both &#x60;compression_codec&#x60; and &#x60;gzip_level&#x60; in the same API request will result in an error. (default to 0)
    # @option opts [String] :bucket_name The name of the DigitalOcean Space.
    # @option opts [String] :access_key Your DigitalOcean Spaces account access key.
    # @option opts [String] :secret_key Your DigitalOcean Spaces account secret key.
    # @option opts [String] :domain The domain of the DigitalOcean Spaces endpoint. (default to 'nyc3.digitaloceanspaces.com')
    # @option opts [String] :path The path to upload logs to. (default to 'null')
    # @option opts [String] :public_key A PGP public key that Fastly will use to encrypt your log files before writing them to disk. (default to 'null')
    # @return [LoggingDigitaloceanResponse]
    def create_log_digocean(opts = {})
      data, _status_code, _headers = create_log_digocean_with_http_info(opts)
      data
    end

    # Create a DigitalOcean Spaces log endpoint
    # Create a DigitalOcean Space for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :name The name for the real-time logging configuration.
    # @option opts [String] :placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. 
    # @option opts [String] :response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute.
    # @option opts [String] :format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). (default to '%h %l %u %t \"%r\" %&gt;s %b')
    # @option opts [Integer] :format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (default to FORMAT_VERSION::v2)
    # @option opts [String] :message_type How the message should be formatted. (default to 'classic')
    # @option opts [String] :timestamp_format A timestamp format
    # @option opts [String] :compression_codec The codec used for compressing your logs. Valid values are &#x60;zstd&#x60;, &#x60;snappy&#x60;, and &#x60;gzip&#x60;. Specifying both &#x60;compression_codec&#x60; and &#x60;gzip_level&#x60; in the same API request will result in an error.
    # @option opts [Integer] :period How frequently log files are finalized so they can be available for reading (in seconds). (default to 3600)
    # @option opts [Integer] :gzip_level The level of gzip encoding when sending logs (default &#x60;0&#x60;, no compression). Specifying both &#x60;compression_codec&#x60; and &#x60;gzip_level&#x60; in the same API request will result in an error. (default to 0)
    # @option opts [String] :bucket_name The name of the DigitalOcean Space.
    # @option opts [String] :access_key Your DigitalOcean Spaces account access key.
    # @option opts [String] :secret_key Your DigitalOcean Spaces account secret key.
    # @option opts [String] :domain The domain of the DigitalOcean Spaces endpoint. (default to 'nyc3.digitaloceanspaces.com')
    # @option opts [String] :path The path to upload logs to. (default to 'null')
    # @option opts [String] :public_key A PGP public key that Fastly will use to encrypt your log files before writing them to disk. (default to 'null')
    # @return [Array<(LoggingDigitaloceanResponse, Integer, Hash)>] LoggingDigitaloceanResponse data, response status code and response headers
    def create_log_digocean_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingDigitaloceanApi.create_log_digocean ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingDigitaloceanApi.create_log_digocean"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingDigitaloceanApi.create_log_digocean"
      end
      allowable_values = ["none", "waf_debug", "null"]
      if @api_client.config.client_side_validation && opts[:'placement'] && !allowable_values.include?(opts[:'placement'])
        fail ArgumentError, "invalid value for \"placement\", must be one of #{allowable_values}"
      end
      allowable_values = [1, 2]
      if @api_client.config.client_side_validation && opts[:'format_version'] && !allowable_values.include?(opts[:'format_version'])
        fail ArgumentError, "invalid value for \"format_version\", must be one of #{allowable_values}"
      end
      allowable_values = ["classic", "loggly", "logplex", "blank"]
      if @api_client.config.client_side_validation && opts[:'message_type'] && !allowable_values.include?(opts[:'message_type'])
        fail ArgumentError, "invalid value for \"message_type\", must be one of #{allowable_values}"
      end
      allowable_values = ["zstd", "snappy", "gzip"]
      if @api_client.config.client_side_validation && opts[:'compression_codec'] && !allowable_values.include?(opts[:'compression_codec'])
        fail ArgumentError, "invalid value for \"compression_codec\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/digitalocean'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      form_params['message_type'] = opts[:'message_type'] if !opts[:'message_type'].nil?
      form_params['timestamp_format'] = opts[:'timestamp_format'] if !opts[:'timestamp_format'].nil?
      form_params['compression_codec'] = opts[:'compression_codec'] if !opts[:'compression_codec'].nil?
      form_params['period'] = opts[:'period'] if !opts[:'period'].nil?
      form_params['gzip_level'] = opts[:'gzip_level'] if !opts[:'gzip_level'].nil?
      form_params['bucket_name'] = opts[:'bucket_name'] if !opts[:'bucket_name'].nil?
      form_params['access_key'] = opts[:'access_key'] if !opts[:'access_key'].nil?
      form_params['secret_key'] = opts[:'secret_key'] if !opts[:'secret_key'].nil?
      form_params['domain'] = opts[:'domain'] if !opts[:'domain'].nil?
      form_params['path'] = opts[:'path'] if !opts[:'path'].nil?
      form_params['public_key'] = opts[:'public_key'] if !opts[:'public_key'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LoggingDigitaloceanResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingDigitaloceanApi.create_log_digocean",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingDigitaloceanApi#create_log_digocean\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a DigitalOcean Spaces log endpoint
    # Delete the DigitalOcean Space for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_digitalocean_name The name for the real-time logging configuration. (required)
    # @return [InlineResponse200]
    def delete_log_digocean(opts = {})
      data, _status_code, _headers = delete_log_digocean_with_http_info(opts)
      data
    end

    # Delete a DigitalOcean Spaces log endpoint
    # Delete the DigitalOcean Space for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_digitalocean_name The name for the real-time logging configuration. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_log_digocean_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingDigitaloceanApi.delete_log_digocean ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      logging_digitalocean_name = opts[:'logging_digitalocean_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingDigitaloceanApi.delete_log_digocean"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingDigitaloceanApi.delete_log_digocean"
      end
      # verify the required parameter 'logging_digitalocean_name' is set
      if @api_client.config.client_side_validation && logging_digitalocean_name.nil?
        fail ArgumentError, "Missing the required parameter 'logging_digitalocean_name' when calling LoggingDigitaloceanApi.delete_log_digocean"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/digitalocean/{logging_digitalocean_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'logging_digitalocean_name' + '}', CGI.escape(logging_digitalocean_name.to_s))

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
        :operation => :"LoggingDigitaloceanApi.delete_log_digocean",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingDigitaloceanApi#delete_log_digocean\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a DigitalOcean Spaces log endpoint
    # Get the DigitalOcean Space for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_digitalocean_name The name for the real-time logging configuration. (required)
    # @return [LoggingDigitaloceanResponse]
    def get_log_digocean(opts = {})
      data, _status_code, _headers = get_log_digocean_with_http_info(opts)
      data
    end

    # Get a DigitalOcean Spaces log endpoint
    # Get the DigitalOcean Space for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_digitalocean_name The name for the real-time logging configuration. (required)
    # @return [Array<(LoggingDigitaloceanResponse, Integer, Hash)>] LoggingDigitaloceanResponse data, response status code and response headers
    def get_log_digocean_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingDigitaloceanApi.get_log_digocean ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      logging_digitalocean_name = opts[:'logging_digitalocean_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingDigitaloceanApi.get_log_digocean"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingDigitaloceanApi.get_log_digocean"
      end
      # verify the required parameter 'logging_digitalocean_name' is set
      if @api_client.config.client_side_validation && logging_digitalocean_name.nil?
        fail ArgumentError, "Missing the required parameter 'logging_digitalocean_name' when calling LoggingDigitaloceanApi.get_log_digocean"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/digitalocean/{logging_digitalocean_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'logging_digitalocean_name' + '}', CGI.escape(logging_digitalocean_name.to_s))

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
      return_type = opts[:debug_return_type] || 'LoggingDigitaloceanResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingDigitaloceanApi.get_log_digocean",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingDigitaloceanApi#get_log_digocean\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List DigitalOcean Spaces log endpoints
    # List all of the DigitalOcean Spaces for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<LoggingDigitaloceanResponse>]
    def list_log_digocean(opts = {})
      data, _status_code, _headers = list_log_digocean_with_http_info(opts)
      data
    end

    # List DigitalOcean Spaces log endpoints
    # List all of the DigitalOcean Spaces for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(Array<LoggingDigitaloceanResponse>, Integer, Hash)>] Array<LoggingDigitaloceanResponse> data, response status code and response headers
    def list_log_digocean_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingDigitaloceanApi.list_log_digocean ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingDigitaloceanApi.list_log_digocean"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingDigitaloceanApi.list_log_digocean"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/digitalocean'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<LoggingDigitaloceanResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingDigitaloceanApi.list_log_digocean",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingDigitaloceanApi#list_log_digocean\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a DigitalOcean Spaces log endpoint
    # Update the DigitalOcean Space for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_digitalocean_name The name for the real-time logging configuration. (required)
    # @option opts [String] :name The name for the real-time logging configuration.
    # @option opts [String] :placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. 
    # @option opts [String] :response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute.
    # @option opts [String] :format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). (default to '%h %l %u %t \"%r\" %&gt;s %b')
    # @option opts [Integer] :format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (default to FORMAT_VERSION::v2)
    # @option opts [String] :message_type How the message should be formatted. (default to 'classic')
    # @option opts [String] :timestamp_format A timestamp format
    # @option opts [String] :compression_codec The codec used for compressing your logs. Valid values are &#x60;zstd&#x60;, &#x60;snappy&#x60;, and &#x60;gzip&#x60;. Specifying both &#x60;compression_codec&#x60; and &#x60;gzip_level&#x60; in the same API request will result in an error.
    # @option opts [Integer] :period How frequently log files are finalized so they can be available for reading (in seconds). (default to 3600)
    # @option opts [Integer] :gzip_level The level of gzip encoding when sending logs (default &#x60;0&#x60;, no compression). Specifying both &#x60;compression_codec&#x60; and &#x60;gzip_level&#x60; in the same API request will result in an error. (default to 0)
    # @option opts [String] :bucket_name The name of the DigitalOcean Space.
    # @option opts [String] :access_key Your DigitalOcean Spaces account access key.
    # @option opts [String] :secret_key Your DigitalOcean Spaces account secret key.
    # @option opts [String] :domain The domain of the DigitalOcean Spaces endpoint. (default to 'nyc3.digitaloceanspaces.com')
    # @option opts [String] :path The path to upload logs to. (default to 'null')
    # @option opts [String] :public_key A PGP public key that Fastly will use to encrypt your log files before writing them to disk. (default to 'null')
    # @return [LoggingDigitaloceanResponse]
    def update_log_digocean(opts = {})
      data, _status_code, _headers = update_log_digocean_with_http_info(opts)
      data
    end

    # Update a DigitalOcean Spaces log endpoint
    # Update the DigitalOcean Space for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_digitalocean_name The name for the real-time logging configuration. (required)
    # @option opts [String] :name The name for the real-time logging configuration.
    # @option opts [String] :placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. 
    # @option opts [String] :response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute.
    # @option opts [String] :format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). (default to '%h %l %u %t \"%r\" %&gt;s %b')
    # @option opts [Integer] :format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (default to FORMAT_VERSION::v2)
    # @option opts [String] :message_type How the message should be formatted. (default to 'classic')
    # @option opts [String] :timestamp_format A timestamp format
    # @option opts [String] :compression_codec The codec used for compressing your logs. Valid values are &#x60;zstd&#x60;, &#x60;snappy&#x60;, and &#x60;gzip&#x60;. Specifying both &#x60;compression_codec&#x60; and &#x60;gzip_level&#x60; in the same API request will result in an error.
    # @option opts [Integer] :period How frequently log files are finalized so they can be available for reading (in seconds). (default to 3600)
    # @option opts [Integer] :gzip_level The level of gzip encoding when sending logs (default &#x60;0&#x60;, no compression). Specifying both &#x60;compression_codec&#x60; and &#x60;gzip_level&#x60; in the same API request will result in an error. (default to 0)
    # @option opts [String] :bucket_name The name of the DigitalOcean Space.
    # @option opts [String] :access_key Your DigitalOcean Spaces account access key.
    # @option opts [String] :secret_key Your DigitalOcean Spaces account secret key.
    # @option opts [String] :domain The domain of the DigitalOcean Spaces endpoint. (default to 'nyc3.digitaloceanspaces.com')
    # @option opts [String] :path The path to upload logs to. (default to 'null')
    # @option opts [String] :public_key A PGP public key that Fastly will use to encrypt your log files before writing them to disk. (default to 'null')
    # @return [Array<(LoggingDigitaloceanResponse, Integer, Hash)>] LoggingDigitaloceanResponse data, response status code and response headers
    def update_log_digocean_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingDigitaloceanApi.update_log_digocean ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      logging_digitalocean_name = opts[:'logging_digitalocean_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingDigitaloceanApi.update_log_digocean"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingDigitaloceanApi.update_log_digocean"
      end
      # verify the required parameter 'logging_digitalocean_name' is set
      if @api_client.config.client_side_validation && logging_digitalocean_name.nil?
        fail ArgumentError, "Missing the required parameter 'logging_digitalocean_name' when calling LoggingDigitaloceanApi.update_log_digocean"
      end
      allowable_values = ["none", "waf_debug", "null"]
      if @api_client.config.client_side_validation && opts[:'placement'] && !allowable_values.include?(opts[:'placement'])
        fail ArgumentError, "invalid value for \"placement\", must be one of #{allowable_values}"
      end
      allowable_values = [1, 2]
      if @api_client.config.client_side_validation && opts[:'format_version'] && !allowable_values.include?(opts[:'format_version'])
        fail ArgumentError, "invalid value for \"format_version\", must be one of #{allowable_values}"
      end
      allowable_values = ["classic", "loggly", "logplex", "blank"]
      if @api_client.config.client_side_validation && opts[:'message_type'] && !allowable_values.include?(opts[:'message_type'])
        fail ArgumentError, "invalid value for \"message_type\", must be one of #{allowable_values}"
      end
      allowable_values = ["zstd", "snappy", "gzip"]
      if @api_client.config.client_side_validation && opts[:'compression_codec'] && !allowable_values.include?(opts[:'compression_codec'])
        fail ArgumentError, "invalid value for \"compression_codec\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/digitalocean/{logging_digitalocean_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'logging_digitalocean_name' + '}', CGI.escape(logging_digitalocean_name.to_s))

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
      form_params['message_type'] = opts[:'message_type'] if !opts[:'message_type'].nil?
      form_params['timestamp_format'] = opts[:'timestamp_format'] if !opts[:'timestamp_format'].nil?
      form_params['compression_codec'] = opts[:'compression_codec'] if !opts[:'compression_codec'].nil?
      form_params['period'] = opts[:'period'] if !opts[:'period'].nil?
      form_params['gzip_level'] = opts[:'gzip_level'] if !opts[:'gzip_level'].nil?
      form_params['bucket_name'] = opts[:'bucket_name'] if !opts[:'bucket_name'].nil?
      form_params['access_key'] = opts[:'access_key'] if !opts[:'access_key'].nil?
      form_params['secret_key'] = opts[:'secret_key'] if !opts[:'secret_key'].nil?
      form_params['domain'] = opts[:'domain'] if !opts[:'domain'].nil?
      form_params['path'] = opts[:'path'] if !opts[:'path'].nil?
      form_params['public_key'] = opts[:'public_key'] if !opts[:'public_key'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LoggingDigitaloceanResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingDigitaloceanApi.update_log_digocean",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingDigitaloceanApi#update_log_digocean\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
