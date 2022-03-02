=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0


=end

require 'cgi'

module Fastly
  class TlsActivationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Enable TLS for a domain using a custom certificate
    # Enable TLS for a particular TLS domain and certificate combination. These relationships must be specified to create the TLS activation.
    # @option opts [TlsActivation] :tls_activation 
    # @return [TlsActivationResponse]
    def create_tls_activation(opts = {})
      data, _status_code, _headers = create_tls_activation_with_http_info(opts)
      data
    end

    # Enable TLS for a domain using a custom certificate
    # Enable TLS for a particular TLS domain and certificate combination. These relationships must be specified to create the TLS activation.
    # @option opts [TlsActivation] :tls_activation 
    # @return [Array<(TlsActivationResponse, Integer, Hash)>] TlsActivationResponse data, response status code and response headers
    def create_tls_activation_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsActivationsApi.create_tls_activation ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/tls/activations'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'tls_activation'])

      # return_type
      return_type = opts[:debug_return_type] || 'TlsActivationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsActivationsApi.create_tls_activation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsActivationsApi#create_tls_activation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Disable TLS on a domain
    # Disable TLS on the domain associated with this TLS activation.
    # @option opts [String] :tls_activation_id Alphanumeric string identifying a TLS activation. (required)
    # @return [nil]
    def delete_tls_activation(opts = {})
      delete_tls_activation_with_http_info(opts)
      nil
    end

    # Disable TLS on a domain
    # Disable TLS on the domain associated with this TLS activation.
    # @option opts [String] :tls_activation_id Alphanumeric string identifying a TLS activation. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_tls_activation_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsActivationsApi.delete_tls_activation ...'
      end
      # unbox the parameters from the hash
      tls_activation_id = opts[:'tls_activation_id']
      # verify the required parameter 'tls_activation_id' is set
      if @api_client.config.client_side_validation && tls_activation_id.nil?
        fail ArgumentError, "Missing the required parameter 'tls_activation_id' when calling TlsActivationsApi.delete_tls_activation"
      end
      # resource path
      local_var_path = '/tls/activations/{tls_activation_id}'.sub('{' + 'tls_activation_id' + '}', CGI.escape(tls_activation_id.to_s))

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
        :operation => :"TlsActivationsApi.delete_tls_activation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsActivationsApi#delete_tls_activation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a TLS activation
    # Show a TLS activation.
    # @option opts [String] :tls_activation_id Alphanumeric string identifying a TLS activation. (required)
    # @option opts [String] :include Include related objects. Optional, comma-separated values. Permitted values: &#x60;tls_certificate&#x60;, &#x60;tls_configuration&#x60;, and &#x60;tls_domain&#x60;. 
    # @return [TlsActivationResponse]
    def get_tls_activation(opts = {})
      data, _status_code, _headers = get_tls_activation_with_http_info(opts)
      data
    end

    # Get a TLS activation
    # Show a TLS activation.
    # @option opts [String] :tls_activation_id Alphanumeric string identifying a TLS activation. (required)
    # @option opts [String] :include Include related objects. Optional, comma-separated values. Permitted values: &#x60;tls_certificate&#x60;, &#x60;tls_configuration&#x60;, and &#x60;tls_domain&#x60;. 
    # @return [Array<(TlsActivationResponse, Integer, Hash)>] TlsActivationResponse data, response status code and response headers
    def get_tls_activation_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsActivationsApi.get_tls_activation ...'
      end
      # unbox the parameters from the hash
      tls_activation_id = opts[:'tls_activation_id']
      # verify the required parameter 'tls_activation_id' is set
      if @api_client.config.client_side_validation && tls_activation_id.nil?
        fail ArgumentError, "Missing the required parameter 'tls_activation_id' when calling TlsActivationsApi.get_tls_activation"
      end
      # resource path
      local_var_path = '/tls/activations/{tls_activation_id}'.sub('{' + 'tls_activation_id' + '}', CGI.escape(tls_activation_id.to_s))

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
      return_type = opts[:debug_return_type] || 'TlsActivationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsActivationsApi.get_tls_activation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsActivationsApi#get_tls_activation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List TLS activations
    # List all TLS activations.
    # @option opts [String] :filter_tls_certificate_id Limit the returned activations to a specific certificate.
    # @option opts [String] :filter_tls_configuration_id Limit the returned activations to a specific TLS configuration.
    # @option opts [String] :filter_tls_domain_id Limit the returned rules to a specific domain name.
    # @option opts [String] :include Include related objects. Optional, comma-separated values. Permitted values: &#x60;tls_certificate&#x60;, &#x60;tls_configuration&#x60;, and &#x60;tls_domain&#x60;. 
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @return [TlsActivationsResponse]
    def list_tls_activations(opts = {})
      data, _status_code, _headers = list_tls_activations_with_http_info(opts)
      data
    end

    # List TLS activations
    # List all TLS activations.
    # @option opts [String] :filter_tls_certificate_id Limit the returned activations to a specific certificate.
    # @option opts [String] :filter_tls_configuration_id Limit the returned activations to a specific TLS configuration.
    # @option opts [String] :filter_tls_domain_id Limit the returned rules to a specific domain name.
    # @option opts [String] :include Include related objects. Optional, comma-separated values. Permitted values: &#x60;tls_certificate&#x60;, &#x60;tls_configuration&#x60;, and &#x60;tls_domain&#x60;. 
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @return [Array<(TlsActivationsResponse, Integer, Hash)>] TlsActivationsResponse data, response status code and response headers
    def list_tls_activations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsActivationsApi.list_tls_activations ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling TlsActivationsApi.list_tls_activations, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling TlsActivationsApi.list_tls_activations, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/tls/activations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter[tls_certificate.id]'] = opts[:'filter_tls_certificate_id'] if !opts[:'filter_tls_certificate_id'].nil?
      query_params[:'filter[tls_configuration.id]'] = opts[:'filter_tls_configuration_id'] if !opts[:'filter_tls_configuration_id'].nil?
      query_params[:'filter[tls_domain.id]'] = opts[:'filter_tls_domain_id'] if !opts[:'filter_tls_domain_id'].nil?
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
      return_type = opts[:debug_return_type] || 'TlsActivationsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsActivationsApi.list_tls_activations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsActivationsApi#list_tls_activations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a certificate
    # Update the certificate used to terminate TLS traffic for the domain associated with this TLS activation.
    # @option opts [String] :tls_activation_id Alphanumeric string identifying a TLS activation. (required)
    # @option opts [TlsActivation] :tls_activation 
    # @return [TlsActivationResponse]
    def update_tls_activation(opts = {})
      data, _status_code, _headers = update_tls_activation_with_http_info(opts)
      data
    end

    # Update a certificate
    # Update the certificate used to terminate TLS traffic for the domain associated with this TLS activation.
    # @option opts [String] :tls_activation_id Alphanumeric string identifying a TLS activation. (required)
    # @option opts [TlsActivation] :tls_activation 
    # @return [Array<(TlsActivationResponse, Integer, Hash)>] TlsActivationResponse data, response status code and response headers
    def update_tls_activation_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsActivationsApi.update_tls_activation ...'
      end
      # unbox the parameters from the hash
      tls_activation_id = opts[:'tls_activation_id']
      # verify the required parameter 'tls_activation_id' is set
      if @api_client.config.client_side_validation && tls_activation_id.nil?
        fail ArgumentError, "Missing the required parameter 'tls_activation_id' when calling TlsActivationsApi.update_tls_activation"
      end
      # resource path
      local_var_path = '/tls/activations/{tls_activation_id}'.sub('{' + 'tls_activation_id' + '}', CGI.escape(tls_activation_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'tls_activation'])

      # return_type
      return_type = opts[:debug_return_type] || 'TlsActivationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsActivationsApi.update_tls_activation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsActivationsApi#update_tls_activation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
