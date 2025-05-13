=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class ObservabilityTimeseriesForLogsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve log data as time series
    # Retrieves log data as time series.
    # @option opts [String] :source  (required)
    # @option opts [String] :service_id  (required)
    # @option opts [String] :start  (required)
    # @option opts [String] :_end  (required)
    # @option opts [String] :granularity  (required)
    # @option opts [String] :series  (required)
    # @option opts [String] :filter 
    # @return [LogTimeseriesGetResponse]
    def log_timeseries_get(opts = {})
      data, _status_code, _headers = log_timeseries_get_with_http_info(opts)
      data
    end

    # Retrieve log data as time series
    # Retrieves log data as time series.
    # @option opts [String] :source  (required)
    # @option opts [String] :service_id  (required)
    # @option opts [String] :start  (required)
    # @option opts [String] :_end  (required)
    # @option opts [String] :granularity  (required)
    # @option opts [String] :series  (required)
    # @option opts [String] :filter 
    # @return [Array<(LogTimeseriesGetResponse, Integer, Hash)>] LogTimeseriesGetResponse data, response status code and response headers
    def log_timeseries_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityTimeseriesForLogsApi.log_timeseries_get ...'
      end
      # unbox the parameters from the hash
      source = opts[:'source']
      service_id = opts[:'service_id']
      start = opts[:'start']
      _end = opts[:'_end']
      granularity = opts[:'granularity']
      series = opts[:'series']
      # verify the required parameter 'source' is set
      if @api_client.config.client_side_validation && source.nil?
        fail ArgumentError, "Missing the required parameter 'source' when calling ObservabilityTimeseriesForLogsApi.log_timeseries_get"
      end
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ObservabilityTimeseriesForLogsApi.log_timeseries_get"
      end
      # verify the required parameter 'start' is set
      if @api_client.config.client_side_validation && start.nil?
        fail ArgumentError, "Missing the required parameter 'start' when calling ObservabilityTimeseriesForLogsApi.log_timeseries_get"
      end
      # verify the required parameter '_end' is set
      if @api_client.config.client_side_validation && _end.nil?
        fail ArgumentError, "Missing the required parameter '_end' when calling ObservabilityTimeseriesForLogsApi.log_timeseries_get"
      end
      # verify the required parameter 'granularity' is set
      if @api_client.config.client_side_validation && granularity.nil?
        fail ArgumentError, "Missing the required parameter 'granularity' when calling ObservabilityTimeseriesForLogsApi.log_timeseries_get"
      end
      # verify enum value
      allowable_values = ["second", "minute", "hour", "day"]
      if @api_client.config.client_side_validation && !allowable_values.include?(granularity)
        fail ArgumentError, "invalid value for \"granularity\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'series' is set
      if @api_client.config.client_side_validation && series.nil?
        fail ArgumentError, "Missing the required parameter 'series' when calling ObservabilityTimeseriesForLogsApi.log_timeseries_get"
      end
      # resource path
      local_var_path = '/observability/timeseries'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'source'] = source
      query_params[:'service_id'] = service_id
      query_params[:'start'] = start
      query_params[:'end'] = _end
      query_params[:'granularity'] = granularity
      query_params[:'series'] = series
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LogTimeseriesGetResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ObservabilityTimeseriesForLogsApi.log_timeseries_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObservabilityTimeseriesForLogsApi#log_timeseries_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
