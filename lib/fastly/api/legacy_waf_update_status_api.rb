=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class LegacyWafUpdateStatusApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the status of a WAF update
    # Get a specific update status object for a particular service and firewall object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [String] :update_status_id Alphanumeric string identifying a WAF update status. (required)
    # @return [Object]
    def get_waf_update_status(opts = {})
      data, _status_code, _headers = get_waf_update_status_with_http_info(opts)
      data
    end

    # Get the status of a WAF update
    # Get a specific update status object for a particular service and firewall object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [String] :update_status_id Alphanumeric string identifying a WAF update status. (required)
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_waf_update_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafUpdateStatusApi.get_waf_update_status ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      firewall_id = opts[:'firewall_id']
      update_status_id = opts[:'update_status_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LegacyWafUpdateStatusApi.get_waf_update_status"
      end
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling LegacyWafUpdateStatusApi.get_waf_update_status"
      end
      # verify the required parameter 'update_status_id' is set
      if @api_client.config.client_side_validation && update_status_id.nil?
        fail ArgumentError, "Missing the required parameter 'update_status_id' when calling LegacyWafUpdateStatusApi.get_waf_update_status"
      end
      # resource path
      local_var_path = '/service/{service_id}/wafs/{firewall_id}/update_statuses/{update_status_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s)).sub('{' + 'update_status_id' + '}', CGI.escape(update_status_id.to_s))

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
        :operation => :"LegacyWafUpdateStatusApi.get_waf_update_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafUpdateStatusApi#get_waf_update_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List update statuses
    # List all update statuses for a particular service and firewall object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :include Include relationships. Optional, comma separated values. Permitted values: &#x60;waf&#x60;. 
    # @return [Object]
    def list_waf_update_statuses(opts = {})
      data, _status_code, _headers = list_waf_update_statuses_with_http_info(opts)
      data
    end

    # List update statuses
    # List all update statuses for a particular service and firewall object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :firewall_id Alphanumeric string identifying a Firewall. (required)
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :include Include relationships. Optional, comma separated values. Permitted values: &#x60;waf&#x60;. 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def list_waf_update_statuses_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafUpdateStatusApi.list_waf_update_statuses ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      firewall_id = opts[:'firewall_id']
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling LegacyWafUpdateStatusApi.list_waf_update_statuses, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling LegacyWafUpdateStatusApi.list_waf_update_statuses, must be greater than or equal to 1.'
      end

      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LegacyWafUpdateStatusApi.list_waf_update_statuses"
      end
      # verify the required parameter 'firewall_id' is set
      if @api_client.config.client_side_validation && firewall_id.nil?
        fail ArgumentError, "Missing the required parameter 'firewall_id' when calling LegacyWafUpdateStatusApi.list_waf_update_statuses"
      end
      # resource path
      local_var_path = '/service/{service_id}/wafs/{firewall_id}/update_statuses'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'firewall_id' + '}', CGI.escape(firewall_id.to_s))

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
        :operation => :"LegacyWafUpdateStatusApi.list_waf_update_statuses",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafUpdateStatusApi#list_waf_update_statuses\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
