=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0


=end

require 'cgi'

module Fastly
  class ContactApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a contact
    # Delete a contact.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @option opts [String] :contact_id An alphanumeric string identifying the customer contact. (required)
    # @return [InlineResponse200]
    def delete_contact(opts = {})
      data, _status_code, _headers = delete_contact_with_http_info(opts)
      data
    end

    # Delete a contact
    # Delete a contact.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @option opts [String] :contact_id An alphanumeric string identifying the customer contact. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_contact_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.delete_contact ...'
      end
      # unbox the parameters from the hash
      customer_id = opts[:'customer_id']
      contact_id = opts[:'contact_id']
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling ContactApi.delete_contact"
      end
      # verify the required parameter 'contact_id' is set
      if @api_client.config.client_side_validation && contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_id' when calling ContactApi.delete_contact"
      end
      # resource path
      local_var_path = '/customer/{customer_id}/contact/{contact_id}'.sub('{' + 'customer_id' + '}', CGI.escape(customer_id.to_s)).sub('{' + 'contact_id' + '}', CGI.escape(contact_id.to_s))

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
      return_type = opts[:debug_return_type] || 'InlineResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ContactApi.delete_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#delete_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List contacts
    # List all contacts from a specified customer ID.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @return [Array<SchemasContactResponse>]
    def list_contacts(opts = {})
      data, _status_code, _headers = list_contacts_with_http_info(opts)
      data
    end

    # List contacts
    # List all contacts from a specified customer ID.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @return [Array<(Array<SchemasContactResponse>, Integer, Hash)>] Array<SchemasContactResponse> data, response status code and response headers
    def list_contacts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.list_contacts ...'
      end
      # unbox the parameters from the hash
      customer_id = opts[:'customer_id']
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling ContactApi.list_contacts"
      end
      # resource path
      local_var_path = '/customer/{customer_id}/contacts'.sub('{' + 'customer_id' + '}', CGI.escape(customer_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<SchemasContactResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ContactApi.list_contacts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#list_contacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
