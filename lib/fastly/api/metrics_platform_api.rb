=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class MetricsPlatformApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get historical time series metrics for a single service
    # Fetches historical metrics for a single service for a given granularity.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :granularity Duration of sample windows. (required)
    # @option opts [String] :from A valid RFC-8339-formatted date and time indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided &#x60;granularity&#x60; value.
    # @option opts [String] :to A valid RFC-8339-formatted date and time indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided &#x60;granularity&#x60; value.
    # @option opts [String] :metric The metric(s) to retrieve. Multiple values should be comma-separated.
    # @option opts [String] :metric_set The metric set(s) to retrieve. Multiple values should be comma-separated.
    # @option opts [String] :group_by Field to group_by in the query. For example, &#x60;group_by&#x3D;region&#x60; will return entries for grouped by timestamp and region. 
    # @option opts [String] :region Limit query to one or more specific geographic regions. Values should be comma-separated. 
    # @option opts [String] :datacenter Limit query to one or more specific POPs. Values should be comma-separated.
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @option opts [String] :limit Number of results per page. The maximum is 10000. (default to '1000')
    # @return [PlatformMetricsResponse]
    def get_platform_metrics_service_historical(opts = {})
      data, _status_code, _headers = get_platform_metrics_service_historical_with_http_info(opts)
      data
    end

    # Get historical time series metrics for a single service
    # Fetches historical metrics for a single service for a given granularity.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :granularity Duration of sample windows. (required)
    # @option opts [String] :from A valid RFC-8339-formatted date and time indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided &#x60;granularity&#x60; value.
    # @option opts [String] :to A valid RFC-8339-formatted date and time indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided &#x60;granularity&#x60; value.
    # @option opts [String] :metric The metric(s) to retrieve. Multiple values should be comma-separated.
    # @option opts [String] :metric_set The metric set(s) to retrieve. Multiple values should be comma-separated.
    # @option opts [String] :group_by Field to group_by in the query. For example, &#x60;group_by&#x3D;region&#x60; will return entries for grouped by timestamp and region. 
    # @option opts [String] :region Limit query to one or more specific geographic regions. Values should be comma-separated. 
    # @option opts [String] :datacenter Limit query to one or more specific POPs. Values should be comma-separated.
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @option opts [String] :limit Number of results per page. The maximum is 10000. (default to '1000')
    # @return [Array<(PlatformMetricsResponse, Integer, Hash)>] PlatformMetricsResponse data, response status code and response headers
    def get_platform_metrics_service_historical_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetricsPlatformApi.get_platform_metrics_service_historical ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      granularity = opts[:'granularity']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling MetricsPlatformApi.get_platform_metrics_service_historical"
      end
      # verify the required parameter 'granularity' is set
      if @api_client.config.client_side_validation && granularity.nil?
        fail ArgumentError, "Missing the required parameter 'granularity' when calling MetricsPlatformApi.get_platform_metrics_service_historical"
      end
      # verify enum value
      allowable_values = ["minutely", "hourly", "daily"]
      if @api_client.config.client_side_validation && !allowable_values.include?(granularity)
        fail ArgumentError, "invalid value for \"granularity\", must be one of #{allowable_values}"
      end
      allowable_values = ["ttfb"]
      if @api_client.config.client_side_validation && opts[:'metric_set'] && !allowable_values.include?(opts[:'metric_set'])
        fail ArgumentError, "invalid value for \"metric_set\", must be one of #{allowable_values}"
      end
      allowable_values = ["datacenter", "region"]
      if @api_client.config.client_side_validation && opts[:'group_by'] && !allowable_values.include?(opts[:'group_by'])
        fail ArgumentError, "invalid value for \"group_by\", must be one of #{allowable_values}"
      end
      allowable_values = ["africa_std", "anzac", "asia", "asia_india", "asia_southkorea", "europe", "mexico", "southamerica_std", "usa"]
      if @api_client.config.client_side_validation && opts[:'region'] && !allowable_values.include?(opts[:'region'])
        fail ArgumentError, "invalid value for \"region\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/metrics/platform/services/{service_id}/{granularity}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'granularity' + '}', CGI.escape(granularity.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'metric'] = opts[:'metric'] if !opts[:'metric'].nil?
      query_params[:'metric_set'] = opts[:'metric_set'] if !opts[:'metric_set'].nil?
      query_params[:'group_by'] = opts[:'group_by'] if !opts[:'group_by'].nil?
      query_params[:'region'] = opts[:'region'] if !opts[:'region'].nil?
      query_params[:'datacenter'] = opts[:'datacenter'] if !opts[:'datacenter'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
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
      return_type = opts[:debug_return_type] || 'PlatformMetricsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"MetricsPlatformApi.get_platform_metrics_service_historical",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetricsPlatformApi#get_platform_metrics_service_historical\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
