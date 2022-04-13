=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class WafFirewallVersionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Clone a firewall version
    # Clone a specific, existing firewall version into a new, draft firewall version.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :firewall_version_number Integer identifying a WAF firewall version. (required)
    # @return [WafFirewallVersionResponse]
    def clone_waf_firewall_version(opts = {})
      data, _status_code, _headers = clone_waf_firewall_version_with_http_info(opts)
      data
    end

    # Clone a firewall version
    # Clone a specific, existing firewall version into a new, draft firewall version.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :firewall_version_number Integer identifying a WAF firewall version. (required)
    # @return [Array<(WafFirewallVersionResponse, Integer, Hash)>] WafFirewallVersionResponse data, response status code and response headers
    def clone_waf_firewall_version_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafFirewallVersionsApi.clone_waf_firewall_version ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      firewall_version_number = opts[:'firewall_version_number']
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling WafFirewallVersionsApi.clone_waf_firewall_version"
      end
      # verify the required parameter 'firewall_version_number' is set
      if @api_client.config.client_side_validation && firewall_version_number.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_version_number' when calling WafFirewallVersionsApi.clone_waf_firewall_version"
      end
      # resource path
      local_var_path = '/waf/firewalls/{firewall_id}/versions/{firewall_version_number}/clone'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s)).sub('{' + 'firewall_version_number' + '}', CGI.escape(firewall_version_number.to_s))

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
      return_type = opts[:debug_return_type] || 'WafFirewallVersionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafFirewallVersionsApi.clone_waf_firewall_version",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafFirewallVersionsApi#clone_waf_firewall_version\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a firewall version
    # Create a new, draft firewall version.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [WafFirewallVersion] :waf_firewall_version 
    # @return [WafFirewallVersionResponse]
    def create_waf_firewall_version(opts = {})
      data, _status_code, _headers = create_waf_firewall_version_with_http_info(opts)
      data
    end

    # Create a firewall version
    # Create a new, draft firewall version.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [WafFirewallVersion] :waf_firewall_version 
    # @return [Array<(WafFirewallVersionResponse, Integer, Hash)>] WafFirewallVersionResponse data, response status code and response headers
    def create_waf_firewall_version_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafFirewallVersionsApi.create_waf_firewall_version ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling WafFirewallVersionsApi.create_waf_firewall_version"
      end
      # resource path
      local_var_path = '/waf/firewalls/{firewall_id}/versions'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'waf_firewall_version'])

      # return_type
      return_type = opts[:debug_return_type] || 'WafFirewallVersionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafFirewallVersionsApi.create_waf_firewall_version",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafFirewallVersionsApi#create_waf_firewall_version\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deploy or activate a firewall version
    # Deploy or activate a specific firewall version. If a firewall has been disabled, deploying a firewall version will automatically enable the firewall again.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :firewall_version_number Integer identifying a WAF firewall version. (required)
    # @return [Object]
    def deploy_activate_waf_firewall_version(opts = {})
      data, _status_code, _headers = deploy_activate_waf_firewall_version_with_http_info(opts)
      data
    end

    # Deploy or activate a firewall version
    # Deploy or activate a specific firewall version. If a firewall has been disabled, deploying a firewall version will automatically enable the firewall again.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :firewall_version_number Integer identifying a WAF firewall version. (required)
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def deploy_activate_waf_firewall_version_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafFirewallVersionsApi.deploy_activate_waf_firewall_version ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      firewall_version_number = opts[:'firewall_version_number']
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling WafFirewallVersionsApi.deploy_activate_waf_firewall_version"
      end
      # verify the required parameter 'firewall_version_number' is set
      if @api_client.config.client_side_validation && firewall_version_number.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_version_number' when calling WafFirewallVersionsApi.deploy_activate_waf_firewall_version"
      end
      # resource path
      local_var_path = '/waf/firewalls/{firewall_id}/versions/{firewall_version_number}/activate'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s)).sub('{' + 'firewall_version_number' + '}', CGI.escape(firewall_version_number.to_s))

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
        :operation => :"WafFirewallVersionsApi.deploy_activate_waf_firewall_version",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafFirewallVersionsApi#deploy_activate_waf_firewall_version\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a firewall version
    # Get details about a specific firewall version.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :firewall_version_number Integer identifying a WAF firewall version. (required)
    # @option opts [String] :include Include relationships. Optional, comma-separated values. Permitted values: &#x60;waf_firewall&#x60; and &#x60;waf_active_rules&#x60;. 
    # @return [WafFirewallVersionResponse]
    def get_waf_firewall_version(opts = {})
      data, _status_code, _headers = get_waf_firewall_version_with_http_info(opts)
      data
    end

    # Get a firewall version
    # Get details about a specific firewall version.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :firewall_version_number Integer identifying a WAF firewall version. (required)
    # @option opts [String] :include Include relationships. Optional, comma-separated values. Permitted values: &#x60;waf_firewall&#x60; and &#x60;waf_active_rules&#x60;. 
    # @return [Array<(WafFirewallVersionResponse, Integer, Hash)>] WafFirewallVersionResponse data, response status code and response headers
    def get_waf_firewall_version_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafFirewallVersionsApi.get_waf_firewall_version ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      firewall_version_number = opts[:'firewall_version_number']
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling WafFirewallVersionsApi.get_waf_firewall_version"
      end
      # verify the required parameter 'firewall_version_number' is set
      if @api_client.config.client_side_validation && firewall_version_number.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_version_number' when calling WafFirewallVersionsApi.get_waf_firewall_version"
      end
      # resource path
      local_var_path = '/waf/firewalls/{firewall_id}/versions/{firewall_version_number}'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s)).sub('{' + 'firewall_version_number' + '}', CGI.escape(firewall_version_number.to_s))

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
      return_type = opts[:debug_return_type] || 'WafFirewallVersionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafFirewallVersionsApi.get_waf_firewall_version",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafFirewallVersionsApi#get_waf_firewall_version\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List firewall versions
    # Get a list of firewall versions associated with a specific firewall.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [String] :include Include relationships. Optional.
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @return [WafFirewallVersionsResponse]
    def list_waf_firewall_versions(opts = {})
      data, _status_code, _headers = list_waf_firewall_versions_with_http_info(opts)
      data
    end

    # List firewall versions
    # Get a list of firewall versions associated with a specific firewall.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [String] :include Include relationships. Optional.
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @return [Array<(WafFirewallVersionsResponse, Integer, Hash)>] WafFirewallVersionsResponse data, response status code and response headers
    def list_waf_firewall_versions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafFirewallVersionsApi.list_waf_firewall_versions ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling WafFirewallVersionsApi.list_waf_firewall_versions, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling WafFirewallVersionsApi.list_waf_firewall_versions, must be greater than or equal to 1.'
      end

      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling WafFirewallVersionsApi.list_waf_firewall_versions"
      end
      # resource path
      local_var_path = '/waf/firewalls/{firewall_id}/versions'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?
      query_params[:'page[number]'] = opts[:'page_number'] if !opts[:'page_number'].nil?
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WafFirewallVersionsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafFirewallVersionsApi.list_waf_firewall_versions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafFirewallVersionsApi#list_waf_firewall_versions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a firewall version
    # Update a specific firewall version.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :firewall_version_number Integer identifying a WAF firewall version. (required)
    # @option opts [WafFirewallVersion] :waf_firewall_version 
    # @return [WafFirewallVersionResponse]
    def update_waf_firewall_version(opts = {})
      data, _status_code, _headers = update_waf_firewall_version_with_http_info(opts)
      data
    end

    # Update a firewall version
    # Update a specific firewall version.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :firewall_version_number Integer identifying a WAF firewall version. (required)
    # @option opts [WafFirewallVersion] :waf_firewall_version 
    # @return [Array<(WafFirewallVersionResponse, Integer, Hash)>] WafFirewallVersionResponse data, response status code and response headers
    def update_waf_firewall_version_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafFirewallVersionsApi.update_waf_firewall_version ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      firewall_version_number = opts[:'firewall_version_number']
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling WafFirewallVersionsApi.update_waf_firewall_version"
      end
      # verify the required parameter 'firewall_version_number' is set
      if @api_client.config.client_side_validation && firewall_version_number.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_version_number' when calling WafFirewallVersionsApi.update_waf_firewall_version"
      end
      # resource path
      local_var_path = '/waf/firewalls/{firewall_id}/versions/{firewall_version_number}'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s)).sub('{' + 'firewall_version_number' + '}', CGI.escape(firewall_version_number.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'waf_firewall_version'])

      # return_type
      return_type = opts[:debug_return_type] || 'WafFirewallVersionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafFirewallVersionsApi.update_waf_firewall_version",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafFirewallVersionsApi#update_waf_firewall_version\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
