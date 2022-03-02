=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0


=end

require 'cgi'

module Fastly
  class ServiceAuthorizationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create service authorization
    # Create service authorization.
    # @option opts [ServiceAuthorization] :service_authorization 
    # @return [ServiceAuthorizationResponse]
    def create_service_authorization(opts = {})
      data, _status_code, _headers = create_service_authorization_with_http_info(opts)
      data
    end

    # Create service authorization
    # Create service authorization.
    # @option opts [ServiceAuthorization] :service_authorization 
    # @return [Array<(ServiceAuthorizationResponse, Integer, Hash)>] ServiceAuthorizationResponse data, response status code and response headers
    def create_service_authorization_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceAuthorizationsApi.create_service_authorization ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/service-authorizations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/vnd.api+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'service_authorization'])

      # return_type
      return_type = opts[:debug_return_type] || 'ServiceAuthorizationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ServiceAuthorizationsApi.create_service_authorization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAuthorizationsApi#create_service_authorization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete service authorization
    # Delete service authorization.
    # @option opts [String] :service_authorization_id Alphanumeric string identifying a service authorization. (required)
    # @return [nil]
    def delete_service_authorization(opts = {})
      delete_service_authorization_with_http_info(opts)
      nil
    end

    # Delete service authorization
    # Delete service authorization.
    # @option opts [String] :service_authorization_id Alphanumeric string identifying a service authorization. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_service_authorization_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceAuthorizationsApi.delete_service_authorization ...'
      end
      # unbox the parameters from the hash
      service_authorization_id = opts[:'service_authorization_id']
      # verify the required parameter 'service_authorization_id' is set
      if @api_client.config.client_side_validation && service_authorization_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_authorization_id' when calling ServiceAuthorizationsApi.delete_service_authorization"
      end
      # resource path
      local_var_path = '/service-authorizations/{service_authorization_id}'.sub('{' + 'service_authorization_id' + '}', CGI.escape(service_authorization_id.to_s))

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
        :operation => :"ServiceAuthorizationsApi.delete_service_authorization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAuthorizationsApi#delete_service_authorization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete service authorizations
    # Delete service authorizations.
    # @option opts [Hash<String, Object>] :request_body 
    # @return [InlineResponse2002]
    def delete_service_authorization2(opts = {})
      data, _status_code, _headers = delete_service_authorization2_with_http_info(opts)
      data
    end

    # Delete service authorizations
    # Delete service authorizations.
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(InlineResponse2002, Integer, Hash)>] InlineResponse2002 data, response status code and response headers
    def delete_service_authorization2_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceAuthorizationsApi.delete_service_authorization2 ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/service-authorizations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json; ext=bulk'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/vnd.api+json; ext=bulk'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse2002'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ServiceAuthorizationsApi.delete_service_authorization2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAuthorizationsApi#delete_service_authorization2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List service authorizations
    # List service authorizations.
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @return [ServiceAuthorizationsResponse]
    def list_service_authorization(opts = {})
      data, _status_code, _headers = list_service_authorization_with_http_info(opts)
      data
    end

    # List service authorizations
    # List service authorizations.
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @return [Array<(ServiceAuthorizationsResponse, Integer, Hash)>] ServiceAuthorizationsResponse data, response status code and response headers
    def list_service_authorization_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceAuthorizationsApi.list_service_authorization ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ServiceAuthorizationsApi.list_service_authorization, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ServiceAuthorizationsApi.list_service_authorization, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/service-authorizations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page[number]'] = opts[:'page_number'] if !opts[:'page_number'].nil?
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ServiceAuthorizationsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ServiceAuthorizationsApi.list_service_authorization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAuthorizationsApi#list_service_authorization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show service authorization
    # Show service authorization.
    # @option opts [String] :service_authorization_id Alphanumeric string identifying a service authorization. (required)
    # @return [ServiceAuthorizationResponse]
    def show_service_authorization(opts = {})
      data, _status_code, _headers = show_service_authorization_with_http_info(opts)
      data
    end

    # Show service authorization
    # Show service authorization.
    # @option opts [String] :service_authorization_id Alphanumeric string identifying a service authorization. (required)
    # @return [Array<(ServiceAuthorizationResponse, Integer, Hash)>] ServiceAuthorizationResponse data, response status code and response headers
    def show_service_authorization_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceAuthorizationsApi.show_service_authorization ...'
      end
      # unbox the parameters from the hash
      service_authorization_id = opts[:'service_authorization_id']
      # verify the required parameter 'service_authorization_id' is set
      if @api_client.config.client_side_validation && service_authorization_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_authorization_id' when calling ServiceAuthorizationsApi.show_service_authorization"
      end
      # resource path
      local_var_path = '/service-authorizations/{service_authorization_id}'.sub('{' + 'service_authorization_id' + '}', CGI.escape(service_authorization_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ServiceAuthorizationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ServiceAuthorizationsApi.show_service_authorization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAuthorizationsApi#show_service_authorization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update service authorization
    # Update service authorization.
    # @option opts [String] :service_authorization_id Alphanumeric string identifying a service authorization. (required)
    # @option opts [ServiceAuthorization] :service_authorization 
    # @return [ServiceAuthorizationResponse]
    def update_service_authorization(opts = {})
      data, _status_code, _headers = update_service_authorization_with_http_info(opts)
      data
    end

    # Update service authorization
    # Update service authorization.
    # @option opts [String] :service_authorization_id Alphanumeric string identifying a service authorization. (required)
    # @option opts [ServiceAuthorization] :service_authorization 
    # @return [Array<(ServiceAuthorizationResponse, Integer, Hash)>] ServiceAuthorizationResponse data, response status code and response headers
    def update_service_authorization_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceAuthorizationsApi.update_service_authorization ...'
      end
      # unbox the parameters from the hash
      service_authorization_id = opts[:'service_authorization_id']
      # verify the required parameter 'service_authorization_id' is set
      if @api_client.config.client_side_validation && service_authorization_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_authorization_id' when calling ServiceAuthorizationsApi.update_service_authorization"
      end
      # resource path
      local_var_path = '/service-authorizations/{service_authorization_id}'.sub('{' + 'service_authorization_id' + '}', CGI.escape(service_authorization_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'service_authorization'])

      # return_type
      return_type = opts[:debug_return_type] || 'ServiceAuthorizationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ServiceAuthorizationsApi.update_service_authorization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAuthorizationsApi#update_service_authorization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update service authorizations
    # Update service authorizations.
    # @option opts [Hash<String, Object>] :request_body 
    # @return [ServiceAuthorizationsResponse]
    def update_service_authorization2(opts = {})
      data, _status_code, _headers = update_service_authorization2_with_http_info(opts)
      data
    end

    # Update service authorizations
    # Update service authorizations.
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(ServiceAuthorizationsResponse, Integer, Hash)>] ServiceAuthorizationsResponse data, response status code and response headers
    def update_service_authorization2_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceAuthorizationsApi.update_service_authorization2 ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/service-authorizations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json; ext=bulk'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/vnd.api+json; ext=bulk'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'ServiceAuthorizationsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ServiceAuthorizationsApi.update_service_authorization2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAuthorizationsApi#update_service_authorization2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
