=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class AclsInComputeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new ACL
    # Create a new ACL.
    # @option opts [ComputeAclCreateAclsRequest] :compute_acl_create_acls_request 
    # @return [ComputeAclCreateAclsResponse]
    def compute_acl_create_acls(opts = {})
      data, _status_code, _headers = compute_acl_create_acls_with_http_info(opts)
      data
    end

    # Create a new ACL
    # Create a new ACL.
    # @option opts [ComputeAclCreateAclsRequest] :compute_acl_create_acls_request 
    # @return [Array<(ComputeAclCreateAclsResponse, Integer, Hash)>] ComputeAclCreateAclsResponse data, response status code and response headers
    def compute_acl_create_acls_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AclsInComputeApi.compute_acl_create_acls ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/resources/acls'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'compute_acl_create_acls_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ComputeAclCreateAclsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AclsInComputeApi.compute_acl_create_acls",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AclsInComputeApi#compute_acl_create_acls\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an ACL
    # Delete an ACL.
    # @option opts [String] :acl_id  (required)
    # @return [nil]
    def compute_acl_delete_s_acl_id(opts = {})
      compute_acl_delete_s_acl_id_with_http_info(opts)
      nil
    end

    # Delete an ACL
    # Delete an ACL.
    # @option opts [String] :acl_id  (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def compute_acl_delete_s_acl_id_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AclsInComputeApi.compute_acl_delete_s_acl_id ...'
      end
      # unbox the parameters from the hash
      acl_id = opts[:'acl_id']
      # verify the required parameter 'acl_id' is set
      if @api_client.config.client_side_validation && acl_id.nil?
        fail ArgumentError, "Missing the required parameter 'acl_id' when calling AclsInComputeApi.compute_acl_delete_s_acl_id"
      end
      # resource path
      local_var_path = '/resources/acls/{acl_id}'.sub('{' + 'acl_id' + '}', CGI.escape(acl_id.to_s))

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
        :operation => :"AclsInComputeApi.compute_acl_delete_s_acl_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AclsInComputeApi#compute_acl_delete_s_acl_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List an ACL
    # List an ACL.
    # @option opts [String] :acl_id  (required)
    # @option opts [String] :cursor 
    # @option opts [Integer] :limit  (default to 100)
    # @return [ComputeAclListEntries]
    def compute_acl_list_acl_entries(opts = {})
      data, _status_code, _headers = compute_acl_list_acl_entries_with_http_info(opts)
      data
    end

    # List an ACL
    # List an ACL.
    # @option opts [String] :acl_id  (required)
    # @option opts [String] :cursor 
    # @option opts [Integer] :limit  (default to 100)
    # @return [Array<(ComputeAclListEntries, Integer, Hash)>] ComputeAclListEntries data, response status code and response headers
    def compute_acl_list_acl_entries_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AclsInComputeApi.compute_acl_list_acl_entries ...'
      end
      # unbox the parameters from the hash
      acl_id = opts[:'acl_id']
      # verify the required parameter 'acl_id' is set
      if @api_client.config.client_side_validation && acl_id.nil?
        fail ArgumentError, "Missing the required parameter 'acl_id' when calling AclsInComputeApi.compute_acl_list_acl_entries"
      end
      # resource path
      local_var_path = '/resources/acls/{acl_id}/entries'.sub('{' + 'acl_id' + '}', CGI.escape(acl_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ComputeAclListEntries'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AclsInComputeApi.compute_acl_list_acl_entries",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AclsInComputeApi#compute_acl_list_acl_entries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ACLs
    # List all ACLs.
    # @return [ComputeAclList]
    def compute_acl_list_acls(opts = {})
      data, _status_code, _headers = compute_acl_list_acls_with_http_info(opts)
      data
    end

    # List ACLs
    # List all ACLs.
    # @return [Array<(ComputeAclList, Integer, Hash)>] ComputeAclList data, response status code and response headers
    def compute_acl_list_acls_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AclsInComputeApi.compute_acl_list_acls ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/resources/acls'

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
      return_type = opts[:debug_return_type] || 'ComputeAclList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AclsInComputeApi.compute_acl_list_acls",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AclsInComputeApi#compute_acl_list_acls\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Describe an ACL
    # Describe an ACL.
    # @option opts [String] :acl_id  (required)
    # @return [ComputeAclCreateAclsResponse]
    def compute_acl_list_acls_s_acl_id(opts = {})
      data, _status_code, _headers = compute_acl_list_acls_s_acl_id_with_http_info(opts)
      data
    end

    # Describe an ACL
    # Describe an ACL.
    # @option opts [String] :acl_id  (required)
    # @return [Array<(ComputeAclCreateAclsResponse, Integer, Hash)>] ComputeAclCreateAclsResponse data, response status code and response headers
    def compute_acl_list_acls_s_acl_id_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AclsInComputeApi.compute_acl_list_acls_s_acl_id ...'
      end
      # unbox the parameters from the hash
      acl_id = opts[:'acl_id']
      # verify the required parameter 'acl_id' is set
      if @api_client.config.client_side_validation && acl_id.nil?
        fail ArgumentError, "Missing the required parameter 'acl_id' when calling AclsInComputeApi.compute_acl_list_acls_s_acl_id"
      end
      # resource path
      local_var_path = '/resources/acls/{acl_id}'.sub('{' + 'acl_id' + '}', CGI.escape(acl_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ComputeAclCreateAclsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AclsInComputeApi.compute_acl_list_acls_s_acl_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AclsInComputeApi#compute_acl_list_acls_s_acl_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lookup an ACL
    # Find a matching ACL entry for an IP address.
    # @option opts [String] :acl_id  (required)
    # @option opts [String] :acl_ip  (required)
    # @return [ComputeAclLookup]
    def compute_acl_lookup_acls(opts = {})
      data, _status_code, _headers = compute_acl_lookup_acls_with_http_info(opts)
      data
    end

    # Lookup an ACL
    # Find a matching ACL entry for an IP address.
    # @option opts [String] :acl_id  (required)
    # @option opts [String] :acl_ip  (required)
    # @return [Array<(ComputeAclLookup, Integer, Hash)>] ComputeAclLookup data, response status code and response headers
    def compute_acl_lookup_acls_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AclsInComputeApi.compute_acl_lookup_acls ...'
      end
      # unbox the parameters from the hash
      acl_id = opts[:'acl_id']
      acl_ip = opts[:'acl_ip']
      # verify the required parameter 'acl_id' is set
      if @api_client.config.client_side_validation && acl_id.nil?
        fail ArgumentError, "Missing the required parameter 'acl_id' when calling AclsInComputeApi.compute_acl_lookup_acls"
      end
      # verify the required parameter 'acl_ip' is set
      if @api_client.config.client_side_validation && acl_ip.nil?
        fail ArgumentError, "Missing the required parameter 'acl_ip' when calling AclsInComputeApi.compute_acl_lookup_acls"
      end
      # resource path
      local_var_path = '/resources/acls/{acl_id}/entry/{acl_ip}'.sub('{' + 'acl_id' + '}', CGI.escape(acl_id.to_s)).sub('{' + 'acl_ip' + '}', CGI.escape(acl_ip.to_s))

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
      return_type = opts[:debug_return_type] || 'ComputeAclLookup'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AclsInComputeApi.compute_acl_lookup_acls",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AclsInComputeApi#compute_acl_lookup_acls\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an ACL
    # Update an ACL entry with a new operation or action, this allows you to modify an existing entry or delete it.
    # @option opts [String] :acl_id  (required)
    # @option opts [ComputeAclUpdate] :compute_acl_update 
    # @return [nil]
    def compute_acl_update_acls(opts = {})
      compute_acl_update_acls_with_http_info(opts)
      nil
    end

    # Update an ACL
    # Update an ACL entry with a new operation or action, this allows you to modify an existing entry or delete it.
    # @option opts [String] :acl_id  (required)
    # @option opts [ComputeAclUpdate] :compute_acl_update 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def compute_acl_update_acls_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AclsInComputeApi.compute_acl_update_acls ...'
      end
      # unbox the parameters from the hash
      acl_id = opts[:'acl_id']
      # verify the required parameter 'acl_id' is set
      if @api_client.config.client_side_validation && acl_id.nil?
        fail ArgumentError, "Missing the required parameter 'acl_id' when calling AclsInComputeApi.compute_acl_update_acls"
      end
      # resource path
      local_var_path = '/resources/acls/{acl_id}/entries'.sub('{' + 'acl_id' + '}', CGI.escape(acl_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'compute_acl_update'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AclsInComputeApi.compute_acl_update_acls",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AclsInComputeApi#compute_acl_update_acls\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
