=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

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
    # Delete an item.
    # Delete an item.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :key  (required)
    # @option opts [Integer] :if_generation_match 
    # @option opts [Boolean] :force  (default to false)
    # @return [nil]
    def kv_store_delete_item(opts = {})
      kv_store_delete_item_with_http_info(opts)
      nil
    end

    # Delete an item.
    # Delete an item.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :key  (required)
    # @option opts [Integer] :if_generation_match 
    # @option opts [Boolean] :force  (default to false)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def kv_store_delete_item_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KvStoreItemApi.kv_store_delete_item ...'
      end
      # unbox the parameters from the hash
      store_id = opts[:'store_id']
      key = opts[:'key']
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling KvStoreItemApi.kv_store_delete_item"
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling KvStoreItemApi.kv_store_delete_item"
      end
      # resource path
      local_var_path = '/resources/stores/kv/{store_id}/keys/{key}'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s)).sub('{' + 'key' + '}', CGI.escape(key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'force'] = opts[:'force'] if !opts[:'force'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      header_params[:'if-generation-match'] = opts[:'if_generation_match'] if !opts[:'if_generation_match'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"KvStoreItemApi.kv_store_delete_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KvStoreItemApi#kv_store_delete_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an item.
    # Get an item, including its value, metadata (if any), and generation marker.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :key  (required)
    # @return [String]
    def kv_store_get_item(opts = {})
      data, _status_code, _headers = kv_store_get_item_with_http_info(opts)
      data
    end

    # Get an item.
    # Get an item, including its value, metadata (if any), and generation marker.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :key  (required)
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def kv_store_get_item_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KvStoreItemApi.kv_store_get_item ...'
      end
      # unbox the parameters from the hash
      store_id = opts[:'store_id']
      key = opts[:'key']
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling KvStoreItemApi.kv_store_get_item"
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling KvStoreItemApi.kv_store_get_item"
      end
      # resource path
      local_var_path = '/resources/stores/kv/{store_id}/keys/{key}'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s)).sub('{' + 'key' + '}', CGI.escape(key.to_s))

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
        :operation => :"KvStoreItemApi.kv_store_get_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KvStoreItemApi#kv_store_get_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List item keys.
    # Lists the matching item keys (or all item keys, if no prefix is supplied).
    # @option opts [String] :store_id  (required)
    # @option opts [String] :cursor 
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [String] :prefix 
    # @option opts [String] :consistency  (default to 'strong')
    # @return [InlineResponse2004]
    def kv_store_list_item_keys(opts = {})
      data, _status_code, _headers = kv_store_list_item_keys_with_http_info(opts)
      data
    end

    # List item keys.
    # Lists the matching item keys (or all item keys, if no prefix is supplied).
    # @option opts [String] :store_id  (required)
    # @option opts [String] :cursor 
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [String] :prefix 
    # @option opts [String] :consistency  (default to 'strong')
    # @return [Array<(InlineResponse2004, Integer, Hash)>] InlineResponse2004 data, response status code and response headers
    def kv_store_list_item_keys_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KvStoreItemApi.kv_store_list_item_keys ...'
      end
      # unbox the parameters from the hash
      store_id = opts[:'store_id']
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling KvStoreItemApi.kv_store_list_item_keys"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling KvStoreItemApi.kv_store_list_item_keys, must be greater than or equal to 1.'
      end

      allowable_values = ["strong", "eventual"]
      if @api_client.config.client_side_validation && opts[:'consistency'] && !allowable_values.include?(opts[:'consistency'])
        fail ArgumentError, "invalid value for \"consistency\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/resources/stores/kv/{store_id}/keys'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'prefix'] = opts[:'prefix'] if !opts[:'prefix'].nil?
      query_params[:'consistency'] = opts[:'consistency'] if !opts[:'consistency'].nil?

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
        :operation => :"KvStoreItemApi.kv_store_list_item_keys",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KvStoreItemApi#kv_store_list_item_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Insert or update an item.
    # Inserts or updates an item's value and metadata.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :key  (required)
    # @option opts [Integer] :if_generation_match 
    # @option opts [Integer] :time_to_live_sec 
    # @option opts [String] :metadata 
    # @option opts [Boolean] :add  (default to false)
    # @option opts [Boolean] :append  (default to false)
    # @option opts [Boolean] :prepend  (default to false)
    # @option opts [Boolean] :background_fetch  (default to false)
    # @option opts [String] :body 
    # @return [nil]
    def kv_store_upsert_item(opts = {})
      kv_store_upsert_item_with_http_info(opts)
      nil
    end

    # Insert or update an item.
    # Inserts or updates an item&#39;s value and metadata.
    # @option opts [String] :store_id  (required)
    # @option opts [String] :key  (required)
    # @option opts [Integer] :if_generation_match 
    # @option opts [Integer] :time_to_live_sec 
    # @option opts [String] :metadata 
    # @option opts [Boolean] :add  (default to false)
    # @option opts [Boolean] :append  (default to false)
    # @option opts [Boolean] :prepend  (default to false)
    # @option opts [Boolean] :background_fetch  (default to false)
    # @option opts [String] :body 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def kv_store_upsert_item_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KvStoreItemApi.kv_store_upsert_item ...'
      end
      # unbox the parameters from the hash
      store_id = opts[:'store_id']
      key = opts[:'key']
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling KvStoreItemApi.kv_store_upsert_item"
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling KvStoreItemApi.kv_store_upsert_item"
      end
      # resource path
      local_var_path = '/resources/stores/kv/{store_id}/keys/{key}'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s)).sub('{' + 'key' + '}', CGI.escape(key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'add'] = opts[:'add'] if !opts[:'add'].nil?
      query_params[:'append'] = opts[:'append'] if !opts[:'append'].nil?
      query_params[:'prepend'] = opts[:'prepend'] if !opts[:'prepend'].nil?
      query_params[:'background_fetch'] = opts[:'background_fetch'] if !opts[:'background_fetch'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"KvStoreItemApi.kv_store_upsert_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KvStoreItemApi#kv_store_upsert_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
