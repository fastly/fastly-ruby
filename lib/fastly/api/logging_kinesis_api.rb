=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class LoggingKinesisApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create  an Amazon Kinesis log endpoint
    # Create an Amazon Kinesis Data Streams logging object for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :name The name for the real-time logging configuration.
    # @option opts [LoggingPlacement] :placement 
    # @option opts [LoggingFormatVersion] :format_version  (default to 2)
    # @option opts [String] :format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Kinesis can ingest. (default to '{\"timestamp\":\"%{begin:%Y-%m-%dT%H:%M:%S}t\",\"time_elapsed\":\"%{time.elapsed.usec}V\",\"is_tls\":\"%{if(req.is_ssl, \\\"true\\\", \\\"false\\\")}V\",\"client_ip\":\"%{req.http.Fastly-Client-IP}V\",\"geo_city\":\"%{client.geo.city}V\",\"geo_country_code\":\"%{client.geo.country_code}V\",\"request\":\"%{req.request}V\",\"host\":\"%{req.http.Fastly-Orig-Host}V\",\"url\":\"%{json.escape(req.url)}V\",\"request_referer\":\"%{json.escape(req.http.Referer)}V\",\"request_user_agent\":\"%{json.escape(req.http.User-Agent)}V\",\"request_accept_language\":\"%{json.escape(req.http.Accept-Language)}V\",\"request_accept_charset\":\"%{json.escape(req.http.Accept-Charset)}V\",\"cache_status\":\"%{regsub(fastly_info.state, \\\"^(HIT-(SYNTH)|(HITPASS|HIT|MISS|PASS|ERROR|PIPE)).*\\\", \\\"\\\\2\\\\3\\\") }V\"}')
    # @option opts [String] :topic The Amazon Kinesis stream to send logs to. Required.
    # @option opts [AwsRegion] :region 
    # @option opts [String] :secret_key The secret key associated with the target Amazon Kinesis stream. Not required if &#x60;iam_role&#x60; is specified.
    # @option opts [String] :access_key The access key associated with the target Amazon Kinesis stream. Not required if &#x60;iam_role&#x60; is specified.
    # @option opts [String] :iam_role The ARN for an IAM role granting Fastly access to the target Amazon Kinesis stream. Not required if &#x60;access_key&#x60; and &#x60;secret_key&#x60; are provided.
    # @return [LoggingKinesisResponse]
    def create_log_kinesis(opts = {})
      data, _status_code, _headers = create_log_kinesis_with_http_info(opts)
      data
    end

    # Create  an Amazon Kinesis log endpoint
    # Create an Amazon Kinesis Data Streams logging object for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :name The name for the real-time logging configuration.
    # @option opts [LoggingPlacement] :placement 
    # @option opts [LoggingFormatVersion] :format_version  (default to 2)
    # @option opts [String] :format A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Kinesis can ingest. (default to '{\"timestamp\":\"%{begin:%Y-%m-%dT%H:%M:%S}t\",\"time_elapsed\":\"%{time.elapsed.usec}V\",\"is_tls\":\"%{if(req.is_ssl, \\\"true\\\", \\\"false\\\")}V\",\"client_ip\":\"%{req.http.Fastly-Client-IP}V\",\"geo_city\":\"%{client.geo.city}V\",\"geo_country_code\":\"%{client.geo.country_code}V\",\"request\":\"%{req.request}V\",\"host\":\"%{req.http.Fastly-Orig-Host}V\",\"url\":\"%{json.escape(req.url)}V\",\"request_referer\":\"%{json.escape(req.http.Referer)}V\",\"request_user_agent\":\"%{json.escape(req.http.User-Agent)}V\",\"request_accept_language\":\"%{json.escape(req.http.Accept-Language)}V\",\"request_accept_charset\":\"%{json.escape(req.http.Accept-Charset)}V\",\"cache_status\":\"%{regsub(fastly_info.state, \\\"^(HIT-(SYNTH)|(HITPASS|HIT|MISS|PASS|ERROR|PIPE)).*\\\", \\\"\\\\2\\\\3\\\") }V\"}')
    # @option opts [String] :topic The Amazon Kinesis stream to send logs to. Required.
    # @option opts [AwsRegion] :region 
    # @option opts [String] :secret_key The secret key associated with the target Amazon Kinesis stream. Not required if &#x60;iam_role&#x60; is specified.
    # @option opts [String] :access_key The access key associated with the target Amazon Kinesis stream. Not required if &#x60;iam_role&#x60; is specified.
    # @option opts [String] :iam_role The ARN for an IAM role granting Fastly access to the target Amazon Kinesis stream. Not required if &#x60;access_key&#x60; and &#x60;secret_key&#x60; are provided.
    # @return [Array<(LoggingKinesisResponse, Integer, Hash)>] LoggingKinesisResponse data, response status code and response headers
    def create_log_kinesis_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingKinesisApi.create_log_kinesis ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingKinesisApi.create_log_kinesis"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingKinesisApi.create_log_kinesis"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/kinesis'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      form_params['format_version'] = opts[:'format_version'] if !opts[:'format_version'].nil?
      form_params['format'] = opts[:'format'] if !opts[:'format'].nil?
      form_params['topic'] = opts[:'topic'] if !opts[:'topic'].nil?
      form_params['region'] = opts[:'region'] if !opts[:'region'].nil?
      form_params['secret_key'] = opts[:'secret_key'] if !opts[:'secret_key'].nil?
      form_params['access_key'] = opts[:'access_key'] if !opts[:'access_key'].nil?
      form_params['iam_role'] = opts[:'iam_role'] if !opts[:'iam_role'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LoggingKinesisResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingKinesisApi.create_log_kinesis",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingKinesisApi#create_log_kinesis\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete the Amazon Kinesis log endpoint
    # Delete an Amazon Kinesis Data Streams logging object for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_kinesis_name The name for the real-time logging configuration. (required)
    # @return [InlineResponse200]
    def delete_log_kinesis(opts = {})
      data, _status_code, _headers = delete_log_kinesis_with_http_info(opts)
      data
    end

    # Delete the Amazon Kinesis log endpoint
    # Delete an Amazon Kinesis Data Streams logging object for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_kinesis_name The name for the real-time logging configuration. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_log_kinesis_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingKinesisApi.delete_log_kinesis ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      logging_kinesis_name = opts[:'logging_kinesis_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingKinesisApi.delete_log_kinesis"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingKinesisApi.delete_log_kinesis"
      end
      # verify the required parameter 'logging_kinesis_name' is set
      if @api_client.config.client_side_validation && logging_kinesis_name.nil?
        fail ArgumentError, "Missing the required parameter 'logging_kinesis_name' when calling LoggingKinesisApi.delete_log_kinesis"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/kinesis/{logging_kinesis_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'logging_kinesis_name' + '}', CGI.escape(logging_kinesis_name.to_s))

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
        :operation => :"LoggingKinesisApi.delete_log_kinesis",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingKinesisApi#delete_log_kinesis\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an Amazon Kinesis log endpoint
    # Get the details for an Amazon Kinesis Data Streams logging object for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_kinesis_name The name for the real-time logging configuration. (required)
    # @return [LoggingKinesisResponse]
    def get_log_kinesis(opts = {})
      data, _status_code, _headers = get_log_kinesis_with_http_info(opts)
      data
    end

    # Get an Amazon Kinesis log endpoint
    # Get the details for an Amazon Kinesis Data Streams logging object for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_kinesis_name The name for the real-time logging configuration. (required)
    # @return [Array<(LoggingKinesisResponse, Integer, Hash)>] LoggingKinesisResponse data, response status code and response headers
    def get_log_kinesis_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingKinesisApi.get_log_kinesis ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      logging_kinesis_name = opts[:'logging_kinesis_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingKinesisApi.get_log_kinesis"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingKinesisApi.get_log_kinesis"
      end
      # verify the required parameter 'logging_kinesis_name' is set
      if @api_client.config.client_side_validation && logging_kinesis_name.nil?
        fail ArgumentError, "Missing the required parameter 'logging_kinesis_name' when calling LoggingKinesisApi.get_log_kinesis"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/kinesis/{logging_kinesis_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'logging_kinesis_name' + '}', CGI.escape(logging_kinesis_name.to_s))

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
      return_type = opts[:debug_return_type] || 'LoggingKinesisResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingKinesisApi.get_log_kinesis",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingKinesisApi#get_log_kinesis\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Amazon Kinesis log endpoints
    # List all of the Amazon Kinesis Data Streams logging objects for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<LoggingKinesisResponse>]
    def list_log_kinesis(opts = {})
      data, _status_code, _headers = list_log_kinesis_with_http_info(opts)
      data
    end

    # List Amazon Kinesis log endpoints
    # List all of the Amazon Kinesis Data Streams logging objects for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(Array<LoggingKinesisResponse>, Integer, Hash)>] Array<LoggingKinesisResponse> data, response status code and response headers
    def list_log_kinesis_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingKinesisApi.list_log_kinesis ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingKinesisApi.list_log_kinesis"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingKinesisApi.list_log_kinesis"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/kinesis'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<LoggingKinesisResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingKinesisApi.list_log_kinesis",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingKinesisApi#list_log_kinesis\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the Amazon Kinesis log endpoint
    # Update an Amazon Kinesis Data Streams logging object for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_kinesis_name The name for the real-time logging configuration. (required)
    # @return [LoggingKinesisResponse]
    def update_log_kinesis(opts = {})
      data, _status_code, _headers = update_log_kinesis_with_http_info(opts)
      data
    end

    # Update the Amazon Kinesis log endpoint
    # Update an Amazon Kinesis Data Streams logging object for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :logging_kinesis_name The name for the real-time logging configuration. (required)
    # @return [Array<(LoggingKinesisResponse, Integer, Hash)>] LoggingKinesisResponse data, response status code and response headers
    def update_log_kinesis_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoggingKinesisApi.update_log_kinesis ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      logging_kinesis_name = opts[:'logging_kinesis_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LoggingKinesisApi.update_log_kinesis"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LoggingKinesisApi.update_log_kinesis"
      end
      # verify the required parameter 'logging_kinesis_name' is set
      if @api_client.config.client_side_validation && logging_kinesis_name.nil?
        fail ArgumentError, "Missing the required parameter 'logging_kinesis_name' when calling LoggingKinesisApi.update_log_kinesis"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/logging/kinesis/{logging_kinesis_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'logging_kinesis_name' + '}', CGI.escape(logging_kinesis_name.to_s))

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

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LoggingKinesisResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LoggingKinesisApi.update_log_kinesis",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoggingKinesisApi#update_log_kinesis\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
