=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class HealthcheckApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a health check
    # Create a health check for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [Integer] :check_interval How often to run the health check in milliseconds. Minimum 1 second, maximum 1 hour.
    # @option opts [String] :comment A freeform descriptive note.
    # @option opts [Integer] :expected_response The status code expected from the host.
    # @option opts [Array<String>] :headers Array of custom headers that will be added to the health check probes.
    # @option opts [String] :host Which host to check.
    # @option opts [String] :http_version Whether to use version 1.0 or 1.1 HTTP.
    # @option opts [Integer] :initial When loading a config, the initial number of probes to be seen as OK.
    # @option opts [String] :method Which HTTP method to use.
    # @option opts [String] :name The name of the health check.
    # @option opts [String] :path The path to check.
    # @option opts [Integer] :threshold How many health checks must succeed to be considered healthy.
    # @option opts [Integer] :timeout Timeout in milliseconds.
    # @option opts [Integer] :window The number of most recent health check queries to keep for this health check.
    # @return [HealthcheckResponse]
    def create_healthcheck(opts = {})
      data, _status_code, _headers = create_healthcheck_with_http_info(opts)
      data
    end

    # Create a health check
    # Create a health check for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [Integer] :check_interval How often to run the health check in milliseconds. Minimum 1 second, maximum 1 hour.
    # @option opts [String] :comment A freeform descriptive note.
    # @option opts [Integer] :expected_response The status code expected from the host.
    # @option opts [Array<String>] :headers Array of custom headers that will be added to the health check probes.
    # @option opts [String] :host Which host to check.
    # @option opts [String] :http_version Whether to use version 1.0 or 1.1 HTTP.
    # @option opts [Integer] :initial When loading a config, the initial number of probes to be seen as OK.
    # @option opts [String] :method Which HTTP method to use.
    # @option opts [String] :name The name of the health check.
    # @option opts [String] :path The path to check.
    # @option opts [Integer] :threshold How many health checks must succeed to be considered healthy.
    # @option opts [Integer] :timeout Timeout in milliseconds.
    # @option opts [Integer] :window The number of most recent health check queries to keep for this health check.
    # @return [Array<(HealthcheckResponse, Integer, Hash)>] HealthcheckResponse data, response status code and response headers
    def create_healthcheck_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HealthcheckApi.create_healthcheck ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling HealthcheckApi.create_healthcheck"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling HealthcheckApi.create_healthcheck"
      end
      if @api_client.config.client_side_validation && !opts[:'check_interval'].nil? && opts[:'check_interval'] > 3600000
        fail ArgumentError, 'invalid value for "opts[:"check_interval"]" when calling HealthcheckApi.create_healthcheck, must be smaller than or equal to 3600000.'
      end

      if @api_client.config.client_side_validation && !opts[:'check_interval'].nil? && opts[:'check_interval'] < 1000
        fail ArgumentError, 'invalid value for "opts[:"check_interval"]" when calling HealthcheckApi.create_healthcheck, must be greater than or equal to 1000.'
      end

      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/healthcheck'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      form_params['check_interval'] = opts[:'check_interval'] if !opts[:'check_interval'].nil?
      form_params['comment'] = opts[:'comment'] if !opts[:'comment'].nil?
      form_params['expected_response'] = opts[:'expected_response'] if !opts[:'expected_response'].nil?
      form_params['headers'] = @api_client.build_collection_param(opts[:'headers'], :csv) if !opts[:'headers'].nil?
      form_params['host'] = opts[:'host'] if !opts[:'host'].nil?
      form_params['http_version'] = opts[:'http_version'] if !opts[:'http_version'].nil?
      form_params['initial'] = opts[:'initial'] if !opts[:'initial'].nil?
      form_params['method'] = opts[:'method'] if !opts[:'method'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['path'] = opts[:'path'] if !opts[:'path'].nil?
      form_params['threshold'] = opts[:'threshold'] if !opts[:'threshold'].nil?
      form_params['timeout'] = opts[:'timeout'] if !opts[:'timeout'].nil?
      form_params['window'] = opts[:'window'] if !opts[:'window'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'HealthcheckResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"HealthcheckApi.create_healthcheck",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HealthcheckApi#create_healthcheck\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a health check
    # Delete the health check for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :healthcheck_name The name of the health check. (required)
    # @return [InlineResponse200]
    def delete_healthcheck(opts = {})
      data, _status_code, _headers = delete_healthcheck_with_http_info(opts)
      data
    end

    # Delete a health check
    # Delete the health check for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :healthcheck_name The name of the health check. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_healthcheck_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HealthcheckApi.delete_healthcheck ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      healthcheck_name = opts[:'healthcheck_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling HealthcheckApi.delete_healthcheck"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling HealthcheckApi.delete_healthcheck"
      end
      # verify the required parameter 'healthcheck_name' is set
      if @api_client.config.client_side_validation && healthcheck_name.nil?
        fail ArgumentError, "Missing the required parameter 'healthcheck_name' when calling HealthcheckApi.delete_healthcheck"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/healthcheck/{healthcheck_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'healthcheck_name' + '}', CGI.escape(healthcheck_name.to_s))

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
        :operation => :"HealthcheckApi.delete_healthcheck",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HealthcheckApi#delete_healthcheck\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a health check
    # Get the health check for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :healthcheck_name The name of the health check. (required)
    # @return [HealthcheckResponse]
    def get_healthcheck(opts = {})
      data, _status_code, _headers = get_healthcheck_with_http_info(opts)
      data
    end

    # Get a health check
    # Get the health check for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :healthcheck_name The name of the health check. (required)
    # @return [Array<(HealthcheckResponse, Integer, Hash)>] HealthcheckResponse data, response status code and response headers
    def get_healthcheck_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HealthcheckApi.get_healthcheck ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      healthcheck_name = opts[:'healthcheck_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling HealthcheckApi.get_healthcheck"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling HealthcheckApi.get_healthcheck"
      end
      # verify the required parameter 'healthcheck_name' is set
      if @api_client.config.client_side_validation && healthcheck_name.nil?
        fail ArgumentError, "Missing the required parameter 'healthcheck_name' when calling HealthcheckApi.get_healthcheck"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/healthcheck/{healthcheck_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'healthcheck_name' + '}', CGI.escape(healthcheck_name.to_s))

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
      return_type = opts[:debug_return_type] || 'HealthcheckResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"HealthcheckApi.get_healthcheck",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HealthcheckApi#get_healthcheck\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List health checks
    # List all of the health checks for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<HealthcheckResponse>]
    def list_healthchecks(opts = {})
      data, _status_code, _headers = list_healthchecks_with_http_info(opts)
      data
    end

    # List health checks
    # List all of the health checks for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @return [Array<(Array<HealthcheckResponse>, Integer, Hash)>] Array<HealthcheckResponse> data, response status code and response headers
    def list_healthchecks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HealthcheckApi.list_healthchecks ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling HealthcheckApi.list_healthchecks"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling HealthcheckApi.list_healthchecks"
      end
      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/healthcheck'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<HealthcheckResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"HealthcheckApi.list_healthchecks",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HealthcheckApi#list_healthchecks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a health check
    # Update the health check for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :healthcheck_name The name of the health check. (required)
    # @option opts [Integer] :check_interval How often to run the health check in milliseconds. Minimum 1 second, maximum 1 hour.
    # @option opts [String] :comment A freeform descriptive note.
    # @option opts [Integer] :expected_response The status code expected from the host.
    # @option opts [Array<String>] :headers Array of custom headers that will be added to the health check probes.
    # @option opts [String] :host Which host to check.
    # @option opts [String] :http_version Whether to use version 1.0 or 1.1 HTTP.
    # @option opts [Integer] :initial When loading a config, the initial number of probes to be seen as OK.
    # @option opts [String] :method Which HTTP method to use.
    # @option opts [String] :name The name of the health check.
    # @option opts [String] :path The path to check.
    # @option opts [Integer] :threshold How many health checks must succeed to be considered healthy.
    # @option opts [Integer] :timeout Timeout in milliseconds.
    # @option opts [Integer] :window The number of most recent health check queries to keep for this health check.
    # @return [HealthcheckResponse]
    def update_healthcheck(opts = {})
      data, _status_code, _headers = update_healthcheck_with_http_info(opts)
      data
    end

    # Update a health check
    # Update the health check for a particular service and version.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :version_id Integer identifying a service version. (required)
    # @option opts [String] :healthcheck_name The name of the health check. (required)
    # @option opts [Integer] :check_interval How often to run the health check in milliseconds. Minimum 1 second, maximum 1 hour.
    # @option opts [String] :comment A freeform descriptive note.
    # @option opts [Integer] :expected_response The status code expected from the host.
    # @option opts [Array<String>] :headers Array of custom headers that will be added to the health check probes.
    # @option opts [String] :host Which host to check.
    # @option opts [String] :http_version Whether to use version 1.0 or 1.1 HTTP.
    # @option opts [Integer] :initial When loading a config, the initial number of probes to be seen as OK.
    # @option opts [String] :method Which HTTP method to use.
    # @option opts [String] :name The name of the health check.
    # @option opts [String] :path The path to check.
    # @option opts [Integer] :threshold How many health checks must succeed to be considered healthy.
    # @option opts [Integer] :timeout Timeout in milliseconds.
    # @option opts [Integer] :window The number of most recent health check queries to keep for this health check.
    # @return [Array<(HealthcheckResponse, Integer, Hash)>] HealthcheckResponse data, response status code and response headers
    def update_healthcheck_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HealthcheckApi.update_healthcheck ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      version_id = opts[:'version_id']
      healthcheck_name = opts[:'healthcheck_name']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling HealthcheckApi.update_healthcheck"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling HealthcheckApi.update_healthcheck"
      end
      # verify the required parameter 'healthcheck_name' is set
      if @api_client.config.client_side_validation && healthcheck_name.nil?
        fail ArgumentError, "Missing the required parameter 'healthcheck_name' when calling HealthcheckApi.update_healthcheck"
      end
      if @api_client.config.client_side_validation && !opts[:'check_interval'].nil? && opts[:'check_interval'] > 3600000
        fail ArgumentError, 'invalid value for "opts[:"check_interval"]" when calling HealthcheckApi.update_healthcheck, must be smaller than or equal to 3600000.'
      end

      if @api_client.config.client_side_validation && !opts[:'check_interval'].nil? && opts[:'check_interval'] < 1000
        fail ArgumentError, 'invalid value for "opts[:"check_interval"]" when calling HealthcheckApi.update_healthcheck, must be greater than or equal to 1000.'
      end

      # resource path
      local_var_path = '/service/{service_id}/version/{version_id}/healthcheck/{healthcheck_name}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s)).sub('{' + 'healthcheck_name' + '}', CGI.escape(healthcheck_name.to_s))

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
      form_params['check_interval'] = opts[:'check_interval'] if !opts[:'check_interval'].nil?
      form_params['comment'] = opts[:'comment'] if !opts[:'comment'].nil?
      form_params['expected_response'] = opts[:'expected_response'] if !opts[:'expected_response'].nil?
      form_params['headers'] = @api_client.build_collection_param(opts[:'headers'], :csv) if !opts[:'headers'].nil?
      form_params['host'] = opts[:'host'] if !opts[:'host'].nil?
      form_params['http_version'] = opts[:'http_version'] if !opts[:'http_version'].nil?
      form_params['initial'] = opts[:'initial'] if !opts[:'initial'].nil?
      form_params['method'] = opts[:'method'] if !opts[:'method'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['path'] = opts[:'path'] if !opts[:'path'].nil?
      form_params['threshold'] = opts[:'threshold'] if !opts[:'threshold'].nil?
      form_params['timeout'] = opts[:'timeout'] if !opts[:'timeout'].nil?
      form_params['window'] = opts[:'window'] if !opts[:'window'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'HealthcheckResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"HealthcheckApi.update_healthcheck",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HealthcheckApi#update_healthcheck\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
