=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class AutomationTokensApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Automation Token
    # Creates a new automation token.
    # @option opts [AutomationTokenCreateRequest] :automation_token_create_request 
    # @return [AutomationTokenCreateResponse]
    def create_automation_token(opts = {})
      data, _status_code, _headers = create_automation_token_with_http_info(opts)
      data
    end

    # Create Automation Token
    # Creates a new automation token.
    # @option opts [AutomationTokenCreateRequest] :automation_token_create_request 
    # @return [Array<(AutomationTokenCreateResponse, Integer, Hash)>] AutomationTokenCreateResponse data, response status code and response headers
    def create_automation_token_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AutomationTokensApi.create_automation_token ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/automation-tokens'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'automation_token_create_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'AutomationTokenCreateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AutomationTokensApi.create_automation_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AutomationTokensApi#create_automation_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an Automation Token by ID
    # Retrieves an automation token by ID.
    # @option opts [String] :id  (required)
    # @return [AutomationTokenResponse]
    def get_automation_token_id(opts = {})
      data, _status_code, _headers = get_automation_token_id_with_http_info(opts)
      data
    end

    # Retrieve an Automation Token by ID
    # Retrieves an automation token by ID.
    # @option opts [String] :id  (required)
    # @return [Array<(AutomationTokenResponse, Integer, Hash)>] AutomationTokenResponse data, response status code and response headers
    def get_automation_token_id_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AutomationTokensApi.get_automation_token_id ...'
      end
      # unbox the parameters from the hash
      id = opts[:'id']
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AutomationTokensApi.get_automation_token_id"
      end
      # resource path
      local_var_path = '/automation-tokens/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AutomationTokenResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AutomationTokensApi.get_automation_token_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AutomationTokensApi#get_automation_token_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Automation Token Services
    # List of services associated with the automation token.
    # @option opts [String] :id  (required)
    # @option opts [Integer] :per_page 
    # @option opts [Integer] :page 
    # @return [InlineResponse2001]
    def get_automation_tokens_id_services(opts = {})
      data, _status_code, _headers = get_automation_tokens_id_services_with_http_info(opts)
      data
    end

    # List Automation Token Services
    # List of services associated with the automation token.
    # @option opts [String] :id  (required)
    # @option opts [Integer] :per_page 
    # @option opts [Integer] :page 
    # @return [Array<(InlineResponse2001, Integer, Hash)>] InlineResponse2001 data, response status code and response headers
    def get_automation_tokens_id_services_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AutomationTokensApi.get_automation_tokens_id_services ...'
      end
      # unbox the parameters from the hash
      id = opts[:'id']
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AutomationTokensApi.get_automation_tokens_id_services"
      end
      # resource path
      local_var_path = '/automation-tokens/{id}/services'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse2001'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AutomationTokensApi.get_automation_tokens_id_services",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AutomationTokensApi#get_automation_tokens_id_services\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Customer Automation Tokens
    # Lists all automation tokens for a customer.
    # @option opts [Integer] :per_page 
    # @option opts [Integer] :page 
    # @return [Array<AutomationTokenResponse>]
    def list_automation_tokens(opts = {})
      data, _status_code, _headers = list_automation_tokens_with_http_info(opts)
      data
    end

    # List Customer Automation Tokens
    # Lists all automation tokens for a customer.
    # @option opts [Integer] :per_page 
    # @option opts [Integer] :page 
    # @return [Array<(Array<AutomationTokenResponse>, Integer, Hash)>] Array<AutomationTokenResponse> data, response status code and response headers
    def list_automation_tokens_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AutomationTokensApi.list_automation_tokens ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/automation-tokens'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AutomationTokenResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AutomationTokensApi.list_automation_tokens",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AutomationTokensApi#list_automation_tokens\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Revoke an Automation Token by ID
    # Revoke an automation token by ID.
    # @option opts [String] :id  (required)
    # @return [AutomationTokenErrorResponse]
    def revoke_automation_token_id(opts = {})
      data, _status_code, _headers = revoke_automation_token_id_with_http_info(opts)
      data
    end

    # Revoke an Automation Token by ID
    # Revoke an automation token by ID.
    # @option opts [String] :id  (required)
    # @return [Array<(AutomationTokenErrorResponse, Integer, Hash)>] AutomationTokenErrorResponse data, response status code and response headers
    def revoke_automation_token_id_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AutomationTokensApi.revoke_automation_token_id ...'
      end
      # unbox the parameters from the hash
      id = opts[:'id']
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AutomationTokensApi.revoke_automation_token_id"
      end
      # resource path
      local_var_path = '/automation-tokens/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AutomationTokenErrorResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AutomationTokensApi.revoke_automation_token_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AutomationTokensApi#revoke_automation_token_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
