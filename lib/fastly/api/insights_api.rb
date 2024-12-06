=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class InsightsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve log insights
    # Retrieves statistics from sampled log records.
    # @option opts [String] :visualization  (required)
    # @option opts [String] :service_id  (required)
    # @option opts [String] :start  (required)
    # @option opts [String] :_end  (required)
    # @option opts [String] :pops 
    # @option opts [String] :domain 
    # @option opts [Boolean] :domain_exact_match 
    # @option opts [Float] :limit 
    # @return [GetLogInsightsResponse]
    def get_log_insights(opts = {})
      data, _status_code, _headers = get_log_insights_with_http_info(opts)
      data
    end

    # Retrieve log insights
    # Retrieves statistics from sampled log records.
    # @option opts [String] :visualization  (required)
    # @option opts [String] :service_id  (required)
    # @option opts [String] :start  (required)
    # @option opts [String] :_end  (required)
    # @option opts [String] :pops 
    # @option opts [String] :domain 
    # @option opts [Boolean] :domain_exact_match 
    # @option opts [Float] :limit 
    # @return [Array<(GetLogInsightsResponse, Integer, Hash)>] GetLogInsightsResponse data, response status code and response headers
    def get_log_insights_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InsightsApi.get_log_insights ...'
      end
      # unbox the parameters from the hash
      visualization = opts[:'visualization']
      service_id = opts[:'service_id']
      start = opts[:'start']
      _end = opts[:'_end']
      # verify the required parameter 'visualization' is set
      if @api_client.config.client_side_validation && visualization.nil?
        fail ArgumentError, "Missing the required parameter 'visualization' when calling InsightsApi.get_log_insights"
      end
      # verify enum value
      allowable_values = ["top-url-by-bandwidth", "bottom-url-by-cache-hit-ratio", "top-url-by-cache-hit-ratio", "country-statistics", "top-url-by-duration-sum", "top-4xx-urls", "top-5xx-urls", "top-url-by-misses", "top-url-by-requests", "top-browser-by-requests", "top-content-type-by-requests", "top-device-by-requests", "top-os-by-requests", "response-status-codes", "top-503-responses"]
      if @api_client.config.client_side_validation && !allowable_values.include?(visualization)
        fail ArgumentError, "invalid value for \"visualization\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling InsightsApi.get_log_insights"
      end
      # verify the required parameter 'start' is set
      if @api_client.config.client_side_validation && start.nil?
        fail ArgumentError, "Missing the required parameter 'start' when calling InsightsApi.get_log_insights"
      end
      # verify the required parameter '_end' is set
      if @api_client.config.client_side_validation && _end.nil?
        fail ArgumentError, "Missing the required parameter '_end' when calling InsightsApi.get_log_insights"
      end
      # resource path
      local_var_path = '/observability/log-insights'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'visualization'] = visualization
      query_params[:'service_id'] = service_id
      query_params[:'start'] = start
      query_params[:'end'] = _end
      query_params[:'pops'] = opts[:'pops'] if !opts[:'pops'].nil?
      query_params[:'domain'] = opts[:'domain'] if !opts[:'domain'].nil?
      query_params[:'domain_exact_match'] = opts[:'domain_exact_match'] if !opts[:'domain_exact_match'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetLogInsightsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"InsightsApi.get_log_insights",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InsightsApi#get_log_insights\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
