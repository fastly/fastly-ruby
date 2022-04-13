=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class DictionaryApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an edge dictionary
    # Create named dictionary for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :name Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace).
    # @option opts [Boolean] :write_only Determines if items in the dictionary are readable or not. (default to false)
    # @return [DictionaryResponse]
    def create_dictionary(opts = {})
      data, _status_code, _headers = create_dictionary_with_http_info(opts)
      data
    end

    # Create an edge dictionary
    # Create named dictionary for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :name Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace).
    # @option opts [Boolean] :write_only Determines if items in the dictionary are readable or not. (default to false)
    # @return [Array<(DictionaryResponse, Integer, Hash)>] DictionaryResponse data, response status code and response headers
    def create_dictionary_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DictionaryApi.create_dictionary ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling DictionaryApi.create_dictionary"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling DictionaryApi.create_dictionary"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/dictionary'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      form_params['write_only'] = opts[:'write_only'] if !opts[:'write_only'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DictionaryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DictionaryApi.create_dictionary",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DictionaryApi#create_dictionary\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an edge dictionary
    # Delete named dictionary for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :dictionary_name Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace). (required)
    # @return [InlineResponse200]
    def delete_dictionary(opts = {})
      data, _status_code, _headers = delete_dictionary_with_http_info(opts)
      data
    end

    # Delete an edge dictionary
    # Delete named dictionary for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :dictionary_name Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace). (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_dictionary_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DictionaryApi.delete_dictionary ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      dictionary_name = opts[:'dictionary_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling DictionaryApi.delete_dictionary"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling DictionaryApi.delete_dictionary"
      end
      # verify the required parameter 'dictionary_name' is set
      if @api_client.config.client_side_validation && dictionary_name.nil?
        fail ArgumentError, "Missing the required parameter 'dictionary_name' when calling DictionaryApi.delete_dictionary"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/dictionary/{dictionary_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'dictionary_name' + '}', CGI.escape(dictionary_name.to_s))

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
        :operation => :"DictionaryApi.delete_dictionary",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DictionaryApi#delete_dictionary\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an edge dictionary
    # Retrieve a single dictionary by name for the version and service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :dictionary_name Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace). (required)
    # @return [DictionaryResponse]
    def get_dictionary(opts = {})
      data, _status_code, _headers = get_dictionary_with_http_info(opts)
      data
    end

    # Get an edge dictionary
    # Retrieve a single dictionary by name for the version and service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :dictionary_name Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace). (required)
    # @return [Array<(DictionaryResponse, Integer, Hash)>] DictionaryResponse data, response status code and response headers
    def get_dictionary_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DictionaryApi.get_dictionary ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      dictionary_name = opts[:'dictionary_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling DictionaryApi.get_dictionary"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling DictionaryApi.get_dictionary"
      end
      # verify the required parameter 'dictionary_name' is set
      if @api_client.config.client_side_validation && dictionary_name.nil?
        fail ArgumentError, "Missing the required parameter 'dictionary_name' when calling DictionaryApi.get_dictionary"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/dictionary/{dictionary_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'dictionary_name' + '}', CGI.escape(dictionary_name.to_s))

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
      return_type = opts[:debug_return_type] || 'DictionaryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DictionaryApi.get_dictionary",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DictionaryApi#get_dictionary\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List edge dictionaries
    # List all dictionaries for the version of the service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<DictionaryResponse>]
    def list_dictionaries(opts = {})
      data, _status_code, _headers = list_dictionaries_with_http_info(opts)
      data
    end

    # List edge dictionaries
    # List all dictionaries for the version of the service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(Array<DictionaryResponse>, Integer, Hash)>] Array<DictionaryResponse> data, response status code and response headers
    def list_dictionaries_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DictionaryApi.list_dictionaries ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling DictionaryApi.list_dictionaries"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling DictionaryApi.list_dictionaries"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/dictionary'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<DictionaryResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DictionaryApi.list_dictionaries",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DictionaryApi#list_dictionaries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an edge dictionary
    # Update named dictionary for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :dictionary_name Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace). (required)
    # @option opts [String] :name Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace).
    # @option opts [Boolean] :write_only Determines if items in the dictionary are readable or not. (default to false)
    # @return [DictionaryResponse]
    def update_dictionary(opts = {})
      data, _status_code, _headers = update_dictionary_with_http_info(opts)
      data
    end

    # Update an edge dictionary
    # Update named dictionary for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :dictionary_name Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace). (required)
    # @option opts [String] :name Name for the Dictionary (must start with an alphabetic character and can contain only alphanumeric characters, underscores, and whitespace).
    # @option opts [Boolean] :write_only Determines if items in the dictionary are readable or not. (default to false)
    # @return [Array<(DictionaryResponse, Integer, Hash)>] DictionaryResponse data, response status code and response headers
    def update_dictionary_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DictionaryApi.update_dictionary ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      dictionary_name = opts[:'dictionary_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling DictionaryApi.update_dictionary"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling DictionaryApi.update_dictionary"
      end
      # verify the required parameter 'dictionary_name' is set
      if @api_client.config.client_side_validation && dictionary_name.nil?
        fail ArgumentError, "Missing the required parameter 'dictionary_name' when calling DictionaryApi.update_dictionary"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/dictionary/{dictionary_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'dictionary_name' + '}', CGI.escape(dictionary_name.to_s))

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
      form_params['write_only'] = opts[:'write_only'] if !opts[:'write_only'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DictionaryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DictionaryApi.update_dictionary",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DictionaryApi#update_dictionary\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
