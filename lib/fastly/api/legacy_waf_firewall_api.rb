=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class LegacyWafFirewallApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a firewall
    # Create a firewall object for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Object]
    def create_legacy_waf_firewall_service(opts = {})
      data, _status_code, _headers = create_legacy_waf_firewall_service_with_http_info(opts)
      data
    end

    # Create a firewall
    # Create a firewall object for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def create_legacy_waf_firewall_service_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafFirewallApi.create_legacy_waf_firewall_service ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LegacyWafFirewallApi.create_legacy_waf_firewall_service"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LegacyWafFirewallApi.create_legacy_waf_firewall_service"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/wafs'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LegacyWafFirewallApi.create_legacy_waf_firewall_service",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafFirewallApi#create_legacy_waf_firewall_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Disable a firewall
    # Disable a firewall for a particular service and version. This endpoint is intended to be used in an emergency. Disabling a firewall object for a specific service and version replaces your existing WAF ruleset with an empty ruleset. While disabled, your WAF ruleset will not be applied to your origin traffic. This endpoint is only available to users assigned the role of superuser or above. This is an asynchronous action. To check on the completion of this action, use the related link returned in the response to check on the Update Status of the action.
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Object]
    def disable_legacy_waf_firewall(opts = {})
      data, _status_code, _headers = disable_legacy_waf_firewall_with_http_info(opts)
      data
    end

    # Disable a firewall
    # Disable a firewall for a particular service and version. This endpoint is intended to be used in an emergency. Disabling a firewall object for a specific service and version replaces your existing WAF ruleset with an empty ruleset. While disabled, your WAF ruleset will not be applied to your origin traffic. This endpoint is only available to users assigned the role of superuser or above. This is an asynchronous action. To check on the completion of this action, use the related link returned in the response to check on the Update Status of the action.
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def disable_legacy_waf_firewall_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafFirewallApi.disable_legacy_waf_firewall ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling LegacyWafFirewallApi.disable_legacy_waf_firewall"
      end
      # resource path
      local_var_path = '/wafs/{firewall_id}/disable'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LegacyWafFirewallApi.disable_legacy_waf_firewall",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafFirewallApi#disable_legacy_waf_firewall\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enable a firewall
    # Re-enable a firewall object for a particular service and version after it has been disabled. This endpoint is intended to be used in an emergency. When a firewall object is re-enabled, a newly generated WAF ruleset VCL based on the current WAF configuration is used to replace the empty ruleset. This endpoint is only available to users assigned the role of superuser or above. This is an asynchronous action. To check on the completion of this action, use the related link returned in the response to check on the Update Status of the action.
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Object]
    def enable_legacy_waf_firewall(opts = {})
      data, _status_code, _headers = enable_legacy_waf_firewall_with_http_info(opts)
      data
    end

    # Enable a firewall
    # Re-enable a firewall object for a particular service and version after it has been disabled. This endpoint is intended to be used in an emergency. When a firewall object is re-enabled, a newly generated WAF ruleset VCL based on the current WAF configuration is used to replace the empty ruleset. This endpoint is only available to users assigned the role of superuser or above. This is an asynchronous action. To check on the completion of this action, use the related link returned in the response to check on the Update Status of the action.
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def enable_legacy_waf_firewall_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafFirewallApi.enable_legacy_waf_firewall ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling LegacyWafFirewallApi.enable_legacy_waf_firewall"
      end
      # resource path
      local_var_path = '/wafs/{firewall_id}/enable'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LegacyWafFirewallApi.enable_legacy_waf_firewall",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafFirewallApi#enable_legacy_waf_firewall\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a firewall object
    # Get a specific firewall object.
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [String] :include Include relationships. Optional, comma separated values. Permitted values: &#x60;configuration_set&#x60;, &#x60;owasp&#x60;, &#x60;rules&#x60;, &#x60;rule_statuses&#x60;. 
    # @return [Object]
    def get_legacy_waf_firewall(opts = {})
      data, _status_code, _headers = get_legacy_waf_firewall_with_http_info(opts)
      data
    end

    # Get a firewall object
    # Get a specific firewall object.
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [String] :include Include relationships. Optional, comma separated values. Permitted values: &#x60;configuration_set&#x60;, &#x60;owasp&#x60;, &#x60;rules&#x60;, &#x60;rule_statuses&#x60;. 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_legacy_waf_firewall_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafFirewallApi.get_legacy_waf_firewall ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling LegacyWafFirewallApi.get_legacy_waf_firewall"
      end
      # resource path
      local_var_path = '/wafs/{firewall_id}'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LegacyWafFirewallApi.get_legacy_waf_firewall",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafFirewallApi#get_legacy_waf_firewall\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a firewall
    # Get a specific firewall object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @return [Object]
    def get_legacy_waf_firewall_service(opts = {})
      data, _status_code, _headers = get_legacy_waf_firewall_service_with_http_info(opts)
      data
    end

    # Get a firewall
    # Get a specific firewall object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_legacy_waf_firewall_service_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafFirewallApi.get_legacy_waf_firewall_service ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      firewall_id = opts[:'firewall_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LegacyWafFirewallApi.get_legacy_waf_firewall_service"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LegacyWafFirewallApi.get_legacy_waf_firewall_service"
      end
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling LegacyWafFirewallApi.get_legacy_waf_firewall_service"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/wafs/{firewall_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LegacyWafFirewallApi.get_legacy_waf_firewall_service",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafFirewallApi#get_legacy_waf_firewall_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List active firewalls
    # List all active firewall objects.
    # @option opts [String] :filter_rules_rule_id Limit the returned firewalls to a specific rule ID.
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :include Include relationships. Optional, comma separated values. Permitted values: &#x60;configuration_set&#x60;, &#x60;owasp&#x60;. 
    # @return [Object]
    def list_legacy_waf_firewalls(opts = {})
      data, _status_code, _headers = list_legacy_waf_firewalls_with_http_info(opts)
      data
    end

    # List active firewalls
    # List all active firewall objects.
    # @option opts [String] :filter_rules_rule_id Limit the returned firewalls to a specific rule ID.
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :include Include relationships. Optional, comma separated values. Permitted values: &#x60;configuration_set&#x60;, &#x60;owasp&#x60;. 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def list_legacy_waf_firewalls_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafFirewallApi.list_legacy_waf_firewalls ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling LegacyWafFirewallApi.list_legacy_waf_firewalls, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling LegacyWafFirewallApi.list_legacy_waf_firewalls, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/wafs'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter[rules][rule_id]'] = opts[:'filter_rules_rule_id'] if !opts[:'filter_rules_rule_id'].nil?
      query_params[:'page[number]'] = opts[:'page_number'] if !opts[:'page_number'].nil?
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?
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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LegacyWafFirewallApi.list_legacy_waf_firewalls",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafFirewallApi#list_legacy_waf_firewalls\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List firewalls
    # List all firewall objects for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :include Include relationships. Optional, comma separated values. Permitted values: &#x60;configuration_set&#x60;, &#x60;owasp&#x60;. 
    # @return [Object]
    def list_legacy_waf_firewalls_service(opts = {})
      data, _status_code, _headers = list_legacy_waf_firewalls_service_with_http_info(opts)
      data
    end

    # List firewalls
    # List all firewall objects for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :include Include relationships. Optional, comma separated values. Permitted values: &#x60;configuration_set&#x60;, &#x60;owasp&#x60;. 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def list_legacy_waf_firewalls_service_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafFirewallApi.list_legacy_waf_firewalls_service ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LegacyWafFirewallApi.list_legacy_waf_firewalls_service"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LegacyWafFirewallApi.list_legacy_waf_firewalls_service"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling LegacyWafFirewallApi.list_legacy_waf_firewalls_service, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling LegacyWafFirewallApi.list_legacy_waf_firewalls_service, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/wafs'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page[number]'] = opts[:'page_number'] if !opts[:'page_number'].nil?
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?
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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LegacyWafFirewallApi.list_legacy_waf_firewalls_service",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafFirewallApi#list_legacy_waf_firewalls_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a firewall
    # Update a firewall object for a particular service and version. 
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Object]
    def update_legacy_waf_firewall_service(opts = {})
      data, _status_code, _headers = update_legacy_waf_firewall_service_with_http_info(opts)
      data
    end

    # Update a firewall
    # Update a firewall object for a particular service and version. 
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def update_legacy_waf_firewall_service_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafFirewallApi.update_legacy_waf_firewall_service ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      firewall_id = opts[:'firewall_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LegacyWafFirewallApi.update_legacy_waf_firewall_service"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling LegacyWafFirewallApi.update_legacy_waf_firewall_service"
      end
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling LegacyWafFirewallApi.update_legacy_waf_firewall_service"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/wafs/{firewall_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LegacyWafFirewallApi.update_legacy_waf_firewall_service",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafFirewallApi#update_legacy_waf_firewall_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
