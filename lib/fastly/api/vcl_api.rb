=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class VclApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a custom VCL file
    # Upload a VCL for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :content The VCL code to be included.
    # @option opts [Boolean] :main Set to &#x60;true&#x60; when this is the main VCL, otherwise &#x60;false&#x60;.
    # @option opts [String] :name The name of this VCL.
    # @return [VclResponse]
    def create_custom_vcl(opts = {})
      data, _status_code, _headers = create_custom_vcl_with_http_info(opts)
      data
    end

    # Create a custom VCL file
    # Upload a VCL for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :content The VCL code to be included.
    # @option opts [Boolean] :main Set to &#x60;true&#x60; when this is the main VCL, otherwise &#x60;false&#x60;.
    # @option opts [String] :name The name of this VCL.
    # @return [Array<(VclResponse, Integer, Hash)>] VclResponse data, response status code and response headers
    def create_custom_vcl_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VclApi.create_custom_vcl ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling VclApi.create_custom_vcl"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling VclApi.create_custom_vcl"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/vcl'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['content'] = opts[:'content'] if !opts[:'content'].nil?
      form_params['main'] = opts[:'main'] if !opts[:'main'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'VclResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"VclApi.create_custom_vcl",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VclApi#create_custom_vcl\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a custom VCL file
    # Delete the uploaded VCL for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :vcl_name The name of this VCL. (required)
    # @return [InlineResponse200]
    def delete_custom_vcl(opts = {})
      data, _status_code, _headers = delete_custom_vcl_with_http_info(opts)
      data
    end

    # Delete a custom VCL file
    # Delete the uploaded VCL for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :vcl_name The name of this VCL. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_custom_vcl_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VclApi.delete_custom_vcl ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      vcl_name = opts[:'vcl_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling VclApi.delete_custom_vcl"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling VclApi.delete_custom_vcl"
      end
      # verify the required parameter 'vcl_name' is set
      if @api_client.config.client_side_validation && vcl_name.nil?
        fail ArgumentError, "Missing the required parameter 'vcl_name' when calling VclApi.delete_custom_vcl"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/vcl/{vcl_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'vcl_name' + '}', CGI.escape(vcl_name.to_s))

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
        :operation => :"VclApi.delete_custom_vcl",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VclApi#delete_custom_vcl\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a custom VCL file
    # Get the uploaded VCL for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :vcl_name The name of this VCL. (required)
    # @option opts [String] :no_content Omit VCL content. (default to '0')
    # @return [VclResponse]
    def get_custom_vcl(opts = {})
      data, _status_code, _headers = get_custom_vcl_with_http_info(opts)
      data
    end

    # Get a custom VCL file
    # Get the uploaded VCL for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :vcl_name The name of this VCL. (required)
    # @option opts [String] :no_content Omit VCL content. (default to '0')
    # @return [Array<(VclResponse, Integer, Hash)>] VclResponse data, response status code and response headers
    def get_custom_vcl_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VclApi.get_custom_vcl ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      vcl_name = opts[:'vcl_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling VclApi.get_custom_vcl"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling VclApi.get_custom_vcl"
      end
      # verify the required parameter 'vcl_name' is set
      if @api_client.config.client_side_validation && vcl_name.nil?
        fail ArgumentError, "Missing the required parameter 'vcl_name' when calling VclApi.get_custom_vcl"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/vcl/{vcl_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'vcl_name' + '}', CGI.escape(vcl_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'no_content'] = opts[:'no_content'] if !opts[:'no_content'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'VclResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"VclApi.get_custom_vcl",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VclApi#get_custom_vcl\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get boilerplate VCL
    # Return boilerplate VCL with the service's TTL from the [settings](https://www.fastly.com/documentation/reference/api/vcl-services/settings/).
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [String]
    def get_custom_vcl_boilerplate(opts = {})
      data, _status_code, _headers = get_custom_vcl_boilerplate_with_http_info(opts)
      data
    end

    # Get boilerplate VCL
    # Return boilerplate VCL with the service&#39;s TTL from the [settings](https://www.fastly.com/documentation/reference/api/vcl-services/settings/).
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_custom_vcl_boilerplate_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VclApi.get_custom_vcl_boilerplate ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling VclApi.get_custom_vcl_boilerplate"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling VclApi.get_custom_vcl_boilerplate"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/boilerplate'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"VclApi.get_custom_vcl_boilerplate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VclApi#get_custom_vcl_boilerplate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the generated VCL for a service
    # Display the generated VCL for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [VclResponse]
    def get_custom_vcl_generated(opts = {})
      data, _status_code, _headers = get_custom_vcl_generated_with_http_info(opts)
      data
    end

    # Get the generated VCL for a service
    # Display the generated VCL for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(VclResponse, Integer, Hash)>] VclResponse data, response status code and response headers
    def get_custom_vcl_generated_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VclApi.get_custom_vcl_generated ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling VclApi.get_custom_vcl_generated"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling VclApi.get_custom_vcl_generated"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/generated_vcl'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      return_type = opts[:debug_return_type] || 'VclResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"VclApi.get_custom_vcl_generated",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VclApi#get_custom_vcl_generated\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the generated VCL with syntax highlighting
    # Display the content of generated VCL with HTML syntax highlighting. Include line numbers by sending `lineno=true` as a request parameter.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [VclSyntaxHighlightingResponse]
    def get_custom_vcl_generated_highlighted(opts = {})
      data, _status_code, _headers = get_custom_vcl_generated_highlighted_with_http_info(opts)
      data
    end

    # Get the generated VCL with syntax highlighting
    # Display the content of generated VCL with HTML syntax highlighting. Include line numbers by sending &#x60;lineno&#x3D;true&#x60; as a request parameter.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(VclSyntaxHighlightingResponse, Integer, Hash)>] VclSyntaxHighlightingResponse data, response status code and response headers
    def get_custom_vcl_generated_highlighted_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VclApi.get_custom_vcl_generated_highlighted ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling VclApi.get_custom_vcl_generated_highlighted"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling VclApi.get_custom_vcl_generated_highlighted"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/generated_vcl/content'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      return_type = opts[:debug_return_type] || 'VclSyntaxHighlightingResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"VclApi.get_custom_vcl_generated_highlighted",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VclApi#get_custom_vcl_generated_highlighted\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a custom VCL file with syntax highlighting
    # Get the uploaded VCL for a particular service and version with HTML syntax highlighting. Include line numbers by sending `lineno=true` as a request parameter.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :vcl_name The name of this VCL. (required)
    # @return [VclSyntaxHighlightingResponse]
    def get_custom_vcl_highlighted(opts = {})
      data, _status_code, _headers = get_custom_vcl_highlighted_with_http_info(opts)
      data
    end

    # Get a custom VCL file with syntax highlighting
    # Get the uploaded VCL for a particular service and version with HTML syntax highlighting. Include line numbers by sending &#x60;lineno&#x3D;true&#x60; as a request parameter.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :vcl_name The name of this VCL. (required)
    # @return [Array<(VclSyntaxHighlightingResponse, Integer, Hash)>] VclSyntaxHighlightingResponse data, response status code and response headers
    def get_custom_vcl_highlighted_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VclApi.get_custom_vcl_highlighted ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      vcl_name = opts[:'vcl_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling VclApi.get_custom_vcl_highlighted"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling VclApi.get_custom_vcl_highlighted"
      end
      # verify the required parameter 'vcl_name' is set
      if @api_client.config.client_side_validation && vcl_name.nil?
        fail ArgumentError, "Missing the required parameter 'vcl_name' when calling VclApi.get_custom_vcl_highlighted"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/vcl/{vcl_name}/content'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'vcl_name' + '}', CGI.escape(vcl_name.to_s))

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
      return_type = opts[:debug_return_type] || 'VclSyntaxHighlightingResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"VclApi.get_custom_vcl_highlighted",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VclApi#get_custom_vcl_highlighted\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download a custom VCL file
    # Download the specified VCL.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :vcl_name The name of this VCL. (required)
    # @return [String]
    def get_custom_vcl_raw(opts = {})
      data, _status_code, _headers = get_custom_vcl_raw_with_http_info(opts)
      data
    end

    # Download a custom VCL file
    # Download the specified VCL.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :vcl_name The name of this VCL. (required)
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_custom_vcl_raw_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VclApi.get_custom_vcl_raw ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      vcl_name = opts[:'vcl_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling VclApi.get_custom_vcl_raw"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling VclApi.get_custom_vcl_raw"
      end
      # verify the required parameter 'vcl_name' is set
      if @api_client.config.client_side_validation && vcl_name.nil?
        fail ArgumentError, "Missing the required parameter 'vcl_name' when calling VclApi.get_custom_vcl_raw"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/vcl/{vcl_name}/download'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'vcl_name' + '}', CGI.escape(vcl_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"VclApi.get_custom_vcl_raw",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VclApi#get_custom_vcl_raw\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lint (validate) VCL using a default set of flags.
    # This endpoint validates the submitted VCL against a default set of enabled flags. Consider using the `/service/{service_id}/lint` operation to validate VCL in the context of a specific service.
    # @option opts [InlineObject1] :inline_object1  (required)
    # @return [ValidatorResult]
    def lint_vcl_default(opts = {})
      data, _status_code, _headers = lint_vcl_default_with_http_info(opts)
      data
    end

    # Lint (validate) VCL using a default set of flags.
    # This endpoint validates the submitted VCL against a default set of enabled flags. Consider using the &#x60;/service/{service_id}/lint&#x60; operation to validate VCL in the context of a specific service.
    # @option opts [InlineObject1] :inline_object1  (required)
    # @return [Array<(ValidatorResult, Integer, Hash)>] ValidatorResult data, response status code and response headers
    def lint_vcl_default_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VclApi.lint_vcl_default ...'
      end
      # unbox the parameters from the hash
      inline_object1 = opts[:'inline_object1']
      # verify the required parameter 'inline_object1' is set
      if @api_client.config.client_side_validation && inline_object1.nil?
        fail ArgumentError, "Missing the required parameter 'inline_object1' when calling VclApi.lint_vcl_default"
      end
      # resource path
      local_var_path = '/vcl_lint'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(inline_object1)

      # return_type
      return_type = opts[:debug_return_type] || 'ValidatorResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"VclApi.lint_vcl_default",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VclApi#lint_vcl_default\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lint (validate) VCL using flags set for the service.
    # Services may have flags set by a Fastly employee or by the purchase of products as addons to the service, which modify the way VCL is interpreted by that service.  This endpoint validates the submitted VCL in the context of the specified service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [InlineObject] :inline_object  (required)
    # @return [ValidatorResult]
    def lint_vcl_for_service(opts = {})
      data, _status_code, _headers = lint_vcl_for_service_with_http_info(opts)
      data
    end

    # Lint (validate) VCL using flags set for the service.
    # Services may have flags set by a Fastly employee or by the purchase of products as addons to the service, which modify the way VCL is interpreted by that service.  This endpoint validates the submitted VCL in the context of the specified service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [InlineObject] :inline_object  (required)
    # @return [Array<(ValidatorResult, Integer, Hash)>] ValidatorResult data, response status code and response headers
    def lint_vcl_for_service_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VclApi.lint_vcl_for_service ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      inline_object = opts[:'inline_object']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling VclApi.lint_vcl_for_service"
      end
      # verify the required parameter 'inline_object' is set
      if @api_client.config.client_side_validation && inline_object.nil?
        fail ArgumentError, "Missing the required parameter 'inline_object' when calling VclApi.lint_vcl_for_service"
      end
      # resource path
      local_var_path = '/service/{service_id}/lint'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(inline_object)

      # return_type
      return_type = opts[:debug_return_type] || 'ValidatorResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"VclApi.lint_vcl_for_service",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VclApi#lint_vcl_for_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List custom VCL files
    # List the uploaded VCLs for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<VclResponse>]
    def list_custom_vcl(opts = {})
      data, _status_code, _headers = list_custom_vcl_with_http_info(opts)
      data
    end

    # List custom VCL files
    # List the uploaded VCLs for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(Array<VclResponse>, Integer, Hash)>] Array<VclResponse> data, response status code and response headers
    def list_custom_vcl_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VclApi.list_custom_vcl ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling VclApi.list_custom_vcl"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling VclApi.list_custom_vcl"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/vcl'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<VclResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"VclApi.list_custom_vcl",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VclApi#list_custom_vcl\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set a custom VCL file as main
    # Set the specified VCL as the main.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :vcl_name The name of this VCL. (required)
    # @return [VclResponse]
    def set_custom_vcl_main(opts = {})
      data, _status_code, _headers = set_custom_vcl_main_with_http_info(opts)
      data
    end

    # Set a custom VCL file as main
    # Set the specified VCL as the main.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :vcl_name The name of this VCL. (required)
    # @return [Array<(VclResponse, Integer, Hash)>] VclResponse data, response status code and response headers
    def set_custom_vcl_main_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VclApi.set_custom_vcl_main ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      vcl_name = opts[:'vcl_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling VclApi.set_custom_vcl_main"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling VclApi.set_custom_vcl_main"
      end
      # verify the required parameter 'vcl_name' is set
      if @api_client.config.client_side_validation && vcl_name.nil?
        fail ArgumentError, "Missing the required parameter 'vcl_name' when calling VclApi.set_custom_vcl_main"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/vcl/{vcl_name}/main'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'vcl_name' + '}', CGI.escape(vcl_name.to_s))

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
      return_type = opts[:debug_return_type] || 'VclResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"VclApi.set_custom_vcl_main",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VclApi#set_custom_vcl_main\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a custom VCL file
    # Update the uploaded VCL for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :vcl_name The name of this VCL. (required)
    # @option opts [String] :content The VCL code to be included.
    # @option opts [Boolean] :main Set to &#x60;true&#x60; when this is the main VCL, otherwise &#x60;false&#x60;.
    # @option opts [String] :name The name of this VCL.
    # @return [VclResponse]
    def update_custom_vcl(opts = {})
      data, _status_code, _headers = update_custom_vcl_with_http_info(opts)
      data
    end

    # Update a custom VCL file
    # Update the uploaded VCL for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :vcl_name The name of this VCL. (required)
    # @option opts [String] :content The VCL code to be included.
    # @option opts [Boolean] :main Set to &#x60;true&#x60; when this is the main VCL, otherwise &#x60;false&#x60;.
    # @option opts [String] :name The name of this VCL.
    # @return [Array<(VclResponse, Integer, Hash)>] VclResponse data, response status code and response headers
    def update_custom_vcl_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VclApi.update_custom_vcl ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      vcl_name = opts[:'vcl_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling VclApi.update_custom_vcl"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling VclApi.update_custom_vcl"
      end
      # verify the required parameter 'vcl_name' is set
      if @api_client.config.client_side_validation && vcl_name.nil?
        fail ArgumentError, "Missing the required parameter 'vcl_name' when calling VclApi.update_custom_vcl"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/vcl/{vcl_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'vcl_name' + '}', CGI.escape(vcl_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['content'] = opts[:'content'] if !opts[:'content'].nil?
      form_params['main'] = opts[:'main'] if !opts[:'main'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'VclResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"VclApi.update_custom_vcl",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VclApi#update_custom_vcl\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
