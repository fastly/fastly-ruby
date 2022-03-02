=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0


=end

require 'cgi'

module Fastly
  class WafExclusionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a WAF rule exclusion
    # Create a WAF exclusion for a particular firewall version.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :firewall_version_number Integer identifying a WAF firewall version. (required)
    # @option opts [WafExclusion] :waf_exclusion 
    # @return [WafExclusionResponse]
    def create_waf_rule_exclusion(opts = {})
      data, _status_code, _headers = create_waf_rule_exclusion_with_http_info(opts)
      data
    end

    # Create a WAF rule exclusion
    # Create a WAF exclusion for a particular firewall version.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :firewall_version_number Integer identifying a WAF firewall version. (required)
    # @option opts [WafExclusion] :waf_exclusion 
    # @return [Array<(WafExclusionResponse, Integer, Hash)>] WafExclusionResponse data, response status code and response headers
    def create_waf_rule_exclusion_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafExclusionsApi.create_waf_rule_exclusion ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      firewall_version_number = opts[:'firewall_version_number']
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling WafExclusionsApi.create_waf_rule_exclusion"
      end
      # verify the required parameter 'firewall_version_number' is set
      if @api_client.config.client_side_validation && firewall_version_number.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_version_number' when calling WafExclusionsApi.create_waf_rule_exclusion"
      end
      # resource path
      local_var_path = '/waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s)).sub('{' + 'firewall_version_number' + '}', CGI.escape(firewall_version_number.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'waf_exclusion'])

      # return_type
      return_type = opts[:debug_return_type] || 'WafExclusionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafExclusionsApi.create_waf_rule_exclusion",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafExclusionsApi#create_waf_rule_exclusion\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a WAF rule exclusion
    # Delete a WAF exclusion for a particular firewall version.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :firewall_version_number Integer identifying a WAF firewall version. (required)
    # @option opts [Integer] :exclusion_number A numeric ID identifying a WAF exclusion. (required)
    # @return [nil]
    def delete_waf_rule_exclusion(opts = {})
      delete_waf_rule_exclusion_with_http_info(opts)
      nil
    end

    # Delete a WAF rule exclusion
    # Delete a WAF exclusion for a particular firewall version.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :firewall_version_number Integer identifying a WAF firewall version. (required)
    # @option opts [Integer] :exclusion_number A numeric ID identifying a WAF exclusion. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_waf_rule_exclusion_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafExclusionsApi.delete_waf_rule_exclusion ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      firewall_version_number = opts[:'firewall_version_number']
      exclusion_number = opts[:'exclusion_number']
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling WafExclusionsApi.delete_waf_rule_exclusion"
      end
      # verify the required parameter 'firewall_version_number' is set
      if @api_client.config.client_side_validation && firewall_version_number.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_version_number' when calling WafExclusionsApi.delete_waf_rule_exclusion"
      end
      # verify the required parameter 'exclusion_number' is set
      if @api_client.config.client_side_validation && exclusion_number.nil?
        fail ArgumentError, "Missing the required parameter 'exclusion_number' when calling WafExclusionsApi.delete_waf_rule_exclusion"
      end
      # resource path
      local_var_path = '/waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions/{exclusion_number}'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s)).sub('{' + 'firewall_version_number' + '}', CGI.escape(firewall_version_number.to_s)).sub('{' + 'exclusion_number' + '}', CGI.escape(exclusion_number.to_s))

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
        :operation => :"WafExclusionsApi.delete_waf_rule_exclusion",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafExclusionsApi#delete_waf_rule_exclusion\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a WAF rule exclusion
    # Get a specific WAF exclusion object.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :firewall_version_number Integer identifying a WAF firewall version. (required)
    # @option opts [Integer] :exclusion_number A numeric ID identifying a WAF exclusion. (required)
    # @return [WafExclusionResponse]
    def get_waf_rule_exclusion(opts = {})
      data, _status_code, _headers = get_waf_rule_exclusion_with_http_info(opts)
      data
    end

    # Get a WAF rule exclusion
    # Get a specific WAF exclusion object.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :firewall_version_number Integer identifying a WAF firewall version. (required)
    # @option opts [Integer] :exclusion_number A numeric ID identifying a WAF exclusion. (required)
    # @return [Array<(WafExclusionResponse, Integer, Hash)>] WafExclusionResponse data, response status code and response headers
    def get_waf_rule_exclusion_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafExclusionsApi.get_waf_rule_exclusion ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      firewall_version_number = opts[:'firewall_version_number']
      exclusion_number = opts[:'exclusion_number']
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling WafExclusionsApi.get_waf_rule_exclusion"
      end
      # verify the required parameter 'firewall_version_number' is set
      if @api_client.config.client_side_validation && firewall_version_number.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_version_number' when calling WafExclusionsApi.get_waf_rule_exclusion"
      end
      # verify the required parameter 'exclusion_number' is set
      if @api_client.config.client_side_validation && exclusion_number.nil?
        fail ArgumentError, "Missing the required parameter 'exclusion_number' when calling WafExclusionsApi.get_waf_rule_exclusion"
      end
      # resource path
      local_var_path = '/waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions/{exclusion_number}'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s)).sub('{' + 'firewall_version_number' + '}', CGI.escape(firewall_version_number.to_s)).sub('{' + 'exclusion_number' + '}', CGI.escape(exclusion_number.to_s))

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
      return_type = opts[:debug_return_type] || 'WafExclusionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafExclusionsApi.get_waf_rule_exclusion",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafExclusionsApi#get_waf_rule_exclusion\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List WAF rule exclusions
    # List all exclusions for a particular firewall version.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :firewall_version_number Integer identifying a WAF firewall version. (required)
    # @option opts [String] :filter_exclusion_type Filters the results based on this exclusion type.
    # @option opts [String] :filter_name Filters the results based on name.
    # @option opts [Integer] :filter_waf_rules_modsec_rule_id Filters the results based on this ModSecurity rule ID.
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :include Include relationships. Optional, comma-separated values. Permitted values: &#x60;waf_rules&#x60; and &#x60;waf_rule_revisions&#x60;. 
    # @return [WafExclusionsResponse]
    def list_waf_rule_exclusions(opts = {})
      data, _status_code, _headers = list_waf_rule_exclusions_with_http_info(opts)
      data
    end

    # List WAF rule exclusions
    # List all exclusions for a particular firewall version.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :firewall_version_number Integer identifying a WAF firewall version. (required)
    # @option opts [String] :filter_exclusion_type Filters the results based on this exclusion type.
    # @option opts [String] :filter_name Filters the results based on name.
    # @option opts [Integer] :filter_waf_rules_modsec_rule_id Filters the results based on this ModSecurity rule ID.
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :include Include relationships. Optional, comma-separated values. Permitted values: &#x60;waf_rules&#x60; and &#x60;waf_rule_revisions&#x60;. 
    # @return [Array<(WafExclusionsResponse, Integer, Hash)>] WafExclusionsResponse data, response status code and response headers
    def list_waf_rule_exclusions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafExclusionsApi.list_waf_rule_exclusions ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      firewall_version_number = opts[:'firewall_version_number']
      allowable_values = ["rule", "variable", "waf"]
      if @api_client.config.client_side_validation && opts[:'filter_exclusion_type'] && !allowable_values.include?(opts[:'filter_exclusion_type'])
        fail ArgumentError, "invalid value for \"filter_exclusion_type\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling WafExclusionsApi.list_waf_rule_exclusions, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling WafExclusionsApi.list_waf_rule_exclusions, must be greater than or equal to 1.'
      end

      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling WafExclusionsApi.list_waf_rule_exclusions"
      end
      # verify the required parameter 'firewall_version_number' is set
      if @api_client.config.client_side_validation && firewall_version_number.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_version_number' when calling WafExclusionsApi.list_waf_rule_exclusions"
      end
      # resource path
      local_var_path = '/waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s)).sub('{' + 'firewall_version_number' + '}', CGI.escape(firewall_version_number.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter[exclusion_type]'] = opts[:'filter_exclusion_type'] if !opts[:'filter_exclusion_type'].nil?
      query_params[:'filter[name]'] = opts[:'filter_name'] if !opts[:'filter_name'].nil?
      query_params[:'filter[waf_rules.modsec_rule_id]'] = opts[:'filter_waf_rules_modsec_rule_id'] if !opts[:'filter_waf_rules_modsec_rule_id'].nil?
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
      return_type = opts[:debug_return_type] || 'WafExclusionsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafExclusionsApi.list_waf_rule_exclusions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafExclusionsApi#list_waf_rule_exclusions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a WAF rule exclusion
    # Update a WAF exclusion for a particular firewall version.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :firewall_version_number Integer identifying a WAF firewall version. (required)
    # @option opts [Integer] :exclusion_number A numeric ID identifying a WAF exclusion. (required)
    # @option opts [WafExclusion] :waf_exclusion 
    # @return [WafExclusionResponse]
    def update_waf_rule_exclusion(opts = {})
      data, _status_code, _headers = update_waf_rule_exclusion_with_http_info(opts)
      data
    end

    # Update a WAF rule exclusion
    # Update a WAF exclusion for a particular firewall version.
    # @option opts [String] :firewall_id Alphanumeric string identifying a WAF Firewall. (required)
    # @option opts [Integer] :firewall_version_number Integer identifying a WAF firewall version. (required)
    # @option opts [Integer] :exclusion_number A numeric ID identifying a WAF exclusion. (required)
    # @option opts [WafExclusion] :waf_exclusion 
    # @return [Array<(WafExclusionResponse, Integer, Hash)>] WafExclusionResponse data, response status code and response headers
    def update_waf_rule_exclusion_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WafExclusionsApi.update_waf_rule_exclusion ...'
      end
      # unbox the parameters from the hash
      firewall_id = opts[:'firewall_id']
      firewall_version_number = opts[:'firewall_version_number']
      exclusion_number = opts[:'exclusion_number']
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling WafExclusionsApi.update_waf_rule_exclusion"
      end
      # verify the required parameter 'firewall_version_number' is set
      if @api_client.config.client_side_validation && firewall_version_number.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_version_number' when calling WafExclusionsApi.update_waf_rule_exclusion"
      end
      # verify the required parameter 'exclusion_number' is set
      if @api_client.config.client_side_validation && exclusion_number.nil?
        fail ArgumentError, "Missing the required parameter 'exclusion_number' when calling WafExclusionsApi.update_waf_rule_exclusion"
      end
      # resource path
      local_var_path = '/waf/firewalls/{firewall_id}/versions/{firewall_version_number}/exclusions/{exclusion_number}'.sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s)).sub('{' + 'firewall_version_number' + '}', CGI.escape(firewall_version_number.to_s)).sub('{' + 'exclusion_number' + '}', CGI.escape(exclusion_number.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'waf_exclusion'])

      # return_type
      return_type = opts[:debug_return_type] || 'WafExclusionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"WafExclusionsApi.update_waf_rule_exclusion",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WafExclusionsApi#update_waf_rule_exclusion\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
