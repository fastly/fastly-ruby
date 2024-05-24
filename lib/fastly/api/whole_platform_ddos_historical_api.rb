=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class WholePlatformDdosHistoricalApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get historical DDoS metrics for the entire Fastly platform
    # Fetches historical DDoS metrics for the entire Fastly platform.
    # @option opts [String] :start A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided &#x60;downsample&#x60; value.
    # @option opts [String] :_end A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided &#x60;downsample&#x60; value.
    # @option opts [String] :downsample Duration of sample windows. (default to 'hour')
    # @return [PlatformDdosResponse]
    def get_platform_ddos_historical(opts = {})
      data, _status_code, _headers = get_platform_ddos_historical_with_http_info(opts)
      data
    end

    # Get historical DDoS metrics for the entire Fastly platform
    # Fetches historical DDoS metrics for the entire Fastly platform.
    # @option opts [String] :start A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the inclusive start of the query time range. If not provided, a default is chosen based on the provided &#x60;downsample&#x60; value.
    # @option opts [String] :_end A valid ISO-8601-formatted date and time, or UNIX timestamp, indicating the exclusive end of the query time range. If not provided, a default is chosen based on the provided &#x60;downsample&#x60; value.
    # @option opts [String] :downsample Duration of sample windows. (default to 'hour')
    # @return [Array<(PlatformDdosResponse, Integer, Hash)>] PlatformDdosResponse data, response status code and response headers
    def get_platform_ddos_historical_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WholePlatformDdosHistoricalApi.get_platform_ddos_historical ...'
      end
      # unbox the parameters from the hash
      allowable_values = ["hour", "day"]
      if @api_client.config.client_side_validation && opts[:'downsample'] && !allowable_values.include?(opts[:'downsample'])
        fail ArgumentError, "invalid value for \"downsample\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/metrics/platform/ddos'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'start'] = opts[:'start'] if !opts[:'start'].nil?
      query_params[:'end'] = opts[:'_end'] if !opts[:'_end'].nil?
      query_params[:'downsample'] = opts[:'downsample'] if !opts[:'downsample'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PlatformDdosResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WholePlatformDdosHistoricalApi.get_platform_ddos_historical",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WholePlatformDdosHistoricalApi#get_platform_ddos_historical\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
