=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class TlsPrivateKeysApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a TLS private key
    # Create a TLS private key.
    # @option opts [TlsPrivateKey] :tls_private_key 
    # @return [TlsPrivateKeyResponse]
    def create_tls_key(opts = {})
      data, _status_code, _headers = create_tls_key_with_http_info(opts)
      data
    end

    # Create a TLS private key
    # Create a TLS private key.
    # @option opts [TlsPrivateKey] :tls_private_key 
    # @return [Array<(TlsPrivateKeyResponse, Integer, Hash)>] TlsPrivateKeyResponse data, response status code and response headers
    def create_tls_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsPrivateKeysApi.create_tls_key ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/tls/private_keys'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'tls_private_key'])

      # return_type
      return_type = opts[:debug_return_type] || 'TlsPrivateKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsPrivateKeysApi.create_tls_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsPrivateKeysApi#create_tls_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a TLS private key
    # Destroy a TLS private key. Only private keys not already matched to any certificates can be deleted.
    # @option opts [String] :tls_private_key_id Alphanumeric string identifying a private Key. (required)
    # @return [nil]
    def delete_tls_key(opts = {})
      delete_tls_key_with_http_info(opts)
      nil
    end

    # Delete a TLS private key
    # Destroy a TLS private key. Only private keys not already matched to any certificates can be deleted.
    # @option opts [String] :tls_private_key_id Alphanumeric string identifying a private Key. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_tls_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsPrivateKeysApi.delete_tls_key ...'
      end
      # unbox the parameters from the hash
      tls_private_key_id = opts[:'tls_private_key_id']
      # verify the required parameter 'tls_private_key_id' is set
      if @api_client.config.client_side_validation && tls_private_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'tls_private_key_id' when calling TlsPrivateKeysApi.delete_tls_key"
      end
      # resource path
      local_var_path = '/tls/private_keys/{tls_private_key_id}'.sub('{' + 'tls_private_key_id' + '}', CGI.escape(tls_private_key_id.to_s))

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
        :operation => :"TlsPrivateKeysApi.delete_tls_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsPrivateKeysApi#delete_tls_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a TLS private key
    # Show a TLS private key.
    # @option opts [String] :tls_private_key_id Alphanumeric string identifying a private Key. (required)
    # @return [TlsPrivateKeyResponse]
    def get_tls_key(opts = {})
      data, _status_code, _headers = get_tls_key_with_http_info(opts)
      data
    end

    # Get a TLS private key
    # Show a TLS private key.
    # @option opts [String] :tls_private_key_id Alphanumeric string identifying a private Key. (required)
    # @return [Array<(TlsPrivateKeyResponse, Integer, Hash)>] TlsPrivateKeyResponse data, response status code and response headers
    def get_tls_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsPrivateKeysApi.get_tls_key ...'
      end
      # unbox the parameters from the hash
      tls_private_key_id = opts[:'tls_private_key_id']
      # verify the required parameter 'tls_private_key_id' is set
      if @api_client.config.client_side_validation && tls_private_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'tls_private_key_id' when calling TlsPrivateKeysApi.get_tls_key"
      end
      # resource path
      local_var_path = '/tls/private_keys/{tls_private_key_id}'.sub('{' + 'tls_private_key_id' + '}', CGI.escape(tls_private_key_id.to_s))

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
      return_type = opts[:debug_return_type] || 'TlsPrivateKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsPrivateKeysApi.get_tls_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsPrivateKeysApi#get_tls_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List TLS private keys
    # List all TLS private keys.
    # @option opts [String] :filter_in_use Limit the returned keys to those without any matching TLS certificates. The only valid value is false.
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @return [TlsPrivateKeysResponse]
    def list_tls_keys(opts = {})
      data, _status_code, _headers = list_tls_keys_with_http_info(opts)
      data
    end

    # List TLS private keys
    # List all TLS private keys.
    # @option opts [String] :filter_in_use Limit the returned keys to those without any matching TLS certificates. The only valid value is false.
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @return [Array<(TlsPrivateKeysResponse, Integer, Hash)>] TlsPrivateKeysResponse data, response status code and response headers
    def list_tls_keys_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsPrivateKeysApi.list_tls_keys ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling TlsPrivateKeysApi.list_tls_keys, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling TlsPrivateKeysApi.list_tls_keys, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/tls/private_keys'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter[in_use]'] = opts[:'filter_in_use'] if !opts[:'filter_in_use'].nil?
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
      return_type = opts[:debug_return_type] || 'TlsPrivateKeysResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsPrivateKeysApi.list_tls_keys",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsPrivateKeysApi#list_tls_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
