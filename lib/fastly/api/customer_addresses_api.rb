=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class CustomerAddressesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates an address associated with a customer account.
    # Creates an address associated with a customer account.
    # @option opts [CustomerAddress] :customer_address  (required)
    # @return [InlineResponse201]
    def create_customer_address(opts = {})
      data, _status_code, _headers = create_customer_address_with_http_info(opts)
      data
    end

    # Creates an address associated with a customer account.
    # Creates an address associated with a customer account.
    # @option opts [CustomerAddress] :customer_address  (required)
    # @return [Array<(InlineResponse201, Integer, Hash)>] InlineResponse201 data, response status code and response headers
    def create_customer_address_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerAddressesApi.create_customer_address ...'
      end
      # unbox the parameters from the hash
      customer_address = opts[:'customer_address']
      # verify the required parameter 'customer_address' is set
      if @api_client.config.client_side_validation && customer_address.nil?
        fail ArgumentError, "Missing the required parameter 'customer_address' when calling CustomerAddressesApi.create_customer_address"
      end
      # resource path
      local_var_path = '/billing/v3/customer-addresses'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(customer_address)

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse201'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"CustomerAddressesApi.create_customer_address",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerAddressesApi#create_customer_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return the list of addresses associated with a customer account.
    # Return the list of addresses associated with a customer account.
    # @return [ListCustomerAddressesResponse]
    def list_customer_addresses(opts = {})
      data, _status_code, _headers = list_customer_addresses_with_http_info(opts)
      data
    end

    # Return the list of addresses associated with a customer account.
    # Return the list of addresses associated with a customer account.
    # @return [Array<(ListCustomerAddressesResponse, Integer, Hash)>] ListCustomerAddressesResponse data, response status code and response headers
    def list_customer_addresses_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerAddressesApi.list_customer_addresses ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/billing/v3/customer-addresses'

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
      return_type = opts[:debug_return_type] || 'ListCustomerAddressesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"CustomerAddressesApi.list_customer_addresses",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerAddressesApi#list_customer_addresses\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates an address associated with a customer account.
    # Updates an address associated with a customer account.
    # @option opts [String] :type Alphanumeric type of the address being modified. (required)
    # @option opts [CustomerAddress] :customer_address  (required)
    # @return [nil]
    def update_customer_address(opts = {})
      update_customer_address_with_http_info(opts)
      nil
    end

    # Updates an address associated with a customer account.
    # Updates an address associated with a customer account.
    # @option opts [String] :type Alphanumeric type of the address being modified. (required)
    # @option opts [CustomerAddress] :customer_address  (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_customer_address_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerAddressesApi.update_customer_address ...'
      end
      # unbox the parameters from the hash
      type = opts[:'type']
      customer_address = opts[:'customer_address']
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling CustomerAddressesApi.update_customer_address"
      end
      pattern = Regexp.new(/^(tax|billing)$/)
      if @api_client.config.client_side_validation && type !~ pattern
        fail ArgumentError, "invalid value for 'type' when calling CustomerAddressesApi.update_customer_address, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'customer_address' is set
      if @api_client.config.client_side_validation && customer_address.nil?
        fail ArgumentError, "Missing the required parameter 'customer_address' when calling CustomerAddressesApi.update_customer_address"
      end
      # resource path
      local_var_path = '/billing/v3/customer-addresses/{type}'.sub('{' + 'type' + '}', CGI.escape(type.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(customer_address)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"CustomerAddressesApi.update_customer_address",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerAddressesApi#update_customer_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
