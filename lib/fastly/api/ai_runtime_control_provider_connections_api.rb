=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class AiRuntimeControlProviderConnectionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a provider connection
    # Create a provider connection. Set `auth_type` to `api-key` (the default) to connect with a provider's own API key, or to `aws-iam` to connect to Amazon Bedrock using an AWS IAM role.  Accounts are limited to 25 provider connections. Creating a 26th connection returns a 409 response. 
    # @option opts [ArcProviderConnectionRequest] :arc_provider_connection_request  (required)
    # @return [ArcProviderConnectionResponse]
    def arc_create_provider_connection(opts = {})
      data, _status_code, _headers = arc_create_provider_connection_with_http_info(opts)
      data
    end

    # Create a provider connection
    # Create a provider connection. Set &#x60;auth_type&#x60; to &#x60;api-key&#x60; (the default) to connect with a provider&#39;s own API key, or to &#x60;aws-iam&#x60; to connect to Amazon Bedrock using an AWS IAM role.  Accounts are limited to 25 provider connections. Creating a 26th connection returns a 409 response. 
    # @option opts [ArcProviderConnectionRequest] :arc_provider_connection_request  (required)
    # @return [Array<(ArcProviderConnectionResponse, Integer, Hash)>] ArcProviderConnectionResponse data, response status code and response headers
    def arc_create_provider_connection_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AiRuntimeControlProviderConnectionsApi.arc_create_provider_connection ...'
      end
      # unbox the parameters from the hash
      arc_provider_connection_request = opts[:'arc_provider_connection_request']
      # verify the required parameter 'arc_provider_connection_request' is set
      if @api_client.config.client_side_validation && arc_provider_connection_request.nil?
        fail ArgumentError, "Missing the required parameter 'arc_provider_connection_request' when calling AiRuntimeControlProviderConnectionsApi.arc_create_provider_connection"
      end
      # resource path
      local_var_path = '/ai-runtime-control/v1/provider-connections'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(arc_provider_connection_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ArcProviderConnectionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AiRuntimeControlProviderConnectionsApi.arc_create_provider_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AiRuntimeControlProviderConnectionsApi#arc_create_provider_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a provider connection
    # Delete a provider connection. Returns a 409 response if the connection is still referenced by a virtual key's failover policy. 
    # @option opts [String] :id The ID of the provider connection. (required)
    # @return [nil]
    def arc_delete_provider_connection(opts = {})
      arc_delete_provider_connection_with_http_info(opts)
      nil
    end

    # Delete a provider connection
    # Delete a provider connection. Returns a 409 response if the connection is still referenced by a virtual key&#39;s failover policy. 
    # @option opts [String] :id The ID of the provider connection. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def arc_delete_provider_connection_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AiRuntimeControlProviderConnectionsApi.arc_delete_provider_connection ...'
      end
      # unbox the parameters from the hash
      id = opts[:'id']
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AiRuntimeControlProviderConnectionsApi.arc_delete_provider_connection"
      end
      # resource path
      local_var_path = '/ai-runtime-control/v1/provider-connections/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"AiRuntimeControlProviderConnectionsApi.arc_delete_provider_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AiRuntimeControlProviderConnectionsApi#arc_delete_provider_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a provider connection
    # Retrieve a single provider connection.
    # @option opts [String] :id The ID of the provider connection. (required)
    # @return [ArcGetProviderConnectionResponse]
    def arc_get_provider_connection(opts = {})
      data, _status_code, _headers = arc_get_provider_connection_with_http_info(opts)
      data
    end

    # Get a provider connection
    # Retrieve a single provider connection.
    # @option opts [String] :id The ID of the provider connection. (required)
    # @return [Array<(ArcGetProviderConnectionResponse, Integer, Hash)>] ArcGetProviderConnectionResponse data, response status code and response headers
    def arc_get_provider_connection_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AiRuntimeControlProviderConnectionsApi.arc_get_provider_connection ...'
      end
      # unbox the parameters from the hash
      id = opts[:'id']
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AiRuntimeControlProviderConnectionsApi.arc_get_provider_connection"
      end
      # resource path
      local_var_path = '/ai-runtime-control/v1/provider-connections/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'ArcGetProviderConnectionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AiRuntimeControlProviderConnectionsApi.arc_get_provider_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AiRuntimeControlProviderConnectionsApi#arc_get_provider_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List provider connections
    # List the provider connections belonging to your account.
    # @option opts [Boolean] :include_deleted Include deleted provider connections in the results. Deleted connections have a &#x60;deleted_at&#x60; value. (default to false)
    # @option opts [String] :sort Sort field. Prefix with &#x60;-&#x60; for descending order (e.g., &#x60;sort&#x3D;-name&#x60;).  (default to 'created_at')
    # @return [ArcProviderConnectionsResponse]
    def arc_list_provider_connections(opts = {})
      data, _status_code, _headers = arc_list_provider_connections_with_http_info(opts)
      data
    end

    # List provider connections
    # List the provider connections belonging to your account.
    # @option opts [Boolean] :include_deleted Include deleted provider connections in the results. Deleted connections have a &#x60;deleted_at&#x60; value. (default to false)
    # @option opts [String] :sort Sort field. Prefix with &#x60;-&#x60; for descending order (e.g., &#x60;sort&#x3D;-name&#x60;).  (default to 'created_at')
    # @return [Array<(ArcProviderConnectionsResponse, Integer, Hash)>] ArcProviderConnectionsResponse data, response status code and response headers
    def arc_list_provider_connections_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AiRuntimeControlProviderConnectionsApi.arc_list_provider_connections ...'
      end
      # unbox the parameters from the hash
      allowable_values = ["created_at", "-created_at", "updated_at", "-updated_at", "name", "-name"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/ai-runtime-control/v1/provider-connections'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include_deleted'] = opts[:'include_deleted'] if !opts[:'include_deleted'].nil?
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
      return_type = opts[:debug_return_type] || 'ArcProviderConnectionsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AiRuntimeControlProviderConnectionsApi.arc_list_provider_connections",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AiRuntimeControlProviderConnectionsApi#arc_list_provider_connections\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a provider connection
    # Update the attributes of a provider connection. Only the fields you include are changed. Which fields you can set depends on the connection's existing `auth_type`: `base_url` and `api_key` apply only to `api-key` connections, and `customer_role_arn` and `region` apply only to `aws-iam` connections. `auth_type` itself cannot be changed. 
    # @option opts [String] :id The ID of the provider connection. (required)
    # @option opts [ArcUpdateProviderConnectionRequest] :arc_update_provider_connection_request  (required)
    # @return [ArcProviderConnectionResponse]
    def arc_update_provider_connection(opts = {})
      data, _status_code, _headers = arc_update_provider_connection_with_http_info(opts)
      data
    end

    # Update a provider connection
    # Update the attributes of a provider connection. Only the fields you include are changed. Which fields you can set depends on the connection&#39;s existing &#x60;auth_type&#x60;: &#x60;base_url&#x60; and &#x60;api_key&#x60; apply only to &#x60;api-key&#x60; connections, and &#x60;customer_role_arn&#x60; and &#x60;region&#x60; apply only to &#x60;aws-iam&#x60; connections. &#x60;auth_type&#x60; itself cannot be changed. 
    # @option opts [String] :id The ID of the provider connection. (required)
    # @option opts [ArcUpdateProviderConnectionRequest] :arc_update_provider_connection_request  (required)
    # @return [Array<(ArcProviderConnectionResponse, Integer, Hash)>] ArcProviderConnectionResponse data, response status code and response headers
    def arc_update_provider_connection_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AiRuntimeControlProviderConnectionsApi.arc_update_provider_connection ...'
      end
      # unbox the parameters from the hash
      id = opts[:'id']
      arc_update_provider_connection_request = opts[:'arc_update_provider_connection_request']
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AiRuntimeControlProviderConnectionsApi.arc_update_provider_connection"
      end
      # verify the required parameter 'arc_update_provider_connection_request' is set
      if @api_client.config.client_side_validation && arc_update_provider_connection_request.nil?
        fail ArgumentError, "Missing the required parameter 'arc_update_provider_connection_request' when calling AiRuntimeControlProviderConnectionsApi.arc_update_provider_connection"
      end
      # resource path
      local_var_path = '/ai-runtime-control/v1/provider-connections/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(arc_update_provider_connection_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ArcProviderConnectionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AiRuntimeControlProviderConnectionsApi.arc_update_provider_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AiRuntimeControlProviderConnectionsApi#arc_update_provider_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
