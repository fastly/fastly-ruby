=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class BillingUsageMetricsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve service-level usage metrics for services with non-zero usage units.
    # Returns product usage, broken down by service.
    # @option opts [String] :product_id The product identifier for the metrics returned (e.g., &#x60;cdn_usage&#x60;). This should be used along with &#x60;usage_type_name&#x60;.
    # @option opts [String] :service The service identifier for the metrics being requested.
    # @option opts [String] :usage_type_name The usage type name for the metrics returned (e.g., &#x60;North America Requests&#x60;). This should be used along with &#x60;product_id&#x60;.
    # @option opts [String] :start_month 
    # @option opts [String] :end_month 
    # @option opts [String] :limit Number of results per page. The maximum is 10000. (default to '1000')
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @return [Serviceusagemetrics]
    def get_service_level_usage(opts = {})
      data, _status_code, _headers = get_service_level_usage_with_http_info(opts)
      data
    end

    # Retrieve service-level usage metrics for services with non-zero usage units.
    # Returns product usage, broken down by service.
    # @option opts [String] :product_id The product identifier for the metrics returned (e.g., &#x60;cdn_usage&#x60;). This should be used along with &#x60;usage_type_name&#x60;.
    # @option opts [String] :service The service identifier for the metrics being requested.
    # @option opts [String] :usage_type_name The usage type name for the metrics returned (e.g., &#x60;North America Requests&#x60;). This should be used along with &#x60;product_id&#x60;.
    # @option opts [String] :start_month 
    # @option opts [String] :end_month 
    # @option opts [String] :limit Number of results per page. The maximum is 10000. (default to '1000')
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @return [Array<(Serviceusagemetrics, Integer, Hash)>] Serviceusagemetrics data, response status code and response headers
    def get_service_level_usage_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillingUsageMetricsApi.get_service_level_usage ...'
      end
      # unbox the parameters from the hash
      pattern = Regexp.new(/^[0-9]{4}-[0-9]{2}$/)
      if @api_client.config.client_side_validation && !opts[:'start_month'].nil? && opts[:'start_month'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"start_month\"]' when calling BillingUsageMetricsApi.get_service_level_usage, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/^[0-9]{4}-[0-9]{2}$/)
      if @api_client.config.client_side_validation && !opts[:'end_month'].nil? && opts[:'end_month'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"end_month\"]' when calling BillingUsageMetricsApi.get_service_level_usage, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/billing/v3/service-usage-metrics'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'product_id'] = opts[:'product_id'] if !opts[:'product_id'].nil?
      query_params[:'service'] = opts[:'service'] if !opts[:'service'].nil?
      query_params[:'usage_type_name'] = opts[:'usage_type_name'] if !opts[:'usage_type_name'].nil?
      query_params[:'start_month'] = opts[:'start_month'] if !opts[:'start_month'].nil?
      query_params[:'end_month'] = opts[:'end_month'] if !opts[:'end_month'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Serviceusagemetrics'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BillingUsageMetricsApi.get_service_level_usage",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingUsageMetricsApi#get_service_level_usage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get monthly usage metrics
    # Returns monthly usage metrics for customer by product.
    # @option opts [String] :start_month  (required)
    # @option opts [String] :end_month  (required)
    # @return [Usagemetric]
    def get_usage_metrics(opts = {})
      data, _status_code, _headers = get_usage_metrics_with_http_info(opts)
      data
    end

    # Get monthly usage metrics
    # Returns monthly usage metrics for customer by product.
    # @option opts [String] :start_month  (required)
    # @option opts [String] :end_month  (required)
    # @return [Array<(Usagemetric, Integer, Hash)>] Usagemetric data, response status code and response headers
    def get_usage_metrics_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillingUsageMetricsApi.get_usage_metrics ...'
      end
      # unbox the parameters from the hash
      start_month = opts[:'start_month']
      end_month = opts[:'end_month']
      # verify the required parameter 'start_month' is set
      if @api_client.config.client_side_validation && start_month.nil?
        fail ArgumentError, "Missing the required parameter 'start_month' when calling BillingUsageMetricsApi.get_usage_metrics"
      end
      pattern = Regexp.new(/^[0-9]{4}-[0-9]{2}$/)
      if @api_client.config.client_side_validation && start_month !~ pattern
        fail ArgumentError, "invalid value for 'start_month' when calling BillingUsageMetricsApi.get_usage_metrics, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'end_month' is set
      if @api_client.config.client_side_validation && end_month.nil?
        fail ArgumentError, "Missing the required parameter 'end_month' when calling BillingUsageMetricsApi.get_usage_metrics"
      end
      pattern = Regexp.new(/^[0-9]{4}-[0-9]{2}$/)
      if @api_client.config.client_side_validation && end_month !~ pattern
        fail ArgumentError, "invalid value for 'end_month' when calling BillingUsageMetricsApi.get_usage_metrics, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/billing/v3/usage-metrics'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'start_month'] = start_month
      query_params[:'end_month'] = end_month

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Usagemetric'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BillingUsageMetricsApi.get_usage_metrics",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingUsageMetricsApi#get_usage_metrics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
