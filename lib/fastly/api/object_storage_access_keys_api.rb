=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class ObjectStorageAccessKeysApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an access key
    # Create an access key.
    # @option opts [AccessKey] :access_key 
    # @return [AccessKeyResponse]
    def create_access_key(opts = {})
      data, _status_code, _headers = create_access_key_with_http_info(opts)
      data
    end

    # Create an access key
    # Create an access key.
    # @option opts [AccessKey] :access_key 
    # @return [Array<(AccessKeyResponse, Integer, Hash)>] AccessKeyResponse data, response status code and response headers
    def create_access_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectStorageAccessKeysApi.create_access_key ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/resources/object-storage/access-keys'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'access_key'])

      # return_type
      return_type = opts[:debug_return_type] || 'AccessKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ObjectStorageAccessKeysApi.create_access_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectStorageAccessKeysApi#create_access_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an access key
    # Delete an access key.
    # @option opts [String] :access_key  (required)
    # @return [nil]
    def delete_access_key(opts = {})
      delete_access_key_with_http_info(opts)
      nil
    end

    # Delete an access key
    # Delete an access key.
    # @option opts [String] :access_key  (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_access_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectStorageAccessKeysApi.delete_access_key ...'
      end
      # unbox the parameters from the hash
      access_key = opts[:'access_key']
      # verify the required parameter 'access_key' is set
      if @api_client.config.client_side_validation && access_key.nil?
        fail ArgumentError, "Missing the required parameter 'access_key' when calling ObjectStorageAccessKeysApi.delete_access_key"
      end
      # resource path
      local_var_path = '/resources/object-storage/access-keys/{access_key}'.sub('{' + 'access_key' + '}', CGI.escape(access_key.to_s))

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
        :operation => :"ObjectStorageAccessKeysApi.delete_access_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectStorageAccessKeysApi#delete_access_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an access key
    # Get an access key by its identifier.
    # @option opts [String] :access_key  (required)
    # @return [AccessKey]
    def get_access_key(opts = {})
      data, _status_code, _headers = get_access_key_with_http_info(opts)
      data
    end

    # Get an access key
    # Get an access key by its identifier.
    # @option opts [String] :access_key  (required)
    # @return [Array<(AccessKey, Integer, Hash)>] AccessKey data, response status code and response headers
    def get_access_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectStorageAccessKeysApi.get_access_key ...'
      end
      # unbox the parameters from the hash
      access_key = opts[:'access_key']
      # verify the required parameter 'access_key' is set
      if @api_client.config.client_side_validation && access_key.nil?
        fail ArgumentError, "Missing the required parameter 'access_key' when calling ObjectStorageAccessKeysApi.get_access_key"
      end
      # resource path
      local_var_path = '/resources/object-storage/access-keys/{access_key}'.sub('{' + 'access_key' + '}', CGI.escape(access_key.to_s))

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
      return_type = opts[:debug_return_type] || 'AccessKey'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ObjectStorageAccessKeysApi.get_access_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectStorageAccessKeysApi#get_access_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List access keys
    # List access keys.
    # @return [AccessKeyResponse]
    def list_access_keys(opts = {})
      data, _status_code, _headers = list_access_keys_with_http_info(opts)
      data
    end

    # List access keys
    # List access keys.
    # @return [Array<(AccessKeyResponse, Integer, Hash)>] AccessKeyResponse data, response status code and response headers
    def list_access_keys_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectStorageAccessKeysApi.list_access_keys ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/resources/object-storage/access-keys'

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
      return_type = opts[:debug_return_type] || 'AccessKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ObjectStorageAccessKeysApi.list_access_keys",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectStorageAccessKeysApi#list_access_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
