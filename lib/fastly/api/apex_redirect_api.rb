=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class ApexRedirectApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete an apex redirect
    # Delete an apex redirect by its ID.
    # @option opts [String] :apex_redirect_id  (required)
    # @return [InlineResponse200]
    def delete_apex_redirect(opts = {})
      data, _status_code, _headers = delete_apex_redirect_with_http_info(opts)
      data
    end

    # Delete an apex redirect
    # Delete an apex redirect by its ID.
    # @option opts [String] :apex_redirect_id  (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_apex_redirect_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApexRedirectApi.delete_apex_redirect ...'
      end
      # unbox the parameters from the hash
      apex_redirect_id = opts[:'apex_redirect_id']
      # verify the required parameter 'apex_redirect_id' is set
      if @api_client.config.client_side_validation && apex_redirect_id.nil?
        fail ArgumentError, "Missing the required parameter 'apex_redirect_id' when calling ApexRedirectApi.delete_apex_redirect"
      end
      # resource path
      local_var_path = '/apex-redirects/{apex_redirect_id}'.sub('{' + 'apex_redirect_id' + '}', CGI.escape(apex_redirect_id.to_s))

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
        :operation => :"ApexRedirectApi.delete_apex_redirect",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApexRedirectApi#delete_apex_redirect\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an apex redirect
    # Get an apex redirect by its ID.
    # @option opts [String] :apex_redirect_id  (required)
    # @return [ApexRedirect]
    def get_apex_redirect(opts = {})
      data, _status_code, _headers = get_apex_redirect_with_http_info(opts)
      data
    end

    # Get an apex redirect
    # Get an apex redirect by its ID.
    # @option opts [String] :apex_redirect_id  (required)
    # @return [Array<(ApexRedirect, Integer, Hash)>] ApexRedirect data, response status code and response headers
    def get_apex_redirect_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApexRedirectApi.get_apex_redirect ...'
      end
      # unbox the parameters from the hash
      apex_redirect_id = opts[:'apex_redirect_id']
      # verify the required parameter 'apex_redirect_id' is set
      if @api_client.config.client_side_validation && apex_redirect_id.nil?
        fail ArgumentError, "Missing the required parameter 'apex_redirect_id' when calling ApexRedirectApi.get_apex_redirect"
      end
      # resource path
      local_var_path = '/apex-redirects/{apex_redirect_id}'.sub('{' + 'apex_redirect_id' + '}', CGI.escape(apex_redirect_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ApexRedirect'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ApexRedirectApi.get_apex_redirect",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApexRedirectApi#get_apex_redirect\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List apex redirects
    # List all apex redirects for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<ApexRedirect>]
    def list_apex_redirects(opts = {})
      data, _status_code, _headers = list_apex_redirects_with_http_info(opts)
      data
    end

    # List apex redirects
    # List all apex redirects for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(Array<ApexRedirect>, Integer, Hash)>] Array<ApexRedirect> data, response status code and response headers
    def list_apex_redirects_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApexRedirectApi.list_apex_redirects ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ApexRedirectApi.list_apex_redirects"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling ApexRedirectApi.list_apex_redirects"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/apex-redirects'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<ApexRedirect>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ApexRedirectApi.list_apex_redirects",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApexRedirectApi#list_apex_redirects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an apex redirect
    # Update an apex redirect by its ID.
    # @option opts [String] :apex_redirect_id  (required)
    # @option opts [String] :service_id 
    # @option opts [Integer] :version 
    # @option opts [Time] :created_at Date and time in ISO 8601 format.
    # @option opts [Time] :deleted_at Date and time in ISO 8601 format.
    # @option opts [Time] :updated_at Date and time in ISO 8601 format.
    # @option opts [Integer] :status_code HTTP status code used to redirect the client.
    # @option opts [Array<String>] :domains Array of apex domains that should redirect to their WWW subdomain.
    # @option opts [Integer] :feature_revision Revision number of the apex redirect feature implementation. Defaults to the most recent revision.
    # @return [ApexRedirect]
    def update_apex_redirect(opts = {})
      data, _status_code, _headers = update_apex_redirect_with_http_info(opts)
      data
    end

    # Update an apex redirect
    # Update an apex redirect by its ID.
    # @option opts [String] :apex_redirect_id  (required)
    # @option opts [String] :service_id 
    # @option opts [Integer] :version 
    # @option opts [Time] :created_at Date and time in ISO 8601 format.
    # @option opts [Time] :deleted_at Date and time in ISO 8601 format.
    # @option opts [Time] :updated_at Date and time in ISO 8601 format.
    # @option opts [Integer] :status_code HTTP status code used to redirect the client.
    # @option opts [Array<String>] :domains Array of apex domains that should redirect to their WWW subdomain.
    # @option opts [Integer] :feature_revision Revision number of the apex redirect feature implementation. Defaults to the most recent revision.
    # @return [Array<(ApexRedirect, Integer, Hash)>] ApexRedirect data, response status code and response headers
    def update_apex_redirect_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApexRedirectApi.update_apex_redirect ...'
      end
      # unbox the parameters from the hash
      apex_redirect_id = opts[:'apex_redirect_id']
      # verify the required parameter 'apex_redirect_id' is set
      if @api_client.config.client_side_validation && apex_redirect_id.nil?
        fail ArgumentError, "Missing the required parameter 'apex_redirect_id' when calling ApexRedirectApi.update_apex_redirect"
      end
      allowable_values = [301, 302, 307, 308]
      if @api_client.config.client_side_validation && opts[:'status_code'] && !allowable_values.include?(opts[:'status_code'])
        fail ArgumentError, "invalid value for \"status_code\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'domains'].nil? && opts[:'domains'].length < 1
        fail ArgumentError, 'invalid value for "opts[:"domains"]" when calling ApexRedirectApi.update_apex_redirect, number of items must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'feature_revision'].nil? && opts[:'feature_revision'] < 1
        fail ArgumentError, 'invalid value for "opts[:"feature_revision"]" when calling ApexRedirectApi.update_apex_redirect, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/apex-redirects/{apex_redirect_id}'.sub('{' + 'apex_redirect_id' + '}', CGI.escape(apex_redirect_id.to_s))

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
      form_params['service_id'] = opts[:'service_id'] if !opts[:'service_id'].nil?
      form_params['version'] = opts[:'version'] if !opts[:'version'].nil?
      form_params['created_at'] = opts[:'created_at'] if !opts[:'created_at'].nil?
      form_params['deleted_at'] = opts[:'deleted_at'] if !opts[:'deleted_at'].nil?
      form_params['updated_at'] = opts[:'updated_at'] if !opts[:'updated_at'].nil?
      form_params['status_code'] = opts[:'status_code'] if !opts[:'status_code'].nil?
      form_params['domains'] = @api_client.build_collection_param(opts[:'domains'], :csv) if !opts[:'domains'].nil?
      form_params['feature_revision'] = opts[:'feature_revision'] if !opts[:'feature_revision'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ApexRedirect'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ApexRedirectApi.update_apex_redirect",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApexRedirectApi#update_apex_redirect\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
