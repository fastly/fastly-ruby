=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class RequestSettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Request Settings object
    # Creates a new Request Settings object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [RequestSettingsResponse]
    def create_request_settings(opts = {})
      data, _status_code, _headers = create_request_settings_with_http_info(opts)
      data
    end

    # Create a Request Settings object
    # Creates a new Request Settings object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(RequestSettingsResponse, Integer, Hash)>] RequestSettingsResponse data, response status code and response headers
    def create_request_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RequestSettingsApi.create_request_settings ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling RequestSettingsApi.create_request_settings"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling RequestSettingsApi.create_request_settings"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/request_settings'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'RequestSettingsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"RequestSettingsApi.create_request_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RequestSettingsApi#create_request_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Request Settings object
    # Removes the specified Request Settings object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :request_settings_name Name for the request settings. (required)
    # @return [InlineResponse200]
    def delete_request_settings(opts = {})
      data, _status_code, _headers = delete_request_settings_with_http_info(opts)
      data
    end

    # Delete a Request Settings object
    # Removes the specified Request Settings object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :request_settings_name Name for the request settings. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_request_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RequestSettingsApi.delete_request_settings ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      request_settings_name = opts[:'request_settings_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling RequestSettingsApi.delete_request_settings"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling RequestSettingsApi.delete_request_settings"
      end
      # verify the required parameter 'request_settings_name' is set
      if @api_client.config.client_side_validation && request_settings_name.nil?
        fail ArgumentError, "Missing the required parameter 'request_settings_name' when calling RequestSettingsApi.delete_request_settings"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/request_settings/{request_settings_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'request_settings_name' + '}', CGI.escape(request_settings_name.to_s))

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
        :operation => :"RequestSettingsApi.delete_request_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RequestSettingsApi#delete_request_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Request Settings object
    # Gets the specified Request Settings object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :request_settings_name Name for the request settings. (required)
    # @return [RequestSettingsResponse]
    def get_request_settings(opts = {})
      data, _status_code, _headers = get_request_settings_with_http_info(opts)
      data
    end

    # Get a Request Settings object
    # Gets the specified Request Settings object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :request_settings_name Name for the request settings. (required)
    # @return [Array<(RequestSettingsResponse, Integer, Hash)>] RequestSettingsResponse data, response status code and response headers
    def get_request_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RequestSettingsApi.get_request_settings ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      request_settings_name = opts[:'request_settings_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling RequestSettingsApi.get_request_settings"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling RequestSettingsApi.get_request_settings"
      end
      # verify the required parameter 'request_settings_name' is set
      if @api_client.config.client_side_validation && request_settings_name.nil?
        fail ArgumentError, "Missing the required parameter 'request_settings_name' when calling RequestSettingsApi.get_request_settings"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/request_settings/{request_settings_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'request_settings_name' + '}', CGI.escape(request_settings_name.to_s))

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
      return_type = opts[:debug_return_type] || 'RequestSettingsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"RequestSettingsApi.get_request_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RequestSettingsApi#get_request_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Request Settings objects
    # Returns a list of all Request Settings objects for the given service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<RequestSettingsResponse>]
    def list_request_settings(opts = {})
      data, _status_code, _headers = list_request_settings_with_http_info(opts)
      data
    end

    # List Request Settings objects
    # Returns a list of all Request Settings objects for the given service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(Array<RequestSettingsResponse>, Integer, Hash)>] Array<RequestSettingsResponse> data, response status code and response headers
    def list_request_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RequestSettingsApi.list_request_settings ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling RequestSettingsApi.list_request_settings"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling RequestSettingsApi.list_request_settings"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/request_settings'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<RequestSettingsResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"RequestSettingsApi.list_request_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RequestSettingsApi#list_request_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Request Settings object
    # Updates the specified Request Settings object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :request_settings_name Name for the request settings. (required)
    # @option opts [String] :action Allows you to terminate request handling and immediately perform an action.
    # @option opts [Integer] :bypass_busy_wait Disable collapsed forwarding, so you don&#39;t wait for other objects to origin.
    # @option opts [String] :default_host Sets the host header.
    # @option opts [Integer] :force_miss Allows you to force a cache miss for the request. Replaces the item in the cache if the content is cacheable.
    # @option opts [Integer] :force_ssl Forces the request use SSL (redirects a non-SSL to SSL).
    # @option opts [Integer] :geo_headers Injects Fastly-Geo-Country, Fastly-Geo-City, and Fastly-Geo-Region into the request headers.
    # @option opts [String] :hash_keys Comma separated list of varnish request object fields that should be in the hash key.
    # @option opts [Integer] :max_stale_age How old an object is allowed to be to serve stale-if-error or stale-while-revalidate.
    # @option opts [String] :name Name for the request settings.
    # @option opts [String] :request_condition Condition which, if met, will select this configuration during a request. Optional.
    # @option opts [Integer] :timer_support Injects the X-Timer info into the request for viewing origin fetch durations.
    # @option opts [String] :xff Short for X-Forwarded-For.
    # @return [RequestSettingsResponse]
    def update_request_settings(opts = {})
      data, _status_code, _headers = update_request_settings_with_http_info(opts)
      data
    end

    # Update a Request Settings object
    # Updates the specified Request Settings object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :request_settings_name Name for the request settings. (required)
    # @option opts [String] :action Allows you to terminate request handling and immediately perform an action.
    # @option opts [Integer] :bypass_busy_wait Disable collapsed forwarding, so you don&#39;t wait for other objects to origin.
    # @option opts [String] :default_host Sets the host header.
    # @option opts [Integer] :force_miss Allows you to force a cache miss for the request. Replaces the item in the cache if the content is cacheable.
    # @option opts [Integer] :force_ssl Forces the request use SSL (redirects a non-SSL to SSL).
    # @option opts [Integer] :geo_headers Injects Fastly-Geo-Country, Fastly-Geo-City, and Fastly-Geo-Region into the request headers.
    # @option opts [String] :hash_keys Comma separated list of varnish request object fields that should be in the hash key.
    # @option opts [Integer] :max_stale_age How old an object is allowed to be to serve stale-if-error or stale-while-revalidate.
    # @option opts [String] :name Name for the request settings.
    # @option opts [String] :request_condition Condition which, if met, will select this configuration during a request. Optional.
    # @option opts [Integer] :timer_support Injects the X-Timer info into the request for viewing origin fetch durations.
    # @option opts [String] :xff Short for X-Forwarded-For.
    # @return [Array<(RequestSettingsResponse, Integer, Hash)>] RequestSettingsResponse data, response status code and response headers
    def update_request_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RequestSettingsApi.update_request_settings ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      request_settings_name = opts[:'request_settings_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling RequestSettingsApi.update_request_settings"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling RequestSettingsApi.update_request_settings"
      end
      # verify the required parameter 'request_settings_name' is set
      if @api_client.config.client_side_validation && request_settings_name.nil?
        fail ArgumentError, "Missing the required parameter 'request_settings_name' when calling RequestSettingsApi.update_request_settings"
      end
      allowable_values = ["lookup", "pass"]
      if @api_client.config.client_side_validation && opts[:'action'] && !allowable_values.include?(opts[:'action'])
        fail ArgumentError, "invalid value for \"action\", must be one of #{allowable_values}"
      end
      allowable_values = ["clear", "leave", "append", "append_all", "overwrite"]
      if @api_client.config.client_side_validation && opts[:'xff'] && !allowable_values.include?(opts[:'xff'])
        fail ArgumentError, "invalid value for \"xff\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/request_settings/{request_settings_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'request_settings_name' + '}', CGI.escape(request_settings_name.to_s))

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
      form_params['bypass_busy_wait'] = opts[:'bypass_busy_wait'] if !opts[:'bypass_busy_wait'].nil?
      form_params['default_host'] = opts[:'default_host'] if !opts[:'default_host'].nil?
      form_params['force_miss'] = opts[:'force_miss'] if !opts[:'force_miss'].nil?
      form_params['force_ssl'] = opts[:'force_ssl'] if !opts[:'force_ssl'].nil?
      form_params['geo_headers'] = opts[:'geo_headers'] if !opts[:'geo_headers'].nil?
      form_params['hash_keys'] = opts[:'hash_keys'] if !opts[:'hash_keys'].nil?
      form_params['max_stale_age'] = opts[:'max_stale_age'] if !opts[:'max_stale_age'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['request_condition'] = opts[:'request_condition'] if !opts[:'request_condition'].nil?
      form_params['timer_support'] = opts[:'timer_support'] if !opts[:'timer_support'].nil?
      form_params['xff'] = opts[:'xff'] if !opts[:'xff'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'RequestSettingsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"RequestSettingsApi.update_request_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RequestSettingsApi#update_request_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
