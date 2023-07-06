=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class WafActiveRulesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete multiple active rules from a WAF
    # Delete many active rules on a particular firewall version using the active rule ID. Limited to 500 rules per request.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [nil]
    def bulk_delete_waf_active_rules(opts = {})
      bulk_delete_waf_active_rules_with_http_info(opts)
      nil
    end

    # Delete multiple active rules from a WAF
    # Delete many active rules on a particular firewall version using the active rule ID. Limited to 500 rules per request.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def bulk_delete_waf_active_rules_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafActiveRulesApi.bulk_delete_waf_active_rules ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling WafActiveRulesApi.bulk_delete_waf_active_rules"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling WafActiveRulesApi.bulk_delete_waf_active_rules"
      end
      # resource path
      local_var_path = '/waf/firewalls/{firewall_id}/versions/{version_id}/active-rules'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/vnd.api+json; ext=bulk'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'request_body'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafActiveRulesApi.bulk_delete_waf_active_rules",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafActiveRulesApi#bulk_delete_waf_active_rules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update multiple active rules
    # Bulk update all active rules on a [firewall version](https://developer.fastly.com/reference/api/waf/firewall-version/). This endpoint will not add new active rules, only update existing active rules.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [WafActiveRuleData] :body 
    # @return [nil]
    def bulk_update_waf_active_rules(opts = {})
      bulk_update_waf_active_rules_with_http_info(opts)
      nil
    end

    # Update multiple active rules
    # Bulk update all active rules on a [firewall version](https://developer.fastly.com/reference/api/waf/firewall-version/). This endpoint will not add new active rules, only update existing active rules.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [WafActiveRuleData] :body 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def bulk_update_waf_active_rules_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafActiveRulesApi.bulk_update_waf_active_rules ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling WafActiveRulesApi.bulk_update_waf_active_rules"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling WafActiveRulesApi.bulk_update_waf_active_rules"
      end
      # resource path
      local_var_path = '/waf/firewalls/{firewall_id}/versions/{version_id}/active-rules/bulk'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/vnd.api+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafActiveRulesApi.bulk_update_waf_active_rules",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafActiveRulesApi#bulk_update_waf_active_rules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a rule to a WAF as an active rule
    # Create an active rule for a particular firewall version.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [WafActiveRule] :waf_active_rule 
    # @return [WafActiveRuleCreationResponse]
    def create_waf_active_rule(opts = {})
      data, _status_code, _headers = create_waf_active_rule_with_http_info(opts)
      data
    end

    # Add a rule to a WAF as an active rule
    # Create an active rule for a particular firewall version.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [WafActiveRule] :waf_active_rule 
    # @return [Array<(WafActiveRuleCreationResponse, Integer, Hash)>] WafActiveRuleCreationResponse data, response status code and response headers
    def create_waf_active_rule_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafActiveRulesApi.create_waf_active_rule ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling WafActiveRulesApi.create_waf_active_rule"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling WafActiveRulesApi.create_waf_active_rule"
      end
      # resource path
      local_var_path = '/waf/firewalls/{firewall_id}/versions/{version_id}/active-rules'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/vnd.api+json', 'application/vnd.api+json; ext=bulk'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'waf_active_rule'])

      # return_type
      return_type = opts[:debug_return_type] || 'WafActiveRuleCreationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafActiveRulesApi.create_waf_active_rule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafActiveRulesApi#create_waf_active_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create active rules by tag
    # Create active rules by tag. This endpoint will create active rules using the latest revision available for each rule.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :waf_tag_name Name of the tag. (required)
    # @option opts [WafActiveRule] :waf_active_rule 
    # @return [nil]
    def create_waf_active_rules_tag(opts = {})
      create_waf_active_rules_tag_with_http_info(opts)
      nil
    end

    # Create active rules by tag
    # Create active rules by tag. This endpoint will create active rules using the latest revision available for each rule.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :waf_tag_name Name of the tag. (required)
    # @option opts [WafActiveRule] :waf_active_rule 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_waf_active_rules_tag_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafActiveRulesApi.create_waf_active_rules_tag ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      version_id = opts[:'version_id']
      waf_tag_name = opts[:'waf_tag_name']
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling WafActiveRulesApi.create_waf_active_rules_tag"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling WafActiveRulesApi.create_waf_active_rules_tag"
      end
      # verify the required parameter 'waf_tag_name' is set
      if @api_client.config.client_side_validation && waf_tag_name.nil?
        fail ArgumentError, "Missing the required parameter 'waf_tag_name' when calling WafActiveRulesApi.create_waf_active_rules_tag"
      end
      # resource path
      local_var_path = '/waf/firewalls/{firewall_id}/versions/{version_id}/tags/{waf_tag_name}/active-rules'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'waf_tag_name' + '}', CGI.escape(waf_tag_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/vnd.api+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'waf_active_rule'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafActiveRulesApi.create_waf_active_rules_tag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafActiveRulesApi#create_waf_active_rules_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an active rule
    # Delete an active rule for a particular firewall version.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :waf_rule_id Alphanumeric string identifying a WAF rule. (required)
    # @return [nil]
    def delete_waf_active_rule(opts = {})
      delete_waf_active_rule_with_http_info(opts)
      nil
    end

    # Delete an active rule
    # Delete an active rule for a particular firewall version.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :waf_rule_id Alphanumeric string identifying a WAF rule. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_waf_active_rule_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafActiveRulesApi.delete_waf_active_rule ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      version_id = opts[:'version_id']
      waf_rule_id = opts[:'waf_rule_id']
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling WafActiveRulesApi.delete_waf_active_rule"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling WafActiveRulesApi.delete_waf_active_rule"
      end
      # verify the required parameter 'waf_rule_id' is set
      if @api_client.config.client_side_validation && waf_rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'waf_rule_id' when calling WafActiveRulesApi.delete_waf_active_rule"
      end
      # resource path
      local_var_path = '/waf/firewalls/{firewall_id}/versions/{version_id}/active-rules/{waf_rule_id}'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'waf_rule_id' + '}', CGI.escape(waf_rule_id.to_s))

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
        :operation => :"WafActiveRulesApi.delete_waf_active_rule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafActiveRulesApi#delete_waf_active_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an active WAF rule object
    # Get a specific active rule object. Includes details of the rule revision associated with the active rule object by default.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :waf_rule_id Alphanumeric string identifying a WAF rule. (required)
    # @option opts [String] :include Include relationships. Optional, comma-separated values. Permitted values: &#x60;waf_rule_revision&#x60; and &#x60;waf_firewall_version&#x60;. 
    # @return [WafActiveRuleResponse]
    def get_waf_active_rule(opts = {})
      data, _status_code, _headers = get_waf_active_rule_with_http_info(opts)
      data
    end

    # Get an active WAF rule object
    # Get a specific active rule object. Includes details of the rule revision associated with the active rule object by default.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :waf_rule_id Alphanumeric string identifying a WAF rule. (required)
    # @option opts [String] :include Include relationships. Optional, comma-separated values. Permitted values: &#x60;waf_rule_revision&#x60; and &#x60;waf_firewall_version&#x60;. 
    # @return [Array<(WafActiveRuleResponse, Integer, Hash)>] WafActiveRuleResponse data, response status code and response headers
    def get_waf_active_rule_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafActiveRulesApi.get_waf_active_rule ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      version_id = opts[:'version_id']
      waf_rule_id = opts[:'waf_rule_id']
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling WafActiveRulesApi.get_waf_active_rule"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling WafActiveRulesApi.get_waf_active_rule"
      end
      # verify the required parameter 'waf_rule_id' is set
      if @api_client.config.client_side_validation && waf_rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'waf_rule_id' when calling WafActiveRulesApi.get_waf_active_rule"
      end
      # resource path
      local_var_path = '/waf/firewalls/{firewall_id}/versions/{version_id}/active-rules/{waf_rule_id}'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'waf_rule_id' + '}', CGI.escape(waf_rule_id.to_s))

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
      return_type = opts[:debug_return_type] || 'WafActiveRuleResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafActiveRulesApi.get_waf_active_rule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafActiveRulesApi#get_waf_active_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List active rules on a WAF
    # List all active rules for a particular firewall version.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :filter_status Limit results to active rules with the specified status.
    # @option opts [String] :filter_waf_rule_revision_message Limit results to active rules with the specified message.
    # @option opts [String] :filter_waf_rule_revision_modsec_rule_id Limit results to active rules that represent the specified ModSecurity modsec_rule_id.
    # @option opts [String] :filter_outdated Limit results to active rules referencing an outdated rule revision.
    # @option opts [String] :include Include relationships. Optional, comma-separated values. Permitted values: &#x60;waf_rule_revision&#x60; and &#x60;waf_firewall_version&#x60;. 
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @return [WafActiveRulesResponse]
    def list_waf_active_rules(opts = {})
      data, _status_code, _headers = list_waf_active_rules_with_http_info(opts)
      data
    end

    # List active rules on a WAF
    # List all active rules for a particular firewall version.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :filter_status Limit results to active rules with the specified status.
    # @option opts [String] :filter_waf_rule_revision_message Limit results to active rules with the specified message.
    # @option opts [String] :filter_waf_rule_revision_modsec_rule_id Limit results to active rules that represent the specified ModSecurity modsec_rule_id.
    # @option opts [String] :filter_outdated Limit results to active rules referencing an outdated rule revision.
    # @option opts [String] :include Include relationships. Optional, comma-separated values. Permitted values: &#x60;waf_rule_revision&#x60; and &#x60;waf_firewall_version&#x60;. 
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @return [Array<(WafActiveRulesResponse, Integer, Hash)>] WafActiveRulesResponse data, response status code and response headers
    def list_waf_active_rules_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafActiveRulesApi.list_waf_active_rules ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      version_id = opts[:'version_id']
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling WafActiveRulesApi.list_waf_active_rules, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling WafActiveRulesApi.list_waf_active_rules, must be greater than or equal to 1.'
      end

      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling WafActiveRulesApi.list_waf_active_rules"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling WafActiveRulesApi.list_waf_active_rules"
      end
      # resource path
      local_var_path = '/waf/firewalls/{firewall_id}/versions/{version_id}/active-rules'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter[status]'] = opts[:'filter_status'] if !opts[:'filter_status'].nil?
      query_params[:'filter[waf_rule_revision][message]'] = opts[:'filter_waf_rule_revision_message'] if !opts[:'filter_waf_rule_revision_message'].nil?
      query_params[:'filter[waf_rule_revision][modsec_rule_id]'] = opts[:'filter_waf_rule_revision_modsec_rule_id'] if !opts[:'filter_waf_rule_revision_modsec_rule_id'].nil?
      query_params[:'filter[outdated]'] = opts[:'filter_outdated'] if !opts[:'filter_outdated'].nil?
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
      return_type = opts[:debug_return_type] || 'WafActiveRulesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafActiveRulesApi.list_waf_active_rules",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafActiveRulesApi#list_waf_active_rules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an active rule
    # Update an active rule's status for a particular firewall version.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :waf_rule_id Alphanumeric string identifying a WAF rule. (required)
    # @option opts [WafActiveRule] :waf_active_rule 
    # @return [WafActiveRuleResponse]
    def update_waf_active_rule(opts = {})
      data, _status_code, _headers = update_waf_active_rule_with_http_info(opts)
      data
    end

    # Update an active rule
    # Update an active rule&#39;s status for a particular firewall version.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :waf_rule_id Alphanumeric string identifying a WAF rule. (required)
    # @option opts [WafActiveRule] :waf_active_rule 
    # @return [Array<(WafActiveRuleResponse, Integer, Hash)>] WafActiveRuleResponse data, response status code and response headers
    def update_waf_active_rule_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafActiveRulesApi.update_waf_active_rule ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      version_id = opts[:'version_id']
      waf_rule_id = opts[:'waf_rule_id']
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling WafActiveRulesApi.update_waf_active_rule"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling WafActiveRulesApi.update_waf_active_rule"
      end
      # verify the required parameter 'waf_rule_id' is set
      if @api_client.config.client_side_validation && waf_rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'waf_rule_id' when calling WafActiveRulesApi.update_waf_active_rule"
      end
      # resource path
      local_var_path = '/waf/firewalls/{firewall_id}/versions/{version_id}/active-rules/{waf_rule_id}'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'waf_rule_id' + '}', CGI.escape(waf_rule_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'waf_active_rule'])

      # return_type
      return_type = opts[:debug_return_type] || 'WafActiveRuleResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafActiveRulesApi.update_waf_active_rule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafActiveRulesApi#update_waf_active_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
