=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class ObservabilityCustomDashboardsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new dashboard
    # Create a new dashboard
    # @option opts [CreateDashboardRequest] :create_dashboard_request 
    # @return [Dashboard]
    def create_dashboard(opts = {})
      data, _status_code, _headers = create_dashboard_with_http_info(opts)
      data
    end

    # Create a new dashboard
    # Create a new dashboard
    # @option opts [CreateDashboardRequest] :create_dashboard_request 
    # @return [Array<(Dashboard, Integer, Hash)>] Dashboard data, response status code and response headers
    def create_dashboard_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityCustomDashboardsApi.create_dashboard ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/observability/dashboards'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_dashboard_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Dashboard'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ObservabilityCustomDashboardsApi.create_dashboard",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObservabilityCustomDashboardsApi#create_dashboard\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an existing dashboard
    # Delete an existing dashboard
    # @option opts [String] :dashboard_id  (required)
    # @return [nil]
    def delete_dashboard(opts = {})
      delete_dashboard_with_http_info(opts)
      nil
    end

    # Delete an existing dashboard
    # Delete an existing dashboard
    # @option opts [String] :dashboard_id  (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_dashboard_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityCustomDashboardsApi.delete_dashboard ...'
      end
      # unbox the parameters from the hash
      dashboard_id = opts[:'dashboard_id']
      # verify the required parameter 'dashboard_id' is set
      if @api_client.config.client_side_validation && dashboard_id.nil?
        fail ArgumentError, "Missing the required parameter 'dashboard_id' when calling ObservabilityCustomDashboardsApi.delete_dashboard"
      end
      # resource path
      local_var_path = '/observability/dashboards/{dashboard_id}'.sub('{' + 'dashboard_id' + '}', CGI.escape(dashboard_id.to_s))

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
        :operation => :"ObservabilityCustomDashboardsApi.delete_dashboard",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObservabilityCustomDashboardsApi#delete_dashboard\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a dashboard by ID
    # Retrieve a dashboard by ID
    # @option opts [String] :dashboard_id  (required)
    # @return [Dashboard]
    def get_dashboard(opts = {})
      data, _status_code, _headers = get_dashboard_with_http_info(opts)
      data
    end

    # Retrieve a dashboard by ID
    # Retrieve a dashboard by ID
    # @option opts [String] :dashboard_id  (required)
    # @return [Array<(Dashboard, Integer, Hash)>] Dashboard data, response status code and response headers
    def get_dashboard_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityCustomDashboardsApi.get_dashboard ...'
      end
      # unbox the parameters from the hash
      dashboard_id = opts[:'dashboard_id']
      # verify the required parameter 'dashboard_id' is set
      if @api_client.config.client_side_validation && dashboard_id.nil?
        fail ArgumentError, "Missing the required parameter 'dashboard_id' when calling ObservabilityCustomDashboardsApi.get_dashboard"
      end
      # resource path
      local_var_path = '/observability/dashboards/{dashboard_id}'.sub('{' + 'dashboard_id' + '}', CGI.escape(dashboard_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Dashboard'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ObservabilityCustomDashboardsApi.get_dashboard",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObservabilityCustomDashboardsApi#get_dashboard\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all custom dashboards
    # List all custom dashboards
    # @return [ListDashboardsResponse]
    def list_dashboards(opts = {})
      data, _status_code, _headers = list_dashboards_with_http_info(opts)
      data
    end

    # List all custom dashboards
    # List all custom dashboards
    # @return [Array<(ListDashboardsResponse, Integer, Hash)>] ListDashboardsResponse data, response status code and response headers
    def list_dashboards_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityCustomDashboardsApi.list_dashboards ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/observability/dashboards'

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
      return_type = opts[:debug_return_type] || 'ListDashboardsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ObservabilityCustomDashboardsApi.list_dashboards",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObservabilityCustomDashboardsApi#list_dashboards\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing dashboard
    # Update an existing dashboard
    # @option opts [String] :dashboard_id  (required)
    # @option opts [UpdateDashboardRequest] :update_dashboard_request 
    # @return [Dashboard]
    def update_dashboard(opts = {})
      data, _status_code, _headers = update_dashboard_with_http_info(opts)
      data
    end

    # Update an existing dashboard
    # Update an existing dashboard
    # @option opts [String] :dashboard_id  (required)
    # @option opts [UpdateDashboardRequest] :update_dashboard_request 
    # @return [Array<(Dashboard, Integer, Hash)>] Dashboard data, response status code and response headers
    def update_dashboard_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObservabilityCustomDashboardsApi.update_dashboard ...'
      end
      # unbox the parameters from the hash
      dashboard_id = opts[:'dashboard_id']
      # verify the required parameter 'dashboard_id' is set
      if @api_client.config.client_side_validation && dashboard_id.nil?
        fail ArgumentError, "Missing the required parameter 'dashboard_id' when calling ObservabilityCustomDashboardsApi.update_dashboard"
      end
      # resource path
      local_var_path = '/observability/dashboards/{dashboard_id}'.sub('{' + 'dashboard_id' + '}', CGI.escape(dashboard_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_dashboard_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Dashboard'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ObservabilityCustomDashboardsApi.update_dashboard",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObservabilityCustomDashboardsApi#update_dashboard\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
