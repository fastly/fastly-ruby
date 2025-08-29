=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class DdosProtectionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get event by ID
    # Get event by ID.
    # @option opts [String] :event_id Unique ID of the event. (required)
    # @return [DdosProtectionEvent]
    def ddos_protection_event_get(opts = {})
      data, _status_code, _headers = ddos_protection_event_get_with_http_info(opts)
      data
    end

    # Get event by ID
    # Get event by ID.
    # @option opts [String] :event_id Unique ID of the event. (required)
    # @return [Array<(DdosProtectionEvent, Integer, Hash)>] DdosProtectionEvent data, response status code and response headers
    def ddos_protection_event_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DdosProtectionApi.ddos_protection_event_get ...'
      end
      # unbox the parameters from the hash
      event_id = opts[:'event_id']
      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling DdosProtectionApi.ddos_protection_event_get"
      end
      # resource path
      local_var_path = '/ddos-protection/v1/events/{event_id}'.sub('{' + 'event_id' + '}', CGI.escape(event_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DdosProtectionEvent'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DdosProtectionApi.ddos_protection_event_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DdosProtectionApi#ddos_protection_event_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get events
    # Get events.
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @option opts [Integer] :limit Limit how many results are returned. (default to 20)
    # @option opts [String] :service_id Filter results based on a service_id.
    # @option opts [Time] :from Represents the start of a date-time range expressed in RFC 3339 format.
    # @option opts [Time] :to Represents the end of a date-time range expressed in RFC 3339 format.
    # @option opts [String] :name 
    # @return [InlineResponse2002]
    def ddos_protection_event_list(opts = {})
      data, _status_code, _headers = ddos_protection_event_list_with_http_info(opts)
      data
    end

    # Get events
    # Get events.
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @option opts [Integer] :limit Limit how many results are returned. (default to 20)
    # @option opts [String] :service_id Filter results based on a service_id.
    # @option opts [Time] :from Represents the start of a date-time range expressed in RFC 3339 format.
    # @option opts [Time] :to Represents the end of a date-time range expressed in RFC 3339 format.
    # @option opts [String] :name 
    # @return [Array<(InlineResponse2002, Integer, Hash)>] InlineResponse2002 data, response status code and response headers
    def ddos_protection_event_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DdosProtectionApi.ddos_protection_event_list ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling DdosProtectionApi.ddos_protection_event_list, must be smaller than or equal to 100.'
      end

      # resource path
      local_var_path = '/ddos-protection/v1/events'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'service_id'] = opts[:'service_id'] if !opts[:'service_id'].nil?
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse2002'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DdosProtectionApi.ddos_protection_event_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DdosProtectionApi#ddos_protection_event_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all rules for an event
    # Get all rules for an event.
    # @option opts [String] :event_id Unique ID of the event. (required)
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @option opts [Integer] :limit Limit how many results are returned. (default to 20)
    # @return [InlineResponse2003]
    def ddos_protection_event_rule_list(opts = {})
      data, _status_code, _headers = ddos_protection_event_rule_list_with_http_info(opts)
      data
    end

    # Get all rules for an event
    # Get all rules for an event.
    # @option opts [String] :event_id Unique ID of the event. (required)
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @option opts [Integer] :limit Limit how many results are returned. (default to 20)
    # @return [Array<(InlineResponse2003, Integer, Hash)>] InlineResponse2003 data, response status code and response headers
    def ddos_protection_event_rule_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DdosProtectionApi.ddos_protection_event_rule_list ...'
      end
      # unbox the parameters from the hash
      event_id = opts[:'event_id']
      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling DdosProtectionApi.ddos_protection_event_rule_list"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling DdosProtectionApi.ddos_protection_event_rule_list, must be smaller than or equal to 100.'
      end

      # resource path
      local_var_path = '/ddos-protection/v1/events/{event_id}/rules'.sub('{' + 'event_id' + '}', CGI.escape(event_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse2003'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DdosProtectionApi.ddos_protection_event_rule_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DdosProtectionApi#ddos_protection_event_rule_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a rule by ID
    # Get a rule by ID.
    # @option opts [String] :rule_id Unique ID of the rule. (required)
    # @return [DdosProtectionRule]
    def ddos_protection_rule_get(opts = {})
      data, _status_code, _headers = ddos_protection_rule_get_with_http_info(opts)
      data
    end

    # Get a rule by ID
    # Get a rule by ID.
    # @option opts [String] :rule_id Unique ID of the rule. (required)
    # @return [Array<(DdosProtectionRule, Integer, Hash)>] DdosProtectionRule data, response status code and response headers
    def ddos_protection_rule_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DdosProtectionApi.ddos_protection_rule_get ...'
      end
      # unbox the parameters from the hash
      rule_id = opts[:'rule_id']
      # verify the required parameter 'rule_id' is set
      if @api_client.config.client_side_validation && rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_id' when calling DdosProtectionApi.ddos_protection_rule_get"
      end
      # resource path
      local_var_path = '/ddos-protection/v1/rules/{rule_id}'.sub('{' + 'rule_id' + '}', CGI.escape(rule_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DdosProtectionRule'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DdosProtectionApi.ddos_protection_rule_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DdosProtectionApi#ddos_protection_rule_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update rule
    # Update rule.
    # @option opts [String] :rule_id Unique ID of the rule. (required)
    # @option opts [DdosProtectionRulePatch] :ddos_protection_rule_patch 
    # @return [DdosProtectionRule]
    def ddos_protection_rule_patch(opts = {})
      data, _status_code, _headers = ddos_protection_rule_patch_with_http_info(opts)
      data
    end

    # Update rule
    # Update rule.
    # @option opts [String] :rule_id Unique ID of the rule. (required)
    # @option opts [DdosProtectionRulePatch] :ddos_protection_rule_patch 
    # @return [Array<(DdosProtectionRule, Integer, Hash)>] DdosProtectionRule data, response status code and response headers
    def ddos_protection_rule_patch_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DdosProtectionApi.ddos_protection_rule_patch ...'
      end
      # unbox the parameters from the hash
      rule_id = opts[:'rule_id']
      # verify the required parameter 'rule_id' is set
      if @api_client.config.client_side_validation && rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_id' when calling DdosProtectionApi.ddos_protection_rule_patch"
      end
      # resource path
      local_var_path = '/ddos-protection/v1/rules/{rule_id}'.sub('{' + 'rule_id' + '}', CGI.escape(rule_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'ddos_protection_rule_patch'])

      # return_type
      return_type = opts[:debug_return_type] || 'DdosProtectionRule'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DdosProtectionApi.ddos_protection_rule_patch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DdosProtectionApi#ddos_protection_rule_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get traffic stats for a rule
    # Get traffic stats for a rule.
    # @option opts [String] :event_id Unique ID of the event. (required)
    # @option opts [String] :rule_id Unique ID of the rule. (required)
    # @return [DdosProtectionTrafficStats]
    def ddos_protection_traffic_stats_rule_get(opts = {})
      data, _status_code, _headers = ddos_protection_traffic_stats_rule_get_with_http_info(opts)
      data
    end

    # Get traffic stats for a rule
    # Get traffic stats for a rule.
    # @option opts [String] :event_id Unique ID of the event. (required)
    # @option opts [String] :rule_id Unique ID of the rule. (required)
    # @return [Array<(DdosProtectionTrafficStats, Integer, Hash)>] DdosProtectionTrafficStats data, response status code and response headers
    def ddos_protection_traffic_stats_rule_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DdosProtectionApi.ddos_protection_traffic_stats_rule_get ...'
      end
      # unbox the parameters from the hash
      event_id = opts[:'event_id']
      rule_id = opts[:'rule_id']
      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling DdosProtectionApi.ddos_protection_traffic_stats_rule_get"
      end
      # verify the required parameter 'rule_id' is set
      if @api_client.config.client_side_validation && rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_id' when calling DdosProtectionApi.ddos_protection_traffic_stats_rule_get"
      end
      # resource path
      local_var_path = '/ddos-protection/v1/events/{event_id}/rules/{rule_id}/traffic-stats'.sub('{' + 'event_id' + '}', CGI.escape(event_id.to_s)).sub('{' + 'rule_id' + '}', CGI.escape(rule_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DdosProtectionTrafficStats'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DdosProtectionApi.ddos_protection_traffic_stats_rule_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DdosProtectionApi#ddos_protection_traffic_stats_rule_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
