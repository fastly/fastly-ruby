=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class ServiceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a service
    # Create a service.
    # @option opts [String] :comment A freeform descriptive note.
    # @option opts [String] :name The name of the service.
    # @option opts [String] :customer_id 
    # @option opts [String] :type The type of this service.
    # @return [ServiceResponse]
    def create_service(opts = {})
      data, _status_code, _headers = create_service_with_http_info(opts)
      data
    end

    # Create a service
    # Create a service.
    # @option opts [String] :comment A freeform descriptive note.
    # @option opts [String] :name The name of the service.
    # @option opts [String] :customer_id 
    # @option opts [String] :type The type of this service.
    # @return [Array<(ServiceResponse, Integer, Hash)>] ServiceResponse data, response status code and response headers
    def create_service_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceApi.create_service ...'
      end
      # unbox the parameters from the hash
      allowable_values = ["vcl", "wasm"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service'

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
      form_params['comment'] = opts[:'comment'] if !opts[:'comment'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['customer_id'] = opts[:'customer_id'] if !opts[:'customer_id'].nil?
      form_params['type'] = opts[:'type'] if !opts[:'type'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ServiceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ServiceApi.create_service",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceApi#create_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a service
    # Delete a service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [InlineResponse200]
    def delete_service(opts = {})
      data, _status_code, _headers = delete_service_with_http_info(opts)
      data
    end

    # Delete a service
    # Delete a service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_service_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceApi.delete_service ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ServiceApi.delete_service"
      end
      # resource path
      local_var_path = '/service/{service_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

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
        :operation => :"ServiceApi.delete_service",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceApi#delete_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a service
    # Get a specific service by id.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [ServiceResponse]
    def get_service(opts = {})
      data, _status_code, _headers = get_service_with_http_info(opts)
      data
    end

    # Get a service
    # Get a specific service by id.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [Array<(ServiceResponse, Integer, Hash)>] ServiceResponse data, response status code and response headers
    def get_service_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceApi.get_service ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ServiceApi.get_service"
      end
      # resource path
      local_var_path = '/service/{service_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ServiceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ServiceApi.get_service",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceApi#get_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get service details
    # List detailed information on a specified service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version Number identifying a version of the service.
    # @return [ServiceDetail]
    def get_service_detail(opts = {})
      data, _status_code, _headers = get_service_detail_with_http_info(opts)
      data
    end

    # Get service details
    # List detailed information on a specified service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version Number identifying a version of the service.
    # @return [Array<(ServiceDetail, Integer, Hash)>] ServiceDetail data, response status code and response headers
    def get_service_detail_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceApi.get_service_detail ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ServiceApi.get_service_detail"
      end
      if @api_client.config.client_side_validation && !opts[:'version'].nil? && opts[:'version'] < 1
        fail ArgumentError, 'invalid value for "opts[:"version"]" when calling ServiceApi.get_service_detail, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/service/{service_id}/details'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'version'] = opts[:'version'] if !opts[:'version'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ServiceDetail'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ServiceApi.get_service_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceApi#get_service_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the domains within a service
    # List the domains within a service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [Array<DomainResponse>]
    def list_service_domains(opts = {})
      data, _status_code, _headers = list_service_domains_with_http_info(opts)
      data
    end

    # List the domains within a service
    # List the domains within a service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [Array<(Array<DomainResponse>, Integer, Hash)>] Array<DomainResponse> data, response status code and response headers
    def list_service_domains_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceApi.list_service_domains ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ServiceApi.list_service_domains"
      end
      # resource path
      local_var_path = '/service/{service_id}/domain'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<DomainResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ServiceApi.list_service_domains",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceApi#list_service_domains\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List services
    # List services.
    # @option opts [Integer] :page Current page.
    # @option opts [Integer] :per_page Number of records per page. (default to 20)
    # @option opts [String] :sort Field on which to sort. (default to 'created')
    # @option opts [String] :direction Direction in which to sort results. (default to 'ascend')
    # @return [Array<ServiceListResponse>]
    def list_services(opts = {})
      data, _status_code, _headers = list_services_with_http_info(opts)
      data
    end

    # List services
    # List services.
    # @option opts [Integer] :page Current page.
    # @option opts [Integer] :per_page Number of records per page. (default to 20)
    # @option opts [String] :sort Field on which to sort. (default to 'created')
    # @option opts [String] :direction Direction in which to sort results. (default to 'ascend')
    # @return [Array<(Array<ServiceListResponse>, Integer, Hash)>] Array<ServiceListResponse> data, response status code and response headers
    def list_services_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceApi.list_services ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling ServiceApi.list_services, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling ServiceApi.list_services, must be greater than or equal to 1.'
      end

      allowable_values = ["ascend", "descend"]
      if @api_client.config.client_side_validation && opts[:'direction'] && !allowable_values.include?(opts[:'direction'])
        fail ArgumentError, "invalid value for \"direction\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service'

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
      return_type = opts[:debug_return_type] || 'Array<ServiceListResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ServiceApi.list_services",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceApi#list_services\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search for a service by name
    # Get a specific service by name.
    # @option opts [String] :name The name of the service. (required)
    # @return [ServiceResponse]
    def search_service(opts = {})
      data, _status_code, _headers = search_service_with_http_info(opts)
      data
    end

    # Search for a service by name
    # Get a specific service by name.
    # @option opts [String] :name The name of the service. (required)
    # @return [Array<(ServiceResponse, Integer, Hash)>] ServiceResponse data, response status code and response headers
    def search_service_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceApi.search_service ...'
      end
      # unbox the parameters from the hash
      name = opts[:'name']
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ServiceApi.search_service"
      end
      # resource path
      local_var_path = '/service/search'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'name'] = name

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ServiceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ServiceApi.search_service",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceApi#search_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a service
    # Update a service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :comment A freeform descriptive note.
    # @option opts [String] :name The name of the service.
    # @option opts [String] :customer_id 
    # @return [ServiceResponse]
    def update_service(opts = {})
      data, _status_code, _headers = update_service_with_http_info(opts)
      data
    end

    # Update a service
    # Update a service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :comment A freeform descriptive note.
    # @option opts [String] :name The name of the service.
    # @option opts [String] :customer_id 
    # @return [Array<(ServiceResponse, Integer, Hash)>] ServiceResponse data, response status code and response headers
    def update_service_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceApi.update_service ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ServiceApi.update_service"
      end
      # resource path
      local_var_path = '/service/{service_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

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
      form_params['comment'] = opts[:'comment'] if !opts[:'comment'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['customer_id'] = opts[:'customer_id'] if !opts[:'customer_id'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ServiceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ServiceApi.update_service",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceApi#update_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
