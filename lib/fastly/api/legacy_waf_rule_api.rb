=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class LegacyWafRuleApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get VCL for a rule associated with a firewall
    # Get associated VCL for a specific rule associated with a specific firewall.
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [String] :waf_rule_id Alphanumeric string identifying a WAF rule. (required)
    # @return [Object]
    def get_legacy_waf_firewall_rule_vcl(opts = {})
      data, _status_code, _headers = get_legacy_waf_firewall_rule_vcl_with_http_info(opts)
      data
    end

    # Get VCL for a rule associated with a firewall
    # Get associated VCL for a specific rule associated with a specific firewall.
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [String] :waf_rule_id Alphanumeric string identifying a WAF rule. (required)
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_legacy_waf_firewall_rule_vcl_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafRuleApi.get_legacy_waf_firewall_rule_vcl ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      waf_rule_id = opts[:'waf_rule_id']
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling LegacyWafRuleApi.get_legacy_waf_firewall_rule_vcl"
      end
      # verify the required parameter 'waf_rule_id' is set
      if @api_client.config.client_side_validation && waf_rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'waf_rule_id' when calling LegacyWafRuleApi.get_legacy_waf_firewall_rule_vcl"
      end
      # resource path
      local_var_path = '/wafs/{firewall_id}/rules/{waf_rule_id}/vcl'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s)).sub('{' + 'waf_rule_id' + '}', CGI.escape(waf_rule_id.to_s))

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
        :operation => :"LegacyWafRuleApi.get_legacy_waf_firewall_rule_vcl",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafRuleApi#get_legacy_waf_firewall_rule_vcl\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a rule
    # Get a specific rule.
    # @option opts [String] :waf_rule_id Alphanumeric string identifying a WAF rule. (required)
    # @option opts [String] :filter_configuration_set_id Optional. Limit rule to a specific configuration set or pass \&quot;all\&quot; to search all configuration sets, including stale ones.
    # @option opts [String] :include Include relationships. Optional. Comma separated values. Permitted values: &#x60;tags&#x60;, &#x60;rule_statuses&#x60;, &#x60;source&#x60;, and &#x60;vcl&#x60;. 
    # @return [Object]
    def get_legacy_waf_rule(opts = {})
      data, _status_code, _headers = get_legacy_waf_rule_with_http_info(opts)
      data
    end

    # Get a rule
    # Get a specific rule.
    # @option opts [String] :waf_rule_id Alphanumeric string identifying a WAF rule. (required)
    # @option opts [String] :filter_configuration_set_id Optional. Limit rule to a specific configuration set or pass \&quot;all\&quot; to search all configuration sets, including stale ones.
    # @option opts [String] :include Include relationships. Optional. Comma separated values. Permitted values: &#x60;tags&#x60;, &#x60;rule_statuses&#x60;, &#x60;source&#x60;, and &#x60;vcl&#x60;. 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_legacy_waf_rule_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafRuleApi.get_legacy_waf_rule ...'
      end
      # unbox the parameters from the hash
      waf_rule_id = opts[:'waf_rule_id']
      # verify the required parameter 'waf_rule_id' is set
      if @api_client.config.client_side_validation && waf_rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'waf_rule_id' when calling LegacyWafRuleApi.get_legacy_waf_rule"
      end
      # resource path
      local_var_path = '/wafs/rules/{waf_rule_id}'.sub('{' + 'waf_rule_id' + '}', CGI.escape(waf_rule_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter[configuration_set_id]'] = opts[:'filter_configuration_set_id'] if !opts[:'filter_configuration_set_id'].nil?
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
        :operation => :"LegacyWafRuleApi.get_legacy_waf_rule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafRuleApi#get_legacy_waf_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get VCL for a rule
    # Get associated VCL for a specific rule.
    # @option opts [String] :waf_rule_id Alphanumeric string identifying a WAF rule. (required)
    # @return [Object]
    def get_legacy_waf_rule_vcl(opts = {})
      data, _status_code, _headers = get_legacy_waf_rule_vcl_with_http_info(opts)
      data
    end

    # Get VCL for a rule
    # Get associated VCL for a specific rule.
    # @option opts [String] :waf_rule_id Alphanumeric string identifying a WAF rule. (required)
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_legacy_waf_rule_vcl_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafRuleApi.get_legacy_waf_rule_vcl ...'
      end
      # unbox the parameters from the hash
      waf_rule_id = opts[:'waf_rule_id']
      # verify the required parameter 'waf_rule_id' is set
      if @api_client.config.client_side_validation && waf_rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'waf_rule_id' when calling LegacyWafRuleApi.get_legacy_waf_rule_vcl"
      end
      # resource path
      local_var_path = '/wafs/rules/{waf_rule_id}/vcl'.sub('{' + 'waf_rule_id' + '}', CGI.escape(waf_rule_id.to_s))

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
        :operation => :"LegacyWafRuleApi.get_legacy_waf_rule_vcl",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafRuleApi#get_legacy_waf_rule_vcl\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List rules in the latest configuration set
    # List all rules in the latest configuration set.
    # @option opts [String] :filter_rule_id Limit the returned rules to a specific rule ID.
    # @option opts [String] :filter_severity Limit the returned rules to a specific severity.
    # @option opts [String] :filter_tags_name Limit the returned rules to a set linked to a tag by name.
    # @option opts [String] :filter_configuration_set_id Optional. Limit rules to specific configuration set or pass \&quot;all\&quot; to search all configuration sets, including stale ones.
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :include Include relationships. Optional. Comma separated values. Permitted values: &#x60;tags&#x60;, &#x60;rule_statuses&#x60;, and &#x60;source&#x60;. 
    # @return [Array<Object>]
    def list_legacy_waf_rules(opts = {})
      data, _status_code, _headers = list_legacy_waf_rules_with_http_info(opts)
      data
    end

    # List rules in the latest configuration set
    # List all rules in the latest configuration set.
    # @option opts [String] :filter_rule_id Limit the returned rules to a specific rule ID.
    # @option opts [String] :filter_severity Limit the returned rules to a specific severity.
    # @option opts [String] :filter_tags_name Limit the returned rules to a set linked to a tag by name.
    # @option opts [String] :filter_configuration_set_id Optional. Limit rules to specific configuration set or pass \&quot;all\&quot; to search all configuration sets, including stale ones.
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :include Include relationships. Optional. Comma separated values. Permitted values: &#x60;tags&#x60;, &#x60;rule_statuses&#x60;, and &#x60;source&#x60;. 
    # @return [Array<(Array<Object>, Integer, Hash)>] Array<Object> data, response status code and response headers
    def list_legacy_waf_rules_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafRuleApi.list_legacy_waf_rules ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling LegacyWafRuleApi.list_legacy_waf_rules, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling LegacyWafRuleApi.list_legacy_waf_rules, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/wafs/rules'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter[rule_id]'] = opts[:'filter_rule_id'] if !opts[:'filter_rule_id'].nil?
      query_params[:'filter[severity]'] = opts[:'filter_severity'] if !opts[:'filter_severity'].nil?
      query_params[:'filter[tags][name]'] = opts[:'filter_tags_name'] if !opts[:'filter_tags_name'].nil?
      query_params[:'filter[configuration_set_id]'] = opts[:'filter_configuration_set_id'] if !opts[:'filter_configuration_set_id'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<Object>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LegacyWafRuleApi.list_legacy_waf_rules",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafRuleApi#list_legacy_waf_rules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
