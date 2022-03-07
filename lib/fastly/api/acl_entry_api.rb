=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0


=end

require 'cgi'

module Fastly
  class AclEntryApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Update multiple ACL entries
    # Update multiple ACL entries on the same ACL.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :acl_id Alphanumeric string identifying a ACL. (required)
    # @option opts [BulkUpdateAclEntriesRequest] :bulk_update_acl_entries_request 
    # @return [InlineResponse200]
    def bulk_update_acl_entries(opts = {})
      data, _status_code, _headers = bulk_update_acl_entries_with_http_info(opts)
      data
    end

    # Update multiple ACL entries
    # Update multiple ACL entries on the same ACL.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :acl_id Alphanumeric string identifying a ACL. (required)
    # @option opts [BulkUpdateAclEntriesRequest] :bulk_update_acl_entries_request 
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def bulk_update_acl_entries_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AclEntryApi.bulk_update_acl_entries ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      acl_id = opts[:'acl_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling AclEntryApi.bulk_update_acl_entries"
      end
      # verify the required parameter 'acl_id' is set
      if @api_client.config.client_side_validation && acl_id.nil?
        fail ArgumentError, "Missing the required parameter 'acl_id' when calling AclEntryApi.bulk_update_acl_entries"
      end
      # resource path
      local_var_path = '/service/{service_id}/acl/{acl_id}/entries'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'acl_id' + '}', CGI.escape(acl_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'bulk_update_acl_entries_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AclEntryApi.bulk_update_acl_entries",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AclEntryApi#bulk_update_acl_entries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an ACL entry
    # Delete an ACL entry from a specified ACL.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :acl_id Alphanumeric string identifying a ACL. (required)
    # @option opts [String] :acl_entry_id Alphanumeric string identifying an ACL Entry. (required)
    # @return [InlineResponse200]
    def delete_acl_entry(opts = {})
      data, _status_code, _headers = delete_acl_entry_with_http_info(opts)
      data
    end

    # Delete an ACL entry
    # Delete an ACL entry from a specified ACL.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :acl_id Alphanumeric string identifying a ACL. (required)
    # @option opts [String] :acl_entry_id Alphanumeric string identifying an ACL Entry. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_acl_entry_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AclEntryApi.delete_acl_entry ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      acl_id = opts[:'acl_id']
      acl_entry_id = opts[:'acl_entry_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling AclEntryApi.delete_acl_entry"
      end
      # verify the required parameter 'acl_id' is set
      if @api_client.config.client_side_validation && acl_id.nil?
        fail ArgumentError, "Missing the required parameter 'acl_id' when calling AclEntryApi.delete_acl_entry"
      end
      # verify the required parameter 'acl_entry_id' is set
      if @api_client.config.client_side_validation && acl_entry_id.nil?
        fail ArgumentError, "Missing the required parameter 'acl_entry_id' when calling AclEntryApi.delete_acl_entry"
      end
      # resource path
      local_var_path = '/service/{service_id}/acl/{acl_id}/entry/{acl_entry_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'acl_id' + '}', CGI.escape(acl_id.to_s)).sub('{' + 'acl_entry_id' + '}', CGI.escape(acl_entry_id.to_s))

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
        :operation => :"AclEntryApi.delete_acl_entry",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AclEntryApi#delete_acl_entry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
