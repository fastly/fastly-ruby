=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class ObjectStoreApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an object store.
    # Create a new object store.
    # @option opts [Store] :store 
    # @return [StoreResponse]
    def create_store(opts = {})
      data, _status_code, _headers = create_store_with_http_info(opts)
      data
    end

    # Create an object store.
    # Create a new object store.
    # @option opts [Store] :store 
    # @return [Array<(StoreResponse, Integer, Hash)>] StoreResponse data, response status code and response headers
    def create_store_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectStoreApi.create_store ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/resources/stores/object'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'store'])

      # return_type
      return_type = opts[:debug_return_type] || 'StoreResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ObjectStoreApi.create_store",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectStoreApi#create_store\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete object store key.
    # Delete a key from a customer store.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :key_name  (required)
    # @return [nil]
    def delete_key_from_store(opts = {})
      delete_key_from_store_with_http_info(opts)
      nil
    end

    # Delete object store key.
    # Delete a key from a customer store.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :key_name  (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_key_from_store_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectStoreApi.delete_key_from_store ...'
      end
      # unbox the parameters from the hash
      store_id = opts[:'store_id']
      key_name = opts[:'key_name']
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling ObjectStoreApi.delete_key_from_store"
      end
      # verify the required parameter 'key_name' is set
      if @api_client.config.client_side_validation && key_name.nil?
        fail ArgumentError, "Missing the required parameter 'key_name' when calling ObjectStoreApi.delete_key_from_store"
      end
      # resource path
      local_var_path = '/resources/stores/object/{store_id}/keys/{key_name}'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s)).sub('{' + 'key_name' + '}', CGI.escape(key_name.to_s))

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
        :operation => :"ObjectStoreApi.delete_key_from_store",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectStoreApi#delete_key_from_store\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an object store.
    # An object store must be empty before it can be deleted.  Deleting an object store that still contains keys will result in a 409 Conflict.
    # @option opts [String] :store_id  (required)
    # @return [nil]
    def delete_store(opts = {})
      delete_store_with_http_info(opts)
      nil
    end

    # Delete an object store.
    # An object store must be empty before it can be deleted.  Deleting an object store that still contains keys will result in a 409 Conflict.
    # @option opts [String] :store_id  (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_store_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectStoreApi.delete_store ...'
      end
      # unbox the parameters from the hash
      store_id = opts[:'store_id']
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling ObjectStoreApi.delete_store"
      end
      # resource path
      local_var_path = '/resources/stores/object/{store_id}'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s))

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
        :operation => :"ObjectStoreApi.delete_store",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectStoreApi#delete_store\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List object store keys.
    # List all keys within an object store.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :cursor 
    # @option opts [Integer] :limit  (default to 100)
    # @return [KeyResponse]
    def get_keys(opts = {})
      data, _status_code, _headers = get_keys_with_http_info(opts)
      data
    end

    # List object store keys.
    # List all keys within an object store.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :cursor 
    # @option opts [Integer] :limit  (default to 100)
    # @return [Array<(KeyResponse, Integer, Hash)>] KeyResponse data, response status code and response headers
    def get_keys_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectStoreApi.get_keys ...'
      end
      # unbox the parameters from the hash
      store_id = opts[:'store_id']
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling ObjectStoreApi.get_keys"
      end
      # resource path
      local_var_path = '/resources/stores/object/{store_id}/keys'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s))

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
      return_type = opts[:debug_return_type] || 'KeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ObjectStoreApi.get_keys",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectStoreApi#get_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Describe an object store.
    # Get an object store by ID.
    # @option opts [String] :store_id  (required)
    # @return [StoreResponse]
    def get_store(opts = {})
      data, _status_code, _headers = get_store_with_http_info(opts)
      data
    end

    # Describe an object store.
    # Get an object store by ID.
    # @option opts [String] :store_id  (required)
    # @return [Array<(StoreResponse, Integer, Hash)>] StoreResponse data, response status code and response headers
    def get_store_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectStoreApi.get_store ...'
      end
      # unbox the parameters from the hash
      store_id = opts[:'store_id']
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling ObjectStoreApi.get_store"
      end
      # resource path
      local_var_path = '/resources/stores/object/{store_id}'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s))

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
      return_type = opts[:debug_return_type] || 'StoreResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ObjectStoreApi.get_store",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectStoreApi#get_store\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List object stores.
    # Get all stores for a given customer.
    # @option opts [String] :cursor 
    # @option opts [Integer] :limit  (default to 100)
    # @return [GetStoresResponse]
    def get_stores(opts = {})
      data, _status_code, _headers = get_stores_with_http_info(opts)
      data
    end

    # List object stores.
    # Get all stores for a given customer.
    # @option opts [String] :cursor 
    # @option opts [Integer] :limit  (default to 100)
    # @return [Array<(GetStoresResponse, Integer, Hash)>] GetStoresResponse data, response status code and response headers
    def get_stores_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectStoreApi.get_stores ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/resources/stores/object'

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
      return_type = opts[:debug_return_type] || 'GetStoresResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ObjectStoreApi.get_stores",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectStoreApi#get_stores\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get object store key value.
    # Get the value associated with a key.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :key_name  (required)
    # @return [File]
    def get_value_for_key(opts = {})
      data, _status_code, _headers = get_value_for_key_with_http_info(opts)
      data
    end

    # Get object store key value.
    # Get the value associated with a key.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :key_name  (required)
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def get_value_for_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectStoreApi.get_value_for_key ...'
      end
      # unbox the parameters from the hash
      store_id = opts[:'store_id']
      key_name = opts[:'key_name']
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling ObjectStoreApi.get_value_for_key"
      end
      # verify the required parameter 'key_name' is set
      if @api_client.config.client_side_validation && key_name.nil?
        fail ArgumentError, "Missing the required parameter 'key_name' when calling ObjectStoreApi.get_value_for_key"
      end
      # resource path
      local_var_path = '/resources/stores/object/{store_id}/keys/{key_name}'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s)).sub('{' + 'key_name' + '}', CGI.escape(key_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'File'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ObjectStoreApi.get_value_for_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectStoreApi#get_value_for_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Insert object store key-value.
    # Insert a new key-value pair into an object store.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :key_name  (required)
    # @option opts [File] :body 
    # @return [File]
    def set_value_for_key(opts = {})
      data, _status_code, _headers = set_value_for_key_with_http_info(opts)
      data
    end

    # Insert object store key-value.
    # Insert a new key-value pair into an object store.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :key_name  (required)
    # @option opts [File] :body 
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def set_value_for_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectStoreApi.set_value_for_key ...'
      end
      # unbox the parameters from the hash
      store_id = opts[:'store_id']
      key_name = opts[:'key_name']
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling ObjectStoreApi.set_value_for_key"
      end
      # verify the required parameter 'key_name' is set
      if @api_client.config.client_side_validation && key_name.nil?
        fail ArgumentError, "Missing the required parameter 'key_name' when calling ObjectStoreApi.set_value_for_key"
      end
      # resource path
      local_var_path = '/resources/stores/object/{store_id}/keys/{key_name}'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s)).sub('{' + 'key_name' + '}', CGI.escape(key_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/octet-stream'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type] || 'File'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ObjectStoreApi.set_value_for_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectStoreApi#set_value_for_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
