=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class OriginInspectorHistoricalApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get historical origin data for a service
    # Fetches historical origin metrics for a given Fastly service, optionally filtering and grouping the results by origin host, region, or POP. 
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :start A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided &#x60;downsample&#x60; value.
    # @option opts [String] :_end A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided &#x60;downsample&#x60; value.
    # @option opts [String] :downsample Duration of sample windows. (default to 'hour')
    # @option opts [String] :metric The metrics to retrieve. Multiple values should be comma-separated. (default to 'responses')
    # @option opts [String] :group_by Dimensions to return in the query. Multiple dimensions may be separated by commas. For example, &#x60;group_by&#x3D;host&#x60; will return one timeseries for every origin host, as a total across all POPs. 
    # @option opts [String] :limit Number of results per page. The maximum is 200. (default to '100')
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @option opts [String] :region Limit query to one or more specific geographic regions. Values should be comma-separated. 
    # @option opts [String] :datacenter Limit query to one or more specific POPs. Values should be comma-separated.
    # @option opts [String] :host Limit query to one or more specific origin hosts. Values should be comma-separated.
    # @return [HistoricalOriginsResponse]
    def get_origin_inspector_historical(opts = {})
      data, _status_code, _headers = get_origin_inspector_historical_with_http_info(opts)
      data
    end

    # Get historical origin data for a service
    # Fetches historical origin metrics for a given Fastly service, optionally filtering and grouping the results by origin host, region, or POP. 
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :start A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided &#x60;downsample&#x60; value.
    # @option opts [String] :_end A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided &#x60;downsample&#x60; value.
    # @option opts [String] :downsample Duration of sample windows. (default to 'hour')
    # @option opts [String] :metric The metrics to retrieve. Multiple values should be comma-separated. (default to 'responses')
    # @option opts [String] :group_by Dimensions to return in the query. Multiple dimensions may be separated by commas. For example, &#x60;group_by&#x3D;host&#x60; will return one timeseries for every origin host, as a total across all POPs. 
    # @option opts [String] :limit Number of results per page. The maximum is 200. (default to '100')
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @option opts [String] :region Limit query to one or more specific geographic regions. Values should be comma-separated. 
    # @option opts [String] :datacenter Limit query to one or more specific POPs. Values should be comma-separated.
    # @option opts [String] :host Limit query to one or more specific origin hosts. Values should be comma-separated.
    # @return [Array<(HistoricalOriginsResponse, Integer, Hash)>] HistoricalOriginsResponse data, response status code and response headers
    def get_origin_inspector_historical_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OriginInspectorHistoricalApi.get_origin_inspector_historical ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling OriginInspectorHistoricalApi.get_origin_inspector_historical"
      end
      allowable_values = ["hour", "minute", "day"]
      if @api_client.config.client_side_validation && opts[:'downsample'] && !allowable_values.include?(opts[:'downsample'])
        fail ArgumentError, "invalid value for \"downsample\", must be one of #{allowable_values}"
      end
      allowable_values = ["host", "datacenter", "region", "none"]
      if @api_client.config.client_side_validation && opts[:'group_by'] && !allowable_values.include?(opts[:'group_by'])
        fail ArgumentError, "invalid value for \"group_by\", must be one of #{allowable_values}"
      end
      allowable_values = ["usa", "europe", "asia", "asia_india", "asia_southkorea", "africa_std", "southamerica_std"]
      if @api_client.config.client_side_validation && opts[:'region'] && !allowable_values.include?(opts[:'region'])
        fail ArgumentError, "invalid value for \"region\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/metrics/origins/services/{service_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'start'] = opts[:'start'] if !opts[:'start'].nil?
      query_params[:'end'] = opts[:'_end'] if !opts[:'_end'].nil?
      query_params[:'downsample'] = opts[:'downsample'] if !opts[:'downsample'].nil?
      query_params[:'metric'] = opts[:'metric'] if !opts[:'metric'].nil?
      query_params[:'group_by'] = opts[:'group_by'] if !opts[:'group_by'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'region'] = opts[:'region'] if !opts[:'region'].nil?
      query_params[:'datacenter'] = opts[:'datacenter'] if !opts[:'datacenter'].nil?
      query_params[:'host'] = opts[:'host'] if !opts[:'host'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'HistoricalOriginsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"OriginInspectorHistoricalApi.get_origin_inspector_historical",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OriginInspectorHistoricalApi#get_origin_inspector_historical\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
