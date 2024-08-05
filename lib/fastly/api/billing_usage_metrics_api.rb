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
    # Retrieve service-level usage metrics for a product.
    # Returns product usage, broken down by service.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @option opts [String] :product_id The product identifier for the metrics returned (e.g., &#x60;cdn_usage&#x60;). This field is not required for CSV requests. (required)
    # @option opts [String] :usage_type_name The usage type name for the metrics returned (e.g., &#x60;North America Requests&#x60;). This field is not required for CSV requests. (required)
    # @option opts [String] :time_granularity  (required)
    # @option opts [String] :start_date 
    # @option opts [String] :end_date 
    # @option opts [String] :start_month 
    # @option opts [String] :end_month 
    # @option opts [String] :limit Number of results per page. The maximum is 100. (default to '5')
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @return [Serviceusagemetrics]
    def get_service_level_usage(opts = {})
      data, _status_code, _headers = get_service_level_usage_with_http_info(opts)
      data
    end

    # Retrieve service-level usage metrics for a product.
    # Returns product usage, broken down by service.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @option opts [String] :product_id The product identifier for the metrics returned (e.g., &#x60;cdn_usage&#x60;). This field is not required for CSV requests. (required)
    # @option opts [String] :usage_type_name The usage type name for the metrics returned (e.g., &#x60;North America Requests&#x60;). This field is not required for CSV requests. (required)
    # @option opts [String] :time_granularity  (required)
    # @option opts [String] :start_date 
    # @option opts [String] :end_date 
    # @option opts [String] :start_month 
    # @option opts [String] :end_month 
    # @option opts [String] :limit Number of results per page. The maximum is 100. (default to '5')
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @return [Array<(Serviceusagemetrics, Integer, Hash)>] Serviceusagemetrics data, response status code and response headers
    def get_service_level_usage_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillingUsageMetricsApi.get_service_level_usage ...'
      end
      # unbox the parameters from the hash
      customer_id = opts[:'customer_id']
      product_id = opts[:'product_id']
      usage_type_name = opts[:'usage_type_name']
      time_granularity = opts[:'time_granularity']
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling BillingUsageMetricsApi.get_service_level_usage"
      end
      # verify the required parameter 'product_id' is set
      if @api_client.config.client_side_validation && product_id.nil?
        fail ArgumentError, "Missing the required parameter 'product_id' when calling BillingUsageMetricsApi.get_service_level_usage"
      end
      # verify the required parameter 'usage_type_name' is set
      if @api_client.config.client_side_validation && usage_type_name.nil?
        fail ArgumentError, "Missing the required parameter 'usage_type_name' when calling BillingUsageMetricsApi.get_service_level_usage"
      end
      # verify the required parameter 'time_granularity' is set
      if @api_client.config.client_side_validation && time_granularity.nil?
        fail ArgumentError, "Missing the required parameter 'time_granularity' when calling BillingUsageMetricsApi.get_service_level_usage"
      end
      pattern = Regexp.new(/^day$|^month$/)
      if @api_client.config.client_side_validation && time_granularity !~ pattern
        fail ArgumentError, "invalid value for 'time_granularity' when calling BillingUsageMetricsApi.get_service_level_usage, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/^[0-9]{4}-[0-9]{2}-[0-9]{2}$/)
      if @api_client.config.client_side_validation && !opts[:'start_date'].nil? && opts[:'start_date'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"start_date\"]' when calling BillingUsageMetricsApi.get_service_level_usage, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/^[0-9]{4}-[0-9]{2}-[0-9]{2}$/)
      if @api_client.config.client_side_validation && !opts[:'end_date'].nil? && opts[:'end_date'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"end_date\"]' when calling BillingUsageMetricsApi.get_service_level_usage, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/^[0-9]{4}-[0-9]{2}$/)
      if @api_client.config.client_side_validation && !opts[:'start_month'].nil? && opts[:'start_month'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"start_month\"]' when calling BillingUsageMetricsApi.get_service_level_usage, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/^[0-9]{4}-[0-9]{2}$/)
      if @api_client.config.client_side_validation && !opts[:'end_month'].nil? && opts[:'end_month'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"end_month\"]' when calling BillingUsageMetricsApi.get_service_level_usage, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/billing/v2/account_customers/{customer_id}/service-usage-metrics'.sub('{' + 'customer_id' + '}', CGI.escape(customer_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'product_id'] = product_id
      query_params[:'usage_type_name'] = usage_type_name
      query_params[:'time_granularity'] = time_granularity
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?
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

    # Retrieve product usage types for a customer.
    # Returns product usage types reported by the customer's services.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @return [Serviceusagetypes]
    def get_service_level_usage_types(opts = {})
      data, _status_code, _headers = get_service_level_usage_types_with_http_info(opts)
      data
    end

    # Retrieve product usage types for a customer.
    # Returns product usage types reported by the customer&#39;s services.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @return [Array<(Serviceusagetypes, Integer, Hash)>] Serviceusagetypes data, response status code and response headers
    def get_service_level_usage_types_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillingUsageMetricsApi.get_service_level_usage_types ...'
      end
      # unbox the parameters from the hash
      customer_id = opts[:'customer_id']
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling BillingUsageMetricsApi.get_service_level_usage_types"
      end
      # resource path
      local_var_path = '/billing/v2/account_customers/{customer_id}/service-usage-types'.sub('{' + 'customer_id' + '}', CGI.escape(customer_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Serviceusagetypes'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BillingUsageMetricsApi.get_service_level_usage_types",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingUsageMetricsApi#get_service_level_usage_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
