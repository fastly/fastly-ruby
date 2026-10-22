=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class AiRuntimeControlUsageMetricsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Export usage metrics
    # Returns usage metrics for AI Runtime Control requests. Accepts the same filter parameters as [get usage metrics](#arc-get-usage-metrics), except `sort` and `granularity`, which aren't supported here.  Set the `Accept` header to `text/csv` to receive a CSV file download instead of a JSON response. In the CSV output, the column named `time` corresponds to the `date` field in the JSON response. 
    # @option opts [String] :key Filter results to a specific virtual key ID.
    # @option opts [String] :provider Filter results by AI provider connection ID.
    # @option opts [String] :model Filter results by AI model identifier.
    # @option opts [Time] :from The start of the time range, in RFC 3339 format.
    # @option opts [Time] :to The end of the time range, in RFC 3339 format. Defaults to now.
    # @return [ArcUsageMetricsResponse]
    def arc_export_usage_metrics(opts = {})
      data, _status_code, _headers = arc_export_usage_metrics_with_http_info(opts)
      data
    end

    # Export usage metrics
    # Returns usage metrics for AI Runtime Control requests. Accepts the same filter parameters as [get usage metrics](#arc-get-usage-metrics), except &#x60;sort&#x60; and &#x60;granularity&#x60;, which aren&#39;t supported here.  Set the &#x60;Accept&#x60; header to &#x60;text/csv&#x60; to receive a CSV file download instead of a JSON response. In the CSV output, the column named &#x60;time&#x60; corresponds to the &#x60;date&#x60; field in the JSON response. 
    # @option opts [String] :key Filter results to a specific virtual key ID.
    # @option opts [String] :provider Filter results by AI provider connection ID.
    # @option opts [String] :model Filter results by AI model identifier.
    # @option opts [Time] :from The start of the time range, in RFC 3339 format.
    # @option opts [Time] :to The end of the time range, in RFC 3339 format. Defaults to now.
    # @return [Array<(ArcUsageMetricsResponse, Integer, Hash)>] ArcUsageMetricsResponse data, response status code and response headers
    def arc_export_usage_metrics_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AiRuntimeControlUsageMetricsApi.arc_export_usage_metrics ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/ai-runtime-control/v1/usage-metrics/export'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'key'] = opts[:'key'] if !opts[:'key'].nil?
      query_params[:'provider'] = opts[:'provider'] if !opts[:'provider'].nil?
      query_params[:'model'] = opts[:'model'] if !opts[:'model'].nil?
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/csv', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ArcUsageMetricsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AiRuntimeControlUsageMetricsApi.arc_export_usage_metrics",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AiRuntimeControlUsageMetricsApi#arc_export_usage_metrics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get usage metrics
    # Returns usage metrics for AI Runtime Control requests, including request counts, session counts, input token counts, and output token counts.
    # @option opts [String] :key Filter results to a specific virtual key ID.
    # @option opts [String] :provider Filter results by AI provider connection ID.
    # @option opts [String] :model Filter results by AI model identifier.
    # @option opts [Time] :from The start of the time range, in RFC 3339 format.
    # @option opts [Time] :to The end of the time range, in RFC 3339 format. Defaults to now.
    # @option opts [String] :granularity The time granularity to aggregate usage by. (default to 'daily')
    # @option opts [String] :sort Sort field. Prefix with &#x60;-&#x60; for descending order (e.g., &#x60;sort&#x3D;-date&#x60;).  (default to 'date')
    # @return [ArcUsageMetricsResponse]
    def arc_get_usage_metrics(opts = {})
      data, _status_code, _headers = arc_get_usage_metrics_with_http_info(opts)
      data
    end

    # Get usage metrics
    # Returns usage metrics for AI Runtime Control requests, including request counts, session counts, input token counts, and output token counts.
    # @option opts [String] :key Filter results to a specific virtual key ID.
    # @option opts [String] :provider Filter results by AI provider connection ID.
    # @option opts [String] :model Filter results by AI model identifier.
    # @option opts [Time] :from The start of the time range, in RFC 3339 format.
    # @option opts [Time] :to The end of the time range, in RFC 3339 format. Defaults to now.
    # @option opts [String] :granularity The time granularity to aggregate usage by. (default to 'daily')
    # @option opts [String] :sort Sort field. Prefix with &#x60;-&#x60; for descending order (e.g., &#x60;sort&#x3D;-date&#x60;).  (default to 'date')
    # @return [Array<(ArcUsageMetricsResponse, Integer, Hash)>] ArcUsageMetricsResponse data, response status code and response headers
    def arc_get_usage_metrics_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AiRuntimeControlUsageMetricsApi.arc_get_usage_metrics ...'
      end
      # unbox the parameters from the hash
      allowable_values = ["daily", "hourly"]
      if @api_client.config.client_side_validation && opts[:'granularity'] && !allowable_values.include?(opts[:'granularity'])
        fail ArgumentError, "invalid value for \"granularity\", must be one of #{allowable_values}"
      end
      allowable_values = ["date", "-date"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/ai-runtime-control/v1/usage-metrics'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'key'] = opts[:'key'] if !opts[:'key'].nil?
      query_params[:'provider'] = opts[:'provider'] if !opts[:'provider'].nil?
      query_params[:'model'] = opts[:'model'] if !opts[:'model'].nil?
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'granularity'] = opts[:'granularity'] if !opts[:'granularity'].nil?
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
      return_type = opts[:debug_return_type] || 'ArcUsageMetricsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AiRuntimeControlUsageMetricsApi.arc_get_usage_metrics",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AiRuntimeControlUsageMetricsApi#arc_get_usage_metrics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
