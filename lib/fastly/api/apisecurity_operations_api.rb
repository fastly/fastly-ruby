=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class ApisecurityOperationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Bulk add tags to operations
    # Add tags to multiple operations in a single request.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [OperationBulkAddTags] :operation_bulk_add_tags 
    # @return [InlineResponse2071]
    def api_security_bulk_add_tags_to_operations(opts = {})
      data, _status_code, _headers = api_security_bulk_add_tags_to_operations_with_http_info(opts)
      data
    end

    # Bulk add tags to operations
    # Add tags to multiple operations in a single request.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [OperationBulkAddTags] :operation_bulk_add_tags 
    # @return [Array<(InlineResponse2071, Integer, Hash)>] InlineResponse2071 data, response status code and response headers
    def api_security_bulk_add_tags_to_operations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApisecurityOperationsApi.api_security_bulk_add_tags_to_operations ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ApisecurityOperationsApi.api_security_bulk_add_tags_to_operations"
      end
      # resource path
      local_var_path = '/api-security/v1/services/{service_id}/operations-bulk-tags'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'operation_bulk_add_tags'])

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse2071'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ApisecurityOperationsApi.api_security_bulk_add_tags_to_operations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApisecurityOperationsApi#api_security_bulk_add_tags_to_operations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Bulk create operations
    # Create multiple operations associated with a specific service in a single request.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [OperationBulkCreate] :operation_bulk_create 
    # @return [InlineResponse207]
    def api_security_bulk_create_operations(opts = {})
      data, _status_code, _headers = api_security_bulk_create_operations_with_http_info(opts)
      data
    end

    # Bulk create operations
    # Create multiple operations associated with a specific service in a single request.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [OperationBulkCreate] :operation_bulk_create 
    # @return [Array<(InlineResponse207, Integer, Hash)>] InlineResponse207 data, response status code and response headers
    def api_security_bulk_create_operations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApisecurityOperationsApi.api_security_bulk_create_operations ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ApisecurityOperationsApi.api_security_bulk_create_operations"
      end
      # resource path
      local_var_path = '/api-security/v1/services/{service_id}/operations-bulk'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'operation_bulk_create'])

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse207'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ApisecurityOperationsApi.api_security_bulk_create_operations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApisecurityOperationsApi#api_security_bulk_create_operations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Bulk delete operations
    # Delete multiple operations in a single request.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [OperationBulkDelete] :operation_bulk_delete 
    # @return [InlineResponse2071]
    def api_security_bulk_delete_operations(opts = {})
      data, _status_code, _headers = api_security_bulk_delete_operations_with_http_info(opts)
      data
    end

    # Bulk delete operations
    # Delete multiple operations in a single request.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [OperationBulkDelete] :operation_bulk_delete 
    # @return [Array<(InlineResponse2071, Integer, Hash)>] InlineResponse2071 data, response status code and response headers
    def api_security_bulk_delete_operations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApisecurityOperationsApi.api_security_bulk_delete_operations ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ApisecurityOperationsApi.api_security_bulk_delete_operations"
      end
      # resource path
      local_var_path = '/api-security/v1/services/{service_id}/operations-bulk'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'operation_bulk_delete'])

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse2071'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ApisecurityOperationsApi.api_security_bulk_delete_operations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApisecurityOperationsApi#api_security_bulk_delete_operations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create operation
    # Create a new operation associated with a specific service.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [OperationCreate] :operation_create 
    # @return [OperationGet]
    def api_security_create_operation(opts = {})
      data, _status_code, _headers = api_security_create_operation_with_http_info(opts)
      data
    end

    # Create operation
    # Create a new operation associated with a specific service.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [OperationCreate] :operation_create 
    # @return [Array<(OperationGet, Integer, Hash)>] OperationGet data, response status code and response headers
    def api_security_create_operation_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApisecurityOperationsApi.api_security_create_operation ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ApisecurityOperationsApi.api_security_create_operation"
      end
      # resource path
      local_var_path = '/api-security/v1/services/{service_id}/operations'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'operation_create'])

      # return_type
      return_type = opts[:debug_return_type] || 'OperationGet'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ApisecurityOperationsApi.api_security_create_operation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApisecurityOperationsApi#api_security_create_operation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create operation tag
    # Create a new operation tag associated with a specific service.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [TagCreate] :tag_create 
    # @return [TagGet]
    def api_security_create_operation_tag(opts = {})
      data, _status_code, _headers = api_security_create_operation_tag_with_http_info(opts)
      data
    end

    # Create operation tag
    # Create a new operation tag associated with a specific service.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [TagCreate] :tag_create 
    # @return [Array<(TagGet, Integer, Hash)>] TagGet data, response status code and response headers
    def api_security_create_operation_tag_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApisecurityOperationsApi.api_security_create_operation_tag ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ApisecurityOperationsApi.api_security_create_operation_tag"
      end
      # resource path
      local_var_path = '/api-security/v1/services/{service_id}/tags'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'tag_create'])

      # return_type
      return_type = opts[:debug_return_type] || 'TagGet'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ApisecurityOperationsApi.api_security_create_operation_tag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApisecurityOperationsApi#api_security_create_operation_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete operation
    # Delete an existing operation associated with a specific service.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [String] :operation_id The unique identifier of the operation. (required)
    # @return [nil]
    def api_security_delete_operation(opts = {})
      api_security_delete_operation_with_http_info(opts)
      nil
    end

    # Delete operation
    # Delete an existing operation associated with a specific service.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [String] :operation_id The unique identifier of the operation. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def api_security_delete_operation_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApisecurityOperationsApi.api_security_delete_operation ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      operation_id = opts[:'operation_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ApisecurityOperationsApi.api_security_delete_operation"
      end
      # verify the required parameter 'operation_id' is set
      if @api_client.config.client_side_validation && operation_id.nil?
        fail ArgumentError, "Missing the required parameter 'operation_id' when calling ApisecurityOperationsApi.api_security_delete_operation"
      end
      # resource path
      local_var_path = '/api-security/v1/services/{service_id}/operations/{operation_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'operation_id' + '}', CGI.escape(operation_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ApisecurityOperationsApi.api_security_delete_operation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApisecurityOperationsApi#api_security_delete_operation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete operation tag
    # Delete an existing operation tag.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [String] :tag_id The unique identifier of the operation tag. (required)
    # @return [nil]
    def api_security_delete_operation_tag(opts = {})
      api_security_delete_operation_tag_with_http_info(opts)
      nil
    end

    # Delete operation tag
    # Delete an existing operation tag.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [String] :tag_id The unique identifier of the operation tag. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def api_security_delete_operation_tag_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApisecurityOperationsApi.api_security_delete_operation_tag ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      tag_id = opts[:'tag_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ApisecurityOperationsApi.api_security_delete_operation_tag"
      end
      # verify the required parameter 'tag_id' is set
      if @api_client.config.client_side_validation && tag_id.nil?
        fail ArgumentError, "Missing the required parameter 'tag_id' when calling ApisecurityOperationsApi.api_security_delete_operation_tag"
      end
      # resource path
      local_var_path = '/api-security/v1/services/{service_id}/tags/{tag_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'tag_id' + '}', CGI.escape(tag_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ApisecurityOperationsApi.api_security_delete_operation_tag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApisecurityOperationsApi#api_security_delete_operation_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve operation
    # Get a specific operation associated with a service.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [String] :operation_id The unique identifier of the operation. (required)
    # @return [OperationGet]
    def api_security_get_operation(opts = {})
      data, _status_code, _headers = api_security_get_operation_with_http_info(opts)
      data
    end

    # Retrieve operation
    # Get a specific operation associated with a service.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [String] :operation_id The unique identifier of the operation. (required)
    # @return [Array<(OperationGet, Integer, Hash)>] OperationGet data, response status code and response headers
    def api_security_get_operation_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApisecurityOperationsApi.api_security_get_operation ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      operation_id = opts[:'operation_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ApisecurityOperationsApi.api_security_get_operation"
      end
      # verify the required parameter 'operation_id' is set
      if @api_client.config.client_side_validation && operation_id.nil?
        fail ArgumentError, "Missing the required parameter 'operation_id' when calling ApisecurityOperationsApi.api_security_get_operation"
      end
      # resource path
      local_var_path = '/api-security/v1/services/{service_id}/operations/{operation_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'operation_id' + '}', CGI.escape(operation_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'OperationGet'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ApisecurityOperationsApi.api_security_get_operation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApisecurityOperationsApi#api_security_get_operation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve operation tag
    # Get a specific operation tag by its unique identifier.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [String] :tag_id The unique identifier of the operation tag. (required)
    # @return [TagGet]
    def api_security_get_operation_tag(opts = {})
      data, _status_code, _headers = api_security_get_operation_tag_with_http_info(opts)
      data
    end

    # Retrieve operation tag
    # Get a specific operation tag by its unique identifier.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [String] :tag_id The unique identifier of the operation tag. (required)
    # @return [Array<(TagGet, Integer, Hash)>] TagGet data, response status code and response headers
    def api_security_get_operation_tag_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApisecurityOperationsApi.api_security_get_operation_tag ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      tag_id = opts[:'tag_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ApisecurityOperationsApi.api_security_get_operation_tag"
      end
      # verify the required parameter 'tag_id' is set
      if @api_client.config.client_side_validation && tag_id.nil?
        fail ArgumentError, "Missing the required parameter 'tag_id' when calling ApisecurityOperationsApi.api_security_get_operation_tag"
      end
      # resource path
      local_var_path = '/api-security/v1/services/{service_id}/tags/{tag_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'tag_id' + '}', CGI.escape(tag_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TagGet'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ApisecurityOperationsApi.api_security_get_operation_tag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApisecurityOperationsApi#api_security_get_operation_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List discovered operations
    # List all discovered operations associated with a specific service. Optionally filter operations by status.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [Array<String>] :method Filter operations by HTTP method.
    # @option opts [Array<String>] :domain Filter operations by fully-qualified domain name (exact match).
    # @option opts [String] :path Filter operations by path (exact match).
    # @option opts [Integer] :limit The maximum number of operations to return per page. (default to 100)
    # @option opts [Integer] :page The page number to return. (default to 0)
    # @return [InlineResponse2001]
    def api_security_list_discovered_operations(opts = {})
      data, _status_code, _headers = api_security_list_discovered_operations_with_http_info(opts)
      data
    end

    # List discovered operations
    # List all discovered operations associated with a specific service. Optionally filter operations by status.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [Array<String>] :method Filter operations by HTTP method.
    # @option opts [Array<String>] :domain Filter operations by fully-qualified domain name (exact match).
    # @option opts [String] :path Filter operations by path (exact match).
    # @option opts [Integer] :limit The maximum number of operations to return per page. (default to 100)
    # @option opts [Integer] :page The page number to return. (default to 0)
    # @return [Array<(InlineResponse2001, Integer, Hash)>] InlineResponse2001 data, response status code and response headers
    def api_security_list_discovered_operations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApisecurityOperationsApi.api_security_list_discovered_operations ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ApisecurityOperationsApi.api_security_list_discovered_operations"
      end
      allowable_values = ["GET", "POST", "PUT", "PATCH", "DELETE", "HEAD", "OPTIONS", "CONNECT", "TRACE"]
      if @api_client.config.client_side_validation && opts[:'method'] && !opts[:'method'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"method\", must include one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ApisecurityOperationsApi.api_security_list_discovered_operations, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ApisecurityOperationsApi.api_security_list_discovered_operations, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling ApisecurityOperationsApi.api_security_list_discovered_operations, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/api-security/v1/services/{service_id}/discovered-operations'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'method'] = @api_client.build_collection_param(opts[:'method'], :multi) if !opts[:'method'].nil?
      query_params[:'domain'] = @api_client.build_collection_param(opts[:'domain'], :multi) if !opts[:'domain'].nil?
      query_params[:'path'] = opts[:'path'] if !opts[:'path'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse2001'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ApisecurityOperationsApi.api_security_list_discovered_operations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApisecurityOperationsApi#api_security_list_discovered_operations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List operation tags
    # List all operation tags associated with a specific service.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [Integer] :limit The maximum number of operations to return per page. (default to 100)
    # @option opts [Integer] :page The page number to return. (default to 0)
    # @return [InlineResponse2003]
    def api_security_list_operation_tags(opts = {})
      data, _status_code, _headers = api_security_list_operation_tags_with_http_info(opts)
      data
    end

    # List operation tags
    # List all operation tags associated with a specific service.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [Integer] :limit The maximum number of operations to return per page. (default to 100)
    # @option opts [Integer] :page The page number to return. (default to 0)
    # @return [Array<(InlineResponse2003, Integer, Hash)>] InlineResponse2003 data, response status code and response headers
    def api_security_list_operation_tags_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApisecurityOperationsApi.api_security_list_operation_tags ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ApisecurityOperationsApi.api_security_list_operation_tags"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ApisecurityOperationsApi.api_security_list_operation_tags, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ApisecurityOperationsApi.api_security_list_operation_tags, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling ApisecurityOperationsApi.api_security_list_operation_tags, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/api-security/v1/services/{service_id}/tags'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse2003'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ApisecurityOperationsApi.api_security_list_operation_tags",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApisecurityOperationsApi#api_security_list_operation_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List operations
    # List all operations associated with a specific service. Optionally filter operations by tag ID.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [String] :tag_id Filter operations by operation tag ID. Only operations associated with this operation tag will be returned.
    # @option opts [String] :status Filter operations by status. Defaults to SAVED if omitted. (default to 'SAVED')
    # @option opts [Array<String>] :method Filter operations by HTTP method.
    # @option opts [Array<String>] :domain Filter operations by fully-qualified domain name (exact match).
    # @option opts [String] :path Filter operations by path (exact match).
    # @option opts [Integer] :limit The maximum number of operations to return per page. (default to 100)
    # @option opts [Integer] :page The page number to return. (default to 0)
    # @return [InlineResponse2002]
    def api_security_list_operations(opts = {})
      data, _status_code, _headers = api_security_list_operations_with_http_info(opts)
      data
    end

    # List operations
    # List all operations associated with a specific service. Optionally filter operations by tag ID.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [String] :tag_id Filter operations by operation tag ID. Only operations associated with this operation tag will be returned.
    # @option opts [String] :status Filter operations by status. Defaults to SAVED if omitted. (default to 'SAVED')
    # @option opts [Array<String>] :method Filter operations by HTTP method.
    # @option opts [Array<String>] :domain Filter operations by fully-qualified domain name (exact match).
    # @option opts [String] :path Filter operations by path (exact match).
    # @option opts [Integer] :limit The maximum number of operations to return per page. (default to 100)
    # @option opts [Integer] :page The page number to return. (default to 0)
    # @return [Array<(InlineResponse2002, Integer, Hash)>] InlineResponse2002 data, response status code and response headers
    def api_security_list_operations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApisecurityOperationsApi.api_security_list_operations ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ApisecurityOperationsApi.api_security_list_operations"
      end
      allowable_values = ["SAVED", "IGNORED"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      allowable_values = ["GET", "POST", "PUT", "PATCH", "DELETE", "HEAD", "OPTIONS", "CONNECT", "TRACE"]
      if @api_client.config.client_side_validation && opts[:'method'] && !opts[:'method'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"method\", must include one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ApisecurityOperationsApi.api_security_list_operations, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ApisecurityOperationsApi.api_security_list_operations, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling ApisecurityOperationsApi.api_security_list_operations, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/api-security/v1/services/{service_id}/operations'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'tag_id'] = opts[:'tag_id'] if !opts[:'tag_id'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'method'] = @api_client.build_collection_param(opts[:'method'], :multi) if !opts[:'method'].nil?
      query_params[:'domain'] = @api_client.build_collection_param(opts[:'domain'], :multi) if !opts[:'domain'].nil?
      query_params[:'path'] = opts[:'path'] if !opts[:'path'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse2002'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ApisecurityOperationsApi.api_security_list_operations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApisecurityOperationsApi#api_security_list_operations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update operation
    # Partially update an existing operation associated with a specific service.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [String] :operation_id The unique identifier of the operation. (required)
    # @option opts [OperationUpdate] :operation_update 
    # @return [OperationGet]
    def api_security_update_operation(opts = {})
      data, _status_code, _headers = api_security_update_operation_with_http_info(opts)
      data
    end

    # Update operation
    # Partially update an existing operation associated with a specific service.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [String] :operation_id The unique identifier of the operation. (required)
    # @option opts [OperationUpdate] :operation_update 
    # @return [Array<(OperationGet, Integer, Hash)>] OperationGet data, response status code and response headers
    def api_security_update_operation_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApisecurityOperationsApi.api_security_update_operation ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      operation_id = opts[:'operation_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ApisecurityOperationsApi.api_security_update_operation"
      end
      # verify the required parameter 'operation_id' is set
      if @api_client.config.client_side_validation && operation_id.nil?
        fail ArgumentError, "Missing the required parameter 'operation_id' when calling ApisecurityOperationsApi.api_security_update_operation"
      end
      # resource path
      local_var_path = '/api-security/v1/services/{service_id}/operations/{operation_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'operation_id' + '}', CGI.escape(operation_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'operation_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'OperationGet'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ApisecurityOperationsApi.api_security_update_operation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApisecurityOperationsApi#api_security_update_operation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update operation tag
    # Partially update an existing operation tag.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [String] :tag_id The unique identifier of the operation tag. (required)
    # @option opts [TagBase] :body 
    # @return [TagGet]
    def api_security_update_operation_tag(opts = {})
      data, _status_code, _headers = api_security_update_operation_tag_with_http_info(opts)
      data
    end

    # Update operation tag
    # Partially update an existing operation tag.
    # @option opts [String] :service_id The unique identifier of the service. (required)
    # @option opts [String] :tag_id The unique identifier of the operation tag. (required)
    # @option opts [TagBase] :body 
    # @return [Array<(TagGet, Integer, Hash)>] TagGet data, response status code and response headers
    def api_security_update_operation_tag_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApisecurityOperationsApi.api_security_update_operation_tag ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      tag_id = opts[:'tag_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ApisecurityOperationsApi.api_security_update_operation_tag"
      end
      # verify the required parameter 'tag_id' is set
      if @api_client.config.client_side_validation && tag_id.nil?
        fail ArgumentError, "Missing the required parameter 'tag_id' when calling ApisecurityOperationsApi.api_security_update_operation_tag"
      end
      # resource path
      local_var_path = '/api-security/v1/services/{service_id}/tags/{tag_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'tag_id' + '}', CGI.escape(tag_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type] || 'TagGet'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ApisecurityOperationsApi.api_security_update_operation_tag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApisecurityOperationsApi#api_security_update_operation_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
