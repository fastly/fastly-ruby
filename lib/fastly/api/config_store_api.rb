=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class ConfigStoreApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a config store
    # Create a config store.
    # @option opts [String] :name The name of the config store.
    # @return [ConfigStoreResponse]
    def create_config_store(opts = {})
      data, _status_code, _headers = create_config_store_with_http_info(opts)
      data
    end

    # Create a config store
    # Create a config store.
    # @option opts [String] :name The name of the config store.
    # @return [Array<(ConfigStoreResponse, Integer, Hash)>] ConfigStoreResponse data, response status code and response headers
    def create_config_store_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigStoreApi.create_config_store ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/resources/stores/config'

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
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ConfigStoreResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ConfigStoreApi.create_config_store",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigStoreApi#create_config_store\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a config store
    # Delete a config store.
    # @option opts [String] :config_store_id An alphanumeric string identifying the config store. (required)
    # @return [InlineResponse200]
    def delete_config_store(opts = {})
      data, _status_code, _headers = delete_config_store_with_http_info(opts)
      data
    end

    # Delete a config store
    # Delete a config store.
    # @option opts [String] :config_store_id An alphanumeric string identifying the config store. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_config_store_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigStoreApi.delete_config_store ...'
      end
      # unbox the parameters from the hash
      config_store_id = opts[:'config_store_id']
      # verify the required parameter 'config_store_id' is set
      if @api_client.config.client_side_validation && config_store_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_store_id' when calling ConfigStoreApi.delete_config_store"
      end
      # resource path
      local_var_path = '/resources/stores/config/{config_store_id}'.sub('{' + 'config_store_id' + '}', CGI.escape(config_store_id.to_s))

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
        :operation => :"ConfigStoreApi.delete_config_store",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigStoreApi#delete_config_store\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Describe a config store
    # Describe a config store by its identifier.
    # @option opts [String] :config_store_id An alphanumeric string identifying the config store. (required)
    # @return [ConfigStoreResponse]
    def get_config_store(opts = {})
      data, _status_code, _headers = get_config_store_with_http_info(opts)
      data
    end

    # Describe a config store
    # Describe a config store by its identifier.
    # @option opts [String] :config_store_id An alphanumeric string identifying the config store. (required)
    # @return [Array<(ConfigStoreResponse, Integer, Hash)>] ConfigStoreResponse data, response status code and response headers
    def get_config_store_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigStoreApi.get_config_store ...'
      end
      # unbox the parameters from the hash
      config_store_id = opts[:'config_store_id']
      # verify the required parameter 'config_store_id' is set
      if @api_client.config.client_side_validation && config_store_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_store_id' when calling ConfigStoreApi.get_config_store"
      end
      # resource path
      local_var_path = '/resources/stores/config/{config_store_id}'.sub('{' + 'config_store_id' + '}', CGI.escape(config_store_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ConfigStoreResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ConfigStoreApi.get_config_store",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigStoreApi#get_config_store\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get config store metadata
    # Retrieve metadata for a single config store.
    # @option opts [String] :config_store_id An alphanumeric string identifying the config store. (required)
    # @return [ConfigStoreInfoResponse]
    def get_config_store_info(opts = {})
      data, _status_code, _headers = get_config_store_info_with_http_info(opts)
      data
    end

    # Get config store metadata
    # Retrieve metadata for a single config store.
    # @option opts [String] :config_store_id An alphanumeric string identifying the config store. (required)
    # @return [Array<(ConfigStoreInfoResponse, Integer, Hash)>] ConfigStoreInfoResponse data, response status code and response headers
    def get_config_store_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigStoreApi.get_config_store_info ...'
      end
      # unbox the parameters from the hash
      config_store_id = opts[:'config_store_id']
      # verify the required parameter 'config_store_id' is set
      if @api_client.config.client_side_validation && config_store_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_store_id' when calling ConfigStoreApi.get_config_store_info"
      end
      # resource path
      local_var_path = '/resources/stores/config/{config_store_id}/info'.sub('{' + 'config_store_id' + '}', CGI.escape(config_store_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ConfigStoreInfoResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ConfigStoreApi.get_config_store_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigStoreApi#get_config_store_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List linked services
    # List services linked to a config store
    # @option opts [String] :config_store_id An alphanumeric string identifying the config store. (required)
    # @return [Object]
    def list_config_store_services(opts = {})
      data, _status_code, _headers = list_config_store_services_with_http_info(opts)
      data
    end

    # List linked services
    # List services linked to a config store
    # @option opts [String] :config_store_id An alphanumeric string identifying the config store. (required)
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def list_config_store_services_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigStoreApi.list_config_store_services ...'
      end
      # unbox the parameters from the hash
      config_store_id = opts[:'config_store_id']
      # verify the required parameter 'config_store_id' is set
      if @api_client.config.client_side_validation && config_store_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_store_id' when calling ConfigStoreApi.list_config_store_services"
      end
      # resource path
      local_var_path = '/resources/stores/config/{config_store_id}/services'.sub('{' + 'config_store_id' + '}', CGI.escape(config_store_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ConfigStoreApi.list_config_store_services",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigStoreApi#list_config_store_services\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List config stores
    # List config stores.
    # @option opts [String] :name Returns a one-element array containing the details for the named config store.
    # @return [Array<ConfigStoreResponse>]
    def list_config_stores(opts = {})
      data, _status_code, _headers = list_config_stores_with_http_info(opts)
      data
    end

    # List config stores
    # List config stores.
    # @option opts [String] :name Returns a one-element array containing the details for the named config store.
    # @return [Array<(Array<ConfigStoreResponse>, Integer, Hash)>] Array<ConfigStoreResponse> data, response status code and response headers
    def list_config_stores_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigStoreApi.list_config_stores ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/resources/stores/config'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<ConfigStoreResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ConfigStoreApi.list_config_stores",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigStoreApi#list_config_stores\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a config store
    # Update a config store.
    # @option opts [String] :config_store_id An alphanumeric string identifying the config store. (required)
    # @option opts [String] :name The name of the config store.
    # @return [ConfigStoreResponse]
    def update_config_store(opts = {})
      data, _status_code, _headers = update_config_store_with_http_info(opts)
      data
    end

    # Update a config store
    # Update a config store.
    # @option opts [String] :config_store_id An alphanumeric string identifying the config store. (required)
    # @option opts [String] :name The name of the config store.
    # @return [Array<(ConfigStoreResponse, Integer, Hash)>] ConfigStoreResponse data, response status code and response headers
    def update_config_store_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConfigStoreApi.update_config_store ...'
      end
      # unbox the parameters from the hash
      config_store_id = opts[:'config_store_id']
      # verify the required parameter 'config_store_id' is set
      if @api_client.config.client_side_validation && config_store_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_store_id' when calling ConfigStoreApi.update_config_store"
      end
      # resource path
      local_var_path = '/resources/stores/config/{config_store_id}'.sub('{' + 'config_store_id' + '}', CGI.escape(config_store_id.to_s))

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
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ConfigStoreResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ConfigStoreApi.update_config_store",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigStoreApi#update_config_store\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
