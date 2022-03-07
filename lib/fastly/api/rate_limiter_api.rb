=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0


=end

require 'cgi'

module Fastly
  class RateLimiterApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a rate limiter
    # Delete a rate limiter by its ID.
    # @option opts [String] :rate_limiter_id Alphanumeric string identifying the rate limiter. (required)
    # @return [InlineResponse200]
    def delete_rate_limiter(opts = {})
      data, _status_code, _headers = delete_rate_limiter_with_http_info(opts)
      data
    end

    # Delete a rate limiter
    # Delete a rate limiter by its ID.
    # @option opts [String] :rate_limiter_id Alphanumeric string identifying the rate limiter. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_rate_limiter_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RateLimiterApi.delete_rate_limiter ...'
      end
      # unbox the parameters from the hash
      rate_limiter_id = opts[:'rate_limiter_id']
      # verify the required parameter 'rate_limiter_id' is set
      if @api_client.config.client_side_validation && rate_limiter_id.nil?
        fail ArgumentError, "Missing the required parameter 'rate_limiter_id' when calling RateLimiterApi.delete_rate_limiter"
      end
      # resource path
      local_var_path = '/rate-limiters/{rate_limiter_id}'.sub('{' + 'rate_limiter_id' + '}', CGI.escape(rate_limiter_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"RateLimiterApi.delete_rate_limiter",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RateLimiterApi#delete_rate_limiter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a rate limiter
    # Get a rate limiter by its ID.
    # @option opts [String] :rate_limiter_id Alphanumeric string identifying the rate limiter. (required)
    # @return [RateLimiterResponse]
    def get_rate_limiter(opts = {})
      data, _status_code, _headers = get_rate_limiter_with_http_info(opts)
      data
    end

    # Get a rate limiter
    # Get a rate limiter by its ID.
    # @option opts [String] :rate_limiter_id Alphanumeric string identifying the rate limiter. (required)
    # @return [Array<(RateLimiterResponse, Integer, Hash)>] RateLimiterResponse data, response status code and response headers
    def get_rate_limiter_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RateLimiterApi.get_rate_limiter ...'
      end
      # unbox the parameters from the hash
      rate_limiter_id = opts[:'rate_limiter_id']
      # verify the required parameter 'rate_limiter_id' is set
      if @api_client.config.client_side_validation && rate_limiter_id.nil?
        fail ArgumentError, "Missing the required parameter 'rate_limiter_id' when calling RateLimiterApi.get_rate_limiter"
      end
      # resource path
      local_var_path = '/rate-limiters/{rate_limiter_id}'.sub('{' + 'rate_limiter_id' + '}', CGI.escape(rate_limiter_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'RateLimiterResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"RateLimiterApi.get_rate_limiter",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RateLimiterApi#get_rate_limiter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List rate limiters
    # List all rate limiters for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<RateLimiterResponse>]
    def list_rate_limiters(opts = {})
      data, _status_code, _headers = list_rate_limiters_with_http_info(opts)
      data
    end

    # List rate limiters
    # List all rate limiters for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(Array<RateLimiterResponse>, Integer, Hash)>] Array<RateLimiterResponse> data, response status code and response headers
    def list_rate_limiters_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RateLimiterApi.list_rate_limiters ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling RateLimiterApi.list_rate_limiters"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling RateLimiterApi.list_rate_limiters"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/rate-limiters'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<RateLimiterResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"RateLimiterApi.list_rate_limiters",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RateLimiterApi#list_rate_limiters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
