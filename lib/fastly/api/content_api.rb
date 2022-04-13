=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class ContentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Check status of content in each POP's cache
    # Retrieve headers and MD5 hash of the content for a particular URL from each Fastly edge server. This API is limited to 200 requests per hour.
    # @option opts [String] :url Full URL (host and path) to check on all nodes. if protocol is omitted, http will be assumed.
    # @return [Array<Content>]
    def content_check(opts = {})
      data, _status_code, _headers = content_check_with_http_info(opts)
      data
    end

    # Check status of content in each POP&#39;s cache
    # Retrieve headers and MD5 hash of the content for a particular URL from each Fastly edge server. This API is limited to 200 requests per hour.
    # @option opts [String] :url Full URL (host and path) to check on all nodes. if protocol is omitted, http will be assumed.
    # @return [Array<(Array<Content>, Integer, Hash)>] Array<Content> data, response status code and response headers
    def content_check_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentApi.content_check ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/content/edge_check'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'url'] = opts[:'url'] if !opts[:'url'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Content>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ContentApi.content_check",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentApi#content_check\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
