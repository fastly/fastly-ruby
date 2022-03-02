=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0


=end

require 'cgi'

module Fastly
  class StatsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get stats for a service
    # Get the stats from a service for a block of time. This lists all stats by PoP location, starting with AMS. This call requires parameters to select block of time to query. Use either a timestamp range (using start_time and end_time) or a specified month/year combo (using month and year).
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :month 2-digit month.
    # @option opts [String] :year 4-digit year.
    # @option opts [Integer] :start_time Epoch timestamp. Limits the results returned.
    # @option opts [Integer] :end_time Epoch timestamp. Limits the results returned.
    # @return [Stats]
    def get_service_stats(opts = {})
      data, _status_code, _headers = get_service_stats_with_http_info(opts)
      data
    end

    # Get stats for a service
    # Get the stats from a service for a block of time. This lists all stats by PoP location, starting with AMS. This call requires parameters to select block of time to query. Use either a timestamp range (using start_time and end_time) or a specified month/year combo (using month and year).
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :month 2-digit month.
    # @option opts [String] :year 4-digit year.
    # @option opts [Integer] :start_time Epoch timestamp. Limits the results returned.
    # @option opts [Integer] :end_time Epoch timestamp. Limits the results returned.
    # @return [Array<(Stats, Integer, Hash)>] Stats data, response status code and response headers
    def get_service_stats_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatsApi.get_service_stats ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling StatsApi.get_service_stats"
      end
      # resource path
      local_var_path = '/service/{service_id}/stats/summary'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'month'] = opts[:'month'] if !opts[:'month'].nil?
      query_params[:'year'] = opts[:'year'] if !opts[:'year'].nil?
      query_params[:'start_time'] = opts[:'start_time'] if !opts[:'start_time'].nil?
      query_params[:'end_time'] = opts[:'end_time'] if !opts[:'end_time'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Stats'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"StatsApi.get_service_stats",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatsApi#get_service_stats\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
