=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class SecretStoreApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create new client key
    # Create a new client key for encrypting secrets locally before uploading.
    # @return [ClientKey]
    def client_key(opts = {})
      data, _status_code, _headers = client_key_with_http_info(opts)
      data
    end

    # Create new client key
    # Create a new client key for encrypting secrets locally before uploading.
    # @return [Array<(ClientKey, Integer, Hash)>] ClientKey data, response status code and response headers
    def client_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecretStoreApi.client_key ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/resources/stores/secret/client-key'

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
      return_type = opts[:debug_return_type] || 'ClientKey'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SecretStoreApi.client_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecretStoreApi#client_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create new secret store
    # Create a new secret store.
    # @option opts [SecretStore] :secret_store 
    # @return [SecretStoreResponse]
    def create_secret_store(opts = {})
      data, _status_code, _headers = create_secret_store_with_http_info(opts)
      data
    end

    # Create new secret store
    # Create a new secret store.
    # @option opts [SecretStore] :secret_store 
    # @return [Array<(SecretStoreResponse, Integer, Hash)>] SecretStoreResponse data, response status code and response headers
    def create_secret_store_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecretStoreApi.create_secret_store ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/resources/stores/secret'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'secret_store'])

      # return_type
      return_type = opts[:debug_return_type] || 'SecretStoreResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SecretStoreApi.create_secret_store",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecretStoreApi#create_secret_store\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete secret store
    # Delete a secret store and all of its contents.
    # @option opts [String] :store_id  (required)
    # @return [nil]
    def delete_secret_store(opts = {})
      delete_secret_store_with_http_info(opts)
      nil
    end

    # Delete secret store
    # Delete a secret store and all of its contents.
    # @option opts [String] :store_id  (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_secret_store_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecretStoreApi.delete_secret_store ...'
      end
      # unbox the parameters from the hash
      store_id = opts[:'store_id']
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling SecretStoreApi.delete_secret_store"
      end
      # resource path
      local_var_path = '/resources/stores/secret/{store_id}'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s))

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
        :operation => :"SecretStoreApi.delete_secret_store",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecretStoreApi#delete_secret_store\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get secret store by ID
    # Get a secret store by ID.
    # @option opts [String] :store_id  (required)
    # @return [SecretStoreResponse]
    def get_secret_store(opts = {})
      data, _status_code, _headers = get_secret_store_with_http_info(opts)
      data
    end

    # Get secret store by ID
    # Get a secret store by ID.
    # @option opts [String] :store_id  (required)
    # @return [Array<(SecretStoreResponse, Integer, Hash)>] SecretStoreResponse data, response status code and response headers
    def get_secret_store_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecretStoreApi.get_secret_store ...'
      end
      # unbox the parameters from the hash
      store_id = opts[:'store_id']
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling SecretStoreApi.get_secret_store"
      end
      # resource path
      local_var_path = '/resources/stores/secret/{store_id}'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s))

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
      return_type = opts[:debug_return_type] || 'SecretStoreResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SecretStoreApi.get_secret_store",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecretStoreApi#get_secret_store\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all secret stores
    # Get all secret stores.
    # @option opts [String] :cursor Cursor value from a previous response to retrieve the next page. To request the first page, this should be empty.
    # @option opts [String] :limit Number of results per page. The maximum is 200. (default to '100')
    # @return [InlineResponse2005]
    def get_secret_stores(opts = {})
      data, _status_code, _headers = get_secret_stores_with_http_info(opts)
      data
    end

    # Get all secret stores
    # Get all secret stores.
    # @option opts [String] :cursor Cursor value from a previous response to retrieve the next page. To request the first page, this should be empty.
    # @option opts [String] :limit Number of results per page. The maximum is 200. (default to '100')
    # @return [Array<(InlineResponse2005, Integer, Hash)>] InlineResponse2005 data, response status code and response headers
    def get_secret_stores_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecretStoreApi.get_secret_stores ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/resources/stores/secret'

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
      return_type = opts[:debug_return_type] || 'InlineResponse2005'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SecretStoreApi.get_secret_stores",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecretStoreApi#get_secret_stores\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get public key
    # Get the public key used for signing client keys.
    # @return [SigningKey]
    def signing_key(opts = {})
      data, _status_code, _headers = signing_key_with_http_info(opts)
      data
    end

    # Get public key
    # Get the public key used for signing client keys.
    # @return [Array<(SigningKey, Integer, Hash)>] SigningKey data, response status code and response headers
    def signing_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecretStoreApi.signing_key ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/resources/stores/secret/signing-key'

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
      return_type = opts[:debug_return_type] || 'SigningKey'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SecretStoreApi.signing_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecretStoreApi#signing_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
