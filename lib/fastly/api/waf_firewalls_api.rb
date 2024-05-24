=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class WafFirewallsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a firewall
    # Create a firewall object for a particular service and service version using a defined `prefetch_condition` and `response`. If the `prefetch_condition` or the `response` is missing from the request body, Fastly will generate a default object on your service. 
    # @option opts [WafFirewall] :waf_firewall 
    # @return [WafFirewallResponse]
    def create_waf_firewall(opts = {})
      data, _status_code, _headers = create_waf_firewall_with_http_info(opts)
      data
    end

    # Create a firewall
    # Create a firewall object for a particular service and service version using a defined &#x60;prefetch_condition&#x60; and &#x60;response&#x60;. If the &#x60;prefetch_condition&#x60; or the &#x60;response&#x60; is missing from the request body, Fastly will generate a default object on your service. 
    # @option opts [WafFirewall] :waf_firewall 
    # @return [Array<(WafFirewallResponse, Integer, Hash)>] WafFirewallResponse data, response status code and response headers
    def create_waf_firewall_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafFirewallsApi.create_waf_firewall ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/waf/firewalls'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'waf_firewall'])

      # return_type
      return_type = opts[:debug_return_type] || 'WafFirewallResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafFirewallsApi.create_waf_firewall",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafFirewallsApi#create_waf_firewall\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a firewall
    # Delete the firewall object for a particular service and service version. 
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [WafFirewall] :waf_firewall 
    # @return [nil]
    def delete_waf_firewall(opts = {})
      delete_waf_firewall_with_http_info(opts)
      nil
    end

    # Delete a firewall
    # Delete the firewall object for a particular service and service version. 
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [WafFirewall] :waf_firewall 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_waf_firewall_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafFirewallsApi.delete_waf_firewall ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling WafFirewallsApi.delete_waf_firewall"
      end
      # resource path
      local_var_path = '/waf/firewalls/{firewall_id}'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'waf_firewall'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafFirewallsApi.delete_waf_firewall",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafFirewallsApi#delete_waf_firewall\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a firewall
    # Get a specific firewall object.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [String] :filter_service_version_number Limit the results returned to a specific service version.
    # @option opts [String] :include Include related objects. Optional. (default to 'waf_firewall_versions')
    # @return [WafFirewallResponse]
    def get_waf_firewall(opts = {})
      data, _status_code, _headers = get_waf_firewall_with_http_info(opts)
      data
    end

    # Get a firewall
    # Get a specific firewall object.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [String] :filter_service_version_number Limit the results returned to a specific service version.
    # @option opts [String] :include Include related objects. Optional. (default to 'waf_firewall_versions')
    # @return [Array<(WafFirewallResponse, Integer, Hash)>] WafFirewallResponse data, response status code and response headers
    def get_waf_firewall_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafFirewallsApi.get_waf_firewall ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling WafFirewallsApi.get_waf_firewall"
      end
      allowable_values = ["waf_firewall_versions"]
      if @api_client.config.client_side_validation && opts[:'include'] && !allowable_values.include?(opts[:'include'])
        fail ArgumentError, "invalid value for \"include\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/waf/firewalls/{firewall_id}'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter[service_version_number]'] = opts[:'filter_service_version_number'] if !opts[:'filter_service_version_number'].nil?
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WafFirewallResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafFirewallsApi.get_waf_firewall",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafFirewallsApi#get_waf_firewall\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List firewalls
    # List all firewall objects.
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :filter_service_id Limit the results returned to a specific service.
    # @option opts [String] :filter_service_version_number Limit the results returned to a specific service version.
    # @option opts [String] :include Include related objects. Optional. (default to 'waf_firewall_versions')
    # @return [WafFirewallsResponse]
    def list_waf_firewalls(opts = {})
      data, _status_code, _headers = list_waf_firewalls_with_http_info(opts)
      data
    end

    # List firewalls
    # List all firewall objects.
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :filter_service_id Limit the results returned to a specific service.
    # @option opts [String] :filter_service_version_number Limit the results returned to a specific service version.
    # @option opts [String] :include Include related objects. Optional. (default to 'waf_firewall_versions')
    # @return [Array<(WafFirewallsResponse, Integer, Hash)>] WafFirewallsResponse data, response status code and response headers
    def list_waf_firewalls_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafFirewallsApi.list_waf_firewalls ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling WafFirewallsApi.list_waf_firewalls, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling WafFirewallsApi.list_waf_firewalls, must be greater than or equal to 1.'
      end

      allowable_values = ["waf_firewall_versions"]
      if @api_client.config.client_side_validation && opts[:'include'] && !allowable_values.include?(opts[:'include'])
        fail ArgumentError, "invalid value for \"include\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/waf/firewalls'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page[number]'] = opts[:'page_number'] if !opts[:'page_number'].nil?
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'filter[service_id]'] = opts[:'filter_service_id'] if !opts[:'filter_service_id'].nil?
      query_params[:'filter[service_version_number]'] = opts[:'filter_service_version_number'] if !opts[:'filter_service_version_number'].nil?
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WafFirewallsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafFirewallsApi.list_waf_firewalls",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafFirewallsApi#list_waf_firewalls\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a firewall
    # Update a firewall object for a particular service and service version. Specifying a `service_version_number` is required. 
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [WafFirewall] :waf_firewall 
    # @return [WafFirewallResponse]
    def update_waf_firewall(opts = {})
      data, _status_code, _headers = update_waf_firewall_with_http_info(opts)
      data
    end

    # Update a firewall
    # Update a firewall object for a particular service and service version. Specifying a &#x60;service_version_number&#x60; is required. 
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [WafFirewall] :waf_firewall 
    # @return [Array<(WafFirewallResponse, Integer, Hash)>] WafFirewallResponse data, response status code and response headers
    def update_waf_firewall_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafFirewallsApi.update_waf_firewall ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling WafFirewallsApi.update_waf_firewall"
      end
      # resource path
      local_var_path = '/waf/firewalls/{firewall_id}'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'waf_firewall'])

      # return_type
      return_type = opts[:debug_return_type] || 'WafFirewallResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafFirewallsApi.update_waf_firewall",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafFirewallsApi#update_waf_firewall\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
