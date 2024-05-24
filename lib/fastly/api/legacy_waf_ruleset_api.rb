=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class LegacyWafRulesetApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a WAF ruleset
    # Get a WAF ruleset for a particular service and firewall object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @return [Object]
    def get_waf_ruleset(opts = {})
      data, _status_code, _headers = get_waf_ruleset_with_http_info(opts)
      data
    end

    # Get a WAF ruleset
    # Get a WAF ruleset for a particular service and firewall object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_waf_ruleset_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafRulesetApi.get_waf_ruleset ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      firewall_id = opts[:'firewall_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LegacyWafRulesetApi.get_waf_ruleset"
      end
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling LegacyWafRulesetApi.get_waf_ruleset"
      end
      # resource path
      local_var_path = '/service/{service_id}/wafs/{firewall_id}/ruleset'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s))

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
        :operation => :"LegacyWafRulesetApi.get_waf_ruleset",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafRulesetApi#get_waf_ruleset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate WAF ruleset VCL
    # Get a preview of the WAF ruleset VCL for a particular service and firewall object based on changes to WAF configuration before deploying the ruleset. The response will include a link to status of the background VCL generation job. Once the background job is completed, the preview WAF ruleset VCL can be retrieved from the status response.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @return [Object]
    def get_waf_ruleset_vcl(opts = {})
      data, _status_code, _headers = get_waf_ruleset_vcl_with_http_info(opts)
      data
    end

    # Generate WAF ruleset VCL
    # Get a preview of the WAF ruleset VCL for a particular service and firewall object based on changes to WAF configuration before deploying the ruleset. The response will include a link to status of the background VCL generation job. Once the background job is completed, the preview WAF ruleset VCL can be retrieved from the status response.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_waf_ruleset_vcl_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafRulesetApi.get_waf_ruleset_vcl ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      firewall_id = opts[:'firewall_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LegacyWafRulesetApi.get_waf_ruleset_vcl"
      end
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling LegacyWafRulesetApi.get_waf_ruleset_vcl"
      end
      # resource path
      local_var_path = '/service/{service_id}/wafs/{firewall_id}/ruleset/preview'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s))

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
        :operation => :"LegacyWafRulesetApi.get_waf_ruleset_vcl",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafRulesetApi#get_waf_ruleset_vcl\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a WAF ruleset
    # Update the WAF ruleset for a particular service and firewall object. Use the URL in the response to view the WAF ruleset deploy status.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Object]
    def update_waf_ruleset(opts = {})
      data, _status_code, _headers = update_waf_ruleset_with_http_info(opts)
      data
    end

    # Update a WAF ruleset
    # Update the WAF ruleset for a particular service and firewall object. Use the URL in the response to view the WAF ruleset deploy status.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def update_waf_ruleset_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafRulesetApi.update_waf_ruleset ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      firewall_id = opts[:'firewall_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LegacyWafRulesetApi.update_waf_ruleset"
      end
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling LegacyWafRulesetApi.update_waf_ruleset"
      end
      # resource path
      local_var_path = '/service/{service_id}/wafs/{firewall_id}/ruleset'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s))

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
        :operation => :"LegacyWafRulesetApi.update_waf_ruleset",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafRulesetApi#update_waf_ruleset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
