=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class CustomerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a customer
    # Delete a customer.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @return [InlineResponse200]
    def delete_customer(opts = {})
      data, _status_code, _headers = delete_customer_with_http_info(opts)
      data
    end

    # Delete a customer
    # Delete a customer.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_customer_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerApi.delete_customer ...'
      end
      # unbox the parameters from the hash
      customer_id = opts[:'customer_id']
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling CustomerApi.delete_customer"
      end
      # resource path
      local_var_path = '/customer/{customer_id}'.sub('{' + 'customer_id' + '}', CGI.escape(customer_id.to_s))

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
        :operation => :"CustomerApi.delete_customer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerApi#delete_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a customer
    # Get a specific customer.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @return [CustomerResponse]
    def get_customer(opts = {})
      data, _status_code, _headers = get_customer_with_http_info(opts)
      data
    end

    # Get a customer
    # Get a specific customer.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @return [Array<(CustomerResponse, Integer, Hash)>] CustomerResponse data, response status code and response headers
    def get_customer_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerApi.get_customer ...'
      end
      # unbox the parameters from the hash
      customer_id = opts[:'customer_id']
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling CustomerApi.get_customer"
      end
      # resource path
      local_var_path = '/customer/{customer_id}'.sub('{' + 'customer_id' + '}', CGI.escape(customer_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CustomerResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"CustomerApi.get_customer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerApi#get_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the logged in customer
    # Get the logged in customer.
    # @return [CustomerResponse]
    def get_logged_in_customer(opts = {})
      data, _status_code, _headers = get_logged_in_customer_with_http_info(opts)
      data
    end

    # Get the logged in customer
    # Get the logged in customer.
    # @return [Array<(CustomerResponse, Integer, Hash)>] CustomerResponse data, response status code and response headers
    def get_logged_in_customer_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerApi.get_logged_in_customer ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/current_customer'

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
      return_type = opts[:debug_return_type] || 'CustomerResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"CustomerApi.get_logged_in_customer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerApi#get_logged_in_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List users
    # List all users from a specified customer id.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @return [Array<SchemasUserResponse>]
    def list_users(opts = {})
      data, _status_code, _headers = list_users_with_http_info(opts)
      data
    end

    # List users
    # List all users from a specified customer id.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @return [Array<(Array<SchemasUserResponse>, Integer, Hash)>] Array<SchemasUserResponse> data, response status code and response headers
    def list_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerApi.list_users ...'
      end
      # unbox the parameters from the hash
      customer_id = opts[:'customer_id']
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling CustomerApi.list_users"
      end
      # resource path
      local_var_path = '/customer/{customer_id}/users'.sub('{' + 'customer_id' + '}', CGI.escape(customer_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<SchemasUserResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"CustomerApi.list_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerApi#list_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a customer
    # Update a customer.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @option opts [String] :billing_contact_id The alphanumeric string representing the primary billing contact.
    # @option opts [String] :billing_network_type Customer&#39;s current network revenue type.
    # @option opts [String] :billing_ref Used for adding purchased orders to customer&#39;s account.
    # @option opts [Boolean] :can_configure_wordpress Whether this customer can view or edit wordpress.
    # @option opts [Boolean] :can_reset_passwords Whether this customer can reset passwords.
    # @option opts [Boolean] :can_upload_vcl Whether this customer can upload VCL.
    # @option opts [Boolean] :force_2fa Specifies whether 2FA is forced or not forced on the customer account. Logs out non-2FA users once 2FA is force enabled.
    # @option opts [Boolean] :force_sso Specifies whether SSO is forced or not forced on the customer account.
    # @option opts [Boolean] :has_account_panel Specifies whether the account has access or does not have access to the account panel.
    # @option opts [Boolean] :has_improved_events Specifies whether the account has access or does not have access to the improved events.
    # @option opts [Boolean] :has_improved_ssl_config Whether this customer can view or edit the SSL config.
    # @option opts [Boolean] :has_openstack_logging Specifies whether the account has enabled or not enabled openstack logging.
    # @option opts [Boolean] :has_pci Specifies whether the account can edit PCI for a service.
    # @option opts [Boolean] :has_pci_passwords Specifies whether PCI passwords are required for the account.
    # @option opts [String] :ip_whitelist The range of IP addresses authorized to access the customer account.
    # @option opts [String] :legal_contact_id The alphanumeric string identifying the account&#39;s legal contact.
    # @option opts [String] :name The name of the customer, generally the company name.
    # @option opts [String] :owner_id The alphanumeric string identifying the account owner.
    # @option opts [String] :phone_number The phone number associated with the account.
    # @option opts [String] :postal_address The postal address associated with the account.
    # @option opts [String] :pricing_plan The pricing plan this customer is under.
    # @option opts [String] :pricing_plan_id The alphanumeric string identifying the pricing plan.
    # @option opts [String] :security_contact_id The alphanumeric string identifying the account&#39;s security contact.
    # @option opts [String] :technical_contact_id The alphanumeric string identifying the account&#39;s technical contact.
    # @return [CustomerResponse]
    def update_customer(opts = {})
      data, _status_code, _headers = update_customer_with_http_info(opts)
      data
    end

    # Update a customer
    # Update a customer.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @option opts [String] :billing_contact_id The alphanumeric string representing the primary billing contact.
    # @option opts [String] :billing_network_type Customer&#39;s current network revenue type.
    # @option opts [String] :billing_ref Used for adding purchased orders to customer&#39;s account.
    # @option opts [Boolean] :can_configure_wordpress Whether this customer can view or edit wordpress.
    # @option opts [Boolean] :can_reset_passwords Whether this customer can reset passwords.
    # @option opts [Boolean] :can_upload_vcl Whether this customer can upload VCL.
    # @option opts [Boolean] :force_2fa Specifies whether 2FA is forced or not forced on the customer account. Logs out non-2FA users once 2FA is force enabled.
    # @option opts [Boolean] :force_sso Specifies whether SSO is forced or not forced on the customer account.
    # @option opts [Boolean] :has_account_panel Specifies whether the account has access or does not have access to the account panel.
    # @option opts [Boolean] :has_improved_events Specifies whether the account has access or does not have access to the improved events.
    # @option opts [Boolean] :has_improved_ssl_config Whether this customer can view or edit the SSL config.
    # @option opts [Boolean] :has_openstack_logging Specifies whether the account has enabled or not enabled openstack logging.
    # @option opts [Boolean] :has_pci Specifies whether the account can edit PCI for a service.
    # @option opts [Boolean] :has_pci_passwords Specifies whether PCI passwords are required for the account.
    # @option opts [String] :ip_whitelist The range of IP addresses authorized to access the customer account.
    # @option opts [String] :legal_contact_id The alphanumeric string identifying the account&#39;s legal contact.
    # @option opts [String] :name The name of the customer, generally the company name.
    # @option opts [String] :owner_id The alphanumeric string identifying the account owner.
    # @option opts [String] :phone_number The phone number associated with the account.
    # @option opts [String] :postal_address The postal address associated with the account.
    # @option opts [String] :pricing_plan The pricing plan this customer is under.
    # @option opts [String] :pricing_plan_id The alphanumeric string identifying the pricing plan.
    # @option opts [String] :security_contact_id The alphanumeric string identifying the account&#39;s security contact.
    # @option opts [String] :technical_contact_id The alphanumeric string identifying the account&#39;s technical contact.
    # @return [Array<(CustomerResponse, Integer, Hash)>] CustomerResponse data, response status code and response headers
    def update_customer_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerApi.update_customer ...'
      end
      # unbox the parameters from the hash
      customer_id = opts[:'customer_id']
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling CustomerApi.update_customer"
      end
      allowable_values = ["public", "private"]
      if @api_client.config.client_side_validation && opts[:'billing_network_type'] && !allowable_values.include?(opts[:'billing_network_type'])
        fail ArgumentError, "invalid value for \"billing_network_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/customer/{customer_id}'.sub('{' + 'customer_id' + '}', CGI.escape(customer_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['billing_contact_id'] = opts[:'billing_contact_id'] if !opts[:'billing_contact_id'].nil?
      form_params['billing_network_type'] = opts[:'billing_network_type'] if !opts[:'billing_network_type'].nil?
      form_params['billing_ref'] = opts[:'billing_ref'] if !opts[:'billing_ref'].nil?
      form_params['can_configure_wordpress'] = opts[:'can_configure_wordpress'] if !opts[:'can_configure_wordpress'].nil?
      form_params['can_reset_passwords'] = opts[:'can_reset_passwords'] if !opts[:'can_reset_passwords'].nil?
      form_params['can_upload_vcl'] = opts[:'can_upload_vcl'] if !opts[:'can_upload_vcl'].nil?
      form_params['force_2fa'] = opts[:'force_2fa'] if !opts[:'force_2fa'].nil?
      form_params['force_sso'] = opts[:'force_sso'] if !opts[:'force_sso'].nil?
      form_params['has_account_panel'] = opts[:'has_account_panel'] if !opts[:'has_account_panel'].nil?
      form_params['has_improved_events'] = opts[:'has_improved_events'] if !opts[:'has_improved_events'].nil?
      form_params['has_improved_ssl_config'] = opts[:'has_improved_ssl_config'] if !opts[:'has_improved_ssl_config'].nil?
      form_params['has_openstack_logging'] = opts[:'has_openstack_logging'] if !opts[:'has_openstack_logging'].nil?
      form_params['has_pci'] = opts[:'has_pci'] if !opts[:'has_pci'].nil?
      form_params['has_pci_passwords'] = opts[:'has_pci_passwords'] if !opts[:'has_pci_passwords'].nil?
      form_params['ip_whitelist'] = opts[:'ip_whitelist'] if !opts[:'ip_whitelist'].nil?
      form_params['legal_contact_id'] = opts[:'legal_contact_id'] if !opts[:'legal_contact_id'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['owner_id'] = opts[:'owner_id'] if !opts[:'owner_id'].nil?
      form_params['phone_number'] = opts[:'phone_number'] if !opts[:'phone_number'].nil?
      form_params['postal_address'] = opts[:'postal_address'] if !opts[:'postal_address'].nil?
      form_params['pricing_plan'] = opts[:'pricing_plan'] if !opts[:'pricing_plan'].nil?
      form_params['pricing_plan_id'] = opts[:'pricing_plan_id'] if !opts[:'pricing_plan_id'].nil?
      form_params['security_contact_id'] = opts[:'security_contact_id'] if !opts[:'security_contact_id'].nil?
      form_params['technical_contact_id'] = opts[:'technical_contact_id'] if !opts[:'technical_contact_id'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CustomerResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"CustomerApi.update_customer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerApi#update_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
