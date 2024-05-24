=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class ConfigStoreItemApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Update multiple entries in a config store
    # Add multiple key-value pairs to an individual config store, specified by ID.
    # @option opts [String] :config_store_id An alphanumeric string identifying the config store. (required)
    # @option opts [BulkUpdateConfigStoreListRequest] :bulk_update_config_store_list_request 
    # @return [InlineResponse200]
    def bulk_update_config_store_item(opts = {})
      data, _status_code, _headers = bulk_update_config_store_item_with_http_info(opts)
      data
    end

    # Update multiple entries in a config store
    # Add multiple key-value pairs to an individual config store, specified by ID.
    # @option opts [String] :config_store_id An alphanumeric string identifying the config store. (required)
    # @option opts [BulkUpdateConfigStoreListRequest] :bulk_update_config_store_list_request 
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def bulk_update_config_store_item_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigStoreItemApi.bulk_update_config_store_item ...'
      end
      # unbox the parameters from the hash
      config_store_id = opts[:'config_store_id']
      # verify the required parameter 'config_store_id' is set
      if @api_client.config.client_side_validation && config_store_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_store_id' when calling ConfigStoreItemApi.bulk_update_config_store_item"
      end
      # resource path
      local_var_path = '/resources/stores/config/{config_store_id}/items'.sub('{' + 'config_store_id' + '}', CGI.escape(config_store_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'bulk_update_config_store_list_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ConfigStoreItemApi.bulk_update_config_store_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigStoreItemApi#bulk_update_config_store_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an entry in a config store
    # Add a single key-value pair to an individual config store, specified by ID.
    # @option opts [String] :config_store_id An alphanumeric string identifying the config store. (required)
    # @option opts [String] :item_key Item key, maximum 256 characters.
    # @option opts [String] :item_value Item value, maximum 8000 characters.
    # @return [ConfigStoreItemResponse]
    def create_config_store_item(opts = {})
      data, _status_code, _headers = create_config_store_item_with_http_info(opts)
      data
    end

    # Create an entry in a config store
    # Add a single key-value pair to an individual config store, specified by ID.
    # @option opts [String] :config_store_id An alphanumeric string identifying the config store. (required)
    # @option opts [String] :item_key Item key, maximum 256 characters.
    # @option opts [String] :item_value Item value, maximum 8000 characters.
    # @return [Array<(ConfigStoreItemResponse, Integer, Hash)>] ConfigStoreItemResponse data, response status code and response headers
    def create_config_store_item_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigStoreItemApi.create_config_store_item ...'
      end
      # unbox the parameters from the hash
      config_store_id = opts[:'config_store_id']
      # verify the required parameter 'config_store_id' is set
      if @api_client.config.client_side_validation && config_store_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_store_id' when calling ConfigStoreItemApi.create_config_store_item"
      end
      # resource path
      local_var_path = '/resources/stores/config/{config_store_id}/item'.sub('{' + 'config_store_id' + '}', CGI.escape(config_store_id.to_s))

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
      form_params['item_key'] = opts[:'item_key'] if !opts[:'item_key'].nil?
      form_params['item_value'] = opts[:'item_value'] if !opts[:'item_value'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ConfigStoreItemResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ConfigStoreItemApi.create_config_store_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigStoreItemApi#create_config_store_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an item from a config store
    # Delete an entry in a config store given a config store ID, and item key.
    # @option opts [String] :config_store_id An alphanumeric string identifying the config store. (required)
    # @option opts [String] :config_store_item_key Item key, maximum 256 characters. (required)
    # @return [InlineResponse200]
    def delete_config_store_item(opts = {})
      data, _status_code, _headers = delete_config_store_item_with_http_info(opts)
      data
    end

    # Delete an item from a config store
    # Delete an entry in a config store given a config store ID, and item key.
    # @option opts [String] :config_store_id An alphanumeric string identifying the config store. (required)
    # @option opts [String] :config_store_item_key Item key, maximum 256 characters. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_config_store_item_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigStoreItemApi.delete_config_store_item ...'
      end
      # unbox the parameters from the hash
      config_store_id = opts[:'config_store_id']
      config_store_item_key = opts[:'config_store_item_key']
      # verify the required parameter 'config_store_id' is set
      if @api_client.config.client_side_validation && config_store_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_store_id' when calling ConfigStoreItemApi.delete_config_store_item"
      end
      # verify the required parameter 'config_store_item_key' is set
      if @api_client.config.client_side_validation && config_store_item_key.nil?
        fail ArgumentError, "Missing the required parameter 'config_store_item_key' when calling ConfigStoreItemApi.delete_config_store_item"
      end
      # resource path
      local_var_path = '/resources/stores/config/{config_store_id}/item/{config_store_item_key}'.sub('{' + 'config_store_id' + '}', CGI.escape(config_store_id.to_s)).sub('{' + 'config_store_item_key' + '}', CGI.escape(config_store_item_key.to_s))

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
        :operation => :"ConfigStoreItemApi.delete_config_store_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigStoreItemApi#delete_config_store_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an item from a config store
    # Retrieve a config store entry given a config store ID and item key.
    # @option opts [String] :config_store_id An alphanumeric string identifying the config store. (required)
    # @option opts [String] :config_store_item_key Item key, maximum 256 characters. (required)
    # @return [ConfigStoreItemResponse]
    def get_config_store_item(opts = {})
      data, _status_code, _headers = get_config_store_item_with_http_info(opts)
      data
    end

    # Get an item from a config store
    # Retrieve a config store entry given a config store ID and item key.
    # @option opts [String] :config_store_id An alphanumeric string identifying the config store. (required)
    # @option opts [String] :config_store_item_key Item key, maximum 256 characters. (required)
    # @return [Array<(ConfigStoreItemResponse, Integer, Hash)>] ConfigStoreItemResponse data, response status code and response headers
    def get_config_store_item_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigStoreItemApi.get_config_store_item ...'
      end
      # unbox the parameters from the hash
      config_store_id = opts[:'config_store_id']
      config_store_item_key = opts[:'config_store_item_key']
      # verify the required parameter 'config_store_id' is set
      if @api_client.config.client_side_validation && config_store_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_store_id' when calling ConfigStoreItemApi.get_config_store_item"
      end
      # verify the required parameter 'config_store_item_key' is set
      if @api_client.config.client_side_validation && config_store_item_key.nil?
        fail ArgumentError, "Missing the required parameter 'config_store_item_key' when calling ConfigStoreItemApi.get_config_store_item"
      end
      # resource path
      local_var_path = '/resources/stores/config/{config_store_id}/item/{config_store_item_key}'.sub('{' + 'config_store_id' + '}', CGI.escape(config_store_id.to_s)).sub('{' + 'config_store_item_key' + '}', CGI.escape(config_store_item_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ConfigStoreItemResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ConfigStoreItemApi.get_config_store_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigStoreItemApi#get_config_store_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List items in a config store
    # List the key-value pairs associated with a given config store ID.
    # @option opts [String] :config_store_id An alphanumeric string identifying the config store. (required)
    # @return [Array<ConfigStoreItemResponse>]
    def list_config_store_items(opts = {})
      data, _status_code, _headers = list_config_store_items_with_http_info(opts)
      data
    end

    # List items in a config store
    # List the key-value pairs associated with a given config store ID.
    # @option opts [String] :config_store_id An alphanumeric string identifying the config store. (required)
    # @return [Array<(Array<ConfigStoreItemResponse>, Integer, Hash)>] Array<ConfigStoreItemResponse> data, response status code and response headers
    def list_config_store_items_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigStoreItemApi.list_config_store_items ...'
      end
      # unbox the parameters from the hash
      config_store_id = opts[:'config_store_id']
      # verify the required parameter 'config_store_id' is set
      if @api_client.config.client_side_validation && config_store_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_store_id' when calling ConfigStoreItemApi.list_config_store_items"
      end
      # resource path
      local_var_path = '/resources/stores/config/{config_store_id}/items'.sub('{' + 'config_store_id' + '}', CGI.escape(config_store_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<ConfigStoreItemResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ConfigStoreItemApi.list_config_store_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigStoreItemApi#list_config_store_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an entry in a config store
    # Update an entry in a config store given a config store ID, item key, and item value.
    # @option opts [String] :config_store_id An alphanumeric string identifying the config store. (required)
    # @option opts [String] :config_store_item_key Item key, maximum 256 characters. (required)
    # @option opts [String] :item_key Item key, maximum 256 characters.
    # @option opts [String] :item_value Item value, maximum 8000 characters.
    # @return [ConfigStoreItemResponse]
    def update_config_store_item(opts = {})
      data, _status_code, _headers = update_config_store_item_with_http_info(opts)
      data
    end

    # Update an entry in a config store
    # Update an entry in a config store given a config store ID, item key, and item value.
    # @option opts [String] :config_store_id An alphanumeric string identifying the config store. (required)
    # @option opts [String] :config_store_item_key Item key, maximum 256 characters. (required)
    # @option opts [String] :item_key Item key, maximum 256 characters.
    # @option opts [String] :item_value Item value, maximum 8000 characters.
    # @return [Array<(ConfigStoreItemResponse, Integer, Hash)>] ConfigStoreItemResponse data, response status code and response headers
    def update_config_store_item_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigStoreItemApi.update_config_store_item ...'
      end
      # unbox the parameters from the hash
      config_store_id = opts[:'config_store_id']
      config_store_item_key = opts[:'config_store_item_key']
      # verify the required parameter 'config_store_id' is set
      if @api_client.config.client_side_validation && config_store_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_store_id' when calling ConfigStoreItemApi.update_config_store_item"
      end
      # verify the required parameter 'config_store_item_key' is set
      if @api_client.config.client_side_validation && config_store_item_key.nil?
        fail ArgumentError, "Missing the required parameter 'config_store_item_key' when calling ConfigStoreItemApi.update_config_store_item"
      end
      # resource path
      local_var_path = '/resources/stores/config/{config_store_id}/item/{config_store_item_key}'.sub('{' + 'config_store_id' + '}', CGI.escape(config_store_id.to_s)).sub('{' + 'config_store_item_key' + '}', CGI.escape(config_store_item_key.to_s))

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
      form_params['item_key'] = opts[:'item_key'] if !opts[:'item_key'].nil?
      form_params['item_value'] = opts[:'item_value'] if !opts[:'item_value'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ConfigStoreItemResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ConfigStoreItemApi.update_config_store_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigStoreItemApi#update_config_store_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Insert or update an entry in a config store
    # Insert or update an entry in a config store given a config store ID, item key, and item value.
    # @option opts [String] :config_store_id An alphanumeric string identifying the config store. (required)
    # @option opts [String] :config_store_item_key Item key, maximum 256 characters. (required)
    # @option opts [String] :item_key Item key, maximum 256 characters.
    # @option opts [String] :item_value Item value, maximum 8000 characters.
    # @return [ConfigStoreItemResponse]
    def upsert_config_store_item(opts = {})
      data, _status_code, _headers = upsert_config_store_item_with_http_info(opts)
      data
    end

    # Insert or update an entry in a config store
    # Insert or update an entry in a config store given a config store ID, item key, and item value.
    # @option opts [String] :config_store_id An alphanumeric string identifying the config store. (required)
    # @option opts [String] :config_store_item_key Item key, maximum 256 characters. (required)
    # @option opts [String] :item_key Item key, maximum 256 characters.
    # @option opts [String] :item_value Item value, maximum 8000 characters.
    # @return [Array<(ConfigStoreItemResponse, Integer, Hash)>] ConfigStoreItemResponse data, response status code and response headers
    def upsert_config_store_item_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigStoreItemApi.upsert_config_store_item ...'
      end
      # unbox the parameters from the hash
      config_store_id = opts[:'config_store_id']
      config_store_item_key = opts[:'config_store_item_key']
      # verify the required parameter 'config_store_id' is set
      if @api_client.config.client_side_validation && config_store_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_store_id' when calling ConfigStoreItemApi.upsert_config_store_item"
      end
      # verify the required parameter 'config_store_item_key' is set
      if @api_client.config.client_side_validation && config_store_item_key.nil?
        fail ArgumentError, "Missing the required parameter 'config_store_item_key' when calling ConfigStoreItemApi.upsert_config_store_item"
      end
      # resource path
      local_var_path = '/resources/stores/config/{config_store_id}/item/{config_store_item_key}'.sub('{' + 'config_store_id' + '}', CGI.escape(config_store_id.to_s)).sub('{' + 'config_store_item_key' + '}', CGI.escape(config_store_item_key.to_s))

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
      form_params['item_key'] = opts[:'item_key'] if !opts[:'item_key'].nil?
      form_params['item_value'] = opts[:'item_value'] if !opts[:'item_value'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ConfigStoreItemResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ConfigStoreItemApi.upsert_config_store_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigStoreItemApi#upsert_config_store_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
