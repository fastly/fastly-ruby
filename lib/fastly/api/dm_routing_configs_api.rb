=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class DmRoutingConfigsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Activate the draft
    # Activate the current draft version. The previously active version, if any, becomes inactive but is retained in version history.
    # @option opts [String] :config_id  (required)
    # @return [RoutingConfigVersionResponse]
    def activate_dm_routing_config_draft(opts = {})
      data, _status_code, _headers = activate_dm_routing_config_draft_with_http_info(opts)
      data
    end

    # Activate the draft
    # Activate the current draft version. The previously active version, if any, becomes inactive but is retained in version history.
    # @option opts [String] :config_id  (required)
    # @return [Array<(RoutingConfigVersionResponse, Integer, Hash)>] RoutingConfigVersionResponse data, response status code and response headers
    def activate_dm_routing_config_draft_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DmRoutingConfigsApi.activate_dm_routing_config_draft ...'
      end
      # unbox the parameters from the hash
      config_id = opts[:'config_id']
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling DmRoutingConfigsApi.activate_dm_routing_config_draft"
      end
      # resource path
      local_var_path = '/domain-management/v1/routing-configs/{config_id}/activate'.sub('{' + 'config_id' + '}', CGI.escape(config_id.to_s))

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
      return_type = opts[:debug_return_type] || 'RoutingConfigVersionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DmRoutingConfigsApi.activate_dm_routing_config_draft",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DmRoutingConfigsApi#activate_dm_routing_config_draft\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a routing config
    # Create a new routing config. An optional `initial_version` may be provided to seed the config with paths and rules in a single request, and may also be activated immediately.
    # @option opts [RoutingConfig] :routing_config 
    # @return [RoutingConfigResponse]
    def create_dm_routing_config(opts = {})
      data, _status_code, _headers = create_dm_routing_config_with_http_info(opts)
      data
    end

    # Create a routing config
    # Create a new routing config. An optional &#x60;initial_version&#x60; may be provided to seed the config with paths and rules in a single request, and may also be activated immediately.
    # @option opts [RoutingConfig] :routing_config 
    # @return [Array<(RoutingConfigResponse, Integer, Hash)>] RoutingConfigResponse data, response status code and response headers
    def create_dm_routing_config_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DmRoutingConfigsApi.create_dm_routing_config ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/domain-management/v1/routing-configs'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'routing_config'])

      # return_type
      return_type = opts[:debug_return_type] || 'RoutingConfigResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DmRoutingConfigsApi.create_dm_routing_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DmRoutingConfigsApi#create_dm_routing_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a path
    # Add a new path to the config's draft version. If no draft exists, one is created automatically by cloning the active version.
    # @option opts [String] :config_id  (required)
    # @option opts [PathCreate] :path_create 
    # @return [PathResponse]
    def create_dm_routing_config_path(opts = {})
      data, _status_code, _headers = create_dm_routing_config_path_with_http_info(opts)
      data
    end

    # Create a path
    # Add a new path to the config&#39;s draft version. If no draft exists, one is created automatically by cloning the active version.
    # @option opts [String] :config_id  (required)
    # @option opts [PathCreate] :path_create 
    # @return [Array<(PathResponse, Integer, Hash)>] PathResponse data, response status code and response headers
    def create_dm_routing_config_path_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DmRoutingConfigsApi.create_dm_routing_config_path ...'
      end
      # unbox the parameters from the hash
      config_id = opts[:'config_id']
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling DmRoutingConfigsApi.create_dm_routing_config_path"
      end
      # resource path
      local_var_path = '/domain-management/v1/routing-configs/{config_id}/paths'.sub('{' + 'config_id' + '}', CGI.escape(config_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'path_create'])

      # return_type
      return_type = opts[:debug_return_type] || 'PathResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DmRoutingConfigsApi.create_dm_routing_config_path",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DmRoutingConfigsApi#create_dm_routing_config_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a rule
    # Add a new rule to a path on the config's draft version. If no draft exists, one is created automatically by cloning the active version. A rule with an empty `conditions` array is a default (catch-all) rule and there can be at most one default rule per path.
    # @option opts [String] :config_id  (required)
    # @option opts [String] :path_id  (required)
    # @option opts [RuleCreate] :rule_create 
    # @return [RuleResponse]
    def create_dm_routing_config_rule(opts = {})
      data, _status_code, _headers = create_dm_routing_config_rule_with_http_info(opts)
      data
    end

    # Create a rule
    # Add a new rule to a path on the config&#39;s draft version. If no draft exists, one is created automatically by cloning the active version. A rule with an empty &#x60;conditions&#x60; array is a default (catch-all) rule and there can be at most one default rule per path.
    # @option opts [String] :config_id  (required)
    # @option opts [String] :path_id  (required)
    # @option opts [RuleCreate] :rule_create 
    # @return [Array<(RuleResponse, Integer, Hash)>] RuleResponse data, response status code and response headers
    def create_dm_routing_config_rule_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DmRoutingConfigsApi.create_dm_routing_config_rule ...'
      end
      # unbox the parameters from the hash
      config_id = opts[:'config_id']
      path_id = opts[:'path_id']
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling DmRoutingConfigsApi.create_dm_routing_config_rule"
      end
      # verify the required parameter 'path_id' is set
      if @api_client.config.client_side_validation && path_id.nil?
        fail ArgumentError, "Missing the required parameter 'path_id' when calling DmRoutingConfigsApi.create_dm_routing_config_rule"
      end
      # resource path
      local_var_path = '/domain-management/v1/routing-configs/{config_id}/paths/{path_id}/rules'.sub('{' + 'config_id' + '}', CGI.escape(config_id.to_s)).sub('{' + 'path_id' + '}', CGI.escape(path_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'rule_create'])

      # return_type
      return_type = opts[:debug_return_type] || 'RuleResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DmRoutingConfigsApi.create_dm_routing_config_rule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DmRoutingConfigsApi#create_dm_routing_config_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deactivate a routing config
    # Clear the active version designation. This is a bookkeeping operation only — it does not stop edge traffic. Minerva continues serving the last-activated version until the domain association is removed in Spotless. Only removing the routing config from the domain (via Spotless) triggers Neptune to drop the reference, which causes Minerva to stop fetching and eventually clean up the cached config. Idempotent: returns 200 even if already deactivated.
    # @option opts [String] :config_id  (required)
    # @return [RoutingConfigResponse]
    def deactivate_dm_routing_config(opts = {})
      data, _status_code, _headers = deactivate_dm_routing_config_with_http_info(opts)
      data
    end

    # Deactivate a routing config
    # Clear the active version designation. This is a bookkeeping operation only — it does not stop edge traffic. Minerva continues serving the last-activated version until the domain association is removed in Spotless. Only removing the routing config from the domain (via Spotless) triggers Neptune to drop the reference, which causes Minerva to stop fetching and eventually clean up the cached config. Idempotent: returns 200 even if already deactivated.
    # @option opts [String] :config_id  (required)
    # @return [Array<(RoutingConfigResponse, Integer, Hash)>] RoutingConfigResponse data, response status code and response headers
    def deactivate_dm_routing_config_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DmRoutingConfigsApi.deactivate_dm_routing_config ...'
      end
      # unbox the parameters from the hash
      config_id = opts[:'config_id']
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling DmRoutingConfigsApi.deactivate_dm_routing_config"
      end
      # resource path
      local_var_path = '/domain-management/v1/routing-configs/{config_id}/deactivate'.sub('{' + 'config_id' + '}', CGI.escape(config_id.to_s))

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
      return_type = opts[:debug_return_type] || 'RoutingConfigResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DmRoutingConfigsApi.deactivate_dm_routing_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DmRoutingConfigsApi#deactivate_dm_routing_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a routing config
    # Delete a routing config. By default, configs that have an active version cannot be deleted. Pass `force=true` to bypass the active-version check — this is destructive and will immediately stop traffic routing for any paths the config serves. The `force` parameter does **not** bypass the domain-association check; if domains are still associated, deletion is rejected with 409 regardless of `force`.
    # @option opts [String] :config_id  (required)
    # @option opts [Boolean] :force When &#x60;true&#x60;, allows deleting a routing config that has an active version. This is destructive — traffic routing for any paths served by the config will stop immediately. (default to false)
    # @return [nil]
    def delete_dm_routing_config(opts = {})
      delete_dm_routing_config_with_http_info(opts)
      nil
    end

    # Delete a routing config
    # Delete a routing config. By default, configs that have an active version cannot be deleted. Pass &#x60;force&#x3D;true&#x60; to bypass the active-version check — this is destructive and will immediately stop traffic routing for any paths the config serves. The &#x60;force&#x60; parameter does **not** bypass the domain-association check; if domains are still associated, deletion is rejected with 409 regardless of &#x60;force&#x60;.
    # @option opts [String] :config_id  (required)
    # @option opts [Boolean] :force When &#x60;true&#x60;, allows deleting a routing config that has an active version. This is destructive — traffic routing for any paths served by the config will stop immediately. (default to false)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_dm_routing_config_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DmRoutingConfigsApi.delete_dm_routing_config ...'
      end
      # unbox the parameters from the hash
      config_id = opts[:'config_id']
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling DmRoutingConfigsApi.delete_dm_routing_config"
      end
      # resource path
      local_var_path = '/domain-management/v1/routing-configs/{config_id}'.sub('{' + 'config_id' + '}', CGI.escape(config_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'force'] = opts[:'force'] if !opts[:'force'].nil?

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
        :operation => :"DmRoutingConfigsApi.delete_dm_routing_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DmRoutingConfigsApi#delete_dm_routing_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete inactive versions
    # Delete all inactive versions for a routing config. The currently active version, if any, is retained.
    # @option opts [String] :config_id  (required)
    # @return [nil]
    def delete_dm_routing_config_inactive_versions(opts = {})
      delete_dm_routing_config_inactive_versions_with_http_info(opts)
      nil
    end

    # Delete inactive versions
    # Delete all inactive versions for a routing config. The currently active version, if any, is retained.
    # @option opts [String] :config_id  (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_dm_routing_config_inactive_versions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DmRoutingConfigsApi.delete_dm_routing_config_inactive_versions ...'
      end
      # unbox the parameters from the hash
      config_id = opts[:'config_id']
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling DmRoutingConfigsApi.delete_dm_routing_config_inactive_versions"
      end
      # resource path
      local_var_path = '/domain-management/v1/routing-configs/{config_id}/versions/inactive'.sub('{' + 'config_id' + '}', CGI.escape(config_id.to_s))

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
        :operation => :"DmRoutingConfigsApi.delete_dm_routing_config_inactive_versions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DmRoutingConfigsApi#delete_dm_routing_config_inactive_versions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a path
    # Delete a path from the config's draft version. If no draft exists, one is created automatically by cloning the active version.
    # @option opts [String] :config_id  (required)
    # @option opts [String] :path_id  (required)
    # @return [nil]
    def delete_dm_routing_config_path(opts = {})
      delete_dm_routing_config_path_with_http_info(opts)
      nil
    end

    # Delete a path
    # Delete a path from the config&#39;s draft version. If no draft exists, one is created automatically by cloning the active version.
    # @option opts [String] :config_id  (required)
    # @option opts [String] :path_id  (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_dm_routing_config_path_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DmRoutingConfigsApi.delete_dm_routing_config_path ...'
      end
      # unbox the parameters from the hash
      config_id = opts[:'config_id']
      path_id = opts[:'path_id']
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling DmRoutingConfigsApi.delete_dm_routing_config_path"
      end
      # verify the required parameter 'path_id' is set
      if @api_client.config.client_side_validation && path_id.nil?
        fail ArgumentError, "Missing the required parameter 'path_id' when calling DmRoutingConfigsApi.delete_dm_routing_config_path"
      end
      # resource path
      local_var_path = '/domain-management/v1/routing-configs/{config_id}/paths/{path_id}'.sub('{' + 'config_id' + '}', CGI.escape(config_id.to_s)).sub('{' + 'path_id' + '}', CGI.escape(path_id.to_s))

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
        :operation => :"DmRoutingConfigsApi.delete_dm_routing_config_path",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DmRoutingConfigsApi#delete_dm_routing_config_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a rule
    # Delete a rule from the config's draft version. If no draft exists, one is created automatically by cloning the active version.
    # @option opts [String] :config_id  (required)
    # @option opts [String] :path_id  (required)
    # @option opts [String] :rule_id  (required)
    # @return [nil]
    def delete_dm_routing_config_rule(opts = {})
      delete_dm_routing_config_rule_with_http_info(opts)
      nil
    end

    # Delete a rule
    # Delete a rule from the config&#39;s draft version. If no draft exists, one is created automatically by cloning the active version.
    # @option opts [String] :config_id  (required)
    # @option opts [String] :path_id  (required)
    # @option opts [String] :rule_id  (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_dm_routing_config_rule_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DmRoutingConfigsApi.delete_dm_routing_config_rule ...'
      end
      # unbox the parameters from the hash
      config_id = opts[:'config_id']
      path_id = opts[:'path_id']
      rule_id = opts[:'rule_id']
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling DmRoutingConfigsApi.delete_dm_routing_config_rule"
      end
      # verify the required parameter 'path_id' is set
      if @api_client.config.client_side_validation && path_id.nil?
        fail ArgumentError, "Missing the required parameter 'path_id' when calling DmRoutingConfigsApi.delete_dm_routing_config_rule"
      end
      # verify the required parameter 'rule_id' is set
      if @api_client.config.client_side_validation && rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_id' when calling DmRoutingConfigsApi.delete_dm_routing_config_rule"
      end
      # resource path
      local_var_path = '/domain-management/v1/routing-configs/{config_id}/paths/{path_id}/rules/{rule_id}'.sub('{' + 'config_id' + '}', CGI.escape(config_id.to_s)).sub('{' + 'path_id' + '}', CGI.escape(path_id.to_s)).sub('{' + 'rule_id' + '}', CGI.escape(rule_id.to_s))

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
        :operation => :"DmRoutingConfigsApi.delete_dm_routing_config_rule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DmRoutingConfigsApi#delete_dm_routing_config_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Discard the draft
    # Delete the current draft version, reverting any unactivated changes.
    # @option opts [String] :config_id  (required)
    # @return [nil]
    def discard_dm_routing_config_draft(opts = {})
      discard_dm_routing_config_draft_with_http_info(opts)
      nil
    end

    # Discard the draft
    # Delete the current draft version, reverting any unactivated changes.
    # @option opts [String] :config_id  (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def discard_dm_routing_config_draft_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DmRoutingConfigsApi.discard_dm_routing_config_draft ...'
      end
      # unbox the parameters from the hash
      config_id = opts[:'config_id']
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling DmRoutingConfigsApi.discard_dm_routing_config_draft"
      end
      # resource path
      local_var_path = '/domain-management/v1/routing-configs/{config_id}/draft'.sub('{' + 'config_id' + '}', CGI.escape(config_id.to_s))

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
        :operation => :"DmRoutingConfigsApi.discard_dm_routing_config_draft",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DmRoutingConfigsApi#discard_dm_routing_config_draft\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a routing config
    # Retrieve a single routing config by its identifier.
    # @option opts [String] :config_id  (required)
    # @return [RoutingConfigResponse]
    def get_dm_routing_config(opts = {})
      data, _status_code, _headers = get_dm_routing_config_with_http_info(opts)
      data
    end

    # Get a routing config
    # Retrieve a single routing config by its identifier.
    # @option opts [String] :config_id  (required)
    # @return [Array<(RoutingConfigResponse, Integer, Hash)>] RoutingConfigResponse data, response status code and response headers
    def get_dm_routing_config_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DmRoutingConfigsApi.get_dm_routing_config ...'
      end
      # unbox the parameters from the hash
      config_id = opts[:'config_id']
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling DmRoutingConfigsApi.get_dm_routing_config"
      end
      # resource path
      local_var_path = '/domain-management/v1/routing-configs/{config_id}'.sub('{' + 'config_id' + '}', CGI.escape(config_id.to_s))

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
      return_type = opts[:debug_return_type] || 'RoutingConfigResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DmRoutingConfigsApi.get_dm_routing_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DmRoutingConfigsApi#get_dm_routing_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the draft diff
    # Compare the current draft version against the active version and return the paths and rules that have been added, modified, or deleted.
    # @option opts [String] :config_id  (required)
    # @return [DraftDiff]
    def get_dm_routing_config_draft_diff(opts = {})
      data, _status_code, _headers = get_dm_routing_config_draft_diff_with_http_info(opts)
      data
    end

    # Get the draft diff
    # Compare the current draft version against the active version and return the paths and rules that have been added, modified, or deleted.
    # @option opts [String] :config_id  (required)
    # @return [Array<(DraftDiff, Integer, Hash)>] DraftDiff data, response status code and response headers
    def get_dm_routing_config_draft_diff_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DmRoutingConfigsApi.get_dm_routing_config_draft_diff ...'
      end
      # unbox the parameters from the hash
      config_id = opts[:'config_id']
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling DmRoutingConfigsApi.get_dm_routing_config_draft_diff"
      end
      # resource path
      local_var_path = '/domain-management/v1/routing-configs/{config_id}/draft/diff'.sub('{' + 'config_id' + '}', CGI.escape(config_id.to_s))

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
      return_type = opts[:debug_return_type] || 'DraftDiff'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DmRoutingConfigsApi.get_dm_routing_config_draft_diff",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DmRoutingConfigsApi#get_dm_routing_config_draft_diff\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a path
    # Retrieve a single path by its stable identifier.
    # @option opts [String] :config_id  (required)
    # @option opts [String] :path_id  (required)
    # @return [PathResponse]
    def get_dm_routing_config_path(opts = {})
      data, _status_code, _headers = get_dm_routing_config_path_with_http_info(opts)
      data
    end

    # Get a path
    # Retrieve a single path by its stable identifier.
    # @option opts [String] :config_id  (required)
    # @option opts [String] :path_id  (required)
    # @return [Array<(PathResponse, Integer, Hash)>] PathResponse data, response status code and response headers
    def get_dm_routing_config_path_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DmRoutingConfigsApi.get_dm_routing_config_path ...'
      end
      # unbox the parameters from the hash
      config_id = opts[:'config_id']
      path_id = opts[:'path_id']
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling DmRoutingConfigsApi.get_dm_routing_config_path"
      end
      # verify the required parameter 'path_id' is set
      if @api_client.config.client_side_validation && path_id.nil?
        fail ArgumentError, "Missing the required parameter 'path_id' when calling DmRoutingConfigsApi.get_dm_routing_config_path"
      end
      # resource path
      local_var_path = '/domain-management/v1/routing-configs/{config_id}/paths/{path_id}'.sub('{' + 'config_id' + '}', CGI.escape(config_id.to_s)).sub('{' + 'path_id' + '}', CGI.escape(path_id.to_s))

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
      return_type = opts[:debug_return_type] || 'PathResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DmRoutingConfigsApi.get_dm_routing_config_path",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DmRoutingConfigsApi#get_dm_routing_config_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a rule
    # Retrieve a single rule by its stable identifier.
    # @option opts [String] :config_id  (required)
    # @option opts [String] :path_id  (required)
    # @option opts [String] :rule_id  (required)
    # @return [RuleResponse]
    def get_dm_routing_config_rule(opts = {})
      data, _status_code, _headers = get_dm_routing_config_rule_with_http_info(opts)
      data
    end

    # Get a rule
    # Retrieve a single rule by its stable identifier.
    # @option opts [String] :config_id  (required)
    # @option opts [String] :path_id  (required)
    # @option opts [String] :rule_id  (required)
    # @return [Array<(RuleResponse, Integer, Hash)>] RuleResponse data, response status code and response headers
    def get_dm_routing_config_rule_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DmRoutingConfigsApi.get_dm_routing_config_rule ...'
      end
      # unbox the parameters from the hash
      config_id = opts[:'config_id']
      path_id = opts[:'path_id']
      rule_id = opts[:'rule_id']
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling DmRoutingConfigsApi.get_dm_routing_config_rule"
      end
      # verify the required parameter 'path_id' is set
      if @api_client.config.client_side_validation && path_id.nil?
        fail ArgumentError, "Missing the required parameter 'path_id' when calling DmRoutingConfigsApi.get_dm_routing_config_rule"
      end
      # verify the required parameter 'rule_id' is set
      if @api_client.config.client_side_validation && rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_id' when calling DmRoutingConfigsApi.get_dm_routing_config_rule"
      end
      # resource path
      local_var_path = '/domain-management/v1/routing-configs/{config_id}/paths/{path_id}/rules/{rule_id}'.sub('{' + 'config_id' + '}', CGI.escape(config_id.to_s)).sub('{' + 'path_id' + '}', CGI.escape(path_id.to_s)).sub('{' + 'rule_id' + '}', CGI.escape(rule_id.to_s))

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
      return_type = opts[:debug_return_type] || 'RuleResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DmRoutingConfigsApi.get_dm_routing_config_rule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DmRoutingConfigsApi#get_dm_routing_config_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List paths
    # List paths for the config. Returns paths from the active version if one exists, otherwise from the draft.
    # @option opts [String] :config_id  (required)
    # @option opts [String] :path Filter results by path pattern. The match strategy is controlled by the &#x60;match&#x60; parameter.
    # @option opts [String] :match How to match the value of the &#x60;path&#x60; filter against existing path patterns. Has no effect unless &#x60;path&#x60; is also provided. (default to 'exact')
    # @option opts [String] :sort The order in which to list the results. (default to '-created_at')
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @option opts [Integer] :limit Limit how many results are returned. (default to 20)
    # @return [PathsResponse]
    def list_dm_routing_config_paths(opts = {})
      data, _status_code, _headers = list_dm_routing_config_paths_with_http_info(opts)
      data
    end

    # List paths
    # List paths for the config. Returns paths from the active version if one exists, otherwise from the draft.
    # @option opts [String] :config_id  (required)
    # @option opts [String] :path Filter results by path pattern. The match strategy is controlled by the &#x60;match&#x60; parameter.
    # @option opts [String] :match How to match the value of the &#x60;path&#x60; filter against existing path patterns. Has no effect unless &#x60;path&#x60; is also provided. (default to 'exact')
    # @option opts [String] :sort The order in which to list the results. (default to '-created_at')
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @option opts [Integer] :limit Limit how many results are returned. (default to 20)
    # @return [Array<(PathsResponse, Integer, Hash)>] PathsResponse data, response status code and response headers
    def list_dm_routing_config_paths_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DmRoutingConfigsApi.list_dm_routing_config_paths ...'
      end
      # unbox the parameters from the hash
      config_id = opts[:'config_id']
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling DmRoutingConfigsApi.list_dm_routing_config_paths"
      end
      allowable_values = ["exact", "starts_with", "ends_with", "contains"]
      if @api_client.config.client_side_validation && opts[:'match'] && !allowable_values.include?(opts[:'match'])
        fail ArgumentError, "invalid value for \"match\", must be one of #{allowable_values}"
      end
      allowable_values = ["created_at", "-created_at", "id", "-id", "path", "-path"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling DmRoutingConfigsApi.list_dm_routing_config_paths, must be smaller than or equal to 100.'
      end

      # resource path
      local_var_path = '/domain-management/v1/routing-configs/{config_id}/paths'.sub('{' + 'config_id' + '}', CGI.escape(config_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'path'] = opts[:'path'] if !opts[:'path'].nil?
      query_params[:'match'] = opts[:'match'] if !opts[:'match'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PathsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DmRoutingConfigsApi.list_dm_routing_config_paths",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DmRoutingConfigsApi#list_dm_routing_config_paths\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List rules
    # List all rules for a path in evaluation order.
    # @option opts [String] :config_id  (required)
    # @option opts [String] :path_id  (required)
    # @option opts [String] :sort The order in which to list the results. (default to 'position')
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @option opts [Integer] :limit Limit how many results are returned. (default to 20)
    # @return [RulesResponse]
    def list_dm_routing_config_rules(opts = {})
      data, _status_code, _headers = list_dm_routing_config_rules_with_http_info(opts)
      data
    end

    # List rules
    # List all rules for a path in evaluation order.
    # @option opts [String] :config_id  (required)
    # @option opts [String] :path_id  (required)
    # @option opts [String] :sort The order in which to list the results. (default to 'position')
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @option opts [Integer] :limit Limit how many results are returned. (default to 20)
    # @return [Array<(RulesResponse, Integer, Hash)>] RulesResponse data, response status code and response headers
    def list_dm_routing_config_rules_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DmRoutingConfigsApi.list_dm_routing_config_rules ...'
      end
      # unbox the parameters from the hash
      config_id = opts[:'config_id']
      path_id = opts[:'path_id']
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling DmRoutingConfigsApi.list_dm_routing_config_rules"
      end
      # verify the required parameter 'path_id' is set
      if @api_client.config.client_side_validation && path_id.nil?
        fail ArgumentError, "Missing the required parameter 'path_id' when calling DmRoutingConfigsApi.list_dm_routing_config_rules"
      end
      allowable_values = ["created_at", "-created_at", "position", "-position"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling DmRoutingConfigsApi.list_dm_routing_config_rules, must be smaller than or equal to 100.'
      end

      # resource path
      local_var_path = '/domain-management/v1/routing-configs/{config_id}/paths/{path_id}/rules'.sub('{' + 'config_id' + '}', CGI.escape(config_id.to_s)).sub('{' + 'path_id' + '}', CGI.escape(path_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'RulesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DmRoutingConfigsApi.list_dm_routing_config_rules",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DmRoutingConfigsApi#list_dm_routing_config_rules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List versions
    # List all versions for a routing config.
    # @option opts [String] :config_id  (required)
    # @option opts [String] :sort The order in which to list the results. (default to '-activated_at')
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @option opts [Integer] :limit Limit how many results are returned. (default to 20)
    # @return [VersionsResponse]
    def list_dm_routing_config_versions(opts = {})
      data, _status_code, _headers = list_dm_routing_config_versions_with_http_info(opts)
      data
    end

    # List versions
    # List all versions for a routing config.
    # @option opts [String] :config_id  (required)
    # @option opts [String] :sort The order in which to list the results. (default to '-activated_at')
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @option opts [Integer] :limit Limit how many results are returned. (default to 20)
    # @return [Array<(VersionsResponse, Integer, Hash)>] VersionsResponse data, response status code and response headers
    def list_dm_routing_config_versions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DmRoutingConfigsApi.list_dm_routing_config_versions ...'
      end
      # unbox the parameters from the hash
      config_id = opts[:'config_id']
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling DmRoutingConfigsApi.list_dm_routing_config_versions"
      end
      allowable_values = ["activated_at", "-activated_at", "created_at", "-created_at"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling DmRoutingConfigsApi.list_dm_routing_config_versions, must be smaller than or equal to 100.'
      end

      # resource path
      local_var_path = '/domain-management/v1/routing-configs/{config_id}/versions'.sub('{' + 'config_id' + '}', CGI.escape(config_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'VersionsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DmRoutingConfigsApi.list_dm_routing_config_versions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DmRoutingConfigsApi#list_dm_routing_config_versions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List routing configs
    # List all routing configs for the authenticated customer.
    # @option opts [Array<String>] :state Filter configs by lifecycle state. Accepts a comma-separated list of state values (e.g. &#x60;?state&#x3D;active,active-with-draft&#x60;). Returns only configs whose current state matches one of the provided values. Returns 400 if any value is not a recognised state.
    # @option opts [String] :sort The order in which to list the results. (default to '-created_at')
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @option opts [Integer] :limit Limit how many results are returned. (default to 20)
    # @return [RoutingConfigsResponse]
    def list_dm_routing_configs(opts = {})
      data, _status_code, _headers = list_dm_routing_configs_with_http_info(opts)
      data
    end

    # List routing configs
    # List all routing configs for the authenticated customer.
    # @option opts [Array<String>] :state Filter configs by lifecycle state. Accepts a comma-separated list of state values (e.g. &#x60;?state&#x3D;active,active-with-draft&#x60;). Returns only configs whose current state matches one of the provided values. Returns 400 if any value is not a recognised state.
    # @option opts [String] :sort The order in which to list the results. (default to '-created_at')
    # @option opts [String] :cursor Cursor value from the &#x60;next_cursor&#x60; field of a previous response, used to retrieve the next page. To request the first page, this should be empty.
    # @option opts [Integer] :limit Limit how many results are returned. (default to 20)
    # @return [Array<(RoutingConfigsResponse, Integer, Hash)>] RoutingConfigsResponse data, response status code and response headers
    def list_dm_routing_configs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DmRoutingConfigsApi.list_dm_routing_configs ...'
      end
      # unbox the parameters from the hash
      allowable_values = ["draft-only", "active", "active-with-draft"]
      if @api_client.config.client_side_validation && opts[:'state'] && !opts[:'state'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"state\", must include one of #{allowable_values}"
      end
      allowable_values = ["created_at", "-created_at", "id", "-id", "name", "-name"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling DmRoutingConfigsApi.list_dm_routing_configs, must be smaller than or equal to 100.'
      end

      # resource path
      local_var_path = '/domain-management/v1/routing-configs'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'state'] = @api_client.build_collection_param(opts[:'state'], :csv) if !opts[:'state'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'RoutingConfigsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DmRoutingConfigsApi.list_dm_routing_configs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DmRoutingConfigsApi#list_dm_routing_configs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reactivate a version
    # Reactivate a previously-active version. The currently active version, if any, becomes inactive but is retained in version history.
    # @option opts [String] :config_id  (required)
    # @option opts [String] :version_id  (required)
    # @return [RoutingConfigVersionResponse]
    def reactivate_dm_routing_config_version(opts = {})
      data, _status_code, _headers = reactivate_dm_routing_config_version_with_http_info(opts)
      data
    end

    # Reactivate a version
    # Reactivate a previously-active version. The currently active version, if any, becomes inactive but is retained in version history.
    # @option opts [String] :config_id  (required)
    # @option opts [String] :version_id  (required)
    # @return [Array<(RoutingConfigVersionResponse, Integer, Hash)>] RoutingConfigVersionResponse data, response status code and response headers
    def reactivate_dm_routing_config_version_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DmRoutingConfigsApi.reactivate_dm_routing_config_version ...'
      end
      # unbox the parameters from the hash
      config_id = opts[:'config_id']
      version_id = opts[:'version_id']
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling DmRoutingConfigsApi.reactivate_dm_routing_config_version"
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling DmRoutingConfigsApi.reactivate_dm_routing_config_version"
      end
      # resource path
      local_var_path = '/domain-management/v1/routing-configs/{config_id}/versions/{version_id}/activate'.sub('{' + 'config_id' + '}', CGI.escape(config_id.to_s)).sub('{' + 'version_id' + '}', CGI.escape(version_id.to_s))

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
      return_type = opts[:debug_return_type] || 'RoutingConfigVersionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DmRoutingConfigsApi.reactivate_dm_routing_config_version",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DmRoutingConfigsApi#reactivate_dm_routing_config_version\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the draft
    # Update metadata on the draft version, such as its comment. If no draft exists, one is created automatically by cloning the active version.
    # @option opts [String] :config_id  (required)
    # @option opts [DraftUpdate] :draft_update 
    # @return [RoutingConfigVersionResponse]
    def update_dm_routing_config_draft(opts = {})
      data, _status_code, _headers = update_dm_routing_config_draft_with_http_info(opts)
      data
    end

    # Update the draft
    # Update metadata on the draft version, such as its comment. If no draft exists, one is created automatically by cloning the active version.
    # @option opts [String] :config_id  (required)
    # @option opts [DraftUpdate] :draft_update 
    # @return [Array<(RoutingConfigVersionResponse, Integer, Hash)>] RoutingConfigVersionResponse data, response status code and response headers
    def update_dm_routing_config_draft_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DmRoutingConfigsApi.update_dm_routing_config_draft ...'
      end
      # unbox the parameters from the hash
      config_id = opts[:'config_id']
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling DmRoutingConfigsApi.update_dm_routing_config_draft"
      end
      # resource path
      local_var_path = '/domain-management/v1/routing-configs/{config_id}/draft'.sub('{' + 'config_id' + '}', CGI.escape(config_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'draft_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'RoutingConfigVersionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DmRoutingConfigsApi.update_dm_routing_config_draft",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DmRoutingConfigsApi#update_dm_routing_config_draft\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a path
    # Update a path on the config's draft version. If no draft exists, one is created automatically by cloning the active version.
    # @option opts [String] :config_id  (required)
    # @option opts [String] :path_id  (required)
    # @option opts [PathUpdate] :path_update 
    # @return [PathResponse]
    def update_dm_routing_config_path(opts = {})
      data, _status_code, _headers = update_dm_routing_config_path_with_http_info(opts)
      data
    end

    # Update a path
    # Update a path on the config&#39;s draft version. If no draft exists, one is created automatically by cloning the active version.
    # @option opts [String] :config_id  (required)
    # @option opts [String] :path_id  (required)
    # @option opts [PathUpdate] :path_update 
    # @return [Array<(PathResponse, Integer, Hash)>] PathResponse data, response status code and response headers
    def update_dm_routing_config_path_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DmRoutingConfigsApi.update_dm_routing_config_path ...'
      end
      # unbox the parameters from the hash
      config_id = opts[:'config_id']
      path_id = opts[:'path_id']
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling DmRoutingConfigsApi.update_dm_routing_config_path"
      end
      # verify the required parameter 'path_id' is set
      if @api_client.config.client_side_validation && path_id.nil?
        fail ArgumentError, "Missing the required parameter 'path_id' when calling DmRoutingConfigsApi.update_dm_routing_config_path"
      end
      # resource path
      local_var_path = '/domain-management/v1/routing-configs/{config_id}/paths/{path_id}'.sub('{' + 'config_id' + '}', CGI.escape(config_id.to_s)).sub('{' + 'path_id' + '}', CGI.escape(path_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'path_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'PathResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DmRoutingConfigsApi.update_dm_routing_config_path",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DmRoutingConfigsApi#update_dm_routing_config_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a rule
    # Update a rule on the config's draft version. If no draft exists, one is created automatically by cloning the active version.
    # @option opts [String] :config_id  (required)
    # @option opts [String] :path_id  (required)
    # @option opts [String] :rule_id  (required)
    # @option opts [RuleUpdate] :rule_update 
    # @return [RuleResponse]
    def update_dm_routing_config_rule(opts = {})
      data, _status_code, _headers = update_dm_routing_config_rule_with_http_info(opts)
      data
    end

    # Update a rule
    # Update a rule on the config&#39;s draft version. If no draft exists, one is created automatically by cloning the active version.
    # @option opts [String] :config_id  (required)
    # @option opts [String] :path_id  (required)
    # @option opts [String] :rule_id  (required)
    # @option opts [RuleUpdate] :rule_update 
    # @return [Array<(RuleResponse, Integer, Hash)>] RuleResponse data, response status code and response headers
    def update_dm_routing_config_rule_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DmRoutingConfigsApi.update_dm_routing_config_rule ...'
      end
      # unbox the parameters from the hash
      config_id = opts[:'config_id']
      path_id = opts[:'path_id']
      rule_id = opts[:'rule_id']
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling DmRoutingConfigsApi.update_dm_routing_config_rule"
      end
      # verify the required parameter 'path_id' is set
      if @api_client.config.client_side_validation && path_id.nil?
        fail ArgumentError, "Missing the required parameter 'path_id' when calling DmRoutingConfigsApi.update_dm_routing_config_rule"
      end
      # verify the required parameter 'rule_id' is set
      if @api_client.config.client_side_validation && rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_id' when calling DmRoutingConfigsApi.update_dm_routing_config_rule"
      end
      # resource path
      local_var_path = '/domain-management/v1/routing-configs/{config_id}/paths/{path_id}/rules/{rule_id}'.sub('{' + 'config_id' + '}', CGI.escape(config_id.to_s)).sub('{' + 'path_id' + '}', CGI.escape(path_id.to_s)).sub('{' + 'rule_id' + '}', CGI.escape(rule_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'rule_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'RuleResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DmRoutingConfigsApi.update_dm_routing_config_rule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DmRoutingConfigsApi#update_dm_routing_config_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
