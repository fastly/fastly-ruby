=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class CacheSettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a cache settings object
    # Create a cache settings object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :action If set, will cause vcl_fetch to terminate after processing this rule with the return state specified. If not set, other configuration logic in vcl_fetch with a lower priority will run after this rule. 
    # @option opts [String] :cache_condition Name of the cache condition controlling when this configuration applies.
    # @option opts [String] :name Name for the cache settings object.
    # @option opts [Integer] :stale_ttl Maximum time in seconds to continue to use a stale version of the object if future requests to your backend server fail (also known as &#39;stale if error&#39;).
    # @option opts [Integer] :ttl Maximum time to consider the object fresh in the cache (the cache &#39;time to live&#39;).
    # @return [CacheSettingResponse]
    def create_cache_settings(opts = {})
      data, _status_code, _headers = create_cache_settings_with_http_info(opts)
      data
    end

    # Create a cache settings object
    # Create a cache settings object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :action If set, will cause vcl_fetch to terminate after processing this rule with the return state specified. If not set, other configuration logic in vcl_fetch with a lower priority will run after this rule. 
    # @option opts [String] :cache_condition Name of the cache condition controlling when this configuration applies.
    # @option opts [String] :name Name for the cache settings object.
    # @option opts [Integer] :stale_ttl Maximum time in seconds to continue to use a stale version of the object if future requests to your backend server fail (also known as &#39;stale if error&#39;).
    # @option opts [Integer] :ttl Maximum time to consider the object fresh in the cache (the cache &#39;time to live&#39;).
    # @return [Array<(CacheSettingResponse, Integer, Hash)>] CacheSettingResponse data, response status code and response headers
    def create_cache_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CacheSettingsApi.create_cache_settings ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling CacheSettingsApi.create_cache_settings"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling CacheSettingsApi.create_cache_settings"
      end
      allowable_values = ["pass", "deliver", "restart"]
      if @api_client.config.client_side_validation && opts[:'action'] && !allowable_values.include?(opts[:'action'])
        fail ArgumentError, "invalid value for \"action\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/cache_settings'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['action'] = opts[:'action'] if !opts[:'action'].nil?
      form_params['cache_condition'] = opts[:'cache_condition'] if !opts[:'cache_condition'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['stale_ttl'] = opts[:'stale_ttl'] if !opts[:'stale_ttl'].nil?
      form_params['ttl'] = opts[:'ttl'] if !opts[:'ttl'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CacheSettingResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"CacheSettingsApi.create_cache_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CacheSettingsApi#create_cache_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a cache settings object
    # Delete a specific cache settings object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :cache_settings_name Name for the cache settings object. (required)
    # @return [InlineResponse200]
    def delete_cache_settings(opts = {})
      data, _status_code, _headers = delete_cache_settings_with_http_info(opts)
      data
    end

    # Delete a cache settings object
    # Delete a specific cache settings object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :cache_settings_name Name for the cache settings object. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_cache_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CacheSettingsApi.delete_cache_settings ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      cache_settings_name = opts[:'cache_settings_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling CacheSettingsApi.delete_cache_settings"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling CacheSettingsApi.delete_cache_settings"
      end
      # verify the required parameter 'cache_settings_name' is set
      if @api_client.config.client_side_validation && cache_settings_name.nil?
        fail ArgumentError, "Missing the required parameter 'cache_settings_name' when calling CacheSettingsApi.delete_cache_settings"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/cache_settings/{cache_settings_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'cache_settings_name' + '}', CGI.escape(cache_settings_name.to_s))

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
        :operation => :"CacheSettingsApi.delete_cache_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CacheSettingsApi#delete_cache_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a cache settings object
    # Get a specific cache settings object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :cache_settings_name Name for the cache settings object. (required)
    # @return [CacheSettingResponse]
    def get_cache_settings(opts = {})
      data, _status_code, _headers = get_cache_settings_with_http_info(opts)
      data
    end

    # Get a cache settings object
    # Get a specific cache settings object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :cache_settings_name Name for the cache settings object. (required)
    # @return [Array<(CacheSettingResponse, Integer, Hash)>] CacheSettingResponse data, response status code and response headers
    def get_cache_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CacheSettingsApi.get_cache_settings ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      cache_settings_name = opts[:'cache_settings_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling CacheSettingsApi.get_cache_settings"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling CacheSettingsApi.get_cache_settings"
      end
      # verify the required parameter 'cache_settings_name' is set
      if @api_client.config.client_side_validation && cache_settings_name.nil?
        fail ArgumentError, "Missing the required parameter 'cache_settings_name' when calling CacheSettingsApi.get_cache_settings"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/cache_settings/{cache_settings_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'cache_settings_name' + '}', CGI.escape(cache_settings_name.to_s))

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
      return_type = opts[:debug_return_type] || 'CacheSettingResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"CacheSettingsApi.get_cache_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CacheSettingsApi#get_cache_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List cache settings objects
    # Get a list of all cache settings for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<CacheSettingResponse>]
    def list_cache_settings(opts = {})
      data, _status_code, _headers = list_cache_settings_with_http_info(opts)
      data
    end

    # List cache settings objects
    # Get a list of all cache settings for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(Array<CacheSettingResponse>, Integer, Hash)>] Array<CacheSettingResponse> data, response status code and response headers
    def list_cache_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CacheSettingsApi.list_cache_settings ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling CacheSettingsApi.list_cache_settings"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling CacheSettingsApi.list_cache_settings"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/cache_settings'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<CacheSettingResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"CacheSettingsApi.list_cache_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CacheSettingsApi#list_cache_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a cache settings object
    # Update a specific cache settings object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :cache_settings_name Name for the cache settings object. (required)
    # @option opts [String] :action If set, will cause vcl_fetch to terminate after processing this rule with the return state specified. If not set, other configuration logic in vcl_fetch with a lower priority will run after this rule. 
    # @option opts [String] :cache_condition Name of the cache condition controlling when this configuration applies.
    # @option opts [String] :name Name for the cache settings object.
    # @option opts [Integer] :stale_ttl Maximum time in seconds to continue to use a stale version of the object if future requests to your backend server fail (also known as &#39;stale if error&#39;).
    # @option opts [Integer] :ttl Maximum time to consider the object fresh in the cache (the cache &#39;time to live&#39;).
    # @return [CacheSettingResponse]
    def update_cache_settings(opts = {})
      data, _status_code, _headers = update_cache_settings_with_http_info(opts)
      data
    end

    # Update a cache settings object
    # Update a specific cache settings object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :cache_settings_name Name for the cache settings object. (required)
    # @option opts [String] :action If set, will cause vcl_fetch to terminate after processing this rule with the return state specified. If not set, other configuration logic in vcl_fetch with a lower priority will run after this rule. 
    # @option opts [String] :cache_condition Name of the cache condition controlling when this configuration applies.
    # @option opts [String] :name Name for the cache settings object.
    # @option opts [Integer] :stale_ttl Maximum time in seconds to continue to use a stale version of the object if future requests to your backend server fail (also known as &#39;stale if error&#39;).
    # @option opts [Integer] :ttl Maximum time to consider the object fresh in the cache (the cache &#39;time to live&#39;).
    # @return [Array<(CacheSettingResponse, Integer, Hash)>] CacheSettingResponse data, response status code and response headers
    def update_cache_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CacheSettingsApi.update_cache_settings ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      cache_settings_name = opts[:'cache_settings_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling CacheSettingsApi.update_cache_settings"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling CacheSettingsApi.update_cache_settings"
      end
      # verify the required parameter 'cache_settings_name' is set
      if @api_client.config.client_side_validation && cache_settings_name.nil?
        fail ArgumentError, "Missing the required parameter 'cache_settings_name' when calling CacheSettingsApi.update_cache_settings"
      end
      allowable_values = ["pass", "deliver", "restart"]
      if @api_client.config.client_side_validation && opts[:'action'] && !allowable_values.include?(opts[:'action'])
        fail ArgumentError, "invalid value for \"action\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/cache_settings/{cache_settings_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'cache_settings_name' + '}', CGI.escape(cache_settings_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['action'] = opts[:'action'] if !opts[:'action'].nil?
      form_params['cache_condition'] = opts[:'cache_condition'] if !opts[:'cache_condition'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['stale_ttl'] = opts[:'stale_ttl'] if !opts[:'stale_ttl'].nil?
      form_params['ttl'] = opts[:'ttl'] if !opts[:'ttl'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CacheSettingResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"CacheSettingsApi.update_cache_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CacheSettingsApi#update_cache_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
