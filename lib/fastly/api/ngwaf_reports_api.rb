=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class NgwafReportsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get attacks report
    # Get attacks report
    # @option opts [Time] :from The start of a time range in RFC 3339 format. (required)
    # @option opts [Time] :to The end of a time range in RFC 3339 format. Defaults to the current time.
    # @return [ListAttackReport]
    def get_attacks_report(opts = {})
      data, _status_code, _headers = get_attacks_report_with_http_info(opts)
      data
    end

    # Get attacks report
    # Get attacks report
    # @option opts [Time] :from The start of a time range in RFC 3339 format. (required)
    # @option opts [Time] :to The end of a time range in RFC 3339 format. Defaults to the current time.
    # @return [Array<(ListAttackReport, Integer, Hash)>] ListAttackReport data, response status code and response headers
    def get_attacks_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NgwafReportsApi.get_attacks_report ...'
      end
      # unbox the parameters from the hash
      from = opts[:'from']
      # verify the required parameter 'from' is set
      if @api_client.config.client_side_validation && from.nil?
        fail ArgumentError, "Missing the required parameter 'from' when calling NgwafReportsApi.get_attacks_report"
      end
      # resource path
      local_var_path = '/ngwaf/v1/reports/attacks'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = from
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListAttackReport'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"NgwafReportsApi.get_attacks_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NgwafReportsApi#get_attacks_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get signals report
    # Get signals report
    # @option opts [Time] :from The start of a time range in RFC 3339 format. (required)
    # @option opts [Time] :to The end of a time range in RFC 3339 format. Defaults to the current time.
    # @option opts [String] :signal_type The type of signal
    # @return [ListSignalReport]
    def get_signals_report(opts = {})
      data, _status_code, _headers = get_signals_report_with_http_info(opts)
      data
    end

    # Get signals report
    # Get signals report
    # @option opts [Time] :from The start of a time range in RFC 3339 format. (required)
    # @option opts [Time] :to The end of a time range in RFC 3339 format. Defaults to the current time.
    # @option opts [String] :signal_type The type of signal
    # @return [Array<(ListSignalReport, Integer, Hash)>] ListSignalReport data, response status code and response headers
    def get_signals_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NgwafReportsApi.get_signals_report ...'
      end
      # unbox the parameters from the hash
      from = opts[:'from']
      # verify the required parameter 'from' is set
      if @api_client.config.client_side_validation && from.nil?
        fail ArgumentError, "Missing the required parameter 'from' when calling NgwafReportsApi.get_signals_report"
      end
      allowable_values = ["account", "anomaly", "attack", "bot", "all"]
      if @api_client.config.client_side_validation && opts[:'signal_type'] && !allowable_values.include?(opts[:'signal_type'])
        fail ArgumentError, "invalid value for \"signal_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/ngwaf/v1/reports/signals'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = from
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'signal_type'] = opts[:'signal_type'] if !opts[:'signal_type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListSignalReport'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"NgwafReportsApi.get_signals_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NgwafReportsApi#get_signals_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
