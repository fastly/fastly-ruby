=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class WafRulesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a rule
    # Get a specific rule. The `id` provided can be the ModSecurity Rule ID or the Fastly generated rule ID.
    # @option opts [String] :waf_rule_id Alphanumeric string identifying a WAF rule. (required)
    # @option opts [String] :include Include relationships. Optional, comma-separated values. Permitted values: &#x60;waf_tags&#x60; and &#x60;waf_rule_revisions&#x60;. 
    # @return [WafRuleResponse]
    def get_waf_rule(opts = {})
      data, _status_code, _headers = get_waf_rule_with_http_info(opts)
      data
    end

    # Get a rule
    # Get a specific rule. The &#x60;id&#x60; provided can be the ModSecurity Rule ID or the Fastly generated rule ID.
    # @option opts [String] :waf_rule_id Alphanumeric string identifying a WAF rule. (required)
    # @option opts [String] :include Include relationships. Optional, comma-separated values. Permitted values: &#x60;waf_tags&#x60; and &#x60;waf_rule_revisions&#x60;. 
    # @return [Array<(WafRuleResponse, Integer, Hash)>] WafRuleResponse data, response status code and response headers
    def get_waf_rule_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafRulesApi.get_waf_rule ...'
      end
      # unbox the parameters from the hash
      waf_rule_id = opts[:'waf_rule_id']
      # verify the required parameter 'waf_rule_id' is set
      if @api_client.config.client_side_validation && waf_rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'waf_rule_id' when calling WafRulesApi.get_waf_rule"
      end
      # resource path
      local_var_path = '/waf/rules/{waf_rule_id}'.sub('{' + 'waf_rule_id' + '}', CGI.escape(waf_rule_id.to_s))

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
      return_type = opts[:debug_return_type] || 'WafRuleResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafRulesApi.get_waf_rule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafRulesApi#get_waf_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List available WAF rules
    # List all available WAF rules.
    # @option opts [String] :filter_modsec_rule_id Limit the returned rules to a specific ModSecurity rule ID.
    # @option opts [String] :filter_waf_tags_name Limit the returned rules to a set linked to a tag by name.
    # @option opts [String] :filter_waf_rule_revisions_source Limit the returned rules to a set linked to a source.
    # @option opts [String] :filter_waf_firewall_id_not_match Limit the returned rules to a set not included in the active firewall version for a firewall.
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :include Include relationships. Optional, comma-separated values. Permitted values: &#x60;waf_tags&#x60; and &#x60;waf_rule_revisions&#x60;. 
    # @return [WafRulesResponse]
    def list_waf_rules(opts = {})
      data, _status_code, _headers = list_waf_rules_with_http_info(opts)
      data
    end

    # List available WAF rules
    # List all available WAF rules.
    # @option opts [String] :filter_modsec_rule_id Limit the returned rules to a specific ModSecurity rule ID.
    # @option opts [String] :filter_waf_tags_name Limit the returned rules to a set linked to a tag by name.
    # @option opts [String] :filter_waf_rule_revisions_source Limit the returned rules to a set linked to a source.
    # @option opts [String] :filter_waf_firewall_id_not_match Limit the returned rules to a set not included in the active firewall version for a firewall.
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :include Include relationships. Optional, comma-separated values. Permitted values: &#x60;waf_tags&#x60; and &#x60;waf_rule_revisions&#x60;. 
    # @return [Array<(WafRulesResponse, Integer, Hash)>] WafRulesResponse data, response status code and response headers
    def list_waf_rules_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafRulesApi.list_waf_rules ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling WafRulesApi.list_waf_rules, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling WafRulesApi.list_waf_rules, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/waf/rules'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter[modsec_rule_id]'] = opts[:'filter_modsec_rule_id'] if !opts[:'filter_modsec_rule_id'].nil?
      query_params[:'filter[waf_tags][name]'] = opts[:'filter_waf_tags_name'] if !opts[:'filter_waf_tags_name'].nil?
      query_params[:'filter[waf_rule_revisions][source]'] = opts[:'filter_waf_rule_revisions_source'] if !opts[:'filter_waf_rule_revisions_source'].nil?
      query_params[:'filter[waf_firewall.id][not][match]'] = opts[:'filter_waf_firewall_id_not_match'] if !opts[:'filter_waf_firewall_id_not_match'].nil?
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
      return_type = opts[:debug_return_type] || 'WafRulesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafRulesApi.list_waf_rules",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafRulesApi#list_waf_rules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
