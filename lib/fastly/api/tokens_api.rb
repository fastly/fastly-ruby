=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class TokensApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the current token
    # Get a single token based on the access_token used in the request.
    # @return [TokenResponse]
    def get_token_current(opts = {})
      data, _status_code, _headers = get_token_current_with_http_info(opts)
      data
    end

    # Get the current token
    # Get a single token based on the access_token used in the request.
    # @return [Array<(TokenResponse, Integer, Hash)>] TokenResponse data, response status code and response headers
    def get_token_current_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokensApi.get_token_current ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/tokens/self'

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
      return_type = opts[:debug_return_type] || 'TokenResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TokensApi.get_token_current",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokensApi#get_token_current\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List tokens for a customer
    # List all tokens belonging to a specific customer.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @return [Array<TokenResponse>]
    def list_tokens_customer(opts = {})
      data, _status_code, _headers = list_tokens_customer_with_http_info(opts)
      data
    end

    # List tokens for a customer
    # List all tokens belonging to a specific customer.
    # @option opts [String] :customer_id Alphanumeric string identifying the customer. (required)
    # @return [Array<(Array<TokenResponse>, Integer, Hash)>] Array<TokenResponse> data, response status code and response headers
    def list_tokens_customer_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokensApi.list_tokens_customer ...'
      end
      # unbox the parameters from the hash
      customer_id = opts[:'customer_id']
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling TokensApi.list_tokens_customer"
      end
      # resource path
      local_var_path = '/customer/{customer_id}/tokens'.sub('{' + 'customer_id' + '}', CGI.escape(customer_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<TokenResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TokensApi.list_tokens_customer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokensApi#list_tokens_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List tokens for the authenticated user
    # List all tokens belonging to the authenticated user.
    # @return [Array<TokenResponse>]
    def list_tokens_user(opts = {})
      data, _status_code, _headers = list_tokens_user_with_http_info(opts)
      data
    end

    # List tokens for the authenticated user
    # List all tokens belonging to the authenticated user.
    # @return [Array<(Array<TokenResponse>, Integer, Hash)>] Array<TokenResponse> data, response status code and response headers
    def list_tokens_user_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokensApi.list_tokens_user ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/tokens'

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
      return_type = opts[:debug_return_type] || 'Array<TokenResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TokensApi.list_tokens_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokensApi#list_tokens_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Revoke a token
    # Revoke a specific token by its id.
    # @option opts [String] :token_id Alphanumeric string identifying a token. (required)
    # @return [nil]
    def revoke_token(opts = {})
      revoke_token_with_http_info(opts)
      nil
    end

    # Revoke a token
    # Revoke a specific token by its id.
    # @option opts [String] :token_id Alphanumeric string identifying a token. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def revoke_token_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokensApi.revoke_token ...'
      end
      # unbox the parameters from the hash
      token_id = opts[:'token_id']
      # verify the required parameter 'token_id' is set
      if @api_client.config.client_side_validation && token_id.nil?
        fail ArgumentError, "Missing the required parameter 'token_id' when calling TokensApi.revoke_token"
      end
      # resource path
      local_var_path = '/tokens/{token_id}'.sub('{' + 'token_id' + '}', CGI.escape(token_id.to_s))

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TokensApi.revoke_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokensApi#revoke_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Revoke the current token
    # Revoke a token that is used to authenticate the request.
    # @return [nil]
    def revoke_token_current(opts = {})
      revoke_token_current_with_http_info(opts)
      nil
    end

    # Revoke the current token
    # Revoke a token that is used to authenticate the request.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def revoke_token_current_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokensApi.revoke_token_current ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/tokens/self'

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TokensApi.revoke_token_current",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokensApi#revoke_token_current\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
