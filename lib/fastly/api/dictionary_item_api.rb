=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class DictionaryItemApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an entry in an edge dictionary
    # Create DictionaryItem given service, dictionary ID, item key, and item value.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :dictionary_id Alphanumeric string identifying a Dictionary. (required)
    # @option opts [String] :item_key Item key, maximum 256 characters.
    # @option opts [String] :item_value Item value, maximum 8000 characters.
    # @return [DictionaryItemResponse]
    def create_dictionary_item(opts = {})
      data, _status_code, _headers = create_dictionary_item_with_http_info(opts)
      data
    end

    # Create an entry in an edge dictionary
    # Create DictionaryItem given service, dictionary ID, item key, and item value.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :dictionary_id Alphanumeric string identifying a Dictionary. (required)
    # @option opts [String] :item_key Item key, maximum 256 characters.
    # @option opts [String] :item_value Item value, maximum 8000 characters.
    # @return [Array<(DictionaryItemResponse, Integer, Hash)>] DictionaryItemResponse data, response status code and response headers
    def create_dictionary_item_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DictionaryItemApi.create_dictionary_item ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      dictionary_id = opts[:'dictionary_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling DictionaryItemApi.create_dictionary_item"
      end
      # verify the required parameter 'dictionary_id' is set
      if @api_client.config.client_side_validation && dictionary_id.nil?
        fail ArgumentError, "Missing the required parameter 'dictionary_id' when calling DictionaryItemApi.create_dictionary_item"
      end
      # resource path
      local_var_path = '/service/{service_id}/dictionary/{dictionary_id}/item'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'dictionary_id' + '}', CGI.escape(dictionary_id.to_s))

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
      return_type = opts[:debug_return_type] || 'DictionaryItemResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DictionaryItemApi.create_dictionary_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DictionaryItemApi#create_dictionary_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an item from an edge dictionary
    # Delete DictionaryItem given service, dictionary ID, and item key.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :dictionary_id Alphanumeric string identifying a Dictionary. (required)
    # @option opts [String] :dictionary_item_key Item key, maximum 256 characters. (required)
    # @return [InlineResponse200]
    def delete_dictionary_item(opts = {})
      data, _status_code, _headers = delete_dictionary_item_with_http_info(opts)
      data
    end

    # Delete an item from an edge dictionary
    # Delete DictionaryItem given service, dictionary ID, and item key.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :dictionary_id Alphanumeric string identifying a Dictionary. (required)
    # @option opts [String] :dictionary_item_key Item key, maximum 256 characters. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_dictionary_item_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DictionaryItemApi.delete_dictionary_item ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      dictionary_id = opts[:'dictionary_id']
      dictionary_item_key = opts[:'dictionary_item_key']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling DictionaryItemApi.delete_dictionary_item"
      end
      # verify the required parameter 'dictionary_id' is set
      if @api_client.config.client_side_validation && dictionary_id.nil?
        fail ArgumentError, "Missing the required parameter 'dictionary_id' when calling DictionaryItemApi.delete_dictionary_item"
      end
      # verify the required parameter 'dictionary_item_key' is set
      if @api_client.config.client_side_validation && dictionary_item_key.nil?
        fail ArgumentError, "Missing the required parameter 'dictionary_item_key' when calling DictionaryItemApi.delete_dictionary_item"
      end
      # resource path
      local_var_path = '/service/{service_id}/dictionary/{dictionary_id}/item/{dictionary_item_key}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'dictionary_id' + '}', CGI.escape(dictionary_id.to_s)).sub('{' + 'dictionary_item_key' + '}', CGI.escape(dictionary_item_key.to_s))

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
        :operation => :"DictionaryItemApi.delete_dictionary_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DictionaryItemApi#delete_dictionary_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an item from an edge dictionary
    # Retrieve a single DictionaryItem given service, dictionary ID and item key.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :dictionary_id Alphanumeric string identifying a Dictionary. (required)
    # @option opts [String] :dictionary_item_key Item key, maximum 256 characters. (required)
    # @return [DictionaryItemResponse]
    def get_dictionary_item(opts = {})
      data, _status_code, _headers = get_dictionary_item_with_http_info(opts)
      data
    end

    # Get an item from an edge dictionary
    # Retrieve a single DictionaryItem given service, dictionary ID and item key.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :dictionary_id Alphanumeric string identifying a Dictionary. (required)
    # @option opts [String] :dictionary_item_key Item key, maximum 256 characters. (required)
    # @return [Array<(DictionaryItemResponse, Integer, Hash)>] DictionaryItemResponse data, response status code and response headers
    def get_dictionary_item_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DictionaryItemApi.get_dictionary_item ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      dictionary_id = opts[:'dictionary_id']
      dictionary_item_key = opts[:'dictionary_item_key']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling DictionaryItemApi.get_dictionary_item"
      end
      # verify the required parameter 'dictionary_id' is set
      if @api_client.config.client_side_validation && dictionary_id.nil?
        fail ArgumentError, "Missing the required parameter 'dictionary_id' when calling DictionaryItemApi.get_dictionary_item"
      end
      # verify the required parameter 'dictionary_item_key' is set
      if @api_client.config.client_side_validation && dictionary_item_key.nil?
        fail ArgumentError, "Missing the required parameter 'dictionary_item_key' when calling DictionaryItemApi.get_dictionary_item"
      end
      # resource path
      local_var_path = '/service/{service_id}/dictionary/{dictionary_id}/item/{dictionary_item_key}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'dictionary_id' + '}', CGI.escape(dictionary_id.to_s)).sub('{' + 'dictionary_item_key' + '}', CGI.escape(dictionary_item_key.to_s))

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
      return_type = opts[:debug_return_type] || 'DictionaryItemResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DictionaryItemApi.get_dictionary_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DictionaryItemApi#get_dictionary_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List items in an edge dictionary
    # List of DictionaryItems given service and dictionary ID.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :dictionary_id Alphanumeric string identifying a Dictionary. (required)
    # @option opts [Integer] :page Current page.
    # @option opts [Integer] :per_page Number of records per page. (default to 20)
    # @option opts [String] :sort Field on which to sort. (default to 'created')
    # @option opts [String] :direction Direction in which to sort results. (default to 'ascend')
    # @return [Array<DictionaryItemResponse>]
    def list_dictionary_items(opts = {})
      data, _status_code, _headers = list_dictionary_items_with_http_info(opts)
      data
    end

    # List items in an edge dictionary
    # List of DictionaryItems given service and dictionary ID.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :dictionary_id Alphanumeric string identifying a Dictionary. (required)
    # @option opts [Integer] :page Current page.
    # @option opts [Integer] :per_page Number of records per page. (default to 20)
    # @option opts [String] :sort Field on which to sort. (default to 'created')
    # @option opts [String] :direction Direction in which to sort results. (default to 'ascend')
    # @return [Array<(Array<DictionaryItemResponse>, Integer, Hash)>] Array<DictionaryItemResponse> data, response status code and response headers
    def list_dictionary_items_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DictionaryItemApi.list_dictionary_items ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      dictionary_id = opts[:'dictionary_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling DictionaryItemApi.list_dictionary_items"
      end
      # verify the required parameter 'dictionary_id' is set
      if @api_client.config.client_side_validation && dictionary_id.nil?
        fail ArgumentError, "Missing the required parameter 'dictionary_id' when calling DictionaryItemApi.list_dictionary_items"
      end
      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling DictionaryItemApi.list_dictionary_items, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling DictionaryItemApi.list_dictionary_items, must be greater than or equal to 1.'
      end

      allowable_values = ["ascend", "descend"]
      if @api_client.config.client_side_validation && opts[:'direction'] && !allowable_values.include?(opts[:'direction'])
        fail ArgumentError, "invalid value for \"direction\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service/{service_id}/dictionary/{dictionary_id}/items'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'dictionary_id' + '}', CGI.escape(dictionary_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'direction'] = opts[:'direction'] if !opts[:'direction'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<DictionaryItemResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DictionaryItemApi.list_dictionary_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DictionaryItemApi#list_dictionary_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an entry in an edge dictionary
    # Update DictionaryItem given service, dictionary ID, item key, and item value.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :dictionary_id Alphanumeric string identifying a Dictionary. (required)
    # @option opts [String] :dictionary_item_key Item key, maximum 256 characters. (required)
    # @option opts [String] :item_key Item key, maximum 256 characters.
    # @option opts [String] :item_value Item value, maximum 8000 characters.
    # @return [DictionaryItemResponse]
    def update_dictionary_item(opts = {})
      data, _status_code, _headers = update_dictionary_item_with_http_info(opts)
      data
    end

    # Update an entry in an edge dictionary
    # Update DictionaryItem given service, dictionary ID, item key, and item value.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :dictionary_id Alphanumeric string identifying a Dictionary. (required)
    # @option opts [String] :dictionary_item_key Item key, maximum 256 characters. (required)
    # @option opts [String] :item_key Item key, maximum 256 characters.
    # @option opts [String] :item_value Item value, maximum 8000 characters.
    # @return [Array<(DictionaryItemResponse, Integer, Hash)>] DictionaryItemResponse data, response status code and response headers
    def update_dictionary_item_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DictionaryItemApi.update_dictionary_item ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      dictionary_id = opts[:'dictionary_id']
      dictionary_item_key = opts[:'dictionary_item_key']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling DictionaryItemApi.update_dictionary_item"
      end
      # verify the required parameter 'dictionary_id' is set
      if @api_client.config.client_side_validation && dictionary_id.nil?
        fail ArgumentError, "Missing the required parameter 'dictionary_id' when calling DictionaryItemApi.update_dictionary_item"
      end
      # verify the required parameter 'dictionary_item_key' is set
      if @api_client.config.client_side_validation && dictionary_item_key.nil?
        fail ArgumentError, "Missing the required parameter 'dictionary_item_key' when calling DictionaryItemApi.update_dictionary_item"
      end
      # resource path
      local_var_path = '/service/{service_id}/dictionary/{dictionary_id}/item/{dictionary_item_key}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'dictionary_id' + '}', CGI.escape(dictionary_id.to_s)).sub('{' + 'dictionary_item_key' + '}', CGI.escape(dictionary_item_key.to_s))

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
      return_type = opts[:debug_return_type] || 'DictionaryItemResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DictionaryItemApi.update_dictionary_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DictionaryItemApi#update_dictionary_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Insert or update an entry in an edge dictionary
    # Upsert DictionaryItem given service, dictionary ID, item key, and item value.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :dictionary_id Alphanumeric string identifying a Dictionary. (required)
    # @option opts [String] :dictionary_item_key Item key, maximum 256 characters. (required)
    # @option opts [String] :item_key Item key, maximum 256 characters.
    # @option opts [String] :item_value Item value, maximum 8000 characters.
    # @return [DictionaryItemResponse]
    def upsert_dictionary_item(opts = {})
      data, _status_code, _headers = upsert_dictionary_item_with_http_info(opts)
      data
    end

    # Insert or update an entry in an edge dictionary
    # Upsert DictionaryItem given service, dictionary ID, item key, and item value.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :dictionary_id Alphanumeric string identifying a Dictionary. (required)
    # @option opts [String] :dictionary_item_key Item key, maximum 256 characters. (required)
    # @option opts [String] :item_key Item key, maximum 256 characters.
    # @option opts [String] :item_value Item value, maximum 8000 characters.
    # @return [Array<(DictionaryItemResponse, Integer, Hash)>] DictionaryItemResponse data, response status code and response headers
    def upsert_dictionary_item_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DictionaryItemApi.upsert_dictionary_item ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      dictionary_id = opts[:'dictionary_id']
      dictionary_item_key = opts[:'dictionary_item_key']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling DictionaryItemApi.upsert_dictionary_item"
      end
      # verify the required parameter 'dictionary_id' is set
      if @api_client.config.client_side_validation && dictionary_id.nil?
        fail ArgumentError, "Missing the required parameter 'dictionary_id' when calling DictionaryItemApi.upsert_dictionary_item"
      end
      # verify the required parameter 'dictionary_item_key' is set
      if @api_client.config.client_side_validation && dictionary_item_key.nil?
        fail ArgumentError, "Missing the required parameter 'dictionary_item_key' when calling DictionaryItemApi.upsert_dictionary_item"
      end
      # resource path
      local_var_path = '/service/{service_id}/dictionary/{dictionary_id}/item/{dictionary_item_key}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'dictionary_id' + '}', CGI.escape(dictionary_id.to_s)).sub('{' + 'dictionary_item_key' + '}', CGI.escape(dictionary_item_key.to_s))

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
      return_type = opts[:debug_return_type] || 'DictionaryItemResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DictionaryItemApi.upsert_dictionary_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DictionaryItemApi#upsert_dictionary_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
