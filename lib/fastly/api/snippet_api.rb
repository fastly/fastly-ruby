=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class SnippetApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a snippet
    # Create a snippet for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :name The name for the snippet.
    # @option opts [Integer] :dynamic Sets the snippet version.
    # @option opts [String] :type The location in generated VCL where the snippet should be placed.
    # @option opts [String] :content The VCL code that specifies exactly what the snippet does.
    # @option opts [Integer] :priority Priority determines execution order. Lower numbers execute first. (default to 100)
    # @return [SnippetResponse]
    def create_snippet(opts = {})
      data, _status_code, _headers = create_snippet_with_http_info(opts)
      data
    end

    # Create a snippet
    # Create a snippet for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :name The name for the snippet.
    # @option opts [Integer] :dynamic Sets the snippet version.
    # @option opts [String] :type The location in generated VCL where the snippet should be placed.
    # @option opts [String] :content The VCL code that specifies exactly what the snippet does.
    # @option opts [Integer] :priority Priority determines execution order. Lower numbers execute first. (default to 100)
    # @return [Array<(SnippetResponse, Integer, Hash)>] SnippetResponse data, response status code and response headers
    def create_snippet_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SnippetApi.create_snippet ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling SnippetApi.create_snippet"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling SnippetApi.create_snippet"
      end
      allowable_values = [0, 1]
      if @api_client.config.client_side_validation && opts[:'dynamic'] && !allowable_values.include?(opts[:'dynamic'])
        fail ArgumentError, "invalid value for \"dynamic\", must be one of #{allowable_values}"
      end
      allowable_values = ["init", "recv", "hash", "hit", "miss", "pass", "fetch", "error", "deliver", "log", "none"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/snippet'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['dynamic'] = opts[:'dynamic'] if !opts[:'dynamic'].nil?
      form_params['type'] = opts[:'type'] if !opts[:'type'].nil?
      form_params['content'] = opts[:'content'] if !opts[:'content'].nil?
      form_params['priority'] = opts[:'priority'] if !opts[:'priority'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SnippetResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SnippetApi.create_snippet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SnippetApi#create_snippet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a snippet
    # Delete a specific snippet for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :snippet_name The name for the snippet. (required)
    # @return [InlineResponse200]
    def delete_snippet(opts = {})
      data, _status_code, _headers = delete_snippet_with_http_info(opts)
      data
    end

    # Delete a snippet
    # Delete a specific snippet for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :snippet_name The name for the snippet. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_snippet_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SnippetApi.delete_snippet ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      snippet_name = opts[:'snippet_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling SnippetApi.delete_snippet"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling SnippetApi.delete_snippet"
      end
      # verify the required parameter 'snippet_name' is set
      if @api_client.config.client_side_validation && snippet_name.nil?
        fail ArgumentError, "Missing the required parameter 'snippet_name' when calling SnippetApi.delete_snippet"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/snippet/{snippet_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'snippet_name' + '}', CGI.escape(snippet_name.to_s))

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
        :operation => :"SnippetApi.delete_snippet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SnippetApi#delete_snippet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a versioned snippet
    # Get a single snippet for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :snippet_name The name for the snippet. (required)
    # @return [SnippetResponse]
    def get_snippet(opts = {})
      data, _status_code, _headers = get_snippet_with_http_info(opts)
      data
    end

    # Get a versioned snippet
    # Get a single snippet for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :snippet_name The name for the snippet. (required)
    # @return [Array<(SnippetResponse, Integer, Hash)>] SnippetResponse data, response status code and response headers
    def get_snippet_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SnippetApi.get_snippet ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      snippet_name = opts[:'snippet_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling SnippetApi.get_snippet"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling SnippetApi.get_snippet"
      end
      # verify the required parameter 'snippet_name' is set
      if @api_client.config.client_side_validation && snippet_name.nil?
        fail ArgumentError, "Missing the required parameter 'snippet_name' when calling SnippetApi.get_snippet"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/snippet/{snippet_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'snippet_name' + '}', CGI.escape(snippet_name.to_s))

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
      return_type = opts[:debug_return_type] || 'SnippetResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SnippetApi.get_snippet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SnippetApi#get_snippet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a dynamic snippet
    # Get a single dynamic snippet for a particular service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :snippet_id Alphanumeric string identifying a VCL Snippet. (required)
    # @return [SnippetResponse]
    def get_snippet_dynamic(opts = {})
      data, _status_code, _headers = get_snippet_dynamic_with_http_info(opts)
      data
    end

    # Get a dynamic snippet
    # Get a single dynamic snippet for a particular service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :snippet_id Alphanumeric string identifying a VCL Snippet. (required)
    # @return [Array<(SnippetResponse, Integer, Hash)>] SnippetResponse data, response status code and response headers
    def get_snippet_dynamic_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SnippetApi.get_snippet_dynamic ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      snippet_id = opts[:'snippet_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling SnippetApi.get_snippet_dynamic"
      end
      # verify the required parameter 'snippet_id' is set
      if @api_client.config.client_side_validation && snippet_id.nil?
        fail ArgumentError, "Missing the required parameter 'snippet_id' when calling SnippetApi.get_snippet_dynamic"
      end
      # resource path
      local_var_path = '/service/{service_id}/snippet/{snippet_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'snippet_id' + '}', CGI.escape(snippet_id.to_s))

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
      return_type = opts[:debug_return_type] || 'SnippetResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SnippetApi.get_snippet_dynamic",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SnippetApi#get_snippet_dynamic\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List snippets
    # List all snippets for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<SnippetResponse>]
    def list_snippets(opts = {})
      data, _status_code, _headers = list_snippets_with_http_info(opts)
      data
    end

    # List snippets
    # List all snippets for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(Array<SnippetResponse>, Integer, Hash)>] Array<SnippetResponse> data, response status code and response headers
    def list_snippets_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SnippetApi.list_snippets ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling SnippetApi.list_snippets"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling SnippetApi.list_snippets"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/snippet'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<SnippetResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SnippetApi.list_snippets",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SnippetApi#list_snippets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a dynamic snippet
    # Update a dynamic snippet for a particular service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :snippet_id Alphanumeric string identifying a VCL Snippet. (required)
    # @option opts [String] :name The name for the snippet.
    # @option opts [Integer] :dynamic Sets the snippet version.
    # @option opts [String] :type The location in generated VCL where the snippet should be placed.
    # @option opts [String] :content The VCL code that specifies exactly what the snippet does.
    # @option opts [Integer] :priority Priority determines execution order. Lower numbers execute first. (default to 100)
    # @return [SnippetResponse]
    def update_snippet_dynamic(opts = {})
      data, _status_code, _headers = update_snippet_dynamic_with_http_info(opts)
      data
    end

    # Update a dynamic snippet
    # Update a dynamic snippet for a particular service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :snippet_id Alphanumeric string identifying a VCL Snippet. (required)
    # @option opts [String] :name The name for the snippet.
    # @option opts [Integer] :dynamic Sets the snippet version.
    # @option opts [String] :type The location in generated VCL where the snippet should be placed.
    # @option opts [String] :content The VCL code that specifies exactly what the snippet does.
    # @option opts [Integer] :priority Priority determines execution order. Lower numbers execute first. (default to 100)
    # @return [Array<(SnippetResponse, Integer, Hash)>] SnippetResponse data, response status code and response headers
    def update_snippet_dynamic_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SnippetApi.update_snippet_dynamic ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      snippet_id = opts[:'snippet_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling SnippetApi.update_snippet_dynamic"
      end
      # verify the required parameter 'snippet_id' is set
      if @api_client.config.client_side_validation && snippet_id.nil?
        fail ArgumentError, "Missing the required parameter 'snippet_id' when calling SnippetApi.update_snippet_dynamic"
      end
      allowable_values = [0, 1]
      if @api_client.config.client_side_validation && opts[:'dynamic'] && !allowable_values.include?(opts[:'dynamic'])
        fail ArgumentError, "invalid value for \"dynamic\", must be one of #{allowable_values}"
      end
      allowable_values = ["init", "recv", "hash", "hit", "miss", "pass", "fetch", "error", "deliver", "log", "none"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service/{service_id}/snippet/{snippet_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'snippet_id' + '}', CGI.escape(snippet_id.to_s))

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
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['dynamic'] = opts[:'dynamic'] if !opts[:'dynamic'].nil?
      form_params['type'] = opts[:'type'] if !opts[:'type'].nil?
      form_params['content'] = opts[:'content'] if !opts[:'content'].nil?
      form_params['priority'] = opts[:'priority'] if !opts[:'priority'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SnippetResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SnippetApi.update_snippet_dynamic",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SnippetApi#update_snippet_dynamic\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
