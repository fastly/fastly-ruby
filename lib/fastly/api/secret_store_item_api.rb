=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class SecretStoreItemApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new secret in a store.
    # Create a new secret in a store. Returns an error if a secret already exists with the same name. See `PUT` and `PATCH` methods for ways to recreate an existing secret.  The `secret` field must be Base64-encoded because a secret can contain binary data. In the example below, the unencoded secret is \"Hello, world!\" 
    # @option opts [String] :store_id  (required)
    # @option opts [Secret] :secret 
    # @return [SecretResponse]
    def create_secret(opts = {})
      data, _status_code, _headers = create_secret_with_http_info(opts)
      data
    end

    # Create a new secret in a store.
    # Create a new secret in a store. Returns an error if a secret already exists with the same name. See &#x60;PUT&#x60; and &#x60;PATCH&#x60; methods for ways to recreate an existing secret.  The &#x60;secret&#x60; field must be Base64-encoded because a secret can contain binary data. In the example below, the unencoded secret is \&quot;Hello, world!\&quot; 
    # @option opts [String] :store_id  (required)
    # @option opts [Secret] :secret 
    # @return [Array<(SecretResponse, Integer, Hash)>] SecretResponse data, response status code and response headers
    def create_secret_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecretStoreItemApi.create_secret ...'
      end
      # unbox the parameters from the hash
      store_id = opts[:'store_id']
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling SecretStoreItemApi.create_secret"
      end
      # resource path
      local_var_path = '/resources/stores/secret/{store_id}/secrets'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'secret'])

      # return_type
      return_type = opts[:debug_return_type] || 'SecretResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SecretStoreItemApi.create_secret",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecretStoreItemApi#create_secret\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a secret from a store.
    # Delete a secret from a store by name.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :secret_name  (required)
    # @return [nil]
    def delete_secret(opts = {})
      delete_secret_with_http_info(opts)
      nil
    end

    # Delete a secret from a store.
    # Delete a secret from a store by name.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :secret_name  (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_secret_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecretStoreItemApi.delete_secret ...'
      end
      # unbox the parameters from the hash
      store_id = opts[:'store_id']
      secret_name = opts[:'secret_name']
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling SecretStoreItemApi.delete_secret"
      end
      # verify the required parameter 'secret_name' is set
      if @api_client.config.client_side_validation && secret_name.nil?
        fail ArgumentError, "Missing the required parameter 'secret_name' when calling SecretStoreItemApi.delete_secret"
      end
      # resource path
      local_var_path = '/resources/stores/secret/{store_id}/secrets/{secret_name}'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s)).sub('{' + 'secret_name' + '}', CGI.escape(secret_name.to_s))

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
        :operation => :"SecretStoreItemApi.delete_secret",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecretStoreItemApi#delete_secret\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get secret metadata.
    # Get metadata about a secret by name.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :secret_name  (required)
    # @return [SecretResponse]
    def get_secret(opts = {})
      data, _status_code, _headers = get_secret_with_http_info(opts)
      data
    end

    # Get secret metadata.
    # Get metadata about a secret by name.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :secret_name  (required)
    # @return [Array<(SecretResponse, Integer, Hash)>] SecretResponse data, response status code and response headers
    def get_secret_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecretStoreItemApi.get_secret ...'
      end
      # unbox the parameters from the hash
      store_id = opts[:'store_id']
      secret_name = opts[:'secret_name']
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling SecretStoreItemApi.get_secret"
      end
      # verify the required parameter 'secret_name' is set
      if @api_client.config.client_side_validation && secret_name.nil?
        fail ArgumentError, "Missing the required parameter 'secret_name' when calling SecretStoreItemApi.get_secret"
      end
      # resource path
      local_var_path = '/resources/stores/secret/{store_id}/secrets/{secret_name}'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s)).sub('{' + 'secret_name' + '}', CGI.escape(secret_name.to_s))

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
      return_type = opts[:debug_return_type] || 'SecretResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SecretStoreItemApi.get_secret",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecretStoreItemApi#get_secret\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List secrets within a store.
    # List all secrets within a store.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @option opts [String] :limit Number of results per page. The maximum is 200. (default to '100')
    # @return [InlineResponse20010]
    def get_secrets(opts = {})
      data, _status_code, _headers = get_secrets_with_http_info(opts)
      data
    end

    # List secrets within a store.
    # List all secrets within a store.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @option opts [String] :limit Number of results per page. The maximum is 200. (default to '100')
    # @return [Array<(InlineResponse20010, Integer, Hash)>] InlineResponse20010 data, response status code and response headers
    def get_secrets_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecretStoreItemApi.get_secrets ...'
      end
      # unbox the parameters from the hash
      store_id = opts[:'store_id']
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling SecretStoreItemApi.get_secrets"
      end
      # resource path
      local_var_path = '/resources/stores/secret/{store_id}/secrets'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse20010'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SecretStoreItemApi.get_secrets",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecretStoreItemApi#get_secrets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Recreate a secret in a store.
    # Recreate a secret based on the secret's name. Returns an error if there is no existing secret with the same name.  The `secret` field must be Base64-encoded because a secret can contain binary data. In the example below, the unencoded secret is \"Hello, world!\" 
    # @option opts [String] :store_id  (required)
    # @option opts [Secret] :secret 
    # @return [SecretResponse]
    def must_recreate_secret(opts = {})
      data, _status_code, _headers = must_recreate_secret_with_http_info(opts)
      data
    end

    # Recreate a secret in a store.
    # Recreate a secret based on the secret&#39;s name. Returns an error if there is no existing secret with the same name.  The &#x60;secret&#x60; field must be Base64-encoded because a secret can contain binary data. In the example below, the unencoded secret is \&quot;Hello, world!\&quot; 
    # @option opts [String] :store_id  (required)
    # @option opts [Secret] :secret 
    # @return [Array<(SecretResponse, Integer, Hash)>] SecretResponse data, response status code and response headers
    def must_recreate_secret_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecretStoreItemApi.must_recreate_secret ...'
      end
      # unbox the parameters from the hash
      store_id = opts[:'store_id']
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling SecretStoreItemApi.must_recreate_secret"
      end
      # resource path
      local_var_path = '/resources/stores/secret/{store_id}/secrets'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'secret'])

      # return_type
      return_type = opts[:debug_return_type] || 'SecretResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SecretStoreItemApi.must_recreate_secret",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecretStoreItemApi#must_recreate_secret\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or recreate a secret in a store.
    # Create or recreate a secret based on the secret's name. The response object's `recreated` field will be true if the secret was recreated.  The `secret` field must be Base64-encoded because a secret can contain binary data. In the example below, the unencoded secret is \"Hello, world!\" 
    # @option opts [String] :store_id  (required)
    # @option opts [Secret] :secret 
    # @return [SecretResponse]
    def recreate_secret(opts = {})
      data, _status_code, _headers = recreate_secret_with_http_info(opts)
      data
    end

    # Create or recreate a secret in a store.
    # Create or recreate a secret based on the secret&#39;s name. The response object&#39;s &#x60;recreated&#x60; field will be true if the secret was recreated.  The &#x60;secret&#x60; field must be Base64-encoded because a secret can contain binary data. In the example below, the unencoded secret is \&quot;Hello, world!\&quot; 
    # @option opts [String] :store_id  (required)
    # @option opts [Secret] :secret 
    # @return [Array<(SecretResponse, Integer, Hash)>] SecretResponse data, response status code and response headers
    def recreate_secret_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecretStoreItemApi.recreate_secret ...'
      end
      # unbox the parameters from the hash
      store_id = opts[:'store_id']
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling SecretStoreItemApi.recreate_secret"
      end
      # resource path
      local_var_path = '/resources/stores/secret/{store_id}/secrets'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'secret'])

      # return_type
      return_type = opts[:debug_return_type] || 'SecretResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SecretStoreItemApi.recreate_secret",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecretStoreItemApi#recreate_secret\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
