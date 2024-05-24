=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class MutualAuthenticationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Mutual Authentication
    # Create a mutual authentication using a bundle of certificates to enable client-to-server mutual TLS.
    # @option opts [MutualAuthentication] :mutual_authentication 
    # @return [MutualAuthenticationResponse]
    def create_mutual_tls_authentication(opts = {})
      data, _status_code, _headers = create_mutual_tls_authentication_with_http_info(opts)
      data
    end

    # Create a Mutual Authentication
    # Create a mutual authentication using a bundle of certificates to enable client-to-server mutual TLS.
    # @option opts [MutualAuthentication] :mutual_authentication 
    # @return [Array<(MutualAuthenticationResponse, Integer, Hash)>] MutualAuthenticationResponse data, response status code and response headers
    def create_mutual_tls_authentication_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MutualAuthenticationApi.create_mutual_tls_authentication ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/tls/mutual_authentications'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'mutual_authentication'])

      # return_type
      return_type = opts[:debug_return_type] || 'MutualAuthenticationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"MutualAuthenticationApi.create_mutual_tls_authentication",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MutualAuthenticationApi#create_mutual_tls_authentication\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Mutual TLS
    # Remove a Mutual TLS authentication
    # @option opts [String] :mutual_authentication_id Alphanumeric string identifying a mutual authentication. (required)
    # @return [nil]
    def delete_mutual_tls(opts = {})
      delete_mutual_tls_with_http_info(opts)
      nil
    end

    # Delete a Mutual TLS
    # Remove a Mutual TLS authentication
    # @option opts [String] :mutual_authentication_id Alphanumeric string identifying a mutual authentication. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_mutual_tls_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MutualAuthenticationApi.delete_mutual_tls ...'
      end
      # unbox the parameters from the hash
      mutual_authentication_id = opts[:'mutual_authentication_id']
      # verify the required parameter 'mutual_authentication_id' is set
      if @api_client.config.client_side_validation && mutual_authentication_id.nil?
        fail ArgumentError, "Missing the required parameter 'mutual_authentication_id' when calling MutualAuthenticationApi.delete_mutual_tls"
      end
      # resource path
      local_var_path = '/tls/mutual_authentications/{mutual_authentication_id}'.sub('{' + 'mutual_authentication_id' + '}', CGI.escape(mutual_authentication_id.to_s))

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
        :operation => :"MutualAuthenticationApi.delete_mutual_tls",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MutualAuthenticationApi#delete_mutual_tls\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Mutual Authentication
    # Show a Mutual Authentication.
    # @option opts [String] :mutual_authentication_id Alphanumeric string identifying a mutual authentication. (required)
    # @option opts [String] :include Comma-separated list of related objects to include (optional). Permitted values: &#x60;tls_activations&#x60;. Including TLS activations will provide you with the TLS domain names that are related to your Mutual TLS authentication. 
    # @return [MutualAuthenticationResponse]
    def get_mutual_authentication(opts = {})
      data, _status_code, _headers = get_mutual_authentication_with_http_info(opts)
      data
    end

    # Get a Mutual Authentication
    # Show a Mutual Authentication.
    # @option opts [String] :mutual_authentication_id Alphanumeric string identifying a mutual authentication. (required)
    # @option opts [String] :include Comma-separated list of related objects to include (optional). Permitted values: &#x60;tls_activations&#x60;. Including TLS activations will provide you with the TLS domain names that are related to your Mutual TLS authentication. 
    # @return [Array<(MutualAuthenticationResponse, Integer, Hash)>] MutualAuthenticationResponse data, response status code and response headers
    def get_mutual_authentication_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MutualAuthenticationApi.get_mutual_authentication ...'
      end
      # unbox the parameters from the hash
      mutual_authentication_id = opts[:'mutual_authentication_id']
      # verify the required parameter 'mutual_authentication_id' is set
      if @api_client.config.client_side_validation && mutual_authentication_id.nil?
        fail ArgumentError, "Missing the required parameter 'mutual_authentication_id' when calling MutualAuthenticationApi.get_mutual_authentication"
      end
      # resource path
      local_var_path = '/tls/mutual_authentications/{mutual_authentication_id}'.sub('{' + 'mutual_authentication_id' + '}', CGI.escape(mutual_authentication_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MutualAuthenticationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"MutualAuthenticationApi.get_mutual_authentication",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MutualAuthenticationApi#get_mutual_authentication\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Mutual Authentications
    # List all mutual authentications.
    # @option opts [String] :include Comma-separated list of related objects to include (optional). Permitted values: &#x60;tls_activations&#x60;. Including TLS activations will provide you with the TLS domain names that are related to your Mutual TLS authentication. 
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @return [MutualAuthenticationsResponse]
    def list_mutual_authentications(opts = {})
      data, _status_code, _headers = list_mutual_authentications_with_http_info(opts)
      data
    end

    # List Mutual Authentications
    # List all mutual authentications.
    # @option opts [String] :include Comma-separated list of related objects to include (optional). Permitted values: &#x60;tls_activations&#x60;. Including TLS activations will provide you with the TLS domain names that are related to your Mutual TLS authentication. 
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @return [Array<(MutualAuthenticationsResponse, Integer, Hash)>] MutualAuthenticationsResponse data, response status code and response headers
    def list_mutual_authentications_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MutualAuthenticationApi.list_mutual_authentications ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling MutualAuthenticationApi.list_mutual_authentications, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling MutualAuthenticationApi.list_mutual_authentications, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/tls/mutual_authentications'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?
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
      return_type = opts[:debug_return_type] || 'MutualAuthenticationsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"MutualAuthenticationApi.list_mutual_authentications",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MutualAuthenticationApi#list_mutual_authentications\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Mutual Authentication
    # Update a Mutual Authentication.
    # @option opts [String] :mutual_authentication_id Alphanumeric string identifying a mutual authentication. (required)
    # @option opts [MutualAuthentication] :mutual_authentication 
    # @return [MutualAuthenticationResponse]
    def patch_mutual_authentication(opts = {})
      data, _status_code, _headers = patch_mutual_authentication_with_http_info(opts)
      data
    end

    # Update a Mutual Authentication
    # Update a Mutual Authentication.
    # @option opts [String] :mutual_authentication_id Alphanumeric string identifying a mutual authentication. (required)
    # @option opts [MutualAuthentication] :mutual_authentication 
    # @return [Array<(MutualAuthenticationResponse, Integer, Hash)>] MutualAuthenticationResponse data, response status code and response headers
    def patch_mutual_authentication_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MutualAuthenticationApi.patch_mutual_authentication ...'
      end
      # unbox the parameters from the hash
      mutual_authentication_id = opts[:'mutual_authentication_id']
      # verify the required parameter 'mutual_authentication_id' is set
      if @api_client.config.client_side_validation && mutual_authentication_id.nil?
        fail ArgumentError, "Missing the required parameter 'mutual_authentication_id' when calling MutualAuthenticationApi.patch_mutual_authentication"
      end
      # resource path
      local_var_path = '/tls/mutual_authentications/{mutual_authentication_id}'.sub('{' + 'mutual_authentication_id' + '}', CGI.escape(mutual_authentication_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'mutual_authentication'])

      # return_type
      return_type = opts[:debug_return_type] || 'MutualAuthenticationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"MutualAuthenticationApi.patch_mutual_authentication",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MutualAuthenticationApi#patch_mutual_authentication\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
