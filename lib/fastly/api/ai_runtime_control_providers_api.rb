=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class AiRuntimeControlProvidersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Bedrock setup information
    # Returns the AI Runtime Control IAM role Amazon Resource Name (ARN) and external ID to reference in your AWS account's IAM trust policy before creating an `aws-iam` [provider connection](https://www.fastly.com/documentation/reference/api/ai-runtime-control/provider-connections#arc-create-provider-connection) to Amazon Bedrock.  Requires AWS IAM authentication to be enabled on your account. If it isn't, this endpoint returns a 404 response. 
    # @return [ArcBedrockSetupResponse]
    def arc_get_bedrock_setup(opts = {})
      data, _status_code, _headers = arc_get_bedrock_setup_with_http_info(opts)
      data
    end

    # Get Bedrock setup information
    # Returns the AI Runtime Control IAM role Amazon Resource Name (ARN) and external ID to reference in your AWS account&#39;s IAM trust policy before creating an &#x60;aws-iam&#x60; [provider connection](https://www.fastly.com/documentation/reference/api/ai-runtime-control/provider-connections#arc-create-provider-connection) to Amazon Bedrock.  Requires AWS IAM authentication to be enabled on your account. If it isn&#39;t, this endpoint returns a 404 response. 
    # @return [Array<(ArcBedrockSetupResponse, Integer, Hash)>] ArcBedrockSetupResponse data, response status code and response headers
    def arc_get_bedrock_setup_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AiRuntimeControlProvidersApi.arc_get_bedrock_setup ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/ai-runtime-control/v1/providers/bedrock/setup'

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
      return_type = opts[:debug_return_type] || 'ArcBedrockSetupResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AiRuntimeControlProvidersApi.arc_get_bedrock_setup",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AiRuntimeControlProvidersApi#arc_get_bedrock_setup\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get models for a provider
    # Returns the models available for a specific provider.
    # @option opts [String] :provider_id The ID of the provider. (required)
    # @return [ArcModelsResponse]
    def arc_get_models_for_provider(opts = {})
      data, _status_code, _headers = arc_get_models_for_provider_with_http_info(opts)
      data
    end

    # Get models for a provider
    # Returns the models available for a specific provider.
    # @option opts [String] :provider_id The ID of the provider. (required)
    # @return [Array<(ArcModelsResponse, Integer, Hash)>] ArcModelsResponse data, response status code and response headers
    def arc_get_models_for_provider_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AiRuntimeControlProvidersApi.arc_get_models_for_provider ...'
      end
      # unbox the parameters from the hash
      provider_id = opts[:'provider_id']
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling AiRuntimeControlProvidersApi.arc_get_models_for_provider"
      end
      # resource path
      local_var_path = '/ai-runtime-control/v1/providers/{provider_id}/models'.sub('{' + 'provider_id' + '}', CGI.escape(provider_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ArcModelsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AiRuntimeControlProvidersApi.arc_get_models_for_provider",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AiRuntimeControlProvidersApi#arc_get_models_for_provider\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get supported providers
    # Returns the AI providers supported by AI Runtime Control, with each provider's available models nested within.
    # @return [ArcProvidersResponse]
    def arc_get_supported_providers(opts = {})
      data, _status_code, _headers = arc_get_supported_providers_with_http_info(opts)
      data
    end

    # Get supported providers
    # Returns the AI providers supported by AI Runtime Control, with each provider&#39;s available models nested within.
    # @return [Array<(ArcProvidersResponse, Integer, Hash)>] ArcProvidersResponse data, response status code and response headers
    def arc_get_supported_providers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AiRuntimeControlProvidersApi.arc_get_supported_providers ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/ai-runtime-control/v1/providers'

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
      return_type = opts[:debug_return_type] || 'ArcProvidersResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"AiRuntimeControlProvidersApi.arc_get_supported_providers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AiRuntimeControlProvidersApi#arc_get_supported_providers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
