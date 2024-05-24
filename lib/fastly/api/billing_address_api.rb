=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class BillingAddressApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a billing address to a customer
    # Add a billing address to a customer.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @option opts [BillingAddressRequest] :billing_address_request Billing address
    # @return [BillingAddressResponse]
    def add_billing_addr(opts = {})
      data, _status_code, _headers = add_billing_addr_with_http_info(opts)
      data
    end

    # Add a billing address to a customer
    # Add a billing address to a customer.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @option opts [BillingAddressRequest] :billing_address_request Billing address
    # @return [Array<(BillingAddressResponse, Integer, Hash)>] BillingAddressResponse data, response status code and response headers
    def add_billing_addr_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillingAddressApi.add_billing_addr ...'
      end
      # unbox the parameters from the hash
      customer_id = opts[:'customer_id']
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling BillingAddressApi.add_billing_addr"
      end
      # resource path
      local_var_path = '/customer/{customer_id}/billing_address'.sub('{' + 'customer_id' + '}', CGI.escape(customer_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/vnd.api+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'billing_address_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'BillingAddressResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BillingAddressApi.add_billing_addr",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingAddressApi#add_billing_addr\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a billing address
    # Delete a customer's billing address.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @return [nil]
    def delete_billing_addr(opts = {})
      delete_billing_addr_with_http_info(opts)
      nil
    end

    # Delete a billing address
    # Delete a customer&#39;s billing address.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_billing_addr_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillingAddressApi.delete_billing_addr ...'
      end
      # unbox the parameters from the hash
      customer_id = opts[:'customer_id']
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling BillingAddressApi.delete_billing_addr"
      end
      # resource path
      local_var_path = '/customer/{customer_id}/billing_address'.sub('{' + 'customer_id' + '}', CGI.escape(customer_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BillingAddressApi.delete_billing_addr",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingAddressApi#delete_billing_addr\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a billing address
    # Get a customer's billing address.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @return [BillingAddressResponse]
    def get_billing_addr(opts = {})
      data, _status_code, _headers = get_billing_addr_with_http_info(opts)
      data
    end

    # Get a billing address
    # Get a customer&#39;s billing address.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @return [Array<(BillingAddressResponse, Integer, Hash)>] BillingAddressResponse data, response status code and response headers
    def get_billing_addr_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillingAddressApi.get_billing_addr ...'
      end
      # unbox the parameters from the hash
      customer_id = opts[:'customer_id']
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling BillingAddressApi.get_billing_addr"
      end
      # resource path
      local_var_path = '/customer/{customer_id}/billing_address'.sub('{' + 'customer_id' + '}', CGI.escape(customer_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BillingAddressResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BillingAddressApi.get_billing_addr",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingAddressApi#get_billing_addr\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a billing address
    # Update a customer's billing address. You may update only part of the customer's billing address.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @option opts [UpdateBillingAddressRequest] :update_billing_address_request One or more billing address attributes
    # @return [BillingAddressResponse]
    def update_billing_addr(opts = {})
      data, _status_code, _headers = update_billing_addr_with_http_info(opts)
      data
    end

    # Update a billing address
    # Update a customer&#39;s billing address. You may update only part of the customer&#39;s billing address.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @option opts [UpdateBillingAddressRequest] :update_billing_address_request One or more billing address attributes
    # @return [Array<(BillingAddressResponse, Integer, Hash)>] BillingAddressResponse data, response status code and response headers
    def update_billing_addr_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillingAddressApi.update_billing_addr ...'
      end
      # unbox the parameters from the hash
      customer_id = opts[:'customer_id']
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling BillingAddressApi.update_billing_addr"
      end
      # resource path
      local_var_path = '/customer/{customer_id}/billing_address'.sub('{' + 'customer_id' + '}', CGI.escape(customer_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/vnd.api+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_billing_address_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'BillingAddressResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"BillingAddressApi.update_billing_addr",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingAddressApi#update_billing_addr\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
