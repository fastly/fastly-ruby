=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class BillingInvoicesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get invoice by ID.
    # Returns invoice associated with the invoice id.
    # @option opts [String] :invoice_id Alphanumeric string identifying the invoice. (required)
    # @return [InvoiceResponse]
    def get_invoice_by_invoice_id(opts = {})
      data, _status_code, _headers = get_invoice_by_invoice_id_with_http_info(opts)
      data
    end

    # Get invoice by ID.
    # Returns invoice associated with the invoice id.
    # @option opts [String] :invoice_id Alphanumeric string identifying the invoice. (required)
    # @return [Array<(InvoiceResponse, Integer, Hash)>] InvoiceResponse data, response status code and response headers
    def get_invoice_by_invoice_id_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillingInvoicesApi.get_invoice_by_invoice_id ...'
      end
      # unbox the parameters from the hash
      invoice_id = opts[:'invoice_id']
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling BillingInvoicesApi.get_invoice_by_invoice_id"
      end
      # resource path
      local_var_path = '/billing/v3/invoices/{invoice_id}'.sub('{' + 'invoice_id' + '}', CGI.escape(invoice_id.to_s))

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
      return_type = opts[:debug_return_type] || 'InvoiceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BillingInvoicesApi.get_invoice_by_invoice_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingInvoicesApi#get_invoice_by_invoice_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List of invoices.
    # Returns the list of invoices, sorted by billing start date (newest to oldest).
    # @option opts [String] :billing_start_date 
    # @option opts [String] :billing_end_date 
    # @option opts [String] :limit Number of results per page. The maximum is 200. (default to '100')
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @return [ListInvoicesResponse]
    def list_invoices(opts = {})
      data, _status_code, _headers = list_invoices_with_http_info(opts)
      data
    end

    # List of invoices.
    # Returns the list of invoices, sorted by billing start date (newest to oldest).
    # @option opts [String] :billing_start_date 
    # @option opts [String] :billing_end_date 
    # @option opts [String] :limit Number of results per page. The maximum is 200. (default to '100')
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @return [Array<(ListInvoicesResponse, Integer, Hash)>] ListInvoicesResponse data, response status code and response headers
    def list_invoices_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillingInvoicesApi.list_invoices ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/billing/v3/invoices'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'billing_start_date'] = opts[:'billing_start_date'] if !opts[:'billing_start_date'].nil?
      query_params[:'billing_end_date'] = opts[:'billing_end_date'] if !opts[:'billing_end_date'].nil?
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
      return_type = opts[:debug_return_type] || 'ListInvoicesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BillingInvoicesApi.list_invoices",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingInvoicesApi#list_invoices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
