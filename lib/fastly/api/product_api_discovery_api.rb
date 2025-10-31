=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class ProductApiDiscoveryApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Disable product
    # Disable the API Discovery product on a service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [nil]
    def disable_product_api_discovery(opts = {})
      disable_product_api_discovery_with_http_info(opts)
      nil
    end

    # Disable product
    # Disable the API Discovery product on a service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def disable_product_api_discovery_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductApiDiscoveryApi.disable_product_api_discovery ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ProductApiDiscoveryApi.disable_product_api_discovery"
      end
      # resource path
      local_var_path = '/enabled-products/v1/api_discovery/services/{service_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

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
        :operation => :"ProductApiDiscoveryApi.disable_product_api_discovery",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductApiDiscoveryApi#disable_product_api_discovery\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enable product
    # Enable the API Discovery product on a service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [ApiDiscoveryResponseEnable]
    def enable_product_api_discovery(opts = {})
      data, _status_code, _headers = enable_product_api_discovery_with_http_info(opts)
      data
    end

    # Enable product
    # Enable the API Discovery product on a service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [Array<(ApiDiscoveryResponseEnable, Integer, Hash)>] ApiDiscoveryResponseEnable data, response status code and response headers
    def enable_product_api_discovery_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductApiDiscoveryApi.enable_product_api_discovery ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ProductApiDiscoveryApi.enable_product_api_discovery"
      end
      # resource path
      local_var_path = '/enabled-products/v1/api_discovery/services/{service_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ApiDiscoveryResponseEnable'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ProductApiDiscoveryApi.enable_product_api_discovery",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductApiDiscoveryApi#enable_product_api_discovery\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get product enablement status
    # Get the enablement status of the API Discovery product on a service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [ApiDiscoveryResponseEnable]
    def get_product_api_discovery(opts = {})
      data, _status_code, _headers = get_product_api_discovery_with_http_info(opts)
      data
    end

    # Get product enablement status
    # Get the enablement status of the API Discovery product on a service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [Array<(ApiDiscoveryResponseEnable, Integer, Hash)>] ApiDiscoveryResponseEnable data, response status code and response headers
    def get_product_api_discovery_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductApiDiscoveryApi.get_product_api_discovery ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ProductApiDiscoveryApi.get_product_api_discovery"
      end
      # resource path
      local_var_path = '/enabled-products/v1/api_discovery/services/{service_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ApiDiscoveryResponseEnable'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ProductApiDiscoveryApi.get_product_api_discovery",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductApiDiscoveryApi#get_product_api_discovery\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get services with product enabled
    # Get all the services for a customer that has the API Discovery product enabled.
    # @return [ApiDiscoveryResponseBodyGetAllServices]
    def get_services_product_api_discovery(opts = {})
      data, _status_code, _headers = get_services_product_api_discovery_with_http_info(opts)
      data
    end

    # Get services with product enabled
    # Get all the services for a customer that has the API Discovery product enabled.
    # @return [Array<(ApiDiscoveryResponseBodyGetAllServices, Integer, Hash)>] ApiDiscoveryResponseBodyGetAllServices data, response status code and response headers
    def get_services_product_api_discovery_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductApiDiscoveryApi.get_services_product_api_discovery ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/enabled-products/v1/api_discovery/services'

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
      return_type = opts[:debug_return_type] || 'ApiDiscoveryResponseBodyGetAllServices'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ProductApiDiscoveryApi.get_services_product_api_discovery",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductApiDiscoveryApi#get_services_product_api_discovery\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
