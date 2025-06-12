=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class LoggingAzureblobApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an Azure Blob Storage log endpoint
    # Create an Azure Blob Storage logging endpoint for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :name The name for the real-time logging configuration.
    # @option opts [String] :placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. 
    # @option opts [String] :response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute.
    # @option opts [String] :format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). (default to '%h %l %u %t \"%r\" %&gt;s %b')
    # @option opts [Integer] :format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (default to 2)
    # @option opts [String] :message_type How the message should be formatted. (default to 'classic')
    # @option opts [String] :timestamp_format A timestamp format
    # @option opts [String] :compression_codec The codec used for compressing your logs. Valid values are &#x60;zstd&#x60;, &#x60;snappy&#x60;, and &#x60;gzip&#x60;. Specifying both &#x60;compression_codec&#x60; and &#x60;gzip_level&#x60; in the same API request will result in an error.
    # @option opts [Integer] :period How frequently log files are finalized so they can be available for reading (in seconds). (default to 3600)
    # @option opts [Integer] :gzip_level The level of gzip encoding when sending logs (default &#x60;0&#x60;, no compression). Specifying both &#x60;compression_codec&#x60; and &#x60;gzip_level&#x60; in the same API request will result in an error. (default to 0)
    # @option opts [String] :path The path to upload logs to. (default to 'null')
    # @option opts [String] :account_name The unique Azure Blob Storage namespace in which your data objects are stored. Required.
    # @option opts [String] :container The name of the Azure Blob Storage container in which to store logs. Required.
    # @option opts [String] :sas_token The Azure shared access signature providing write access to the blob service objects. Be sure to update your token before it expires or the logging functionality will not work. Required.
    # @option opts [String] :public_key A PGP public key that Fastly will use to encrypt your log files before writing them to disk. (default to 'null')
    # @option opts [Integer] :file_max_bytes The maximum number of bytes for each uploaded file. A value of 0 can be used to indicate there is no limit on the size of uploaded files, otherwise the minimum value is 1048576 bytes (1 MiB). Note that Microsoft Azure Storage has [block size limits](https://learn.microsoft.com/en-us/rest/api/storageservices/put-block?tabs&#x3D;microsoft-entra-id#remarks).
    # @return [LoggingAzureblobResponse]
    def create_log_azure(opts = {})
      data, _status_code, _headers = create_log_azure_with_http_info(opts)
      data
    end

    # Create an Azure Blob Storage log endpoint
    # Create an Azure Blob Storage logging endpoint for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :name The name for the real-time logging configuration.
    # @option opts [String] :placement Where in the generated VCL the logging call should be placed. If not set, endpoints with &#x60;format_version&#x60; of 2 are placed in &#x60;vcl_log&#x60; and those with &#x60;format_version&#x60; of 1 are placed in &#x60;vcl_deliver&#x60;. 
    # @option opts [String] :response_condition The name of an existing condition in the configured endpoint, or leave blank to always execute.
    # @option opts [String] :format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). (default to '%h %l %u %t \"%r\" %&gt;s %b')
    # @option opts [Integer] :format_version The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in &#x60;vcl_log&#x60; if &#x60;format_version&#x60; is set to &#x60;2&#x60; and in &#x60;vcl_deliver&#x60; if &#x60;format_version&#x60; is set to &#x60;1&#x60;.  (default to 2)
    # @option opts [String] :message_type How the message should be formatted. (default to 'classic')
    # @option opts [String] :timestamp_format A timestamp format
    # @option opts [String] :compression_codec The codec used for compressing your logs. Valid values are &#x60;zstd&#x60;, &#x60;snappy&#x60;, and &#x60;gzip&#x60;. Specifying both &#x60;compression_codec&#x60; and &#x60;gzip_level&#x60; in the same API request will result in an error.
    # @option opts [Integer] :period How frequently log files are finalized so they can be available for reading (in seconds). (default to 3600)
    # @option opts [Integer] :gzip_level The level of gzip encoding when sending logs (default &#x60;0&#x60;, no compression). Specifying both &#x60;compression_codec&#x60; and &#x60;gzip_level&#x60; in the same API request will result in an error. (default to 0)
    # @option opts [String] :path The path to upload logs to. (default to 'null')
    # @option opts [String] :account_name The unique Azure Blob Storage namespace in which your data objects are stored. Required.
    # @option opts [String] :container The name of the Azure Blob Storage container in which to store logs. Required.
    # @option opts [String] :sas_token The Azure shared access signature providing write access to the blob service objects. Be sure to update your token before it expires or the logging functionality will not work. Required.
    # @option opts [String] :public_key A PGP public key that Fastly will use to encrypt your log files before writing them to disk. (default to 'null')
    # @option opts [Integer] :file_max_bytes The maximum number of bytes for each uploaded file. A value of 0 can be used to indicate there is no limit on the size of uploaded files, otherwise the minimum value is 1048576 bytes (1 MiB). Note that Microsoft Azure Storage has [block size limits](https://learn.microsoft.com/en-us/rest/api/storageservices/put-block?tabs&#x3D;microsoft-entra-id#remarks).
    # @return [Array<(LoggingAzureblobResponse, Integer, Hash)>] LoggingAzureblobResponse data, response status code and response headers
    def create_log_azure_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingAzureblobApi.create_log_azure ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingAzureblobApi.create_log_azure"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingAzureblobApi.create_log_azure"
      end
      allowable_values = ["none", "null"]
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
      if @api_client.config.client_side_validation && !opts[:'file_max_bytes'].nil? && opts[:'file_max_bytes'] < 1048576
        fail ArgumentError, 'invalid value for "opts[:"file_max_bytes"]" when calling LoggingAzureblobApi.create_log_azure, must be greater than or equal to 1048576.'
      end

      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/azureblob'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      form_params['path'] = opts[:'path'] if !opts[:'path'].nil?
      form_params['account_name'] = opts[:'account_name'] if !opts[:'account_name'].nil?
      form_params['container'] = opts[:'container'] if !opts[:'container'].nil?
      form_params['sas_token'] = opts[:'sas_token'] if !opts[:'sas_token'].nil?
      form_params['public_key'] = opts[:'public_key'] if !opts[:'public_key'].nil?
      form_params['file_max_bytes'] = opts[:'file_max_bytes'] if !opts[:'file_max_bytes'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LoggingAzureblobResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingAzureblobApi.create_log_azure",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingAzureblobApi#create_log_azure\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete the Azure Blob Storage log endpoint
    # Delete the Azure Blob Storage logging endpoint for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_azureblob_name The name for the real-time logging configuration. (required)
    # @return [InlineResponse200]
    def delete_log_azure(opts = {})
      data, _status_code, _headers = delete_log_azure_with_http_info(opts)
      data
    end

    # Delete the Azure Blob Storage log endpoint
    # Delete the Azure Blob Storage logging endpoint for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_azureblob_name The name for the real-time logging configuration. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_log_azure_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingAzureblobApi.delete_log_azure ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      logging_azureblob_name = opts[:'logging_azureblob_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingAzureblobApi.delete_log_azure"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingAzureblobApi.delete_log_azure"
      end
      # verify the required parameter 'logging_azureblob_name' is set
      if @api_client.config.client_side_validation && logging_azureblob_name.nil?
        fail ArgumentError, "Missing the required parameter 'logging_azureblob_name' when calling LoggingAzureblobApi.delete_log_azure"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/azureblob/{logging_azureblob_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'logging_azureblob_name' + '}', CGI.escape(logging_azureblob_name.to_s))

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
        :operation => :"LoggingAzureblobApi.delete_log_azure",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingAzureblobApi#delete_log_azure\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an Azure Blob Storage log endpoint
    # Get the Azure Blob Storage logging endpoint for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_azureblob_name The name for the real-time logging configuration. (required)
    # @return [LoggingAzureblobResponse]
    def get_log_azure(opts = {})
      data, _status_code, _headers = get_log_azure_with_http_info(opts)
      data
    end

    # Get an Azure Blob Storage log endpoint
    # Get the Azure Blob Storage logging endpoint for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_azureblob_name The name for the real-time logging configuration. (required)
    # @return [Array<(LoggingAzureblobResponse, Integer, Hash)>] LoggingAzureblobResponse data, response status code and response headers
    def get_log_azure_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingAzureblobApi.get_log_azure ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      logging_azureblob_name = opts[:'logging_azureblob_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingAzureblobApi.get_log_azure"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingAzureblobApi.get_log_azure"
      end
      # verify the required parameter 'logging_azureblob_name' is set
      if @api_client.config.client_side_validation && logging_azureblob_name.nil?
        fail ArgumentError, "Missing the required parameter 'logging_azureblob_name' when calling LoggingAzureblobApi.get_log_azure"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/azureblob/{logging_azureblob_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'logging_azureblob_name' + '}', CGI.escape(logging_azureblob_name.to_s))

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
      return_type = opts[:debug_return_type] || 'LoggingAzureblobResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingAzureblobApi.get_log_azure",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingAzureblobApi#get_log_azure\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Azure Blob Storage log endpoints
    # List all of the Azure Blob Storage logging endpoints for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<LoggingAzureblobResponse>]
    def list_log_azure(opts = {})
      data, _status_code, _headers = list_log_azure_with_http_info(opts)
      data
    end

    # List Azure Blob Storage log endpoints
    # List all of the Azure Blob Storage logging endpoints for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(Array<LoggingAzureblobResponse>, Integer, Hash)>] Array<LoggingAzureblobResponse> data, response status code and response headers
    def list_log_azure_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingAzureblobApi.list_log_azure ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingAzureblobApi.list_log_azure"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingAzureblobApi.list_log_azure"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/azureblob'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<LoggingAzureblobResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingAzureblobApi.list_log_azure",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingAzureblobApi#list_log_azure\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an Azure Blob Storage log endpoint
    # Update the Azure Blob Storage logging endpoint for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_azureblob_name The name for the real-time logging configuration. (required)
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
    # @option opts [String] :path The path to upload logs to. (default to 'null')
    # @option opts [String] :account_name The unique Azure Blob Storage namespace in which your data objects are stored. Required.
    # @option opts [String] :container The name of the Azure Blob Storage container in which to store logs. Required.
    # @option opts [String] :sas_token The Azure shared access signature providing write access to the blob service objects. Be sure to update your token before it expires or the logging functionality will not work. Required.
    # @option opts [String] :public_key A PGP public key that Fastly will use to encrypt your log files before writing them to disk. (default to 'null')
    # @option opts [Integer] :file_max_bytes The maximum number of bytes for each uploaded file. A value of 0 can be used to indicate there is no limit on the size of uploaded files, otherwise the minimum value is 1048576 bytes (1 MiB). Note that Microsoft Azure Storage has [block size limits](https://learn.microsoft.com/en-us/rest/api/storageservices/put-block?tabs&#x3D;microsoft-entra-id#remarks).
    # @return [LoggingAzureblobResponse]
    def update_log_azure(opts = {})
      data, _status_code, _headers = update_log_azure_with_http_info(opts)
      data
    end

    # Update an Azure Blob Storage log endpoint
    # Update the Azure Blob Storage logging endpoint for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_azureblob_name The name for the real-time logging configuration. (required)
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
    # @option opts [String] :path The path to upload logs to. (default to 'null')
    # @option opts [String] :account_name The unique Azure Blob Storage namespace in which your data objects are stored. Required.
    # @option opts [String] :container The name of the Azure Blob Storage container in which to store logs. Required.
    # @option opts [String] :sas_token The Azure shared access signature providing write access to the blob service objects. Be sure to update your token before it expires or the logging functionality will not work. Required.
    # @option opts [String] :public_key A PGP public key that Fastly will use to encrypt your log files before writing them to disk. (default to 'null')
    # @option opts [Integer] :file_max_bytes The maximum number of bytes for each uploaded file. A value of 0 can be used to indicate there is no limit on the size of uploaded files, otherwise the minimum value is 1048576 bytes (1 MiB). Note that Microsoft Azure Storage has [block size limits](https://learn.microsoft.com/en-us/rest/api/storageservices/put-block?tabs&#x3D;microsoft-entra-id#remarks).
    # @return [Array<(LoggingAzureblobResponse, Integer, Hash)>] LoggingAzureblobResponse data, response status code and response headers
    def update_log_azure_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingAzureblobApi.update_log_azure ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      logging_azureblob_name = opts[:'logging_azureblob_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingAzureblobApi.update_log_azure"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingAzureblobApi.update_log_azure"
      end
      # verify the required parameter 'logging_azureblob_name' is set
      if @api_client.config.client_side_validation && logging_azureblob_name.nil?
        fail ArgumentError, "Missing the required parameter 'logging_azureblob_name' when calling LoggingAzureblobApi.update_log_azure"
      end
      allowable_values = ["none", "null"]
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
      if @api_client.config.client_side_validation && !opts[:'file_max_bytes'].nil? && opts[:'file_max_bytes'] < 1048576
        fail ArgumentError, 'invalid value for "opts[:"file_max_bytes"]" when calling LoggingAzureblobApi.update_log_azure, must be greater than or equal to 1048576.'
      end

      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/azureblob/{logging_azureblob_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'logging_azureblob_name' + '}', CGI.escape(logging_azureblob_name.to_s))

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
      form_params['path'] = opts[:'path'] if !opts[:'path'].nil?
      form_params['account_name'] = opts[:'account_name'] if !opts[:'account_name'].nil?
      form_params['container'] = opts[:'container'] if !opts[:'container'].nil?
      form_params['sas_token'] = opts[:'sas_token'] if !opts[:'sas_token'].nil?
      form_params['public_key'] = opts[:'public_key'] if !opts[:'public_key'].nil?
      form_params['file_max_bytes'] = opts[:'file_max_bytes'] if !opts[:'file_max_bytes'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LoggingAzureblobResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingAzureblobApi.update_log_azure",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingAzureblobApi#update_log_azure\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
