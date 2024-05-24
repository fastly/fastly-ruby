=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class WafRuleRevisionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a revision of a rule
    # Get a specific rule revision.
    # @option opts [String] :waf_rule_id Alphanumeric string identifying a WAF rule. (required)
    # @option opts [Integer] :waf_rule_revision_number Revision number. (required)
    # @option opts [String] :include Include relationships. Optional, comma-separated values. Permitted values: &#x60;waf_rule&#x60;, &#x60;vcl&#x60;, and &#x60;source&#x60;. The &#x60;vcl&#x60; and &#x60;source&#x60; relationships show the WAF VCL and corresponding ModSecurity source. These fields are blank unless the relationship is included. 
    # @return [WafRuleRevisionResponse]
    def get_waf_rule_revision(opts = {})
      data, _status_code, _headers = get_waf_rule_revision_with_http_info(opts)
      data
    end

    # Get a revision of a rule
    # Get a specific rule revision.
    # @option opts [String] :waf_rule_id Alphanumeric string identifying a WAF rule. (required)
    # @option opts [Integer] :waf_rule_revision_number Revision number. (required)
    # @option opts [String] :include Include relationships. Optional, comma-separated values. Permitted values: &#x60;waf_rule&#x60;, &#x60;vcl&#x60;, and &#x60;source&#x60;. The &#x60;vcl&#x60; and &#x60;source&#x60; relationships show the WAF VCL and corresponding ModSecurity source. These fields are blank unless the relationship is included. 
    # @return [Array<(WafRuleRevisionResponse, Integer, Hash)>] WafRuleRevisionResponse data, response status code and response headers
    def get_waf_rule_revision_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafRuleRevisionsApi.get_waf_rule_revision ...'
      end
      # unbox the parameters from the hash
      waf_rule_id = opts[:'waf_rule_id']
      waf_rule_revision_number = opts[:'waf_rule_revision_number']
      # verify the required parameter 'waf_rule_id' is set
      if @api_client.config.client_side_validation && waf_rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'waf_rule_id' when calling WafRuleRevisionsApi.get_waf_rule_revision"
      end
      # verify the required parameter 'waf_rule_revision_number' is set
      if @api_client.config.client_side_validation && waf_rule_revision_number.nil?
        fail ArgumentError, "Missing the required parameter 'waf_rule_revision_number' when calling WafRuleRevisionsApi.get_waf_rule_revision"
      end
      # resource path
      local_var_path = '/waf/rules/{waf_rule_id}/revisions/{waf_rule_revision_number}'.sub('{' + 'waf_rule_id' + '}', CGI.escape(waf_rule_id.to_s)).sub('{' + 'waf_rule_revision_number' + '}', CGI.escape(waf_rule_revision_number.to_s))

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
      return_type = opts[:debug_return_type] || 'WafRuleRevisionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafRuleRevisionsApi.get_waf_rule_revision",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafRuleRevisionsApi#get_waf_rule_revision\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List revisions for a rule
    # List all revisions for a specific rule. The `rule_id` provided can be the ModSecurity Rule ID or the Fastly generated rule ID.
    # @option opts [String] :waf_rule_id Alphanumeric string identifying a WAF rule. (required)
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :include Include relationships. Optional. (default to 'waf_rule')
    # @return [WafRuleRevisionsResponse]
    def list_waf_rule_revisions(opts = {})
      data, _status_code, _headers = list_waf_rule_revisions_with_http_info(opts)
      data
    end

    # List revisions for a rule
    # List all revisions for a specific rule. The &#x60;rule_id&#x60; provided can be the ModSecurity Rule ID or the Fastly generated rule ID.
    # @option opts [String] :waf_rule_id Alphanumeric string identifying a WAF rule. (required)
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :include Include relationships. Optional. (default to 'waf_rule')
    # @return [Array<(WafRuleRevisionsResponse, Integer, Hash)>] WafRuleRevisionsResponse data, response status code and response headers
    def list_waf_rule_revisions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafRuleRevisionsApi.list_waf_rule_revisions ...'
      end
      # unbox the parameters from the hash
      waf_rule_id = opts[:'waf_rule_id']
      # verify the required parameter 'waf_rule_id' is set
      if @api_client.config.client_side_validation && waf_rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'waf_rule_id' when calling WafRuleRevisionsApi.list_waf_rule_revisions"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling WafRuleRevisionsApi.list_waf_rule_revisions, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling WafRuleRevisionsApi.list_waf_rule_revisions, must be greater than or equal to 1.'
      end

      allowable_values = ["waf_rule"]
      if @api_client.config.client_side_validation && opts[:'include'] && !allowable_values.include?(opts[:'include'])
        fail ArgumentError, "invalid value for \"include\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/waf/rules/{waf_rule_id}/revisions'.sub('{' + 'waf_rule_id' + '}', CGI.escape(waf_rule_id.to_s))

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
      return_type = opts[:debug_return_type] || 'WafRuleRevisionsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafRuleRevisionsApi.list_waf_rule_revisions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafRuleRevisionsApi#list_waf_rule_revisions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
