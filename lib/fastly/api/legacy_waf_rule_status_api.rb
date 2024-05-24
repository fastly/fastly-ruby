=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class LegacyWafRuleStatusApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the status of a rule on a firewall
    # Get a specific rule status object for a particular service, firewall, and rule.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [String] :waf_rule_id Alphanumeric string identifying a WAF rule. (required)
    # @return [Object]
    def get_waf_firewall_rule_status(opts = {})
      data, _status_code, _headers = get_waf_firewall_rule_status_with_http_info(opts)
      data
    end

    # Get the status of a rule on a firewall
    # Get a specific rule status object for a particular service, firewall, and rule.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [String] :waf_rule_id Alphanumeric string identifying a WAF rule. (required)
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_waf_firewall_rule_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafRuleStatusApi.get_waf_firewall_rule_status ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      firewall_id = opts[:'firewall_id']
      waf_rule_id = opts[:'waf_rule_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LegacyWafRuleStatusApi.get_waf_firewall_rule_status"
      end
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling LegacyWafRuleStatusApi.get_waf_firewall_rule_status"
      end
      # verify the required parameter 'waf_rule_id' is set
      if @api_client.config.client_side_validation && waf_rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'waf_rule_id' when calling LegacyWafRuleStatusApi.get_waf_firewall_rule_status"
      end
      # resource path
      local_var_path = '/service/{service_id}/wafs/{firewall_id}/rules/{waf_rule_id}/rule_status'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s)).sub('{' + 'waf_rule_id' + '}', CGI.escape(waf_rule_id.to_s))

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
        :operation => :"LegacyWafRuleStatusApi.get_waf_firewall_rule_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafRuleStatusApi#get_waf_firewall_rule_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List rule statuses
    # List all rule statuses for a particular service and firewall.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [String] :filter_status Limit results to rule statuses with the specified status.
    # @option opts [String] :filter_rule_message Limit results to rule statuses whose rules have the specified message.
    # @option opts [String] :filter_rule_rule_id Limit results to rule statuses whose rules represent the specified ModSecurity rule_id.
    # @option opts [String] :filter_rule_tags Limit results to rule statuses whose rules relate to the specified tag IDs.
    # @option opts [String] :filter_rule_tags_name Limit results to rule statuses whose rules related to the named tags.
    # @option opts [String] :include Include relationships. Optional, comma separated values. Permitted values: &#x60;tags&#x60;. 
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @return [Object]
    def list_waf_firewall_rule_statuses(opts = {})
      data, _status_code, _headers = list_waf_firewall_rule_statuses_with_http_info(opts)
      data
    end

    # List rule statuses
    # List all rule statuses for a particular service and firewall.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [String] :filter_status Limit results to rule statuses with the specified status.
    # @option opts [String] :filter_rule_message Limit results to rule statuses whose rules have the specified message.
    # @option opts [String] :filter_rule_rule_id Limit results to rule statuses whose rules represent the specified ModSecurity rule_id.
    # @option opts [String] :filter_rule_tags Limit results to rule statuses whose rules relate to the specified tag IDs.
    # @option opts [String] :filter_rule_tags_name Limit results to rule statuses whose rules related to the named tags.
    # @option opts [String] :include Include relationships. Optional, comma separated values. Permitted values: &#x60;tags&#x60;. 
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def list_waf_firewall_rule_statuses_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafRuleStatusApi.list_waf_firewall_rule_statuses ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      firewall_id = opts[:'firewall_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LegacyWafRuleStatusApi.list_waf_firewall_rule_statuses"
      end
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling LegacyWafRuleStatusApi.list_waf_firewall_rule_statuses"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling LegacyWafRuleStatusApi.list_waf_firewall_rule_statuses, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling LegacyWafRuleStatusApi.list_waf_firewall_rule_statuses, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/service/{service_id}/wafs/{firewall_id}/rule_statuses'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter[status]'] = opts[:'filter_status'] if !opts[:'filter_status'].nil?
      query_params[:'filter[rule][message]'] = opts[:'filter_rule_message'] if !opts[:'filter_rule_message'].nil?
      query_params[:'filter[rule][rule_id]'] = opts[:'filter_rule_rule_id'] if !opts[:'filter_rule_rule_id'].nil?
      query_params[:'filter[rule][tags]'] = opts[:'filter_rule_tags'] if !opts[:'filter_rule_tags'].nil?
      query_params[:'filter[rule][tags][name]'] = opts[:'filter_rule_tags_name'] if !opts[:'filter_rule_tags_name'].nil?
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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LegacyWafRuleStatusApi.list_waf_firewall_rule_statuses",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafRuleStatusApi#list_waf_firewall_rule_statuses\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the status of a rule
    # Update a rule status for a particular service, firewall, and rule.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [String] :waf_rule_id Alphanumeric string identifying a WAF rule. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Object]
    def update_waf_firewall_rule_status(opts = {})
      data, _status_code, _headers = update_waf_firewall_rule_status_with_http_info(opts)
      data
    end

    # Update the status of a rule
    # Update a rule status for a particular service, firewall, and rule.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [String] :waf_rule_id Alphanumeric string identifying a WAF rule. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def update_waf_firewall_rule_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafRuleStatusApi.update_waf_firewall_rule_status ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      firewall_id = opts[:'firewall_id']
      waf_rule_id = opts[:'waf_rule_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LegacyWafRuleStatusApi.update_waf_firewall_rule_status"
      end
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling LegacyWafRuleStatusApi.update_waf_firewall_rule_status"
      end
      # verify the required parameter 'waf_rule_id' is set
      if @api_client.config.client_side_validation && waf_rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'waf_rule_id' when calling LegacyWafRuleStatusApi.update_waf_firewall_rule_status"
      end
      # resource path
      local_var_path = '/service/{service_id}/wafs/{firewall_id}/rules/{waf_rule_id}/rule_status'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s)).sub('{' + 'waf_rule_id' + '}', CGI.escape(waf_rule_id.to_s))

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
        :operation => :"LegacyWafRuleStatusApi.update_waf_firewall_rule_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafRuleStatusApi#update_waf_firewall_rule_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or update status of a tagged group of rules
    # Create or update all rule statuses for a particular service and firewall, based on tag name. By default, only rule status for enabled rules (with status log or block) will be updated. To update rule statuses for disabled rules under the specified tag, use the force attribute.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [String] :name The tag name to use to determine the set of rules to update. For example, OWASP or language-php.
    # @option opts [String] :force Whether or not to update rule statuses for disabled rules. Optional.
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Object]
    def update_waf_firewall_rule_statuses_tag(opts = {})
      data, _status_code, _headers = update_waf_firewall_rule_statuses_tag_with_http_info(opts)
      data
    end

    # Create or update status of a tagged group of rules
    # Create or update all rule statuses for a particular service and firewall, based on tag name. By default, only rule status for enabled rules (with status log or block) will be updated. To update rule statuses for disabled rules under the specified tag, use the force attribute.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [String] :name The tag name to use to determine the set of rules to update. For example, OWASP or language-php.
    # @option opts [String] :force Whether or not to update rule statuses for disabled rules. Optional.
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def update_waf_firewall_rule_statuses_tag_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafRuleStatusApi.update_waf_firewall_rule_statuses_tag ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      firewall_id = opts[:'firewall_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LegacyWafRuleStatusApi.update_waf_firewall_rule_statuses_tag"
      end
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling LegacyWafRuleStatusApi.update_waf_firewall_rule_statuses_tag"
      end
      # resource path
      local_var_path = '/service/{service_id}/wafs/{firewall_id}/rule_statuses'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'force'] = opts[:'force'] if !opts[:'force'].nil?

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
        :operation => :"LegacyWafRuleStatusApi.update_waf_firewall_rule_statuses_tag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafRuleStatusApi#update_waf_firewall_rule_statuses_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
