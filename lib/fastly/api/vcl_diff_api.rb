=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class VclDiffApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a comparison of the VCL changes between two service versions
    # Get a comparison of the VCL changes between two service versions.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :from_version_id The version number of the service to which changes in the generated VCL are being compared. Can either be a positive number from 1 to your maximum version or a negative number from -1 down (-1 is latest version etc). (required)
    # @option opts [Integer] :to_version_id The version number of the service from which changes in the generated VCL are being compared. Uses same numbering scheme as &#x60;from&#x60;. (required)
    # @option opts [String] :format Optional method to format the diff field. (default to 'text')
    # @return [VclDiff]
    def vcl_diff_service_versions(opts = {})
      data, _status_code, _headers = vcl_diff_service_versions_with_http_info(opts)
      data
    end

    # Get a comparison of the VCL changes between two service versions
    # Get a comparison of the VCL changes between two service versions.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :from_version_id The version number of the service to which changes in the generated VCL are being compared. Can either be a positive number from 1 to your maximum version or a negative number from -1 down (-1 is latest version etc). (required)
    # @option opts [Integer] :to_version_id The version number of the service from which changes in the generated VCL are being compared. Uses same numbering scheme as &#x60;from&#x60;. (required)
    # @option opts [String] :format Optional method to format the diff field. (default to 'text')
    # @return [Array<(VclDiff, Integer, Hash)>] VclDiff data, response status code and response headers
    def vcl_diff_service_versions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VclDiffApi.vcl_diff_service_versions ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      from_version_id = opts[:'from_version_id']
      to_version_id = opts[:'to_version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling VclDiffApi.vcl_diff_service_versions"
      end
      # verify the required parameter 'from_version_id' is set
      if @api_client.config.client_side_validation && from_version_id.nil?
        fail ArgumentError, "Missing the required parameter 'from_version_id' when calling VclDiffApi.vcl_diff_service_versions"
      end
      # verify the required parameter 'to_version_id' is set
      if @api_client.config.client_side_validation && to_version_id.nil?
        fail ArgumentError, "Missing the required parameter 'to_version_id' when calling VclDiffApi.vcl_diff_service_versions"
      end
      allowable_values = ["text", "html", "html_simple"]
      if @api_client.config.client_side_validation && opts[:'format'] && !allowable_values.include?(opts[:'format'])
        fail ArgumentError, "invalid value for \"format\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service/{service_id}/vcl/diff/from/{from_version_id}/to/{to_version_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'from_version_id' + '}', CGI.escape(from_version_id.to_s)).sub('{' + 'to_version_id' + '}', CGI.escape(to_version_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'VclDiff'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"VclDiffApi.vcl_diff_service_versions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VclDiffApi#vcl_diff_service_versions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
