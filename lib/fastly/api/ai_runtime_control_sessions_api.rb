=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class AiRuntimeControlSessionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get session logs
    # Returns session logs, including request and response data and metadata, for debugging and audit purposes.
    # @option opts [String] :key Filter results to a specific virtual key ID.
    # @option opts [String] :provider Filter results by AI provider connection ID.
    # @option opts [String] :model Filter results by AI model identifier.
    # @option opts [Time] :from The start of the time range, in RFC 3339 format.
    # @option opts [Time] :to The end of the time range, in RFC 3339 format. Defaults to &#x60;now&#x60;.
    # @option opts [String] :cursor Cursor for pagination. Use the &#x60;next_cursor&#x60; value from a previous response to request the next page of results, or the &#x60;prev_cursor&#x60; value to request the previous page. 
    # @option opts [Integer] :limit Limit how many results are returned. (default to 100)
    # @option opts [String] :sort Sort field. Prefix with &#x60;-&#x60; for descending order (e.g., &#x60;sort&#x3D;-created_at&#x60;).  (default to 'created_at')
    # @return [ArcSessionsResponse]
    def arc_get_session_logs(opts = {})
      data, _status_code, _headers = arc_get_session_logs_with_http_info(opts)
      data
    end

    # Get session logs
    # Returns session logs, including request and response data and metadata, for debugging and audit purposes.
    # @option opts [String] :key Filter results to a specific virtual key ID.
    # @option opts [String] :provider Filter results by AI provider connection ID.
    # @option opts [String] :model Filter results by AI model identifier.
    # @option opts [Time] :from The start of the time range, in RFC 3339 format.
    # @option opts [Time] :to The end of the time range, in RFC 3339 format. Defaults to &#x60;now&#x60;.
    # @option opts [String] :cursor Cursor for pagination. Use the &#x60;next_cursor&#x60; value from a previous response to request the next page of results, or the &#x60;prev_cursor&#x60; value to request the previous page. 
    # @option opts [Integer] :limit Limit how many results are returned. (default to 100)
    # @option opts [String] :sort Sort field. Prefix with &#x60;-&#x60; for descending order (e.g., &#x60;sort&#x3D;-created_at&#x60;).  (default to 'created_at')
    # @return [Array<(ArcSessionsResponse, Integer, Hash)>] ArcSessionsResponse data, response status code and response headers
    def arc_get_session_logs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AiRuntimeControlSessionsApi.arc_get_session_logs ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling AiRuntimeControlSessionsApi.arc_get_session_logs, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling AiRuntimeControlSessionsApi.arc_get_session_logs, must be greater than or equal to 1.'
      end

      allowable_values = ["created_at", "-created_at"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/ai-runtime-control/v1/sessions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'key'] = opts[:'key'] if !opts[:'key'].nil?
      query_params[:'provider'] = opts[:'provider'] if !opts[:'provider'].nil?
      query_params[:'model'] = opts[:'model'] if !opts[:'model'].nil?
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ArcSessionsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AiRuntimeControlSessionsApi.arc_get_session_logs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AiRuntimeControlSessionsApi#arc_get_session_logs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
