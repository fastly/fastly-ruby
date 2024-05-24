=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class LegacyWafTagApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List WAF tags
    # List all tags.
    # @option opts [String] :filter_name Limit the returned tags to a specific name.
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :include Include relationships. Optional, comma separated values. Permitted values: &#x60;rules&#x60;. 
    # @return [Object]
    def list_legacy_waf_tags(opts = {})
      data, _status_code, _headers = list_legacy_waf_tags_with_http_info(opts)
      data
    end

    # List WAF tags
    # List all tags.
    # @option opts [String] :filter_name Limit the returned tags to a specific name.
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :include Include relationships. Optional, comma separated values. Permitted values: &#x60;rules&#x60;. 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def list_legacy_waf_tags_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LegacyWafTagApi.list_legacy_waf_tags ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling LegacyWafTagApi.list_legacy_waf_tags, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling LegacyWafTagApi.list_legacy_waf_tags, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/wafs/tags'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter[name]'] = opts[:'filter_name'] if !opts[:'filter_name'].nil?
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
        :operation => :"LegacyWafTagApi.list_legacy_waf_tags",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegacyWafTagApi#list_legacy_waf_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
