=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class BillingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get an invoice
    # Get the invoice for a given year and month. Can be any month from when the Customer was created to the current month.
    # @option opts [String] :month 2-digit month. (required)
    # @option opts [String] :year 4-digit year. (required)
    # @return [BillingResponse]
    def get_invoice(opts = {})
      data, _status_code, _headers = get_invoice_with_http_info(opts)
      data
    end

    # Get an invoice
    # Get the invoice for a given year and month. Can be any month from when the Customer was created to the current month.
    # @option opts [String] :month 2-digit month. (required)
    # @option opts [String] :year 4-digit year. (required)
    # @return [Array<(BillingResponse, Integer, Hash)>] BillingResponse data, response status code and response headers
    def get_invoice_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillingApi.get_invoice ...'
      end
      # unbox the parameters from the hash
      month = opts[:'month']
      year = opts[:'year']
      # verify the required parameter 'month' is set
      if @api_client.config.client_side_validation && month.nil?
        fail ArgumentError, "Missing the required parameter 'month' when calling BillingApi.get_invoice"
      end
      # verify the required parameter 'year' is set
      if @api_client.config.client_side_validation && year.nil?
        fail ArgumentError, "Missing the required parameter 'year' when calling BillingApi.get_invoice"
      end
      # resource path
      local_var_path = '/billing/v2/year/{year}/month/{month}'.sub('{' + 'month' + '}', CGI.escape(month.to_s)).sub('{' + 'year' + '}', CGI.escape(year.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/csv', 'application/pdf'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BillingResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BillingApi.get_invoice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingApi#get_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an invoice
    # Get the invoice for the given invoice_id.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @option opts [Integer] :invoice_id  (required)
    # @return [BillingResponse]
    def get_invoice_by_id(opts = {})
      data, _status_code, _headers = get_invoice_by_id_with_http_info(opts)
      data
    end

    # Get an invoice
    # Get the invoice for the given invoice_id.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @option opts [Integer] :invoice_id  (required)
    # @return [Array<(BillingResponse, Integer, Hash)>] BillingResponse data, response status code and response headers
    def get_invoice_by_id_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillingApi.get_invoice_by_id ...'
      end
      # unbox the parameters from the hash
      customer_id = opts[:'customer_id']
      invoice_id = opts[:'invoice_id']
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling BillingApi.get_invoice_by_id"
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling BillingApi.get_invoice_by_id"
      end
      # resource path
      local_var_path = '/billing/v2/account_customers/{customer_id}/invoices/{invoice_id}'.sub('{' + 'customer_id' + '}', CGI.escape(customer_id.to_s)).sub('{' + 'invoice_id' + '}', CGI.escape(invoice_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/csv', 'application/pdf'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BillingResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BillingApi.get_invoice_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingApi#get_invoice_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get month-to-date billing estimate
    # Get the current month-to-date estimate. This endpoint has two different responses. Under normal circumstances, it generally takes less than 5 seconds to generate but in certain cases can take up to 60 seconds. Once generated the month-to-date estimate is cached for 4 hours, and is available the next request will return the JSON representation of the month-to-date estimate. While a report is being generated in the background, this endpoint will return a `202 Accepted` response. The full format of which can be found in detail in our [billing calculation guide](https://docs.fastly.com/en/guides/how-we-calculate-your-bill). There are certain accounts for which we are unable to generate a month-to-date estimate. For example, accounts who have parent-pay are unable to generate an MTD estimate. The parent accounts are able to generate a month-to-date estimate but that estimate will not include the child accounts amounts at this time.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @option opts [String] :month 2-digit month.
    # @option opts [String] :year 4-digit year.
    # @return [BillingEstimateResponse]
    def get_invoice_mtd(opts = {})
      data, _status_code, _headers = get_invoice_mtd_with_http_info(opts)
      data
    end

    # Get month-to-date billing estimate
    # Get the current month-to-date estimate. This endpoint has two different responses. Under normal circumstances, it generally takes less than 5 seconds to generate but in certain cases can take up to 60 seconds. Once generated the month-to-date estimate is cached for 4 hours, and is available the next request will return the JSON representation of the month-to-date estimate. While a report is being generated in the background, this endpoint will return a &#x60;202 Accepted&#x60; response. The full format of which can be found in detail in our [billing calculation guide](https://docs.fastly.com/en/guides/how-we-calculate-your-bill). There are certain accounts for which we are unable to generate a month-to-date estimate. For example, accounts who have parent-pay are unable to generate an MTD estimate. The parent accounts are able to generate a month-to-date estimate but that estimate will not include the child accounts amounts at this time.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @option opts [String] :month 2-digit month.
    # @option opts [String] :year 4-digit year.
    # @return [Array<(BillingEstimateResponse, Integer, Hash)>] BillingEstimateResponse data, response status code and response headers
    def get_invoice_mtd_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillingApi.get_invoice_mtd ...'
      end
      # unbox the parameters from the hash
      customer_id = opts[:'customer_id']
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling BillingApi.get_invoice_mtd"
      end
      # resource path
      local_var_path = '/billing/v2/account_customers/{customer_id}/mtd_invoice'.sub('{' + 'customer_id' + '}', CGI.escape(customer_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'month'] = opts[:'month'] if !opts[:'month'].nil?
      query_params[:'year'] = opts[:'year'] if !opts[:'year'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BillingEstimateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BillingApi.get_invoice_mtd",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingApi#get_invoice_mtd\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
