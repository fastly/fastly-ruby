=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class DictionaryInfoApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get edge dictionary metadata
    # Retrieve metadata for a single dictionary by ID for a version and service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :dictionary_id Alphanumeric string identifying a Dictionary. (required)
    # @return [DictionaryInfoResponse]
    def get_dictionary_info(opts = {})
      data, _status_code, _headers = get_dictionary_info_with_http_info(opts)
      data
    end

    # Get edge dictionary metadata
    # Retrieve metadata for a single dictionary by ID for a version and service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :dictionary_id Alphanumeric string identifying a Dictionary. (required)
    # @return [Array<(DictionaryInfoResponse, Integer, Hash)>] DictionaryInfoResponse data, response status code and response headers
    def get_dictionary_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DictionaryInfoApi.get_dictionary_info ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      dictionary_id = opts[:'dictionary_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling DictionaryInfoApi.get_dictionary_info"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling DictionaryInfoApi.get_dictionary_info"
      end
      # verify the required parameter 'dictionary_id' is set
      if @api_client.config.client_side_validation && dictionary_id.nil?
        fail ArgumentError, "Missing the required parameter 'dictionary_id' when calling DictionaryInfoApi.get_dictionary_info"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/dictionary/{dictionary_id}/info'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'dictionary_id' + '}', CGI.escape(dictionary_id.to_s))

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
      return_type = opts[:debug_return_type] || 'DictionaryInfoResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DictionaryInfoApi.get_dictionary_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DictionaryInfoApi#get_dictionary_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
