=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class EnabledProductsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Disable a product
    # Disable a product on a service. Supported product IDs: `brotli_compression`,`domain_inspector`,`fanout`,`image_optimizer`,`origin_inspector`, `websockets`, `bot_management`, and `ngwaf`.
    # @option opts [String] :product_id  (required)
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [nil]
    def disable_product(opts = {})
      disable_product_with_http_info(opts)
      nil
    end

    # Disable a product
    # Disable a product on a service. Supported product IDs: &#x60;brotli_compression&#x60;,&#x60;domain_inspector&#x60;,&#x60;fanout&#x60;,&#x60;image_optimizer&#x60;,&#x60;origin_inspector&#x60;, &#x60;websockets&#x60;, &#x60;bot_management&#x60;, and &#x60;ngwaf&#x60;.
    # @option opts [String] :product_id  (required)
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def disable_product_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EnabledProductsApi.disable_product ...'
      end
      # unbox the parameters from the hash
      product_id = opts[:'product_id']
      service_id = opts[:'service_id']
      # verify the required parameter 'product_id' is set
      if @api_client.config.client_side_validation && product_id.nil?
        fail ArgumentError, "Missing the required parameter 'product_id' when calling EnabledProductsApi.disable_product"
      end
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling EnabledProductsApi.disable_product"
      end
      # resource path
      local_var_path = '/enabled-products/v1/{product_id}/services/{service_id}'.sub('{' + 'product_id' + '}', CGI.escape(product_id.to_s)).sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

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
        :operation => :"EnabledProductsApi.disable_product",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnabledProductsApi#disable_product\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enable a product
    # Enable a product on a service. Supported product IDs: `brotli_compression`,`domain_inspector`,`fanout`,`image_optimizer`,`origin_inspector`, `websockets`, `bot_management`, and `ngwaf`.
    # @option opts [String] :product_id  (required)
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [SetWorkspaceId] :set_workspace_id 
    # @return [EnabledProductResponse]
    def enable_product(opts = {})
      data, _status_code, _headers = enable_product_with_http_info(opts)
      data
    end

    # Enable a product
    # Enable a product on a service. Supported product IDs: &#x60;brotli_compression&#x60;,&#x60;domain_inspector&#x60;,&#x60;fanout&#x60;,&#x60;image_optimizer&#x60;,&#x60;origin_inspector&#x60;, &#x60;websockets&#x60;, &#x60;bot_management&#x60;, and &#x60;ngwaf&#x60;.
    # @option opts [String] :product_id  (required)
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [SetWorkspaceId] :set_workspace_id 
    # @return [Array<(EnabledProductResponse, Integer, Hash)>] EnabledProductResponse data, response status code and response headers
    def enable_product_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EnabledProductsApi.enable_product ...'
      end
      # unbox the parameters from the hash
      product_id = opts[:'product_id']
      service_id = opts[:'service_id']
      # verify the required parameter 'product_id' is set
      if @api_client.config.client_side_validation && product_id.nil?
        fail ArgumentError, "Missing the required parameter 'product_id' when calling EnabledProductsApi.enable_product"
      end
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling EnabledProductsApi.enable_product"
      end
      # resource path
      local_var_path = '/enabled-products/v1/{product_id}/services/{service_id}'.sub('{' + 'product_id' + '}', CGI.escape(product_id.to_s)).sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'set_workspace_id'])

      # return_type
      return_type = opts[:debug_return_type] || 'EnabledProductResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"EnabledProductsApi.enable_product",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnabledProductsApi#enable_product\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get enabled product
    # Get enabled product on a service. Supported product IDs: `brotli_compression`,`domain_inspector`,`fanout`,`image_optimizer`,`origin_inspector`, `websockets`, `bot_management`, and `ngwaf`.
    # @option opts [String] :product_id  (required)
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [EnabledProductResponse]
    def get_enabled_product(opts = {})
      data, _status_code, _headers = get_enabled_product_with_http_info(opts)
      data
    end

    # Get enabled product
    # Get enabled product on a service. Supported product IDs: &#x60;brotli_compression&#x60;,&#x60;domain_inspector&#x60;,&#x60;fanout&#x60;,&#x60;image_optimizer&#x60;,&#x60;origin_inspector&#x60;, &#x60;websockets&#x60;, &#x60;bot_management&#x60;, and &#x60;ngwaf&#x60;.
    # @option opts [String] :product_id  (required)
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [Array<(EnabledProductResponse, Integer, Hash)>] EnabledProductResponse data, response status code and response headers
    def get_enabled_product_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EnabledProductsApi.get_enabled_product ...'
      end
      # unbox the parameters from the hash
      product_id = opts[:'product_id']
      service_id = opts[:'service_id']
      # verify the required parameter 'product_id' is set
      if @api_client.config.client_side_validation && product_id.nil?
        fail ArgumentError, "Missing the required parameter 'product_id' when calling EnabledProductsApi.get_enabled_product"
      end
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling EnabledProductsApi.get_enabled_product"
      end
      # resource path
      local_var_path = '/enabled-products/v1/{product_id}/services/{service_id}'.sub('{' + 'product_id' + '}', CGI.escape(product_id.to_s)).sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

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
      return_type = opts[:debug_return_type] || 'EnabledProductResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"EnabledProductsApi.get_enabled_product",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnabledProductsApi#get_enabled_product\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get configuration for a product
    # Get configuration for an enabled product on a service. Supported product IDs: `ngwaf`.
    # @option opts [String] :product_id  (required)
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [ConfiguredProductResponse]
    def get_product_configuration(opts = {})
      data, _status_code, _headers = get_product_configuration_with_http_info(opts)
      data
    end

    # Get configuration for a product
    # Get configuration for an enabled product on a service. Supported product IDs: &#x60;ngwaf&#x60;.
    # @option opts [String] :product_id  (required)
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [Array<(ConfiguredProductResponse, Integer, Hash)>] ConfiguredProductResponse data, response status code and response headers
    def get_product_configuration_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EnabledProductsApi.get_product_configuration ...'
      end
      # unbox the parameters from the hash
      product_id = opts[:'product_id']
      service_id = opts[:'service_id']
      # verify the required parameter 'product_id' is set
      if @api_client.config.client_side_validation && product_id.nil?
        fail ArgumentError, "Missing the required parameter 'product_id' when calling EnabledProductsApi.get_product_configuration"
      end
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling EnabledProductsApi.get_product_configuration"
      end
      # resource path
      local_var_path = '/enabled-products/v1/{product_id}/services/{service_id}/configuration'.sub('{' + 'product_id' + '}', CGI.escape(product_id.to_s)).sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ConfiguredProductResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"EnabledProductsApi.get_product_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnabledProductsApi#get_product_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update configuration for a product
    # Update configuration for an enabled product on a service. Supported product IDs: `ngwaf`.
    # @option opts [String] :product_id  (required)
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [SetConfiguration] :set_configuration 
    # @return [ConfiguredProductResponse]
    def set_product_configuration(opts = {})
      data, _status_code, _headers = set_product_configuration_with_http_info(opts)
      data
    end

    # Update configuration for a product
    # Update configuration for an enabled product on a service. Supported product IDs: &#x60;ngwaf&#x60;.
    # @option opts [String] :product_id  (required)
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [SetConfiguration] :set_configuration 
    # @return [Array<(ConfiguredProductResponse, Integer, Hash)>] ConfiguredProductResponse data, response status code and response headers
    def set_product_configuration_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EnabledProductsApi.set_product_configuration ...'
      end
      # unbox the parameters from the hash
      product_id = opts[:'product_id']
      service_id = opts[:'service_id']
      # verify the required parameter 'product_id' is set
      if @api_client.config.client_side_validation && product_id.nil?
        fail ArgumentError, "Missing the required parameter 'product_id' when calling EnabledProductsApi.set_product_configuration"
      end
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling EnabledProductsApi.set_product_configuration"
      end
      # resource path
      local_var_path = '/enabled-products/v1/{product_id}/services/{service_id}/configuration'.sub('{' + 'product_id' + '}', CGI.escape(product_id.to_s)).sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'set_configuration'])

      # return_type
      return_type = opts[:debug_return_type] || 'ConfiguredProductResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"EnabledProductsApi.set_product_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnabledProductsApi#set_product_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
