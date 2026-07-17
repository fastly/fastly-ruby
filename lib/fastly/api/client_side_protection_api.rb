=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class ClientSideProtectionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create page
    # Create a new page for monitoring.
    # @option opts [PageCreate] :page_create 
    # @return [Page]
    def csp_create_page(opts = {})
      data, _status_code, _headers = csp_create_page_with_http_info(opts)
      data
    end

    # Create page
    # Create a new page for monitoring.
    # @option opts [PageCreate] :page_create 
    # @return [Array<(Page, Integer, Hash)>] Page data, response status code and response headers
    def csp_create_page_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideProtectionApi.csp_create_page ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/client-side-protection/v1/pages'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'page_create'])

      # return_type
      return_type = opts[:debug_return_type] || 'Page'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ClientSideProtectionApi.csp_create_page",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideProtectionApi#csp_create_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create policy
    # Create a new Content Security Policy for a page.
    # @option opts [String] :page_id Page identifier (required)
    # @option opts [PolicyCreate] :policy_create 
    # @return [Policy]
    def csp_create_policy(opts = {})
      data, _status_code, _headers = csp_create_policy_with_http_info(opts)
      data
    end

    # Create policy
    # Create a new Content Security Policy for a page.
    # @option opts [String] :page_id Page identifier (required)
    # @option opts [PolicyCreate] :policy_create 
    # @return [Array<(Policy, Integer, Hash)>] Policy data, response status code and response headers
    def csp_create_policy_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideProtectionApi.csp_create_policy ...'
      end
      # unbox the parameters from the hash
      page_id = opts[:'page_id']
      # verify the required parameter 'page_id' is set
      if @api_client.config.client_side_validation && page_id.nil?
        fail ArgumentError, "Missing the required parameter 'page_id' when calling ClientSideProtectionApi.csp_create_policy"
      end
      # resource path
      local_var_path = '/client-side-protection/v1/pages/{page_id}/policies'.sub('{' + 'page_id' + '}', CGI.escape(page_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'policy_create'])

      # return_type
      return_type = opts[:debug_return_type] || 'Policy'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ClientSideProtectionApi.csp_create_policy",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideProtectionApi#csp_create_policy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create website
    # Create a new website for Client-Side Protection monitoring.
    # @option opts [WebsiteCreate] :website_create 
    # @return [Website]
    def csp_create_website(opts = {})
      data, _status_code, _headers = csp_create_website_with_http_info(opts)
      data
    end

    # Create website
    # Create a new website for Client-Side Protection monitoring.
    # @option opts [WebsiteCreate] :website_create 
    # @return [Array<(Website, Integer, Hash)>] Website data, response status code and response headers
    def csp_create_website_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideProtectionApi.csp_create_website ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/client-side-protection/v1/websites'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'website_create'])

      # return_type
      return_type = opts[:debug_return_type] || 'Website'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ClientSideProtectionApi.csp_create_website",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideProtectionApi#csp_create_website\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete page
    # Delete a page and all associated scripts and policies.
    # @option opts [String] :page_id Page identifier (required)
    # @return [nil]
    def csp_delete_page(opts = {})
      csp_delete_page_with_http_info(opts)
      nil
    end

    # Delete page
    # Delete a page and all associated scripts and policies.
    # @option opts [String] :page_id Page identifier (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def csp_delete_page_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideProtectionApi.csp_delete_page ...'
      end
      # unbox the parameters from the hash
      page_id = opts[:'page_id']
      # verify the required parameter 'page_id' is set
      if @api_client.config.client_side_validation && page_id.nil?
        fail ArgumentError, "Missing the required parameter 'page_id' when calling ClientSideProtectionApi.csp_delete_page"
      end
      # resource path
      local_var_path = '/client-side-protection/v1/pages/{page_id}'.sub('{' + 'page_id' + '}', CGI.escape(page_id.to_s))

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
        :operation => :"ClientSideProtectionApi.csp_delete_page",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideProtectionApi#csp_delete_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete website
    # Delete a website and all associated pages, scripts, and policies.
    # @option opts [String] :website_id Website identifier (required)
    # @return [nil]
    def csp_delete_website(opts = {})
      csp_delete_website_with_http_info(opts)
      nil
    end

    # Delete website
    # Delete a website and all associated pages, scripts, and policies.
    # @option opts [String] :website_id Website identifier (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def csp_delete_website_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideProtectionApi.csp_delete_website ...'
      end
      # unbox the parameters from the hash
      website_id = opts[:'website_id']
      # verify the required parameter 'website_id' is set
      if @api_client.config.client_side_validation && website_id.nil?
        fail ArgumentError, "Missing the required parameter 'website_id' when calling ClientSideProtectionApi.csp_delete_website"
      end
      # resource path
      local_var_path = '/client-side-protection/v1/websites/{website_id}'.sub('{' + 'website_id' + '}', CGI.escape(website_id.to_s))

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
        :operation => :"ClientSideProtectionApi.csp_delete_website",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideProtectionApi#csp_delete_website\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get page
    # Get details for a specific page.
    # @option opts [String] :page_id Page identifier (required)
    # @return [Page]
    def csp_get_page(opts = {})
      data, _status_code, _headers = csp_get_page_with_http_info(opts)
      data
    end

    # Get page
    # Get details for a specific page.
    # @option opts [String] :page_id Page identifier (required)
    # @return [Array<(Page, Integer, Hash)>] Page data, response status code and response headers
    def csp_get_page_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideProtectionApi.csp_get_page ...'
      end
      # unbox the parameters from the hash
      page_id = opts[:'page_id']
      # verify the required parameter 'page_id' is set
      if @api_client.config.client_side_validation && page_id.nil?
        fail ArgumentError, "Missing the required parameter 'page_id' when calling ClientSideProtectionApi.csp_get_page"
      end
      # resource path
      local_var_path = '/client-side-protection/v1/pages/{page_id}'.sub('{' + 'page_id' + '}', CGI.escape(page_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Page'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ClientSideProtectionApi.csp_get_page",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideProtectionApi#csp_get_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get policy
    # Get details for a specific policy.
    # @option opts [String] :page_id Page identifier (required)
    # @option opts [String] :policy_id Policy identifier (required)
    # @return [Policy]
    def csp_get_policy(opts = {})
      data, _status_code, _headers = csp_get_policy_with_http_info(opts)
      data
    end

    # Get policy
    # Get details for a specific policy.
    # @option opts [String] :page_id Page identifier (required)
    # @option opts [String] :policy_id Policy identifier (required)
    # @return [Array<(Policy, Integer, Hash)>] Policy data, response status code and response headers
    def csp_get_policy_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideProtectionApi.csp_get_policy ...'
      end
      # unbox the parameters from the hash
      page_id = opts[:'page_id']
      policy_id = opts[:'policy_id']
      # verify the required parameter 'page_id' is set
      if @api_client.config.client_side_validation && page_id.nil?
        fail ArgumentError, "Missing the required parameter 'page_id' when calling ClientSideProtectionApi.csp_get_policy"
      end
      # verify the required parameter 'policy_id' is set
      if @api_client.config.client_side_validation && policy_id.nil?
        fail ArgumentError, "Missing the required parameter 'policy_id' when calling ClientSideProtectionApi.csp_get_policy"
      end
      # resource path
      local_var_path = '/client-side-protection/v1/pages/{page_id}/policies/{policy_id}'.sub('{' + 'page_id' + '}', CGI.escape(page_id.to_s)).sub('{' + 'policy_id' + '}', CGI.escape(policy_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Policy'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ClientSideProtectionApi.csp_get_policy",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideProtectionApi#csp_get_policy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get script
    # Get details for a specific script.
    # @option opts [String] :page_id Page identifier (required)
    # @option opts [String] :script_id Script identifier (required)
    # @return [Script]
    def csp_get_script(opts = {})
      data, _status_code, _headers = csp_get_script_with_http_info(opts)
      data
    end

    # Get script
    # Get details for a specific script.
    # @option opts [String] :page_id Page identifier (required)
    # @option opts [String] :script_id Script identifier (required)
    # @return [Array<(Script, Integer, Hash)>] Script data, response status code and response headers
    def csp_get_script_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideProtectionApi.csp_get_script ...'
      end
      # unbox the parameters from the hash
      page_id = opts[:'page_id']
      script_id = opts[:'script_id']
      # verify the required parameter 'page_id' is set
      if @api_client.config.client_side_validation && page_id.nil?
        fail ArgumentError, "Missing the required parameter 'page_id' when calling ClientSideProtectionApi.csp_get_script"
      end
      # verify the required parameter 'script_id' is set
      if @api_client.config.client_side_validation && script_id.nil?
        fail ArgumentError, "Missing the required parameter 'script_id' when calling ClientSideProtectionApi.csp_get_script"
      end
      # resource path
      local_var_path = '/client-side-protection/v1/pages/{page_id}/scripts/{script_id}'.sub('{' + 'page_id' + '}', CGI.escape(page_id.to_s)).sub('{' + 'script_id' + '}', CGI.escape(script_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Script'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ClientSideProtectionApi.csp_get_script",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideProtectionApi#csp_get_script\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get website
    # Get details for a specific website.
    # @option opts [String] :website_id Website identifier (required)
    # @return [Website]
    def csp_get_website(opts = {})
      data, _status_code, _headers = csp_get_website_with_http_info(opts)
      data
    end

    # Get website
    # Get details for a specific website.
    # @option opts [String] :website_id Website identifier (required)
    # @return [Array<(Website, Integer, Hash)>] Website data, response status code and response headers
    def csp_get_website_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideProtectionApi.csp_get_website ...'
      end
      # unbox the parameters from the hash
      website_id = opts[:'website_id']
      # verify the required parameter 'website_id' is set
      if @api_client.config.client_side_validation && website_id.nil?
        fail ArgumentError, "Missing the required parameter 'website_id' when calling ClientSideProtectionApi.csp_get_website"
      end
      # resource path
      local_var_path = '/client-side-protection/v1/websites/{website_id}'.sub('{' + 'website_id' + '}', CGI.escape(website_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Website'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ClientSideProtectionApi.csp_get_website",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideProtectionApi#csp_get_website\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List header events
    # List security header change events for a page.
    # @option opts [String] :page_id Page identifier (required)
    # @option opts [Integer] :limit Limit how many results are returned. (default to 100)
    # @option opts [Integer] :page Page number of the collection to request. (default to 0)
    # @return [InlineResponse20011]
    def csp_list_header_events(opts = {})
      data, _status_code, _headers = csp_list_header_events_with_http_info(opts)
      data
    end

    # List header events
    # List security header change events for a page.
    # @option opts [String] :page_id Page identifier (required)
    # @option opts [Integer] :limit Limit how many results are returned. (default to 100)
    # @option opts [Integer] :page Page number of the collection to request. (default to 0)
    # @return [Array<(InlineResponse20011, Integer, Hash)>] InlineResponse20011 data, response status code and response headers
    def csp_list_header_events_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideProtectionApi.csp_list_header_events ...'
      end
      # unbox the parameters from the hash
      page_id = opts[:'page_id']
      # verify the required parameter 'page_id' is set
      if @api_client.config.client_side_validation && page_id.nil?
        fail ArgumentError, "Missing the required parameter 'page_id' when calling ClientSideProtectionApi.csp_list_header_events"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ClientSideProtectionApi.csp_list_header_events, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ClientSideProtectionApi.csp_list_header_events, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling ClientSideProtectionApi.csp_list_header_events, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/client-side-protection/v1/pages/{page_id}/events'.sub('{' + 'page_id' + '}', CGI.escape(page_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse20011'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ClientSideProtectionApi.csp_list_header_events",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideProtectionApi#csp_list_header_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List security headers
    # List security headers detected on a page.
    # @option opts [String] :page_id Page identifier (required)
    # @option opts [Integer] :limit Limit how many results are returned. (default to 100)
    # @option opts [Integer] :page Page number of the collection to request. (default to 0)
    # @return [InlineResponse20010]
    def csp_list_headers(opts = {})
      data, _status_code, _headers = csp_list_headers_with_http_info(opts)
      data
    end

    # List security headers
    # List security headers detected on a page.
    # @option opts [String] :page_id Page identifier (required)
    # @option opts [Integer] :limit Limit how many results are returned. (default to 100)
    # @option opts [Integer] :page Page number of the collection to request. (default to 0)
    # @return [Array<(InlineResponse20010, Integer, Hash)>] InlineResponse20010 data, response status code and response headers
    def csp_list_headers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideProtectionApi.csp_list_headers ...'
      end
      # unbox the parameters from the hash
      page_id = opts[:'page_id']
      # verify the required parameter 'page_id' is set
      if @api_client.config.client_side_validation && page_id.nil?
        fail ArgumentError, "Missing the required parameter 'page_id' when calling ClientSideProtectionApi.csp_list_headers"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ClientSideProtectionApi.csp_list_headers, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ClientSideProtectionApi.csp_list_headers, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling ClientSideProtectionApi.csp_list_headers, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/client-side-protection/v1/pages/{page_id}/headers'.sub('{' + 'page_id' + '}', CGI.escape(page_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse20010'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ClientSideProtectionApi.csp_list_headers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideProtectionApi#csp_list_headers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List pages
    # List all pages. Optionally filter by website.
    # @option opts [String] :website_id Filter pages by website ID
    # @option opts [Integer] :limit Limit how many results are returned. (default to 100)
    # @option opts [Integer] :page Page number of the collection to request. (default to 0)
    # @return [InlineResponse2006]
    def csp_list_pages(opts = {})
      data, _status_code, _headers = csp_list_pages_with_http_info(opts)
      data
    end

    # List pages
    # List all pages. Optionally filter by website.
    # @option opts [String] :website_id Filter pages by website ID
    # @option opts [Integer] :limit Limit how many results are returned. (default to 100)
    # @option opts [Integer] :page Page number of the collection to request. (default to 0)
    # @return [Array<(InlineResponse2006, Integer, Hash)>] InlineResponse2006 data, response status code and response headers
    def csp_list_pages_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideProtectionApi.csp_list_pages ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ClientSideProtectionApi.csp_list_pages, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ClientSideProtectionApi.csp_list_pages, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling ClientSideProtectionApi.csp_list_pages, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/client-side-protection/v1/pages'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'website_id'] = opts[:'website_id'] if !opts[:'website_id'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse2006'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ClientSideProtectionApi.csp_list_pages",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideProtectionApi#csp_list_pages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List policies
    # List all Content Security Policies for a page.
    # @option opts [String] :page_id Page identifier (required)
    # @option opts [Integer] :limit Limit how many results are returned. (default to 100)
    # @option opts [Integer] :page Page number of the collection to request. (default to 0)
    # @return [InlineResponse2008]
    def csp_list_policies(opts = {})
      data, _status_code, _headers = csp_list_policies_with_http_info(opts)
      data
    end

    # List policies
    # List all Content Security Policies for a page.
    # @option opts [String] :page_id Page identifier (required)
    # @option opts [Integer] :limit Limit how many results are returned. (default to 100)
    # @option opts [Integer] :page Page number of the collection to request. (default to 0)
    # @return [Array<(InlineResponse2008, Integer, Hash)>] InlineResponse2008 data, response status code and response headers
    def csp_list_policies_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideProtectionApi.csp_list_policies ...'
      end
      # unbox the parameters from the hash
      page_id = opts[:'page_id']
      # verify the required parameter 'page_id' is set
      if @api_client.config.client_side_validation && page_id.nil?
        fail ArgumentError, "Missing the required parameter 'page_id' when calling ClientSideProtectionApi.csp_list_policies"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ClientSideProtectionApi.csp_list_policies, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ClientSideProtectionApi.csp_list_policies, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling ClientSideProtectionApi.csp_list_policies, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/client-side-protection/v1/pages/{page_id}/policies'.sub('{' + 'page_id' + '}', CGI.escape(page_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse2008'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ClientSideProtectionApi.csp_list_policies",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideProtectionApi#csp_list_policies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List policy reports
    # List CSP violation reports for a policy.
    # @option opts [String] :page_id Page identifier (required)
    # @option opts [String] :policy_id Policy identifier (required)
    # @option opts [Integer] :limit Limit how many results are returned. (default to 100)
    # @option opts [Integer] :page Page number of the collection to request. (default to 0)
    # @return [InlineResponse2009]
    def csp_list_policy_reports(opts = {})
      data, _status_code, _headers = csp_list_policy_reports_with_http_info(opts)
      data
    end

    # List policy reports
    # List CSP violation reports for a policy.
    # @option opts [String] :page_id Page identifier (required)
    # @option opts [String] :policy_id Policy identifier (required)
    # @option opts [Integer] :limit Limit how many results are returned. (default to 100)
    # @option opts [Integer] :page Page number of the collection to request. (default to 0)
    # @return [Array<(InlineResponse2009, Integer, Hash)>] InlineResponse2009 data, response status code and response headers
    def csp_list_policy_reports_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideProtectionApi.csp_list_policy_reports ...'
      end
      # unbox the parameters from the hash
      page_id = opts[:'page_id']
      policy_id = opts[:'policy_id']
      # verify the required parameter 'page_id' is set
      if @api_client.config.client_side_validation && page_id.nil?
        fail ArgumentError, "Missing the required parameter 'page_id' when calling ClientSideProtectionApi.csp_list_policy_reports"
      end
      # verify the required parameter 'policy_id' is set
      if @api_client.config.client_side_validation && policy_id.nil?
        fail ArgumentError, "Missing the required parameter 'policy_id' when calling ClientSideProtectionApi.csp_list_policy_reports"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ClientSideProtectionApi.csp_list_policy_reports, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ClientSideProtectionApi.csp_list_policy_reports, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling ClientSideProtectionApi.csp_list_policy_reports, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/client-side-protection/v1/pages/{page_id}/policies/{policy_id}/reports'.sub('{' + 'page_id' + '}', CGI.escape(page_id.to_s)).sub('{' + 'policy_id' + '}', CGI.escape(policy_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse2009'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ClientSideProtectionApi.csp_list_policy_reports",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideProtectionApi#csp_list_policy_reports\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List scripts
    # List all scripts detected on a page.
    # @option opts [String] :page_id Page identifier (required)
    # @option opts [Integer] :limit Limit how many results are returned. (default to 100)
    # @option opts [Integer] :page Page number of the collection to request. (default to 0)
    # @return [InlineResponse2007]
    def csp_list_scripts(opts = {})
      data, _status_code, _headers = csp_list_scripts_with_http_info(opts)
      data
    end

    # List scripts
    # List all scripts detected on a page.
    # @option opts [String] :page_id Page identifier (required)
    # @option opts [Integer] :limit Limit how many results are returned. (default to 100)
    # @option opts [Integer] :page Page number of the collection to request. (default to 0)
    # @return [Array<(InlineResponse2007, Integer, Hash)>] InlineResponse2007 data, response status code and response headers
    def csp_list_scripts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideProtectionApi.csp_list_scripts ...'
      end
      # unbox the parameters from the hash
      page_id = opts[:'page_id']
      # verify the required parameter 'page_id' is set
      if @api_client.config.client_side_validation && page_id.nil?
        fail ArgumentError, "Missing the required parameter 'page_id' when calling ClientSideProtectionApi.csp_list_scripts"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ClientSideProtectionApi.csp_list_scripts, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ClientSideProtectionApi.csp_list_scripts, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling ClientSideProtectionApi.csp_list_scripts, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/client-side-protection/v1/pages/{page_id}/scripts'.sub('{' + 'page_id' + '}', CGI.escape(page_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse2007'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ClientSideProtectionApi.csp_list_scripts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideProtectionApi#csp_list_scripts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List websites
    # List all websites configured for Client-Side Protection.
    # @option opts [Integer] :limit Limit how many results are returned. (default to 100)
    # @option opts [Integer] :page Page number of the collection to request. (default to 0)
    # @return [InlineResponse2005]
    def csp_list_websites(opts = {})
      data, _status_code, _headers = csp_list_websites_with_http_info(opts)
      data
    end

    # List websites
    # List all websites configured for Client-Side Protection.
    # @option opts [Integer] :limit Limit how many results are returned. (default to 100)
    # @option opts [Integer] :page Page number of the collection to request. (default to 0)
    # @return [Array<(InlineResponse2005, Integer, Hash)>] InlineResponse2005 data, response status code and response headers
    def csp_list_websites_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideProtectionApi.csp_list_websites ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ClientSideProtectionApi.csp_list_websites, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ClientSideProtectionApi.csp_list_websites, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling ClientSideProtectionApi.csp_list_websites, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/client-side-protection/v1/websites'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse2005'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ClientSideProtectionApi.csp_list_websites",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideProtectionApi#csp_list_websites\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update page
    # Update a page's configuration.
    # @option opts [String] :page_id Page identifier (required)
    # @option opts [PageUpdate] :page_update 
    # @return [Page]
    def csp_update_page(opts = {})
      data, _status_code, _headers = csp_update_page_with_http_info(opts)
      data
    end

    # Update page
    # Update a page&#39;s configuration.
    # @option opts [String] :page_id Page identifier (required)
    # @option opts [PageUpdate] :page_update 
    # @return [Array<(Page, Integer, Hash)>] Page data, response status code and response headers
    def csp_update_page_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideProtectionApi.csp_update_page ...'
      end
      # unbox the parameters from the hash
      page_id = opts[:'page_id']
      # verify the required parameter 'page_id' is set
      if @api_client.config.client_side_validation && page_id.nil?
        fail ArgumentError, "Missing the required parameter 'page_id' when calling ClientSideProtectionApi.csp_update_page"
      end
      # resource path
      local_var_path = '/client-side-protection/v1/pages/{page_id}'.sub('{' + 'page_id' + '}', CGI.escape(page_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'page_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'Page'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ClientSideProtectionApi.csp_update_page",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideProtectionApi#csp_update_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update policy
    # Update a policy's configuration.
    # @option opts [String] :page_id Page identifier (required)
    # @option opts [String] :policy_id Policy identifier (required)
    # @option opts [PolicyUpdate] :policy_update 
    # @return [Policy]
    def csp_update_policy(opts = {})
      data, _status_code, _headers = csp_update_policy_with_http_info(opts)
      data
    end

    # Update policy
    # Update a policy&#39;s configuration.
    # @option opts [String] :page_id Page identifier (required)
    # @option opts [String] :policy_id Policy identifier (required)
    # @option opts [PolicyUpdate] :policy_update 
    # @return [Array<(Policy, Integer, Hash)>] Policy data, response status code and response headers
    def csp_update_policy_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideProtectionApi.csp_update_policy ...'
      end
      # unbox the parameters from the hash
      page_id = opts[:'page_id']
      policy_id = opts[:'policy_id']
      # verify the required parameter 'page_id' is set
      if @api_client.config.client_side_validation && page_id.nil?
        fail ArgumentError, "Missing the required parameter 'page_id' when calling ClientSideProtectionApi.csp_update_policy"
      end
      # verify the required parameter 'policy_id' is set
      if @api_client.config.client_side_validation && policy_id.nil?
        fail ArgumentError, "Missing the required parameter 'policy_id' when calling ClientSideProtectionApi.csp_update_policy"
      end
      # resource path
      local_var_path = '/client-side-protection/v1/pages/{page_id}/policies/{policy_id}'.sub('{' + 'page_id' + '}', CGI.escape(page_id.to_s)).sub('{' + 'policy_id' + '}', CGI.escape(policy_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'policy_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'Policy'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ClientSideProtectionApi.csp_update_policy",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideProtectionApi#csp_update_policy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update script
    # Update a script's authorization status or justification.
    # @option opts [String] :page_id Page identifier (required)
    # @option opts [String] :script_id Script identifier (required)
    # @option opts [ScriptUpdate] :script_update 
    # @return [Script]
    def csp_update_script(opts = {})
      data, _status_code, _headers = csp_update_script_with_http_info(opts)
      data
    end

    # Update script
    # Update a script&#39;s authorization status or justification.
    # @option opts [String] :page_id Page identifier (required)
    # @option opts [String] :script_id Script identifier (required)
    # @option opts [ScriptUpdate] :script_update 
    # @return [Array<(Script, Integer, Hash)>] Script data, response status code and response headers
    def csp_update_script_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideProtectionApi.csp_update_script ...'
      end
      # unbox the parameters from the hash
      page_id = opts[:'page_id']
      script_id = opts[:'script_id']
      # verify the required parameter 'page_id' is set
      if @api_client.config.client_side_validation && page_id.nil?
        fail ArgumentError, "Missing the required parameter 'page_id' when calling ClientSideProtectionApi.csp_update_script"
      end
      # verify the required parameter 'script_id' is set
      if @api_client.config.client_side_validation && script_id.nil?
        fail ArgumentError, "Missing the required parameter 'script_id' when calling ClientSideProtectionApi.csp_update_script"
      end
      # resource path
      local_var_path = '/client-side-protection/v1/pages/{page_id}/scripts/{script_id}'.sub('{' + 'page_id' + '}', CGI.escape(page_id.to_s)).sub('{' + 'script_id' + '}', CGI.escape(script_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'script_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'Script'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ClientSideProtectionApi.csp_update_script",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideProtectionApi#csp_update_script\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update website
    # Update a website's configuration.
    # @option opts [String] :website_id Website identifier (required)
    # @option opts [WebsiteUpdate] :website_update 
    # @return [Website]
    def csp_update_website(opts = {})
      data, _status_code, _headers = csp_update_website_with_http_info(opts)
      data
    end

    # Update website
    # Update a website&#39;s configuration.
    # @option opts [String] :website_id Website identifier (required)
    # @option opts [WebsiteUpdate] :website_update 
    # @return [Array<(Website, Integer, Hash)>] Website data, response status code and response headers
    def csp_update_website_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideProtectionApi.csp_update_website ...'
      end
      # unbox the parameters from the hash
      website_id = opts[:'website_id']
      # verify the required parameter 'website_id' is set
      if @api_client.config.client_side_validation && website_id.nil?
        fail ArgumentError, "Missing the required parameter 'website_id' when calling ClientSideProtectionApi.csp_update_website"
      end
      # resource path
      local_var_path = '/client-side-protection/v1/websites/{website_id}'.sub('{' + 'website_id' + '}', CGI.escape(website_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'website_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'Website'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ClientSideProtectionApi.csp_update_website",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideProtectionApi#csp_update_website\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
