=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class AiRuntimeControlVirtualKeysApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a virtual key
    # Create a new virtual key for authenticating requests through the AI Runtime Control gateway.
    # @option opts [ArcVirtualKey] :arc_virtual_key  (required)
    # @return [ArcCreateVirtualKeyResponse]
    def arc_create_virtual_key(opts = {})
      data, _status_code, _headers = arc_create_virtual_key_with_http_info(opts)
      data
    end

    # Create a virtual key
    # Create a new virtual key for authenticating requests through the AI Runtime Control gateway.
    # @option opts [ArcVirtualKey] :arc_virtual_key  (required)
    # @return [Array<(ArcCreateVirtualKeyResponse, Integer, Hash)>] ArcCreateVirtualKeyResponse data, response status code and response headers
    def arc_create_virtual_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AiRuntimeControlVirtualKeysApi.arc_create_virtual_key ...'
      end
      # unbox the parameters from the hash
      arc_virtual_key = opts[:'arc_virtual_key']
      # verify the required parameter 'arc_virtual_key' is set
      if @api_client.config.client_side_validation && arc_virtual_key.nil?
        fail ArgumentError, "Missing the required parameter 'arc_virtual_key' when calling AiRuntimeControlVirtualKeysApi.arc_create_virtual_key"
      end
      # resource path
      local_var_path = '/ai-runtime-control/v1/keys'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(arc_virtual_key)

      # return_type
      return_type = opts[:debug_return_type] || 'ArcCreateVirtualKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AiRuntimeControlVirtualKeysApi.arc_create_virtual_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AiRuntimeControlVirtualKeysApi#arc_create_virtual_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a virtual key
    # Delete a virtual key. This also deletes any security configuration associated with the key.
    # @option opts [String] :key_id The ID of the virtual key. (required)
    # @return [nil]
    def arc_delete_virtual_key(opts = {})
      arc_delete_virtual_key_with_http_info(opts)
      nil
    end

    # Delete a virtual key
    # Delete a virtual key. This also deletes any security configuration associated with the key.
    # @option opts [String] :key_id The ID of the virtual key. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def arc_delete_virtual_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AiRuntimeControlVirtualKeysApi.arc_delete_virtual_key ...'
      end
      # unbox the parameters from the hash
      key_id = opts[:'key_id']
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling AiRuntimeControlVirtualKeysApi.arc_delete_virtual_key"
      end
      # resource path
      local_var_path = '/ai-runtime-control/v1/keys/{key_id}'.sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AiRuntimeControlVirtualKeysApi.arc_delete_virtual_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AiRuntimeControlVirtualKeysApi#arc_delete_virtual_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a virtual key
    # Retrieve a single virtual key.
    # @option opts [String] :key_id The ID of the virtual key. (required)
    # @return [ArcVirtualKeyResponse]
    def arc_get_virtual_key(opts = {})
      data, _status_code, _headers = arc_get_virtual_key_with_http_info(opts)
      data
    end

    # Get a virtual key
    # Retrieve a single virtual key.
    # @option opts [String] :key_id The ID of the virtual key. (required)
    # @return [Array<(ArcVirtualKeyResponse, Integer, Hash)>] ArcVirtualKeyResponse data, response status code and response headers
    def arc_get_virtual_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AiRuntimeControlVirtualKeysApi.arc_get_virtual_key ...'
      end
      # unbox the parameters from the hash
      key_id = opts[:'key_id']
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling AiRuntimeControlVirtualKeysApi.arc_get_virtual_key"
      end
      # resource path
      local_var_path = '/ai-runtime-control/v1/keys/{key_id}'.sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ArcVirtualKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AiRuntimeControlVirtualKeysApi.arc_get_virtual_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AiRuntimeControlVirtualKeysApi#arc_get_virtual_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a virtual key's failover policy
    # Retrieve the failover policy for a virtual key. A failover policy lists alternate provider connections to retry a request against, and which error conditions trigger a retry.  Failover is a per-account feature. If it isn't enabled on your account, this endpoint returns a 404 response. 
    # @option opts [String] :key_id The ID of the virtual key. (required)
    # @return [ArcVirtualKeyFailoverResponse]
    def arc_get_virtual_key_failover(opts = {})
      data, _status_code, _headers = arc_get_virtual_key_failover_with_http_info(opts)
      data
    end

    # Get a virtual key&#39;s failover policy
    # Retrieve the failover policy for a virtual key. A failover policy lists alternate provider connections to retry a request against, and which error conditions trigger a retry.  Failover is a per-account feature. If it isn&#39;t enabled on your account, this endpoint returns a 404 response. 
    # @option opts [String] :key_id The ID of the virtual key. (required)
    # @return [Array<(ArcVirtualKeyFailoverResponse, Integer, Hash)>] ArcVirtualKeyFailoverResponse data, response status code and response headers
    def arc_get_virtual_key_failover_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AiRuntimeControlVirtualKeysApi.arc_get_virtual_key_failover ...'
      end
      # unbox the parameters from the hash
      key_id = opts[:'key_id']
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling AiRuntimeControlVirtualKeysApi.arc_get_virtual_key_failover"
      end
      # resource path
      local_var_path = '/ai-runtime-control/v1/keys/{key_id}/failover'.sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ArcVirtualKeyFailoverResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AiRuntimeControlVirtualKeysApi.arc_get_virtual_key_failover",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AiRuntimeControlVirtualKeysApi#arc_get_virtual_key_failover\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List virtual keys
    # List the virtual keys belonging to your account.
    # @option opts [Boolean] :include_deleted Include deleted virtual keys in the results. (default to false)
    # @option opts [String] :search Filter results to virtual keys whose name contains this substring.
    # @option opts [String] :cursor Cursor for pagination. Use the &#x60;next_cursor&#x60; value from a previous response to request the next page of results, or the &#x60;prev_cursor&#x60; value to request the previous page. 
    # @option opts [Integer] :limit Limit how many results are returned. (default to 10)
    # @option opts [String] :sort Sort field. Prefix with &#x60;-&#x60; for descending order (e.g., &#x60;sort&#x3D;-created_at&#x60;).  (default to 'created_at')
    # @return [ArcVirtualKeysResponse]
    def arc_list_virtual_keys(opts = {})
      data, _status_code, _headers = arc_list_virtual_keys_with_http_info(opts)
      data
    end

    # List virtual keys
    # List the virtual keys belonging to your account.
    # @option opts [Boolean] :include_deleted Include deleted virtual keys in the results. (default to false)
    # @option opts [String] :search Filter results to virtual keys whose name contains this substring.
    # @option opts [String] :cursor Cursor for pagination. Use the &#x60;next_cursor&#x60; value from a previous response to request the next page of results, or the &#x60;prev_cursor&#x60; value to request the previous page. 
    # @option opts [Integer] :limit Limit how many results are returned. (default to 10)
    # @option opts [String] :sort Sort field. Prefix with &#x60;-&#x60; for descending order (e.g., &#x60;sort&#x3D;-created_at&#x60;).  (default to 'created_at')
    # @return [Array<(ArcVirtualKeysResponse, Integer, Hash)>] ArcVirtualKeysResponse data, response status code and response headers
    def arc_list_virtual_keys_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AiRuntimeControlVirtualKeysApi.arc_list_virtual_keys ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling AiRuntimeControlVirtualKeysApi.arc_list_virtual_keys, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling AiRuntimeControlVirtualKeysApi.arc_list_virtual_keys, must be greater than or equal to 1.'
      end

      allowable_values = ["created_at", "-created_at", "updated_at", "-updated_at", "name", "-name", "expires_at", "-expires_at", "user_name", "-user_name", "last_used_at", "-last_used_at"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/ai-runtime-control/v1/keys'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include_deleted'] = opts[:'include_deleted'] if !opts[:'include_deleted'].nil?
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ArcVirtualKeysResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AiRuntimeControlVirtualKeysApi.arc_list_virtual_keys",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AiRuntimeControlVirtualKeysApi#arc_list_virtual_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Rotate a virtual key
    # Issue a new access token for a virtual key, invalidating the previous one.
    # @option opts [String] :key_id The ID of the virtual key. (required)
    # @option opts [ArcRotateVirtualKeyRequest] :arc_rotate_virtual_key_request 
    # @return [ArcRotateVirtualKeyResponse]
    def arc_rotate_virtual_key(opts = {})
      data, _status_code, _headers = arc_rotate_virtual_key_with_http_info(opts)
      data
    end

    # Rotate a virtual key
    # Issue a new access token for a virtual key, invalidating the previous one.
    # @option opts [String] :key_id The ID of the virtual key. (required)
    # @option opts [ArcRotateVirtualKeyRequest] :arc_rotate_virtual_key_request 
    # @return [Array<(ArcRotateVirtualKeyResponse, Integer, Hash)>] ArcRotateVirtualKeyResponse data, response status code and response headers
    def arc_rotate_virtual_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AiRuntimeControlVirtualKeysApi.arc_rotate_virtual_key ...'
      end
      # unbox the parameters from the hash
      key_id = opts[:'key_id']
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling AiRuntimeControlVirtualKeysApi.arc_rotate_virtual_key"
      end
      # resource path
      local_var_path = '/ai-runtime-control/v1/keys/{key_id}/rotate'.sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'arc_rotate_virtual_key_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ArcRotateVirtualKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AiRuntimeControlVirtualKeysApi.arc_rotate_virtual_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AiRuntimeControlVirtualKeysApi#arc_rotate_virtual_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a virtual key
    # Update the attributes of a virtual key. Only the fields you include are changed.
    # @option opts [String] :key_id The ID of the virtual key. (required)
    # @option opts [ArcUpdateVirtualKeyRequest] :arc_update_virtual_key_request  (required)
    # @return [ArcUpdateVirtualKeyResponse]
    def arc_update_virtual_key(opts = {})
      data, _status_code, _headers = arc_update_virtual_key_with_http_info(opts)
      data
    end

    # Update a virtual key
    # Update the attributes of a virtual key. Only the fields you include are changed.
    # @option opts [String] :key_id The ID of the virtual key. (required)
    # @option opts [ArcUpdateVirtualKeyRequest] :arc_update_virtual_key_request  (required)
    # @return [Array<(ArcUpdateVirtualKeyResponse, Integer, Hash)>] ArcUpdateVirtualKeyResponse data, response status code and response headers
    def arc_update_virtual_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AiRuntimeControlVirtualKeysApi.arc_update_virtual_key ...'
      end
      # unbox the parameters from the hash
      key_id = opts[:'key_id']
      arc_update_virtual_key_request = opts[:'arc_update_virtual_key_request']
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling AiRuntimeControlVirtualKeysApi.arc_update_virtual_key"
      end
      # verify the required parameter 'arc_update_virtual_key_request' is set
      if @api_client.config.client_side_validation && arc_update_virtual_key_request.nil?
        fail ArgumentError, "Missing the required parameter 'arc_update_virtual_key_request' when calling AiRuntimeControlVirtualKeysApi.arc_update_virtual_key"
      end
      # resource path
      local_var_path = '/ai-runtime-control/v1/keys/{key_id}'.sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(arc_update_virtual_key_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ArcUpdateVirtualKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AiRuntimeControlVirtualKeysApi.arc_update_virtual_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AiRuntimeControlVirtualKeysApi#arc_update_virtual_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a virtual key's failover policy
    # Replace the failover policy for a virtual key.  Failover is a per-account feature. If it isn't enabled on your account, this endpoint returns a 404 response. 
    # @option opts [String] :key_id The ID of the virtual key. (required)
    # @option opts [ArcVirtualKeyFailoverRequest] :arc_virtual_key_failover_request  (required)
    # @return [ArcVirtualKeyFailoverResponse]
    def arc_update_virtual_key_failover(opts = {})
      data, _status_code, _headers = arc_update_virtual_key_failover_with_http_info(opts)
      data
    end

    # Update a virtual key&#39;s failover policy
    # Replace the failover policy for a virtual key.  Failover is a per-account feature. If it isn&#39;t enabled on your account, this endpoint returns a 404 response. 
    # @option opts [String] :key_id The ID of the virtual key. (required)
    # @option opts [ArcVirtualKeyFailoverRequest] :arc_virtual_key_failover_request  (required)
    # @return [Array<(ArcVirtualKeyFailoverResponse, Integer, Hash)>] ArcVirtualKeyFailoverResponse data, response status code and response headers
    def arc_update_virtual_key_failover_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AiRuntimeControlVirtualKeysApi.arc_update_virtual_key_failover ...'
      end
      # unbox the parameters from the hash
      key_id = opts[:'key_id']
      arc_virtual_key_failover_request = opts[:'arc_virtual_key_failover_request']
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling AiRuntimeControlVirtualKeysApi.arc_update_virtual_key_failover"
      end
      # verify the required parameter 'arc_virtual_key_failover_request' is set
      if @api_client.config.client_side_validation && arc_virtual_key_failover_request.nil?
        fail ArgumentError, "Missing the required parameter 'arc_virtual_key_failover_request' when calling AiRuntimeControlVirtualKeysApi.arc_update_virtual_key_failover"
      end
      # resource path
      local_var_path = '/ai-runtime-control/v1/keys/{key_id}/failover'.sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(arc_virtual_key_failover_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ArcVirtualKeyFailoverResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AiRuntimeControlVirtualKeysApi.arc_update_virtual_key_failover",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AiRuntimeControlVirtualKeysApi#arc_update_virtual_key_failover\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
