=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class KvStoreApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a KV store.
    # Create a KV store.
    # @option opts [String] :location 
    # @option opts [KvStoreRequestCreate] :kv_store_request_create 
    # @return [KvStoreDetails]
    def kv_store_create(opts = {})
      data, _status_code, _headers = kv_store_create_with_http_info(opts)
      data
    end

    # Create a KV store.
    # Create a KV store.
    # @option opts [String] :location 
    # @option opts [KvStoreRequestCreate] :kv_store_request_create 
    # @return [Array<(KvStoreDetails, Integer, Hash)>] KvStoreDetails data, response status code and response headers
    def kv_store_create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KvStoreApi.kv_store_create ...'
      end
      # unbox the parameters from the hash
      allowable_values = ["US", "EU", "ASIA", "AUS"]
      if @api_client.config.client_side_validation && opts[:'location'] && !allowable_values.include?(opts[:'location'])
        fail ArgumentError, "invalid value for \"location\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/resources/stores/kv'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'location'] = opts[:'location'] if !opts[:'location'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'kv_store_request_create'])

      # return_type
      return_type = opts[:debug_return_type] || 'KvStoreDetails'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"KvStoreApi.kv_store_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KvStoreApi#kv_store_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a KV store.
    # A KV store must be empty before it can be deleted. Attempting to delete a KV store that contains items will result in a response with a `409` status code.
    # @option opts [String] :store_id  (required)
    # @return [nil]
    def kv_store_delete(opts = {})
      kv_store_delete_with_http_info(opts)
      nil
    end

    # Delete a KV store.
    # A KV store must be empty before it can be deleted. Attempting to delete a KV store that contains items will result in a response with a &#x60;409&#x60; status code.
    # @option opts [String] :store_id  (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def kv_store_delete_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KvStoreApi.kv_store_delete ...'
      end
      # unbox the parameters from the hash
      store_id = opts[:'store_id']
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling KvStoreApi.kv_store_delete"
      end
      # resource path
      local_var_path = '/resources/stores/kv/{store_id}'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s))

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
        :operation => :"KvStoreApi.kv_store_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KvStoreApi#kv_store_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Describe a KV store.
    # Get details of a KV store.
    # @option opts [String] :store_id  (required)
    # @return [KvStoreDetails]
    def kv_store_get(opts = {})
      data, _status_code, _headers = kv_store_get_with_http_info(opts)
      data
    end

    # Describe a KV store.
    # Get details of a KV store.
    # @option opts [String] :store_id  (required)
    # @return [Array<(KvStoreDetails, Integer, Hash)>] KvStoreDetails data, response status code and response headers
    def kv_store_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KvStoreApi.kv_store_get ...'
      end
      # unbox the parameters from the hash
      store_id = opts[:'store_id']
      # verify the required parameter 'store_id' is set
      if @api_client.config.client_side_validation && store_id.nil?
        fail ArgumentError, "Missing the required parameter 'store_id' when calling KvStoreApi.kv_store_get"
      end
      # resource path
      local_var_path = '/resources/stores/kv/{store_id}'.sub('{' + 'store_id' + '}', CGI.escape(store_id.to_s))

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
      return_type = opts[:debug_return_type] || 'KvStoreDetails'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"KvStoreApi.kv_store_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KvStoreApi#kv_store_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all KV stores.
    # List all KV stores.
    # @option opts [String] :cursor 
    # @option opts [Integer] :limit  (default to 1000)
    # @return [InlineResponse2005]
    def kv_store_list(opts = {})
      data, _status_code, _headers = kv_store_list_with_http_info(opts)
      data
    end

    # List all KV stores.
    # List all KV stores.
    # @option opts [String] :cursor 
    # @option opts [Integer] :limit  (default to 1000)
    # @return [Array<(InlineResponse2005, Integer, Hash)>] InlineResponse2005 data, response status code and response headers
    def kv_store_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KvStoreApi.kv_store_list ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling KvStoreApi.kv_store_list, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/resources/stores/kv'

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
        :operation => :"KvStoreApi.kv_store_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KvStoreApi#kv_store_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
