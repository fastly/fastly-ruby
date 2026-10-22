=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class NetworkProtectApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Network Protect endpoint
    # Creates a GRE delivery destination. A new endpoint is not attached to a network until it is added to an endpoint policy.
    # @option opts [NetworkProtectEndpointCreate] :network_protect_endpoint_create  (required)
    # @return [NetworkProtectEndpointResponse]
    def create_network_protect_endpoint(opts = {})
      data, _status_code, _headers = create_network_protect_endpoint_with_http_info(opts)
      data
    end

    # Create a Network Protect endpoint
    # Creates a GRE delivery destination. A new endpoint is not attached to a network until it is added to an endpoint policy.
    # @option opts [NetworkProtectEndpointCreate] :network_protect_endpoint_create  (required)
    # @return [Array<(NetworkProtectEndpointResponse, Integer, Hash)>] NetworkProtectEndpointResponse data, response status code and response headers
    def create_network_protect_endpoint_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProtectApi.create_network_protect_endpoint ...'
      end
      # unbox the parameters from the hash
      network_protect_endpoint_create = opts[:'network_protect_endpoint_create']
      # verify the required parameter 'network_protect_endpoint_create' is set
      if @api_client.config.client_side_validation && network_protect_endpoint_create.nil?
        fail ArgumentError, "Missing the required parameter 'network_protect_endpoint_create' when calling NetworkProtectApi.create_network_protect_endpoint"
      end
      # resource path
      local_var_path = '/network-protect/v1/endpoints'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(network_protect_endpoint_create)

      # return_type
      return_type = opts[:debug_return_type] || 'NetworkProtectEndpointResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"NetworkProtectApi.create_network_protect_endpoint",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProtectApi#create_network_protect_endpoint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Network Protect network
    # Registers customer-owned IP space for protection. The network starts with advertisement disabled and Fastly does not announce its prefix. Turn advertisement on after LOA and ROA authorization are ready. The create request cannot include advertise; sending it returns a `400 Bad Request` error.
    # @option opts [NetworkProtectNetworkCreate] :network_protect_network_create  (required)
    # @return [NetworkProtectNetworkResponse]
    def create_network_protect_network(opts = {})
      data, _status_code, _headers = create_network_protect_network_with_http_info(opts)
      data
    end

    # Create a Network Protect network
    # Registers customer-owned IP space for protection. The network starts with advertisement disabled and Fastly does not announce its prefix. Turn advertisement on after LOA and ROA authorization are ready. The create request cannot include advertise; sending it returns a &#x60;400 Bad Request&#x60; error.
    # @option opts [NetworkProtectNetworkCreate] :network_protect_network_create  (required)
    # @return [Array<(NetworkProtectNetworkResponse, Integer, Hash)>] NetworkProtectNetworkResponse data, response status code and response headers
    def create_network_protect_network_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProtectApi.create_network_protect_network ...'
      end
      # unbox the parameters from the hash
      network_protect_network_create = opts[:'network_protect_network_create']
      # verify the required parameter 'network_protect_network_create' is set
      if @api_client.config.client_side_validation && network_protect_network_create.nil?
        fail ArgumentError, "Missing the required parameter 'network_protect_network_create' when calling NetworkProtectApi.create_network_protect_network"
      end
      # resource path
      local_var_path = '/network-protect/v1/networks'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(network_protect_network_create)

      # return_type
      return_type = opts[:debug_return_type] || 'NetworkProtectNetworkResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"NetworkProtectApi.create_network_protect_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProtectApi#create_network_protect_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Network Protect prefix list
    # Creates a typed list of addresses that rules can reference. The family is required and cannot be changed. The addresses list may remain empty.
    # @option opts [NetworkProtectPrefixListCreate] :network_protect_prefix_list_create  (required)
    # @return [NetworkProtectPrefixListResponse]
    def create_network_protect_prefix_list(opts = {})
      data, _status_code, _headers = create_network_protect_prefix_list_with_http_info(opts)
      data
    end

    # Create a Network Protect prefix list
    # Creates a typed list of addresses that rules can reference. The family is required and cannot be changed. The addresses list may remain empty.
    # @option opts [NetworkProtectPrefixListCreate] :network_protect_prefix_list_create  (required)
    # @return [Array<(NetworkProtectPrefixListResponse, Integer, Hash)>] NetworkProtectPrefixListResponse data, response status code and response headers
    def create_network_protect_prefix_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProtectApi.create_network_protect_prefix_list ...'
      end
      # unbox the parameters from the hash
      network_protect_prefix_list_create = opts[:'network_protect_prefix_list_create']
      # verify the required parameter 'network_protect_prefix_list_create' is set
      if @api_client.config.client_side_validation && network_protect_prefix_list_create.nil?
        fail ArgumentError, "Missing the required parameter 'network_protect_prefix_list_create' when calling NetworkProtectApi.create_network_protect_prefix_list"
      end
      # resource path
      local_var_path = '/network-protect/v1/prefix-lists'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(network_protect_prefix_list_create)

      # return_type
      return_type = opts[:debug_return_type] || 'NetworkProtectPrefixListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"NetworkProtectApi.create_network_protect_prefix_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProtectApi#create_network_protect_prefix_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Network Protect rule set
    # Creates an ordered rule set and stores its filtering intent. A rule set has at most 64 rules and uses the default action when no rule matches. Custom attachment and detachment are restricted in this release.
    # @option opts [NetworkProtectRuleSetCreate] :network_protect_rule_set_create  (required)
    # @return [NetworkProtectRuleSetResponse]
    def create_network_protect_rule_set(opts = {})
      data, _status_code, _headers = create_network_protect_rule_set_with_http_info(opts)
      data
    end

    # Create a Network Protect rule set
    # Creates an ordered rule set and stores its filtering intent. A rule set has at most 64 rules and uses the default action when no rule matches. Custom attachment and detachment are restricted in this release.
    # @option opts [NetworkProtectRuleSetCreate] :network_protect_rule_set_create  (required)
    # @return [Array<(NetworkProtectRuleSetResponse, Integer, Hash)>] NetworkProtectRuleSetResponse data, response status code and response headers
    def create_network_protect_rule_set_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProtectApi.create_network_protect_rule_set ...'
      end
      # unbox the parameters from the hash
      network_protect_rule_set_create = opts[:'network_protect_rule_set_create']
      # verify the required parameter 'network_protect_rule_set_create' is set
      if @api_client.config.client_side_validation && network_protect_rule_set_create.nil?
        fail ArgumentError, "Missing the required parameter 'network_protect_rule_set_create' when calling NetworkProtectApi.create_network_protect_rule_set"
      end
      # resource path
      local_var_path = '/network-protect/v1/rule-sets'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(network_protect_rule_set_create)

      # return_type
      return_type = opts[:debug_return_type] || 'NetworkProtectRuleSetResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"NetworkProtectApi.create_network_protect_rule_set",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProtectApi#create_network_protect_rule_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Network Protect endpoint
    # Deletes an endpoint. The endpoint must first be removed from every network policy; active references return a `409 Conflict` error.
    # @option opts [String] :endpoint_id Unique identifier of the Network Protect endpoint. (required)
    # @return [nil]
    def delete_network_protect_endpoint(opts = {})
      delete_network_protect_endpoint_with_http_info(opts)
      nil
    end

    # Delete a Network Protect endpoint
    # Deletes an endpoint. The endpoint must first be removed from every network policy; active references return a &#x60;409 Conflict&#x60; error.
    # @option opts [String] :endpoint_id Unique identifier of the Network Protect endpoint. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_network_protect_endpoint_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProtectApi.delete_network_protect_endpoint ...'
      end
      # unbox the parameters from the hash
      endpoint_id = opts[:'endpoint_id']
      # verify the required parameter 'endpoint_id' is set
      if @api_client.config.client_side_validation && endpoint_id.nil?
        fail ArgumentError, "Missing the required parameter 'endpoint_id' when calling NetworkProtectApi.delete_network_protect_endpoint"
      end
      pattern = Regexp.new(/^[A-Za-z0-9]{19,22}$/)
      if @api_client.config.client_side_validation && endpoint_id !~ pattern
        fail ArgumentError, "invalid value for 'endpoint_id' when calling NetworkProtectApi.delete_network_protect_endpoint, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/network-protect/v1/endpoints/{endpoint_id}'.sub('{' + 'endpoint_id' + '}', CGI.escape(endpoint_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"NetworkProtectApi.delete_network_protect_endpoint",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProtectApi#delete_network_protect_endpoint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Network Protect network
    # Deletes a network and stops its advertisement and filtering. Endpoints and rule sets used by the network are not deleted.
    # @option opts [String] :network_id Unique identifier of the Network Protect network. (required)
    # @return [nil]
    def delete_network_protect_network(opts = {})
      delete_network_protect_network_with_http_info(opts)
      nil
    end

    # Delete a Network Protect network
    # Deletes a network and stops its advertisement and filtering. Endpoints and rule sets used by the network are not deleted.
    # @option opts [String] :network_id Unique identifier of the Network Protect network. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_network_protect_network_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProtectApi.delete_network_protect_network ...'
      end
      # unbox the parameters from the hash
      network_id = opts[:'network_id']
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling NetworkProtectApi.delete_network_protect_network"
      end
      pattern = Regexp.new(/^[A-Za-z0-9]{19,22}$/)
      if @api_client.config.client_side_validation && network_id !~ pattern
        fail ArgumentError, "invalid value for 'network_id' when calling NetworkProtectApi.delete_network_protect_network, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/network-protect/v1/networks/{network_id}'.sub('{' + 'network_id' + '}', CGI.escape(network_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"NetworkProtectApi.delete_network_protect_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProtectApi#delete_network_protect_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Network Protect prefix list
    # Deletes a prefix list. Active rule references must be removed first; referenced lists return a `409 Conflict` error. Unknown and foreign IDs are indistinguishable and return a `404 Not Found` error.
    # @option opts [String] :prefix_list_id Unique identifier of the Network Protect prefix list. (required)
    # @return [nil]
    def delete_network_protect_prefix_list(opts = {})
      delete_network_protect_prefix_list_with_http_info(opts)
      nil
    end

    # Delete a Network Protect prefix list
    # Deletes a prefix list. Active rule references must be removed first; referenced lists return a &#x60;409 Conflict&#x60; error. Unknown and foreign IDs are indistinguishable and return a &#x60;404 Not Found&#x60; error.
    # @option opts [String] :prefix_list_id Unique identifier of the Network Protect prefix list. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_network_protect_prefix_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProtectApi.delete_network_protect_prefix_list ...'
      end
      # unbox the parameters from the hash
      prefix_list_id = opts[:'prefix_list_id']
      # verify the required parameter 'prefix_list_id' is set
      if @api_client.config.client_side_validation && prefix_list_id.nil?
        fail ArgumentError, "Missing the required parameter 'prefix_list_id' when calling NetworkProtectApi.delete_network_protect_prefix_list"
      end
      pattern = Regexp.new(/^[A-Za-z0-9]{19,22}$/)
      if @api_client.config.client_side_validation && prefix_list_id !~ pattern
        fail ArgumentError, "invalid value for 'prefix_list_id' when calling NetworkProtectApi.delete_network_protect_prefix_list, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/network-protect/v1/prefix-lists/{prefix_list_id}'.sub('{' + 'prefix_list_id' + '}', CGI.escape(prefix_list_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"NetworkProtectApi.delete_network_protect_prefix_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProtectApi#delete_network_protect_prefix_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Network Protect rule set
    # Deletes a rule set. Attached rule sets cannot be deleted and return a `409 Conflict` error until their references are removed.
    # @option opts [String] :rule_set_id Unique identifier of the Network Protect rule set. (required)
    # @return [nil]
    def delete_network_protect_rule_set(opts = {})
      delete_network_protect_rule_set_with_http_info(opts)
      nil
    end

    # Delete a Network Protect rule set
    # Deletes a rule set. Attached rule sets cannot be deleted and return a &#x60;409 Conflict&#x60; error until their references are removed.
    # @option opts [String] :rule_set_id Unique identifier of the Network Protect rule set. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_network_protect_rule_set_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProtectApi.delete_network_protect_rule_set ...'
      end
      # unbox the parameters from the hash
      rule_set_id = opts[:'rule_set_id']
      # verify the required parameter 'rule_set_id' is set
      if @api_client.config.client_side_validation && rule_set_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_set_id' when calling NetworkProtectApi.delete_network_protect_rule_set"
      end
      pattern = Regexp.new(/^[A-Za-z0-9]{19,22}$/)
      if @api_client.config.client_side_validation && rule_set_id !~ pattern
        fail ArgumentError, "invalid value for 'rule_set_id' when calling NetworkProtectApi.delete_network_protect_rule_set, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/network-protect/v1/rule-sets/{rule_set_id}'.sub('{' + 'rule_set_id' + '}', CGI.escape(rule_set_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"NetworkProtectApi.delete_network_protect_rule_set",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProtectApi#delete_network_protect_rule_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Network Protect endpoint
    # Retrieves a single endpoint by its identifier.
    # @option opts [String] :endpoint_id Unique identifier of the Network Protect endpoint. (required)
    # @return [NetworkProtectEndpointResponse]
    def get_network_protect_endpoint(opts = {})
      data, _status_code, _headers = get_network_protect_endpoint_with_http_info(opts)
      data
    end

    # Get a Network Protect endpoint
    # Retrieves a single endpoint by its identifier.
    # @option opts [String] :endpoint_id Unique identifier of the Network Protect endpoint. (required)
    # @return [Array<(NetworkProtectEndpointResponse, Integer, Hash)>] NetworkProtectEndpointResponse data, response status code and response headers
    def get_network_protect_endpoint_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProtectApi.get_network_protect_endpoint ...'
      end
      # unbox the parameters from the hash
      endpoint_id = opts[:'endpoint_id']
      # verify the required parameter 'endpoint_id' is set
      if @api_client.config.client_side_validation && endpoint_id.nil?
        fail ArgumentError, "Missing the required parameter 'endpoint_id' when calling NetworkProtectApi.get_network_protect_endpoint"
      end
      pattern = Regexp.new(/^[A-Za-z0-9]{19,22}$/)
      if @api_client.config.client_side_validation && endpoint_id !~ pattern
        fail ArgumentError, "invalid value for 'endpoint_id' when calling NetworkProtectApi.get_network_protect_endpoint, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/network-protect/v1/endpoints/{endpoint_id}'.sub('{' + 'endpoint_id' + '}', CGI.escape(endpoint_id.to_s))

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
      return_type = opts[:debug_return_type] || 'NetworkProtectEndpointResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"NetworkProtectApi.get_network_protect_endpoint",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProtectApi#get_network_protect_endpoint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Network Protect network
    # Retrieves a single network by its identifier.
    # @option opts [String] :network_id Unique identifier of the Network Protect network. (required)
    # @return [NetworkProtectNetworkResponse]
    def get_network_protect_network(opts = {})
      data, _status_code, _headers = get_network_protect_network_with_http_info(opts)
      data
    end

    # Get a Network Protect network
    # Retrieves a single network by its identifier.
    # @option opts [String] :network_id Unique identifier of the Network Protect network. (required)
    # @return [Array<(NetworkProtectNetworkResponse, Integer, Hash)>] NetworkProtectNetworkResponse data, response status code and response headers
    def get_network_protect_network_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProtectApi.get_network_protect_network ...'
      end
      # unbox the parameters from the hash
      network_id = opts[:'network_id']
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling NetworkProtectApi.get_network_protect_network"
      end
      pattern = Regexp.new(/^[A-Za-z0-9]{19,22}$/)
      if @api_client.config.client_side_validation && network_id !~ pattern
        fail ArgumentError, "invalid value for 'network_id' when calling NetworkProtectApi.get_network_protect_network, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/network-protect/v1/networks/{network_id}'.sub('{' + 'network_id' + '}', CGI.escape(network_id.to_s))

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
      return_type = opts[:debug_return_type] || 'NetworkProtectNetworkResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"NetworkProtectApi.get_network_protect_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProtectApi#get_network_protect_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Network Protect prefix list
    # Retrieves a single prefix list by its identifier. Unknown and foreign IDs are indistinguishable and return a `404 Not Found` error.
    # @option opts [String] :prefix_list_id Unique identifier of the Network Protect prefix list. (required)
    # @return [NetworkProtectPrefixListResponse]
    def get_network_protect_prefix_list(opts = {})
      data, _status_code, _headers = get_network_protect_prefix_list_with_http_info(opts)
      data
    end

    # Get a Network Protect prefix list
    # Retrieves a single prefix list by its identifier. Unknown and foreign IDs are indistinguishable and return a &#x60;404 Not Found&#x60; error.
    # @option opts [String] :prefix_list_id Unique identifier of the Network Protect prefix list. (required)
    # @return [Array<(NetworkProtectPrefixListResponse, Integer, Hash)>] NetworkProtectPrefixListResponse data, response status code and response headers
    def get_network_protect_prefix_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProtectApi.get_network_protect_prefix_list ...'
      end
      # unbox the parameters from the hash
      prefix_list_id = opts[:'prefix_list_id']
      # verify the required parameter 'prefix_list_id' is set
      if @api_client.config.client_side_validation && prefix_list_id.nil?
        fail ArgumentError, "Missing the required parameter 'prefix_list_id' when calling NetworkProtectApi.get_network_protect_prefix_list"
      end
      pattern = Regexp.new(/^[A-Za-z0-9]{19,22}$/)
      if @api_client.config.client_side_validation && prefix_list_id !~ pattern
        fail ArgumentError, "invalid value for 'prefix_list_id' when calling NetworkProtectApi.get_network_protect_prefix_list, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/network-protect/v1/prefix-lists/{prefix_list_id}'.sub('{' + 'prefix_list_id' + '}', CGI.escape(prefix_list_id.to_s))

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
      return_type = opts[:debug_return_type] || 'NetworkProtectPrefixListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"NetworkProtectApi.get_network_protect_prefix_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProtectApi#get_network_protect_prefix_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Network Protect rule set
    # Retrieves a single rule set with rules in evaluation order.
    # @option opts [String] :rule_set_id Unique identifier of the Network Protect rule set. (required)
    # @return [NetworkProtectRuleSetResponse]
    def get_network_protect_rule_set(opts = {})
      data, _status_code, _headers = get_network_protect_rule_set_with_http_info(opts)
      data
    end

    # Get a Network Protect rule set
    # Retrieves a single rule set with rules in evaluation order.
    # @option opts [String] :rule_set_id Unique identifier of the Network Protect rule set. (required)
    # @return [Array<(NetworkProtectRuleSetResponse, Integer, Hash)>] NetworkProtectRuleSetResponse data, response status code and response headers
    def get_network_protect_rule_set_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProtectApi.get_network_protect_rule_set ...'
      end
      # unbox the parameters from the hash
      rule_set_id = opts[:'rule_set_id']
      # verify the required parameter 'rule_set_id' is set
      if @api_client.config.client_side_validation && rule_set_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_set_id' when calling NetworkProtectApi.get_network_protect_rule_set"
      end
      pattern = Regexp.new(/^[A-Za-z0-9]{19,22}$/)
      if @api_client.config.client_side_validation && rule_set_id !~ pattern
        fail ArgumentError, "invalid value for 'rule_set_id' when calling NetworkProtectApi.get_network_protect_rule_set, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/network-protect/v1/rule-sets/{rule_set_id}'.sub('{' + 'rule_set_id' + '}', CGI.escape(rule_set_id.to_s))

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
      return_type = opts[:debug_return_type] || 'NetworkProtectRuleSetResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"NetworkProtectApi.get_network_protect_rule_set",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProtectApi#get_network_protect_rule_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Network Protect endpoints
    # Lists the customer's GRE delivery endpoints in ascending ID order. The response is cursor-paginated and includes the effective page limit.
    # @option opts [Integer] :limit Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a &#x60;400 Bad Request&#x60; error. (default to 100)
    # @option opts [String] :cursor Continuation value from a previous response&#39;s meta.next_cursor. Omit this parameter to request the first page.
    # @return [NetworkProtectEndpointsResponse]
    def list_network_protect_endpoints(opts = {})
      data, _status_code, _headers = list_network_protect_endpoints_with_http_info(opts)
      data
    end

    # List Network Protect endpoints
    # Lists the customer&#39;s GRE delivery endpoints in ascending ID order. The response is cursor-paginated and includes the effective page limit.
    # @option opts [Integer] :limit Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a &#x60;400 Bad Request&#x60; error. (default to 100)
    # @option opts [String] :cursor Continuation value from a previous response&#39;s meta.next_cursor. Omit this parameter to request the first page.
    # @return [Array<(NetworkProtectEndpointsResponse, Integer, Hash)>] NetworkProtectEndpointsResponse data, response status code and response headers
    def list_network_protect_endpoints_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProtectApi.list_network_protect_endpoints ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling NetworkProtectApi.list_network_protect_endpoints, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/network-protect/v1/endpoints'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'NetworkProtectEndpointsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"NetworkProtectApi.list_network_protect_endpoints",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProtectApi#list_network_protect_endpoints\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Network Protect networks
    # Lists the customer's networks in ascending ID order. The response is cursor-paginated and includes the effective page limit.
    # @option opts [Integer] :limit Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a &#x60;400 Bad Request&#x60; error. (default to 100)
    # @option opts [String] :cursor Continuation value from a previous response&#39;s meta.next_cursor. Omit this parameter to request the first page.
    # @return [NetworkProtectNetworksResponse]
    def list_network_protect_networks(opts = {})
      data, _status_code, _headers = list_network_protect_networks_with_http_info(opts)
      data
    end

    # List Network Protect networks
    # Lists the customer&#39;s networks in ascending ID order. The response is cursor-paginated and includes the effective page limit.
    # @option opts [Integer] :limit Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a &#x60;400 Bad Request&#x60; error. (default to 100)
    # @option opts [String] :cursor Continuation value from a previous response&#39;s meta.next_cursor. Omit this parameter to request the first page.
    # @return [Array<(NetworkProtectNetworksResponse, Integer, Hash)>] NetworkProtectNetworksResponse data, response status code and response headers
    def list_network_protect_networks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProtectApi.list_network_protect_networks ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling NetworkProtectApi.list_network_protect_networks, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/network-protect/v1/networks'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'NetworkProtectNetworksResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"NetworkProtectApi.list_network_protect_networks",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProtectApi#list_network_protect_networks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Network Protect prefix lists
    # Lists prefix lists in ascending ID order. Positive limits above 1000 are accepted and clamped to 1000. Invalid limits return a `400 Bad Request` error.
    # @option opts [Integer] :limit Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a &#x60;400 Bad Request&#x60; error. (default to 100)
    # @option opts [String] :cursor Continuation value from a previous response&#39;s meta.next_cursor. Omit this parameter to request the first page.
    # @return [NetworkProtectPrefixListsResponse]
    def list_network_protect_prefix_lists(opts = {})
      data, _status_code, _headers = list_network_protect_prefix_lists_with_http_info(opts)
      data
    end

    # List Network Protect prefix lists
    # Lists prefix lists in ascending ID order. Positive limits above 1000 are accepted and clamped to 1000. Invalid limits return a &#x60;400 Bad Request&#x60; error.
    # @option opts [Integer] :limit Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a &#x60;400 Bad Request&#x60; error. (default to 100)
    # @option opts [String] :cursor Continuation value from a previous response&#39;s meta.next_cursor. Omit this parameter to request the first page.
    # @return [Array<(NetworkProtectPrefixListsResponse, Integer, Hash)>] NetworkProtectPrefixListsResponse data, response status code and response headers
    def list_network_protect_prefix_lists_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProtectApi.list_network_protect_prefix_lists ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling NetworkProtectApi.list_network_protect_prefix_lists, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/network-protect/v1/prefix-lists'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'NetworkProtectPrefixListsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"NetworkProtectApi.list_network_protect_prefix_lists",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProtectApi#list_network_protect_prefix_lists\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Network Protect rule sets
    # Lists rule sets in ascending ID order. Positive limits above 1000 are accepted and clamped to 1000; invalid limits return a `400 Bad Request` error.
    # @option opts [Integer] :limit Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a &#x60;400 Bad Request&#x60; error. (default to 100)
    # @option opts [String] :cursor Continuation value from a previous response&#39;s meta.next_cursor. Omit this parameter to request the first page.
    # @return [NetworkProtectRuleSetsResponse]
    def list_network_protect_rule_sets(opts = {})
      data, _status_code, _headers = list_network_protect_rule_sets_with_http_info(opts)
      data
    end

    # List Network Protect rule sets
    # Lists rule sets in ascending ID order. Positive limits above 1000 are accepted and clamped to 1000; invalid limits return a &#x60;400 Bad Request&#x60; error.
    # @option opts [Integer] :limit Maximum resources to return. Defaults to 100. Positive values above 1000 are accepted and clamped to 1000; the effective value is reported in meta.limit. Zero, negative, and non-integer values return a &#x60;400 Bad Request&#x60; error. (default to 100)
    # @option opts [String] :cursor Continuation value from a previous response&#39;s meta.next_cursor. Omit this parameter to request the first page.
    # @return [Array<(NetworkProtectRuleSetsResponse, Integer, Hash)>] NetworkProtectRuleSetsResponse data, response status code and response headers
    def list_network_protect_rule_sets_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProtectApi.list_network_protect_rule_sets ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling NetworkProtectApi.list_network_protect_rule_sets, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/network-protect/v1/rule-sets'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'NetworkProtectRuleSetsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"NetworkProtectApi.list_network_protect_rule_sets",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProtectApi#list_network_protect_rule_sets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Network Protect endpoint
    # Updates an endpoint. Omitted fields remain unchanged. The IP address cannot be changed; create a new endpoint if the destination changes.
    # @option opts [String] :endpoint_id Unique identifier of the Network Protect endpoint. (required)
    # @option opts [NetworkProtectEndpointUpdate] :network_protect_endpoint_update  (required)
    # @return [NetworkProtectEndpointResponse]
    def update_network_protect_endpoint(opts = {})
      data, _status_code, _headers = update_network_protect_endpoint_with_http_info(opts)
      data
    end

    # Update a Network Protect endpoint
    # Updates an endpoint. Omitted fields remain unchanged. The IP address cannot be changed; create a new endpoint if the destination changes.
    # @option opts [String] :endpoint_id Unique identifier of the Network Protect endpoint. (required)
    # @option opts [NetworkProtectEndpointUpdate] :network_protect_endpoint_update  (required)
    # @return [Array<(NetworkProtectEndpointResponse, Integer, Hash)>] NetworkProtectEndpointResponse data, response status code and response headers
    def update_network_protect_endpoint_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProtectApi.update_network_protect_endpoint ...'
      end
      # unbox the parameters from the hash
      endpoint_id = opts[:'endpoint_id']
      network_protect_endpoint_update = opts[:'network_protect_endpoint_update']
      # verify the required parameter 'endpoint_id' is set
      if @api_client.config.client_side_validation && endpoint_id.nil?
        fail ArgumentError, "Missing the required parameter 'endpoint_id' when calling NetworkProtectApi.update_network_protect_endpoint"
      end
      pattern = Regexp.new(/^[A-Za-z0-9]{19,22}$/)
      if @api_client.config.client_side_validation && endpoint_id !~ pattern
        fail ArgumentError, "invalid value for 'endpoint_id' when calling NetworkProtectApi.update_network_protect_endpoint, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'network_protect_endpoint_update' is set
      if @api_client.config.client_side_validation && network_protect_endpoint_update.nil?
        fail ArgumentError, "Missing the required parameter 'network_protect_endpoint_update' when calling NetworkProtectApi.update_network_protect_endpoint"
      end
      # resource path
      local_var_path = '/network-protect/v1/endpoints/{endpoint_id}'.sub('{' + 'endpoint_id' + '}', CGI.escape(endpoint_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(network_protect_endpoint_update)

      # return_type
      return_type = opts[:debug_return_type] || 'NetworkProtectEndpointResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"NetworkProtectApi.update_network_protect_endpoint",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProtectApi#update_network_protect_endpoint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Network Protect network
    # Updates a network. Omitted fields remain unchanged. The prefix cannot be changed. Sending `endpoint_policies` replaces the complete policy list; an empty array removes every policy. Advertisement is desired state. Enabling it requires an approved LOA, a valid ROA, and a ready default-region delivery policy. A readiness failure returns a `409 Conflict` error.
    # @option opts [String] :network_id Unique identifier of the Network Protect network. (required)
    # @option opts [NetworkProtectNetworkUpdate] :network_protect_network_update  (required)
    # @return [NetworkProtectNetworkResponse]
    def update_network_protect_network(opts = {})
      data, _status_code, _headers = update_network_protect_network_with_http_info(opts)
      data
    end

    # Update a Network Protect network
    # Updates a network. Omitted fields remain unchanged. The prefix cannot be changed. Sending &#x60;endpoint_policies&#x60; replaces the complete policy list; an empty array removes every policy. Advertisement is desired state. Enabling it requires an approved LOA, a valid ROA, and a ready default-region delivery policy. A readiness failure returns a &#x60;409 Conflict&#x60; error.
    # @option opts [String] :network_id Unique identifier of the Network Protect network. (required)
    # @option opts [NetworkProtectNetworkUpdate] :network_protect_network_update  (required)
    # @return [Array<(NetworkProtectNetworkResponse, Integer, Hash)>] NetworkProtectNetworkResponse data, response status code and response headers
    def update_network_protect_network_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProtectApi.update_network_protect_network ...'
      end
      # unbox the parameters from the hash
      network_id = opts[:'network_id']
      network_protect_network_update = opts[:'network_protect_network_update']
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling NetworkProtectApi.update_network_protect_network"
      end
      pattern = Regexp.new(/^[A-Za-z0-9]{19,22}$/)
      if @api_client.config.client_side_validation && network_id !~ pattern
        fail ArgumentError, "invalid value for 'network_id' when calling NetworkProtectApi.update_network_protect_network, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'network_protect_network_update' is set
      if @api_client.config.client_side_validation && network_protect_network_update.nil?
        fail ArgumentError, "Missing the required parameter 'network_protect_network_update' when calling NetworkProtectApi.update_network_protect_network"
      end
      # resource path
      local_var_path = '/network-protect/v1/networks/{network_id}'.sub('{' + 'network_id' + '}', CGI.escape(network_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(network_protect_network_update)

      # return_type
      return_type = opts[:debug_return_type] || 'NetworkProtectNetworkResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"NetworkProtectApi.update_network_protect_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProtectApi#update_network_protect_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Network Protect prefix list
    # Updates a prefix list. The family cannot be changed. Sending addresses replaces the complete list; an empty array clears it when no active source-list restriction applies. Addresses are canonicalized, deduplicated, and sorted by the backend.
    # @option opts [String] :prefix_list_id Unique identifier of the Network Protect prefix list. (required)
    # @option opts [NetworkProtectPrefixListUpdate] :network_protect_prefix_list_update  (required)
    # @return [NetworkProtectPrefixListResponse]
    def update_network_protect_prefix_list(opts = {})
      data, _status_code, _headers = update_network_protect_prefix_list_with_http_info(opts)
      data
    end

    # Update a Network Protect prefix list
    # Updates a prefix list. The family cannot be changed. Sending addresses replaces the complete list; an empty array clears it when no active source-list restriction applies. Addresses are canonicalized, deduplicated, and sorted by the backend.
    # @option opts [String] :prefix_list_id Unique identifier of the Network Protect prefix list. (required)
    # @option opts [NetworkProtectPrefixListUpdate] :network_protect_prefix_list_update  (required)
    # @return [Array<(NetworkProtectPrefixListResponse, Integer, Hash)>] NetworkProtectPrefixListResponse data, response status code and response headers
    def update_network_protect_prefix_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProtectApi.update_network_protect_prefix_list ...'
      end
      # unbox the parameters from the hash
      prefix_list_id = opts[:'prefix_list_id']
      network_protect_prefix_list_update = opts[:'network_protect_prefix_list_update']
      # verify the required parameter 'prefix_list_id' is set
      if @api_client.config.client_side_validation && prefix_list_id.nil?
        fail ArgumentError, "Missing the required parameter 'prefix_list_id' when calling NetworkProtectApi.update_network_protect_prefix_list"
      end
      pattern = Regexp.new(/^[A-Za-z0-9]{19,22}$/)
      if @api_client.config.client_side_validation && prefix_list_id !~ pattern
        fail ArgumentError, "invalid value for 'prefix_list_id' when calling NetworkProtectApi.update_network_protect_prefix_list, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'network_protect_prefix_list_update' is set
      if @api_client.config.client_side_validation && network_protect_prefix_list_update.nil?
        fail ArgumentError, "Missing the required parameter 'network_protect_prefix_list_update' when calling NetworkProtectApi.update_network_protect_prefix_list"
      end
      # resource path
      local_var_path = '/network-protect/v1/prefix-lists/{prefix_list_id}'.sub('{' + 'prefix_list_id' + '}', CGI.escape(prefix_list_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(network_protect_prefix_list_update)

      # return_type
      return_type = opts[:debug_return_type] || 'NetworkProtectPrefixListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"NetworkProtectApi.update_network_protect_prefix_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProtectApi#update_network_protect_prefix_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Network Protect rule set
    # Updates a rule set. Omitted fields remain unchanged. Sending rules replaces the complete ordered list; an empty array removes every rule. Custom attachment and detachment remain restricted in this release.
    # @option opts [String] :rule_set_id Unique identifier of the Network Protect rule set. (required)
    # @option opts [NetworkProtectRuleSetUpdate] :network_protect_rule_set_update  (required)
    # @return [NetworkProtectRuleSetResponse]
    def update_network_protect_rule_set(opts = {})
      data, _status_code, _headers = update_network_protect_rule_set_with_http_info(opts)
      data
    end

    # Update a Network Protect rule set
    # Updates a rule set. Omitted fields remain unchanged. Sending rules replaces the complete ordered list; an empty array removes every rule. Custom attachment and detachment remain restricted in this release.
    # @option opts [String] :rule_set_id Unique identifier of the Network Protect rule set. (required)
    # @option opts [NetworkProtectRuleSetUpdate] :network_protect_rule_set_update  (required)
    # @return [Array<(NetworkProtectRuleSetResponse, Integer, Hash)>] NetworkProtectRuleSetResponse data, response status code and response headers
    def update_network_protect_rule_set_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProtectApi.update_network_protect_rule_set ...'
      end
      # unbox the parameters from the hash
      rule_set_id = opts[:'rule_set_id']
      network_protect_rule_set_update = opts[:'network_protect_rule_set_update']
      # verify the required parameter 'rule_set_id' is set
      if @api_client.config.client_side_validation && rule_set_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_set_id' when calling NetworkProtectApi.update_network_protect_rule_set"
      end
      pattern = Regexp.new(/^[A-Za-z0-9]{19,22}$/)
      if @api_client.config.client_side_validation && rule_set_id !~ pattern
        fail ArgumentError, "invalid value for 'rule_set_id' when calling NetworkProtectApi.update_network_protect_rule_set, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'network_protect_rule_set_update' is set
      if @api_client.config.client_side_validation && network_protect_rule_set_update.nil?
        fail ArgumentError, "Missing the required parameter 'network_protect_rule_set_update' when calling NetworkProtectApi.update_network_protect_rule_set"
      end
      # resource path
      local_var_path = '/network-protect/v1/rule-sets/{rule_set_id}'.sub('{' + 'rule_set_id' + '}', CGI.escape(rule_set_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(network_protect_rule_set_update)

      # return_type
      return_type = opts[:debug_return_type] || 'NetworkProtectRuleSetResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"NetworkProtectApi.update_network_protect_rule_set",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProtectApi#update_network_protect_rule_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
