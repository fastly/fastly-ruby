=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class RateLimiterApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a rate limiter
    # Create a rate limiter for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :name A human readable name for the rate limiting rule.
    # @option opts [String] :uri_dictionary_name The name of an Edge Dictionary containing URIs as keys. If not defined or &#x60;null&#x60;, all origin URIs will be rate limited.
    # @option opts [Array<String>] :http_methods Array of HTTP methods to apply rate limiting to.
    # @option opts [Integer] :rps_limit Upper limit of requests per second allowed by the rate limiter.
    # @option opts [Integer] :window_size Number of seconds during which the RPS limit must be exceeded in order to trigger a violation.
    # @option opts [Array<String>] :client_key Array of VCL variables used to generate a counter key to identify a client. Example variables include &#x60;req.http.Fastly-Client-IP&#x60;, &#x60;req.http.User-Agent&#x60;, or a custom header like &#x60;req.http.API-Key&#x60;.
    # @option opts [Integer] :penalty_box_duration Length of time in minutes that the rate limiter is in effect after the initial violation is detected.
    # @option opts [String] :action The action to take when a rate limiter violation is detected.
    # @option opts [String] :response_object_name Name of existing response object. Required if &#x60;action&#x60; is &#x60;response_object&#x60;. Note that the rate limiter response is only updated to reflect the response object content when saving the rate limiter configuration.
    # @option opts [String] :logger_type Name of the type of logging endpoint to be used when action is &#x60;log_only&#x60;. The logging endpoint type is used to determine the appropriate log format to use when emitting log entries.
    # @option opts [Integer] :feature_revision Revision number of the rate limiting feature implementation. Defaults to the most recent revision.
    # @return [RateLimiterResponse]
    def create_rate_limiter(opts = {})
      data, _status_code, _headers = create_rate_limiter_with_http_info(opts)
      data
    end

    # Create a rate limiter
    # Create a rate limiter for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :name A human readable name for the rate limiting rule.
    # @option opts [String] :uri_dictionary_name The name of an Edge Dictionary containing URIs as keys. If not defined or &#x60;null&#x60;, all origin URIs will be rate limited.
    # @option opts [Array<String>] :http_methods Array of HTTP methods to apply rate limiting to.
    # @option opts [Integer] :rps_limit Upper limit of requests per second allowed by the rate limiter.
    # @option opts [Integer] :window_size Number of seconds during which the RPS limit must be exceeded in order to trigger a violation.
    # @option opts [Array<String>] :client_key Array of VCL variables used to generate a counter key to identify a client. Example variables include &#x60;req.http.Fastly-Client-IP&#x60;, &#x60;req.http.User-Agent&#x60;, or a custom header like &#x60;req.http.API-Key&#x60;.
    # @option opts [Integer] :penalty_box_duration Length of time in minutes that the rate limiter is in effect after the initial violation is detected.
    # @option opts [String] :action The action to take when a rate limiter violation is detected.
    # @option opts [String] :response_object_name Name of existing response object. Required if &#x60;action&#x60; is &#x60;response_object&#x60;. Note that the rate limiter response is only updated to reflect the response object content when saving the rate limiter configuration.
    # @option opts [String] :logger_type Name of the type of logging endpoint to be used when action is &#x60;log_only&#x60;. The logging endpoint type is used to determine the appropriate log format to use when emitting log entries.
    # @option opts [Integer] :feature_revision Revision number of the rate limiting feature implementation. Defaults to the most recent revision.
    # @return [Array<(RateLimiterResponse, Integer, Hash)>] RateLimiterResponse data, response status code and response headers
    def create_rate_limiter_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RateLimiterApi.create_rate_limiter ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling RateLimiterApi.create_rate_limiter"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling RateLimiterApi.create_rate_limiter"
      end
      if @api_client.config.client_side_validation && !opts[:'name'].nil? && opts[:'name'].to_s.length > 255
        fail ArgumentError, 'invalid value for "opts[:"name"]" when calling RateLimiterApi.create_rate_limiter, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && !opts[:'name'].nil? && opts[:'name'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"name"]" when calling RateLimiterApi.create_rate_limiter, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'uri_dictionary_name'].nil? && opts[:'uri_dictionary_name'].to_s.length > 255
        fail ArgumentError, 'invalid value for "opts[:"uri_dictionary_name"]" when calling RateLimiterApi.create_rate_limiter, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && !opts[:'uri_dictionary_name'].nil? && opts[:'uri_dictionary_name'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"uri_dictionary_name"]" when calling RateLimiterApi.create_rate_limiter, the character length must be great than or equal to 1.'
      end

      allowable_values = ["HEAD", "OPTIONS", "GET", "POST", "PUT", "PATCH", "DELETE", "TRACE"]
      if @api_client.config.client_side_validation && opts[:'http_methods'] && !opts[:'http_methods'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"http_methods\", must include one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'http_methods'].nil? && opts[:'http_methods'].length < 1
        fail ArgumentError, 'invalid value for "opts[:"http_methods"]" when calling RateLimiterApi.create_rate_limiter, number of items must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'rps_limit'].nil? && opts[:'rps_limit'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"rps_limit"]" when calling RateLimiterApi.create_rate_limiter, must be smaller than or equal to 10000.'
      end

      if @api_client.config.client_side_validation && !opts[:'rps_limit'].nil? && opts[:'rps_limit'] < 10
        fail ArgumentError, 'invalid value for "opts[:"rps_limit"]" when calling RateLimiterApi.create_rate_limiter, must be greater than or equal to 10.'
      end

      allowable_values = [1, 10, 60]
      if @api_client.config.client_side_validation && opts[:'window_size'] && !allowable_values.include?(opts[:'window_size'])
        fail ArgumentError, "invalid value for \"window_size\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'client_key'].nil? && opts[:'client_key'].length < 1
        fail ArgumentError, 'invalid value for "opts[:"client_key"]" when calling RateLimiterApi.create_rate_limiter, number of items must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'penalty_box_duration'].nil? && opts[:'penalty_box_duration'] > 60
        fail ArgumentError, 'invalid value for "opts[:"penalty_box_duration"]" when calling RateLimiterApi.create_rate_limiter, must be smaller than or equal to 60.'
      end

      if @api_client.config.client_side_validation && !opts[:'penalty_box_duration'].nil? && opts[:'penalty_box_duration'] < 1
        fail ArgumentError, 'invalid value for "opts[:"penalty_box_duration"]" when calling RateLimiterApi.create_rate_limiter, must be greater than or equal to 1.'
      end

      allowable_values = ["response", "response_object", "log_only"]
      if @api_client.config.client_side_validation && opts[:'action'] && !allowable_values.include?(opts[:'action'])
        fail ArgumentError, "invalid value for \"action\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'action'].nil? && opts[:'action'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"action"]" when calling RateLimiterApi.create_rate_limiter, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'response_object_name'].nil? && opts[:'response_object_name'].to_s.length > 255
        fail ArgumentError, 'invalid value for "opts[:"response_object_name"]" when calling RateLimiterApi.create_rate_limiter, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && !opts[:'response_object_name'].nil? && opts[:'response_object_name'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"response_object_name"]" when calling RateLimiterApi.create_rate_limiter, the character length must be great than or equal to 1.'
      end

      allowable_values = ["azureblob", "bigquery", "cloudfiles", "datadog", "digitalocean", "elasticsearch", "ftp", "gcs", "googleanalytics", "heroku", "honeycomb", "http", "https", "kafka", "kinesis", "logentries", "loggly", "logshuttle", "newrelic", "newrelicotlp", "openstack", "papertrail", "pubsub", "s3", "scalyr", "sftp", "splunk", "stackdriver", "sumologic", "syslog"]
      if @api_client.config.client_side_validation && opts[:'logger_type'] && !allowable_values.include?(opts[:'logger_type'])
        fail ArgumentError, "invalid value for \"logger_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/rate-limiters'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      form_params['uri_dictionary_name'] = opts[:'uri_dictionary_name'] if !opts[:'uri_dictionary_name'].nil?
      form_params['http_methods'] = @api_client.build_collection_param(opts[:'http_methods'], :csv) if !opts[:'http_methods'].nil?
      form_params['rps_limit'] = opts[:'rps_limit'] if !opts[:'rps_limit'].nil?
      form_params['window_size'] = opts[:'window_size'] if !opts[:'window_size'].nil?
      form_params['client_key'] = @api_client.build_collection_param(opts[:'client_key'], :csv) if !opts[:'client_key'].nil?
      form_params['penalty_box_duration'] = opts[:'penalty_box_duration'] if !opts[:'penalty_box_duration'].nil?
      form_params['action'] = opts[:'action'] if !opts[:'action'].nil?
      form_params['response_object_name'] = opts[:'response_object_name'] if !opts[:'response_object_name'].nil?
      form_params['logger_type'] = opts[:'logger_type'] if !opts[:'logger_type'].nil?
      form_params['feature_revision'] = opts[:'feature_revision'] if !opts[:'feature_revision'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'RateLimiterResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"RateLimiterApi.create_rate_limiter",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RateLimiterApi#create_rate_limiter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a rate limiter
    # Delete a rate limiter by its ID.
    # @option opts [String] :rate_limiter_id Alphanumeric string identifying the rate limiter. (required)
    # @return [InlineResponse200]
    def delete_rate_limiter(opts = {})
      data, _status_code, _headers = delete_rate_limiter_with_http_info(opts)
      data
    end

    # Delete a rate limiter
    # Delete a rate limiter by its ID.
    # @option opts [String] :rate_limiter_id Alphanumeric string identifying the rate limiter. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_rate_limiter_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RateLimiterApi.delete_rate_limiter ...'
      end
      # unbox the parameters from the hash
      rate_limiter_id = opts[:'rate_limiter_id']
      # verify the required parameter 'rate_limiter_id' is set
      if @api_client.config.client_side_validation && rate_limiter_id.nil?
        fail ArgumentError, "Missing the required parameter 'rate_limiter_id' when calling RateLimiterApi.delete_rate_limiter"
      end
      # resource path
      local_var_path = '/rate-limiters/{rate_limiter_id}'.sub('{' + 'rate_limiter_id' + '}', CGI.escape(rate_limiter_id.to_s))

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
        :operation => :"RateLimiterApi.delete_rate_limiter",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RateLimiterApi#delete_rate_limiter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a rate limiter
    # Get a rate limiter by its ID.
    # @option opts [String] :rate_limiter_id Alphanumeric string identifying the rate limiter. (required)
    # @return [RateLimiterResponse]
    def get_rate_limiter(opts = {})
      data, _status_code, _headers = get_rate_limiter_with_http_info(opts)
      data
    end

    # Get a rate limiter
    # Get a rate limiter by its ID.
    # @option opts [String] :rate_limiter_id Alphanumeric string identifying the rate limiter. (required)
    # @return [Array<(RateLimiterResponse, Integer, Hash)>] RateLimiterResponse data, response status code and response headers
    def get_rate_limiter_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RateLimiterApi.get_rate_limiter ...'
      end
      # unbox the parameters from the hash
      rate_limiter_id = opts[:'rate_limiter_id']
      # verify the required parameter 'rate_limiter_id' is set
      if @api_client.config.client_side_validation && rate_limiter_id.nil?
        fail ArgumentError, "Missing the required parameter 'rate_limiter_id' when calling RateLimiterApi.get_rate_limiter"
      end
      # resource path
      local_var_path = '/rate-limiters/{rate_limiter_id}'.sub('{' + 'rate_limiter_id' + '}', CGI.escape(rate_limiter_id.to_s))

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
      return_type = opts[:debug_return_type] || 'RateLimiterResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"RateLimiterApi.get_rate_limiter",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RateLimiterApi#get_rate_limiter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List rate limiters
    # List all rate limiters for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<RateLimiterResponse>]
    def list_rate_limiters(opts = {})
      data, _status_code, _headers = list_rate_limiters_with_http_info(opts)
      data
    end

    # List rate limiters
    # List all rate limiters for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(Array<RateLimiterResponse>, Integer, Hash)>] Array<RateLimiterResponse> data, response status code and response headers
    def list_rate_limiters_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RateLimiterApi.list_rate_limiters ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling RateLimiterApi.list_rate_limiters"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling RateLimiterApi.list_rate_limiters"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/rate-limiters'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<RateLimiterResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"RateLimiterApi.list_rate_limiters",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RateLimiterApi#list_rate_limiters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a rate limiter
    # Update a rate limiter by its ID.
    # @option opts [String] :rate_limiter_id Alphanumeric string identifying the rate limiter. (required)
    # @option opts [String] :name A human readable name for the rate limiting rule.
    # @option opts [String] :uri_dictionary_name The name of an Edge Dictionary containing URIs as keys. If not defined or &#x60;null&#x60;, all origin URIs will be rate limited.
    # @option opts [Array<String>] :http_methods Array of HTTP methods to apply rate limiting to.
    # @option opts [Integer] :rps_limit Upper limit of requests per second allowed by the rate limiter.
    # @option opts [Integer] :window_size Number of seconds during which the RPS limit must be exceeded in order to trigger a violation.
    # @option opts [Array<String>] :client_key Array of VCL variables used to generate a counter key to identify a client. Example variables include &#x60;req.http.Fastly-Client-IP&#x60;, &#x60;req.http.User-Agent&#x60;, or a custom header like &#x60;req.http.API-Key&#x60;.
    # @option opts [Integer] :penalty_box_duration Length of time in minutes that the rate limiter is in effect after the initial violation is detected.
    # @option opts [String] :action The action to take when a rate limiter violation is detected.
    # @option opts [String] :response_object_name Name of existing response object. Required if &#x60;action&#x60; is &#x60;response_object&#x60;. Note that the rate limiter response is only updated to reflect the response object content when saving the rate limiter configuration.
    # @option opts [String] :logger_type Name of the type of logging endpoint to be used when action is &#x60;log_only&#x60;. The logging endpoint type is used to determine the appropriate log format to use when emitting log entries.
    # @option opts [Integer] :feature_revision Revision number of the rate limiting feature implementation. Defaults to the most recent revision.
    # @return [RateLimiterResponse]
    def update_rate_limiter(opts = {})
      data, _status_code, _headers = update_rate_limiter_with_http_info(opts)
      data
    end

    # Update a rate limiter
    # Update a rate limiter by its ID.
    # @option opts [String] :rate_limiter_id Alphanumeric string identifying the rate limiter. (required)
    # @option opts [String] :name A human readable name for the rate limiting rule.
    # @option opts [String] :uri_dictionary_name The name of an Edge Dictionary containing URIs as keys. If not defined or &#x60;null&#x60;, all origin URIs will be rate limited.
    # @option opts [Array<String>] :http_methods Array of HTTP methods to apply rate limiting to.
    # @option opts [Integer] :rps_limit Upper limit of requests per second allowed by the rate limiter.
    # @option opts [Integer] :window_size Number of seconds during which the RPS limit must be exceeded in order to trigger a violation.
    # @option opts [Array<String>] :client_key Array of VCL variables used to generate a counter key to identify a client. Example variables include &#x60;req.http.Fastly-Client-IP&#x60;, &#x60;req.http.User-Agent&#x60;, or a custom header like &#x60;req.http.API-Key&#x60;.
    # @option opts [Integer] :penalty_box_duration Length of time in minutes that the rate limiter is in effect after the initial violation is detected.
    # @option opts [String] :action The action to take when a rate limiter violation is detected.
    # @option opts [String] :response_object_name Name of existing response object. Required if &#x60;action&#x60; is &#x60;response_object&#x60;. Note that the rate limiter response is only updated to reflect the response object content when saving the rate limiter configuration.
    # @option opts [String] :logger_type Name of the type of logging endpoint to be used when action is &#x60;log_only&#x60;. The logging endpoint type is used to determine the appropriate log format to use when emitting log entries.
    # @option opts [Integer] :feature_revision Revision number of the rate limiting feature implementation. Defaults to the most recent revision.
    # @return [Array<(RateLimiterResponse, Integer, Hash)>] RateLimiterResponse data, response status code and response headers
    def update_rate_limiter_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RateLimiterApi.update_rate_limiter ...'
      end
      # unbox the parameters from the hash
      rate_limiter_id = opts[:'rate_limiter_id']
      # verify the required parameter 'rate_limiter_id' is set
      if @api_client.config.client_side_validation && rate_limiter_id.nil?
        fail ArgumentError, "Missing the required parameter 'rate_limiter_id' when calling RateLimiterApi.update_rate_limiter"
      end
      if @api_client.config.client_side_validation && !opts[:'name'].nil? && opts[:'name'].to_s.length > 255
        fail ArgumentError, 'invalid value for "opts[:"name"]" when calling RateLimiterApi.update_rate_limiter, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && !opts[:'name'].nil? && opts[:'name'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"name"]" when calling RateLimiterApi.update_rate_limiter, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'uri_dictionary_name'].nil? && opts[:'uri_dictionary_name'].to_s.length > 255
        fail ArgumentError, 'invalid value for "opts[:"uri_dictionary_name"]" when calling RateLimiterApi.update_rate_limiter, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && !opts[:'uri_dictionary_name'].nil? && opts[:'uri_dictionary_name'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"uri_dictionary_name"]" when calling RateLimiterApi.update_rate_limiter, the character length must be great than or equal to 1.'
      end

      allowable_values = ["HEAD", "OPTIONS", "GET", "POST", "PUT", "PATCH", "DELETE", "TRACE"]
      if @api_client.config.client_side_validation && opts[:'http_methods'] && !opts[:'http_methods'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"http_methods\", must include one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'http_methods'].nil? && opts[:'http_methods'].length < 1
        fail ArgumentError, 'invalid value for "opts[:"http_methods"]" when calling RateLimiterApi.update_rate_limiter, number of items must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'rps_limit'].nil? && opts[:'rps_limit'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"rps_limit"]" when calling RateLimiterApi.update_rate_limiter, must be smaller than or equal to 10000.'
      end

      if @api_client.config.client_side_validation && !opts[:'rps_limit'].nil? && opts[:'rps_limit'] < 10
        fail ArgumentError, 'invalid value for "opts[:"rps_limit"]" when calling RateLimiterApi.update_rate_limiter, must be greater than or equal to 10.'
      end

      allowable_values = [1, 10, 60]
      if @api_client.config.client_side_validation && opts[:'window_size'] && !allowable_values.include?(opts[:'window_size'])
        fail ArgumentError, "invalid value for \"window_size\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'client_key'].nil? && opts[:'client_key'].length < 1
        fail ArgumentError, 'invalid value for "opts[:"client_key"]" when calling RateLimiterApi.update_rate_limiter, number of items must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'penalty_box_duration'].nil? && opts[:'penalty_box_duration'] > 60
        fail ArgumentError, 'invalid value for "opts[:"penalty_box_duration"]" when calling RateLimiterApi.update_rate_limiter, must be smaller than or equal to 60.'
      end

      if @api_client.config.client_side_validation && !opts[:'penalty_box_duration'].nil? && opts[:'penalty_box_duration'] < 1
        fail ArgumentError, 'invalid value for "opts[:"penalty_box_duration"]" when calling RateLimiterApi.update_rate_limiter, must be greater than or equal to 1.'
      end

      allowable_values = ["response", "response_object", "log_only"]
      if @api_client.config.client_side_validation && opts[:'action'] && !allowable_values.include?(opts[:'action'])
        fail ArgumentError, "invalid value for \"action\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'action'].nil? && opts[:'action'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"action"]" when calling RateLimiterApi.update_rate_limiter, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'response_object_name'].nil? && opts[:'response_object_name'].to_s.length > 255
        fail ArgumentError, 'invalid value for "opts[:"response_object_name"]" when calling RateLimiterApi.update_rate_limiter, the character length must be smaller than or equal to 255.'
      end

      if @api_client.config.client_side_validation && !opts[:'response_object_name'].nil? && opts[:'response_object_name'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"response_object_name"]" when calling RateLimiterApi.update_rate_limiter, the character length must be great than or equal to 1.'
      end

      allowable_values = ["azureblob", "bigquery", "cloudfiles", "datadog", "digitalocean", "elasticsearch", "ftp", "gcs", "googleanalytics", "heroku", "honeycomb", "http", "https", "kafka", "kinesis", "logentries", "loggly", "logshuttle", "newrelic", "newrelicotlp", "openstack", "papertrail", "pubsub", "s3", "scalyr", "sftp", "splunk", "stackdriver", "sumologic", "syslog"]
      if @api_client.config.client_side_validation && opts[:'logger_type'] && !allowable_values.include?(opts[:'logger_type'])
        fail ArgumentError, "invalid value for \"logger_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/rate-limiters/{rate_limiter_id}'.sub('{' + 'rate_limiter_id' + '}', CGI.escape(rate_limiter_id.to_s))

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
      form_params['uri_dictionary_name'] = opts[:'uri_dictionary_name'] if !opts[:'uri_dictionary_name'].nil?
      form_params['http_methods'] = @api_client.build_collection_param(opts[:'http_methods'], :csv) if !opts[:'http_methods'].nil?
      form_params['rps_limit'] = opts[:'rps_limit'] if !opts[:'rps_limit'].nil?
      form_params['window_size'] = opts[:'window_size'] if !opts[:'window_size'].nil?
      form_params['client_key'] = @api_client.build_collection_param(opts[:'client_key'], :csv) if !opts[:'client_key'].nil?
      form_params['penalty_box_duration'] = opts[:'penalty_box_duration'] if !opts[:'penalty_box_duration'].nil?
      form_params['action'] = opts[:'action'] if !opts[:'action'].nil?
      form_params['response_object_name'] = opts[:'response_object_name'] if !opts[:'response_object_name'].nil?
      form_params['logger_type'] = opts[:'logger_type'] if !opts[:'logger_type'].nil?
      form_params['feature_revision'] = opts[:'feature_revision'] if !opts[:'feature_revision'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'RateLimiterResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"RateLimiterApi.update_rate_limiter",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RateLimiterApi#update_rate_limiter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
