=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class KvStoreItemApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete kv store item.
    # Delete an item from an kv store
    # @option opts [String] :store_id  (required)
    # @option opts [String] :key_name  (required)
    # @option opts [Boolean] :force 
    # @return [nil]
    def delete_key_from_store(opts = {})
      delete_key_from_store_with_http_info(opts)
      nil
    end

    # Delete kv store item.
    # Delete an item from an kv store
    # @option opts [String] :store_id  (required)
    # @option opts [String] :key_name  (required)
    # @option opts [Boolean] :force 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_key_from_store_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KvStoreItemApi.delete_key_from_store ...'
      end
      # unbox the parameters from the hash
      store_id = opts[:'store_id']
      key_name = opts[:'key_name']
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling KvStoreItemApi.delete_key_from_store"
      end
      # verify the required parameter 'key_name' is set
      if @api_client.config.client_side_validation && key_name.nil?
        fail ArgumentError, "Missing the required parameter 'key_name' when calling KvStoreItemApi.delete_key_from_store"
      end
      # resource path
      local_var_path = '/resources/stores/kv/{store_id}/keys/{key_name}'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s)).sub('{' + 'key_name' + '}', CGI.escape(key_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'force'] = opts[:'force'] if !opts[:'force'].nil?

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
        :operation => :"KvStoreItemApi.delete_key_from_store",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KvStoreItemApi#delete_key_from_store\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List kv store keys.
    # List the keys of all items within an kv store.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :cursor 
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [String] :prefix 
    # @return [InlineResponse2004]
    def get_keys(opts = {})
      data, _status_code, _headers = get_keys_with_http_info(opts)
      data
    end

    # List kv store keys.
    # List the keys of all items within an kv store.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :cursor 
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [String] :prefix 
    # @return [Array<(InlineResponse2004, Integer, Hash)>] InlineResponse2004 data, response status code and response headers
    def get_keys_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KvStoreItemApi.get_keys ...'
      end
      # unbox the parameters from the hash
      store_id = opts[:'store_id']
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling KvStoreItemApi.get_keys"
      end
      # resource path
      local_var_path = '/resources/stores/kv/{store_id}/keys'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'prefix'] = opts[:'prefix'] if !opts[:'prefix'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse2004'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"KvStoreItemApi.get_keys",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KvStoreItemApi#get_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the value of an kv store item
    # Get the value associated with a key.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :key_name  (required)
    # @return [String]
    def get_value_for_key(opts = {})
      data, _status_code, _headers = get_value_for_key_with_http_info(opts)
      data
    end

    # Get the value of an kv store item
    # Get the value associated with a key.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :key_name  (required)
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_value_for_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KvStoreItemApi.get_value_for_key ...'
      end
      # unbox the parameters from the hash
      store_id = opts[:'store_id']
      key_name = opts[:'key_name']
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling KvStoreItemApi.get_value_for_key"
      end
      # verify the required parameter 'key_name' is set
      if @api_client.config.client_side_validation && key_name.nil?
        fail ArgumentError, "Missing the required parameter 'key_name' when calling KvStoreItemApi.get_value_for_key"
      end
      # resource path
      local_var_path = '/resources/stores/kv/{store_id}/keys/{key_name}'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s)).sub('{' + 'key_name' + '}', CGI.escape(key_name.to_s))

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
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"KvStoreItemApi.get_value_for_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KvStoreItemApi#get_value_for_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Insert an item into an kv store
    # Set a new value for a new or existing key in an kv store.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :key_name  (required)
    # @option opts [Integer] :if_generation_match 
    # @option opts [Integer] :time_to_live_sec 
    # @option opts [String] :metadata 
    # @option opts [Boolean] :add 
    # @option opts [Boolean] :append 
    # @option opts [Boolean] :prepend 
    # @option opts [Boolean] :background_fetch 
    # @option opts [String] :body 
    # @return [String]
    def set_value_for_key(opts = {})
      data, _status_code, _headers = set_value_for_key_with_http_info(opts)
      data
    end

    # Insert an item into an kv store
    # Set a new value for a new or existing key in an kv store.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :key_name  (required)
    # @option opts [Integer] :if_generation_match 
    # @option opts [Integer] :time_to_live_sec 
    # @option opts [String] :metadata 
    # @option opts [Boolean] :add 
    # @option opts [Boolean] :append 
    # @option opts [Boolean] :prepend 
    # @option opts [Boolean] :background_fetch 
    # @option opts [String] :body 
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def set_value_for_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KvStoreItemApi.set_value_for_key ...'
      end
      # unbox the parameters from the hash
      store_id = opts[:'store_id']
      key_name = opts[:'key_name']
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling KvStoreItemApi.set_value_for_key"
      end
      # verify the required parameter 'key_name' is set
      if @api_client.config.client_side_validation && key_name.nil?
        fail ArgumentError, "Missing the required parameter 'key_name' when calling KvStoreItemApi.set_value_for_key"
      end
      # resource path
      local_var_path = '/resources/stores/kv/{store_id}/keys/{key_name}'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s)).sub('{' + 'key_name' + '}', CGI.escape(key_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'add'] = opts[:'add'] if !opts[:'add'].nil?
      query_params[:'append'] = opts[:'append'] if !opts[:'append'].nil?
      query_params[:'prepend'] = opts[:'prepend'] if !opts[:'prepend'].nil?
      query_params[:'background_fetch'] = opts[:'background_fetch'] if !opts[:'background_fetch'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/octet-stream'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'if-generation-match'] = opts[:'if_generation_match'] if !opts[:'if_generation_match'].nil?
      header_params[:'time_to_live_sec'] = opts[:'time_to_live_sec'] if !opts[:'time_to_live_sec'].nil?
      header_params[:'metadata'] = opts[:'metadata'] if !opts[:'metadata'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"KvStoreItemApi.set_value_for_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KvStoreItemApi#set_value_for_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
