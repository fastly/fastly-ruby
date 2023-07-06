=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class OriginInspectorRealtimeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get real-time origin data for the last 120 seconds
    # Get data for the 120 seconds preceding the latest timestamp available for a service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [OriginInspector]
    def get_origin_inspector_last120_seconds(opts = {})
      data, _status_code, _headers = get_origin_inspector_last120_seconds_with_http_info(opts)
      data
    end

    # Get real-time origin data for the last 120 seconds
    # Get data for the 120 seconds preceding the latest timestamp available for a service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [Array<(OriginInspector, Integer, Hash)>] OriginInspector data, response status code and response headers
    def get_origin_inspector_last120_seconds_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OriginInspectorRealtimeApi.get_origin_inspector_last120_seconds ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling OriginInspectorRealtimeApi.get_origin_inspector_last120_seconds"
      end
      # resource path
      local_var_path = '/v1/origins/{service_id}/ts/h'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

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
      return_type = opts[:debug_return_type] || 'OriginInspector'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"OriginInspectorRealtimeApi.get_origin_inspector_last120_seconds",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OriginInspectorRealtimeApi#get_origin_inspector_last120_seconds\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a limited number of real-time origin data entries
    # Get data for the `max_entries` seconds preceding the latest timestamp available for a service, up to a maximum of 120 entries.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :max_entries Maximum number of results to display. (required)
    # @return [OriginInspector]
    def get_origin_inspector_last_max_entries(opts = {})
      data, _status_code, _headers = get_origin_inspector_last_max_entries_with_http_info(opts)
      data
    end

    # Get a limited number of real-time origin data entries
    # Get data for the &#x60;max_entries&#x60; seconds preceding the latest timestamp available for a service, up to a maximum of 120 entries.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :max_entries Maximum number of results to display. (required)
    # @return [Array<(OriginInspector, Integer, Hash)>] OriginInspector data, response status code and response headers
    def get_origin_inspector_last_max_entries_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OriginInspectorRealtimeApi.get_origin_inspector_last_max_entries ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      max_entries = opts[:'max_entries']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling OriginInspectorRealtimeApi.get_origin_inspector_last_max_entries"
      end
      # verify the required parameter 'max_entries' is set
      if @api_client.config.client_side_validation && max_entries.nil?
        fail ArgumentError, "Missing the required parameter 'max_entries' when calling OriginInspectorRealtimeApi.get_origin_inspector_last_max_entries"
      end
      # resource path
      local_var_path = '/v1/origins/{service_id}/ts/h/limit/{max_entries}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'max_entries' + '}', CGI.escape(max_entries.to_s))

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
      return_type = opts[:debug_return_type] || 'OriginInspector'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"OriginInspectorRealtimeApi.get_origin_inspector_last_max_entries",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OriginInspectorRealtimeApi#get_origin_inspector_last_max_entries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get real-time origin data from specific time.
    # Get real-time origin data for the specified reporting period. Specify `0` to get a single entry for the last complete second. The `Timestamp` field included in the response provides the time index of the latest entry in the dataset and can be provided as the `start_timestamp` of the next request for a seamless continuation of the dataset from one request to the next. Due to processing latency, the earliest entry in the response dataset may be earlier than `start_timestamp` by the value of `AggregateDelay`. 
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :start_timestamp Timestamp in seconds (Unix epoch time). (required)
    # @return [OriginInspector]
    def get_origin_inspector_last_second(opts = {})
      data, _status_code, _headers = get_origin_inspector_last_second_with_http_info(opts)
      data
    end

    # Get real-time origin data from specific time.
    # Get real-time origin data for the specified reporting period. Specify &#x60;0&#x60; to get a single entry for the last complete second. The &#x60;Timestamp&#x60; field included in the response provides the time index of the latest entry in the dataset and can be provided as the &#x60;start_timestamp&#x60; of the next request for a seamless continuation of the dataset from one request to the next. Due to processing latency, the earliest entry in the response dataset may be earlier than &#x60;start_timestamp&#x60; by the value of &#x60;AggregateDelay&#x60;. 
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :start_timestamp Timestamp in seconds (Unix epoch time). (required)
    # @return [Array<(OriginInspector, Integer, Hash)>] OriginInspector data, response status code and response headers
    def get_origin_inspector_last_second_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OriginInspectorRealtimeApi.get_origin_inspector_last_second ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      start_timestamp = opts[:'start_timestamp']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling OriginInspectorRealtimeApi.get_origin_inspector_last_second"
      end
      # verify the required parameter 'start_timestamp' is set
      if @api_client.config.client_side_validation && start_timestamp.nil?
        fail ArgumentError, "Missing the required parameter 'start_timestamp' when calling OriginInspectorRealtimeApi.get_origin_inspector_last_second"
      end
      # resource path
      local_var_path = '/v1/origins/{service_id}/ts/{start_timestamp}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'start_timestamp' + '}', CGI.escape(start_timestamp.to_s))

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
      return_type = opts[:debug_return_type] || 'OriginInspector'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"OriginInspectorRealtimeApi.get_origin_inspector_last_second",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OriginInspectorRealtimeApi#get_origin_inspector_last_second\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
