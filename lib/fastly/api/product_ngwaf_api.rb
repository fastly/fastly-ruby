=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class ProductNgwafApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Disable product
    # Disable the Next-Gen WAF product on a service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [nil]
    def disable_product_ngwaf(opts = {})
      disable_product_ngwaf_with_http_info(opts)
      nil
    end

    # Disable product
    # Disable the Next-Gen WAF product on a service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def disable_product_ngwaf_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductNgwafApi.disable_product_ngwaf ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ProductNgwafApi.disable_product_ngwaf"
      end
      # resource path
      local_var_path = '/enabled-products/v1/ngwaf/services/{service_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

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
        :operation => :"ProductNgwafApi.disable_product_ngwaf",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductNgwafApi#disable_product_ngwaf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enable product
    # Enable the Next-Gen WAF product on a service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [NgwafRequestEnable] :ngwaf_request_enable 
    # @return [NgwafResponseEnable]
    def enable_product_ngwaf(opts = {})
      data, _status_code, _headers = enable_product_ngwaf_with_http_info(opts)
      data
    end

    # Enable product
    # Enable the Next-Gen WAF product on a service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [NgwafRequestEnable] :ngwaf_request_enable 
    # @return [Array<(NgwafResponseEnable, Integer, Hash)>] NgwafResponseEnable data, response status code and response headers
    def enable_product_ngwaf_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductNgwafApi.enable_product_ngwaf ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ProductNgwafApi.enable_product_ngwaf"
      end
      # resource path
      local_var_path = '/enabled-products/v1/ngwaf/services/{service_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'ngwaf_request_enable'])

      # return_type
      return_type = opts[:debug_return_type] || 'NgwafResponseEnable'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ProductNgwafApi.enable_product_ngwaf",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductNgwafApi#enable_product_ngwaf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get product enablement status
    # Get the enablement status of the Next-Gen WAF product on a service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [NgwafResponseEnable]
    def get_product_ngwaf(opts = {})
      data, _status_code, _headers = get_product_ngwaf_with_http_info(opts)
      data
    end

    # Get product enablement status
    # Get the enablement status of the Next-Gen WAF product on a service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [Array<(NgwafResponseEnable, Integer, Hash)>] NgwafResponseEnable data, response status code and response headers
    def get_product_ngwaf_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductNgwafApi.get_product_ngwaf ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ProductNgwafApi.get_product_ngwaf"
      end
      # resource path
      local_var_path = '/enabled-products/v1/ngwaf/services/{service_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

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
      return_type = opts[:debug_return_type] || 'NgwafResponseEnable'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ProductNgwafApi.get_product_ngwaf",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductNgwafApi#get_product_ngwaf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get configuration
    # Get configuration of the Next-Gen WAF product on a service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [NgwafResponseConfigure]
    def get_product_ngwaf_configuration(opts = {})
      data, _status_code, _headers = get_product_ngwaf_configuration_with_http_info(opts)
      data
    end

    # Get configuration
    # Get configuration of the Next-Gen WAF product on a service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [Array<(NgwafResponseConfigure, Integer, Hash)>] NgwafResponseConfigure data, response status code and response headers
    def get_product_ngwaf_configuration_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductNgwafApi.get_product_ngwaf_configuration ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ProductNgwafApi.get_product_ngwaf_configuration"
      end
      # resource path
      local_var_path = '/enabled-products/v1/ngwaf/services/{service_id}/configuration'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

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
      return_type = opts[:debug_return_type] || 'NgwafResponseConfigure'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ProductNgwafApi.get_product_ngwaf_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductNgwafApi#get_product_ngwaf_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get services with product enabled
    # Get all the services which have the Next-Gen WAF product enabled.
    # @return [NgwafResponseBodyGetAllServices]
    def get_services_product_ngwaf(opts = {})
      data, _status_code, _headers = get_services_product_ngwaf_with_http_info(opts)
      data
    end

    # Get services with product enabled
    # Get all the services which have the Next-Gen WAF product enabled.
    # @return [Array<(NgwafResponseBodyGetAllServices, Integer, Hash)>] NgwafResponseBodyGetAllServices data, response status code and response headers
    def get_services_product_ngwaf_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductNgwafApi.get_services_product_ngwaf ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/enabled-products/v1/ngwaf/services'

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
      return_type = opts[:debug_return_type] || 'NgwafResponseBodyGetAllServices'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ProductNgwafApi.get_services_product_ngwaf",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductNgwafApi#get_services_product_ngwaf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update configuration
    # Update configuration of the Next-Gen WAF product on a service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [NgwafRequestUpdateConfiguration] :ngwaf_request_update_configuration 
    # @return [NgwafResponseConfigure]
    def set_product_ngwaf_configuration(opts = {})
      data, _status_code, _headers = set_product_ngwaf_configuration_with_http_info(opts)
      data
    end

    # Update configuration
    # Update configuration of the Next-Gen WAF product on a service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [NgwafRequestUpdateConfiguration] :ngwaf_request_update_configuration 
    # @return [Array<(NgwafResponseConfigure, Integer, Hash)>] NgwafResponseConfigure data, response status code and response headers
    def set_product_ngwaf_configuration_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductNgwafApi.set_product_ngwaf_configuration ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ProductNgwafApi.set_product_ngwaf_configuration"
      end
      # resource path
      local_var_path = '/enabled-products/v1/ngwaf/services/{service_id}/configuration'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'ngwaf_request_update_configuration'])

      # return_type
      return_type = opts[:debug_return_type] || 'NgwafResponseConfigure'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ProductNgwafApi.set_product_ngwaf_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductNgwafApi#set_product_ngwaf_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
