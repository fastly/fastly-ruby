=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class HeaderApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Header object
    # Creates a new Header object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :action Accepts a string value.
    # @option opts [String] :cache_condition Name of the cache condition controlling when this configuration applies.
    # @option opts [String] :dst Header to set.
    # @option opts [String] :name A handle to refer to this Header object.
    # @option opts [String] :regex Regular expression to use. Only applies to &#x60;regex&#x60; and &#x60;regex_repeat&#x60; actions.
    # @option opts [String] :request_condition Condition which, if met, will select this configuration during a request. Optional.
    # @option opts [String] :response_condition Optional name of a response condition to apply.
    # @option opts [String] :src Variable to be used as a source for the header content. Does not apply to &#x60;delete&#x60; action.
    # @option opts [String] :substitution Value to substitute in place of regular expression. Only applies to &#x60;regex&#x60; and &#x60;regex_repeat&#x60; actions.
    # @option opts [String] :type Accepts a string value.
    # @option opts [String] :ignore_if_set Don&#39;t add the header if it is added already. Only applies to &#39;set&#39; action. Numerical value (\\\&quot;0\\\&quot; &#x3D; false, \\\&quot;1\\\&quot; &#x3D; true)
    # @option opts [String] :priority Priority determines execution order. Lower numbers execute first. (default to '100')
    # @return [HeaderResponse]
    def create_header_object(opts = {})
      data, _status_code, _headers = create_header_object_with_http_info(opts)
      data
    end

    # Create a Header object
    # Creates a new Header object.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :action Accepts a string value.
    # @option opts [String] :cache_condition Name of the cache condition controlling when this configuration applies.
    # @option opts [String] :dst Header to set.
    # @option opts [String] :name A handle to refer to this Header object.
    # @option opts [String] :regex Regular expression to use. Only applies to &#x60;regex&#x60; and &#x60;regex_repeat&#x60; actions.
    # @option opts [String] :request_condition Condition which, if met, will select this configuration during a request. Optional.
    # @option opts [String] :response_condition Optional name of a response condition to apply.
    # @option opts [String] :src Variable to be used as a source for the header content. Does not apply to &#x60;delete&#x60; action.
    # @option opts [String] :substitution Value to substitute in place of regular expression. Only applies to &#x60;regex&#x60; and &#x60;regex_repeat&#x60; actions.
    # @option opts [String] :type Accepts a string value.
    # @option opts [String] :ignore_if_set Don&#39;t add the header if it is added already. Only applies to &#39;set&#39; action. Numerical value (\\\&quot;0\\\&quot; &#x3D; false, \\\&quot;1\\\&quot; &#x3D; true)
    # @option opts [String] :priority Priority determines execution order. Lower numbers execute first. (default to '100')
    # @return [Array<(HeaderResponse, Integer, Hash)>] HeaderResponse data, response status code and response headers
    def create_header_object_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HeaderApi.create_header_object ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling HeaderApi.create_header_object"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling HeaderApi.create_header_object"
      end
      allowable_values = ["set", "append", "delete", "regex", "regex_repeat"]
      if @api_client.config.client_side_validation && opts[:'action'] && !allowable_values.include?(opts[:'action'])
        fail ArgumentError, "invalid value for \"action\", must be one of #{allowable_values}"
      end
      allowable_values = ["request", "cache", "response"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/header'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      form_params['action'] = opts[:'action'] if !opts[:'action'].nil?
      form_params['cache_condition'] = opts[:'cache_condition'] if !opts[:'cache_condition'].nil?
      form_params['dst'] = opts[:'dst'] if !opts[:'dst'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['regex'] = opts[:'regex'] if !opts[:'regex'].nil?
      form_params['request_condition'] = opts[:'request_condition'] if !opts[:'request_condition'].nil?
      form_params['response_condition'] = opts[:'response_condition'] if !opts[:'response_condition'].nil?
      form_params['src'] = opts[:'src'] if !opts[:'src'].nil?
      form_params['substitution'] = opts[:'substitution'] if !opts[:'substitution'].nil?
      form_params['type'] = opts[:'type'] if !opts[:'type'].nil?
      form_params['ignore_if_set'] = opts[:'ignore_if_set'] if !opts[:'ignore_if_set'].nil?
      form_params['priority'] = opts[:'priority'] if !opts[:'priority'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'HeaderResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"HeaderApi.create_header_object",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HeaderApi#create_header_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Header object
    # Deletes a Header object by name.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :header_name A handle to refer to this Header object. (required)
    # @return [InlineResponse200]
    def delete_header_object(opts = {})
      data, _status_code, _headers = delete_header_object_with_http_info(opts)
      data
    end

    # Delete a Header object
    # Deletes a Header object by name.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :header_name A handle to refer to this Header object. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_header_object_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HeaderApi.delete_header_object ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      header_name = opts[:'header_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling HeaderApi.delete_header_object"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling HeaderApi.delete_header_object"
      end
      # verify the required parameter 'header_name' is set
      if @api_client.config.client_side_validation && header_name.nil?
        fail ArgumentError, "Missing the required parameter 'header_name' when calling HeaderApi.delete_header_object"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/header/{header_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'header_name' + '}', CGI.escape(header_name.to_s))

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
        :operation => :"HeaderApi.delete_header_object",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HeaderApi#delete_header_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Header object
    # Retrieves a Header object by name.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :header_name A handle to refer to this Header object. (required)
    # @return [HeaderResponse]
    def get_header_object(opts = {})
      data, _status_code, _headers = get_header_object_with_http_info(opts)
      data
    end

    # Get a Header object
    # Retrieves a Header object by name.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :header_name A handle to refer to this Header object. (required)
    # @return [Array<(HeaderResponse, Integer, Hash)>] HeaderResponse data, response status code and response headers
    def get_header_object_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HeaderApi.get_header_object ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      header_name = opts[:'header_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling HeaderApi.get_header_object"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling HeaderApi.get_header_object"
      end
      # verify the required parameter 'header_name' is set
      if @api_client.config.client_side_validation && header_name.nil?
        fail ArgumentError, "Missing the required parameter 'header_name' when calling HeaderApi.get_header_object"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/header/{header_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'header_name' + '}', CGI.escape(header_name.to_s))

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
      return_type = opts[:debug_return_type] || 'HeaderResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"HeaderApi.get_header_object",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HeaderApi#get_header_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Header objects
    # Retrieves all Header objects for a particular Version of a Service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<HeaderResponse>]
    def list_header_objects(opts = {})
      data, _status_code, _headers = list_header_objects_with_http_info(opts)
      data
    end

    # List Header objects
    # Retrieves all Header objects for a particular Version of a Service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(Array<HeaderResponse>, Integer, Hash)>] Array<HeaderResponse> data, response status code and response headers
    def list_header_objects_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HeaderApi.list_header_objects ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling HeaderApi.list_header_objects"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling HeaderApi.list_header_objects"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/header'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<HeaderResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"HeaderApi.list_header_objects",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HeaderApi#list_header_objects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Header object
    # Modifies an existing Header object by name.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :header_name A handle to refer to this Header object. (required)
    # @option opts [String] :action Accepts a string value.
    # @option opts [String] :cache_condition Name of the cache condition controlling when this configuration applies.
    # @option opts [String] :dst Header to set.
    # @option opts [String] :name A handle to refer to this Header object.
    # @option opts [String] :regex Regular expression to use. Only applies to &#x60;regex&#x60; and &#x60;regex_repeat&#x60; actions.
    # @option opts [String] :request_condition Condition which, if met, will select this configuration during a request. Optional.
    # @option opts [String] :response_condition Optional name of a response condition to apply.
    # @option opts [String] :src Variable to be used as a source for the header content. Does not apply to &#x60;delete&#x60; action.
    # @option opts [String] :substitution Value to substitute in place of regular expression. Only applies to &#x60;regex&#x60; and &#x60;regex_repeat&#x60; actions.
    # @option opts [String] :type Accepts a string value.
    # @option opts [String] :ignore_if_set Don&#39;t add the header if it is added already. Only applies to &#39;set&#39; action. Numerical value (\\\&quot;0\\\&quot; &#x3D; false, \\\&quot;1\\\&quot; &#x3D; true)
    # @option opts [String] :priority Priority determines execution order. Lower numbers execute first. (default to '100')
    # @return [HeaderResponse]
    def update_header_object(opts = {})
      data, _status_code, _headers = update_header_object_with_http_info(opts)
      data
    end

    # Update a Header object
    # Modifies an existing Header object by name.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :header_name A handle to refer to this Header object. (required)
    # @option opts [String] :action Accepts a string value.
    # @option opts [String] :cache_condition Name of the cache condition controlling when this configuration applies.
    # @option opts [String] :dst Header to set.
    # @option opts [String] :name A handle to refer to this Header object.
    # @option opts [String] :regex Regular expression to use. Only applies to &#x60;regex&#x60; and &#x60;regex_repeat&#x60; actions.
    # @option opts [String] :request_condition Condition which, if met, will select this configuration during a request. Optional.
    # @option opts [String] :response_condition Optional name of a response condition to apply.
    # @option opts [String] :src Variable to be used as a source for the header content. Does not apply to &#x60;delete&#x60; action.
    # @option opts [String] :substitution Value to substitute in place of regular expression. Only applies to &#x60;regex&#x60; and &#x60;regex_repeat&#x60; actions.
    # @option opts [String] :type Accepts a string value.
    # @option opts [String] :ignore_if_set Don&#39;t add the header if it is added already. Only applies to &#39;set&#39; action. Numerical value (\\\&quot;0\\\&quot; &#x3D; false, \\\&quot;1\\\&quot; &#x3D; true)
    # @option opts [String] :priority Priority determines execution order. Lower numbers execute first. (default to '100')
    # @return [Array<(HeaderResponse, Integer, Hash)>] HeaderResponse data, response status code and response headers
    def update_header_object_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HeaderApi.update_header_object ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      header_name = opts[:'header_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling HeaderApi.update_header_object"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling HeaderApi.update_header_object"
      end
      # verify the required parameter 'header_name' is set
      if @api_client.config.client_side_validation && header_name.nil?
        fail ArgumentError, "Missing the required parameter 'header_name' when calling HeaderApi.update_header_object"
      end
      allowable_values = ["set", "append", "delete", "regex", "regex_repeat"]
      if @api_client.config.client_side_validation && opts[:'action'] && !allowable_values.include?(opts[:'action'])
        fail ArgumentError, "invalid value for \"action\", must be one of #{allowable_values}"
      end
      allowable_values = ["request", "cache", "response"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/header/{header_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'header_name' + '}', CGI.escape(header_name.to_s))

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
      form_params['action'] = opts[:'action'] if !opts[:'action'].nil?
      form_params['cache_condition'] = opts[:'cache_condition'] if !opts[:'cache_condition'].nil?
      form_params['dst'] = opts[:'dst'] if !opts[:'dst'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['regex'] = opts[:'regex'] if !opts[:'regex'].nil?
      form_params['request_condition'] = opts[:'request_condition'] if !opts[:'request_condition'].nil?
      form_params['response_condition'] = opts[:'response_condition'] if !opts[:'response_condition'].nil?
      form_params['src'] = opts[:'src'] if !opts[:'src'].nil?
      form_params['substitution'] = opts[:'substitution'] if !opts[:'substitution'].nil?
      form_params['type'] = opts[:'type'] if !opts[:'type'].nil?
      form_params['ignore_if_set'] = opts[:'ignore_if_set'] if !opts[:'ignore_if_set'].nil?
      form_params['priority'] = opts[:'priority'] if !opts[:'priority'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'HeaderResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"HeaderApi.update_header_object",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HeaderApi#update_header_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
