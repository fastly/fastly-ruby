=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class TlsSubscriptionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a GlobalSign email challenge.
    # Creates an email challenge for a domain on a GlobalSign subscription. An email challenge will generate an email that can be used to validate domain ownership. If this challenge is created, then the domain can only be validated using email for the given subscription. 
    # @option opts [String] :tls_subscription_id Alphanumeric string identifying a TLS subscription. (required)
    # @option opts [String] :tls_authorization_id Alphanumeric string identifying a TLS subscription. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Object]
    def create_globalsign_email_challenge(opts = {})
      data, _status_code, _headers = create_globalsign_email_challenge_with_http_info(opts)
      data
    end

    # Creates a GlobalSign email challenge.
    # Creates an email challenge for a domain on a GlobalSign subscription. An email challenge will generate an email that can be used to validate domain ownership. If this challenge is created, then the domain can only be validated using email for the given subscription. 
    # @option opts [String] :tls_subscription_id Alphanumeric string identifying a TLS subscription. (required)
    # @option opts [String] :tls_authorization_id Alphanumeric string identifying a TLS subscription. (required)
    # @option opts [Hash<String, Object>] :request_body 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def create_globalsign_email_challenge_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsSubscriptionsApi.create_globalsign_email_challenge ...'
      end
      # unbox the parameters from the hash
      tls_subscription_id = opts[:'tls_subscription_id']
      tls_authorization_id = opts[:'tls_authorization_id']
      # verify the required parameter 'tls_subscription_id' is set
      if @api_client.config.client_side_validation && tls_subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'tls_subscription_id' when calling TlsSubscriptionsApi.create_globalsign_email_challenge"
      end
      # verify the required parameter 'tls_authorization_id' is set
      if @api_client.config.client_side_validation && tls_authorization_id.nil?
        fail ArgumentError, "Missing the required parameter 'tls_authorization_id' when calling TlsSubscriptionsApi.create_globalsign_email_challenge"
      end
      # resource path
      local_var_path = '/tls/subscriptions/{tls_subscription_id}/authorizations/{tls_authorization_id}/globalsign_email_challenges'.sub('{' + 'tls_subscription_id' + '}', CGI.escape(tls_subscription_id.to_s)).sub('{' + 'tls_authorization_id' + '}', CGI.escape(tls_authorization_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/vnd.api+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsSubscriptionsApi.create_globalsign_email_challenge",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsSubscriptionsApi#create_globalsign_email_challenge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a TLS subscription
    # Create a new TLS subscription. This response includes a list of possible challenges to verify domain ownership.
    # @option opts [Boolean] :force A flag that allows you to edit and delete a subscription with active domains. Valid to use on PATCH and DELETE actions. As a warning, removing an active domain from a subscription or forcing the deletion of a subscription may result in breaking TLS termination to that domain. 
    # @option opts [TlsSubscription] :tls_subscription 
    # @return [TlsSubscriptionResponse]
    def create_tls_sub(opts = {})
      data, _status_code, _headers = create_tls_sub_with_http_info(opts)
      data
    end

    # Create a TLS subscription
    # Create a new TLS subscription. This response includes a list of possible challenges to verify domain ownership.
    # @option opts [Boolean] :force A flag that allows you to edit and delete a subscription with active domains. Valid to use on PATCH and DELETE actions. As a warning, removing an active domain from a subscription or forcing the deletion of a subscription may result in breaking TLS termination to that domain. 
    # @option opts [TlsSubscription] :tls_subscription 
    # @return [Array<(TlsSubscriptionResponse, Integer, Hash)>] TlsSubscriptionResponse data, response status code and response headers
    def create_tls_sub_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsSubscriptionsApi.create_tls_sub ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/tls/subscriptions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'force'] = opts[:'force'] if !opts[:'force'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/vnd.api+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'tls_subscription'])

      # return_type
      return_type = opts[:debug_return_type] || 'TlsSubscriptionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsSubscriptionsApi.create_tls_sub",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsSubscriptionsApi#create_tls_sub\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a GlobalSign email challenge
    # Deletes a GlobalSign email challenge. After a GlobalSign email challenge is deleted, the domain can use HTTP and DNS validation methods again.
    # @option opts [String] :tls_subscription_id Alphanumeric string identifying a TLS subscription. (required)
    # @option opts [String] :globalsign_email_challenge_id Alphanumeric string identifying a GlobalSign email challenge. (required)
    # @option opts [String] :tls_authorization_id Alphanumeric string identifying a TLS subscription. (required)
    # @return [nil]
    def delete_globalsign_email_challenge(opts = {})
      delete_globalsign_email_challenge_with_http_info(opts)
      nil
    end

    # Delete a GlobalSign email challenge
    # Deletes a GlobalSign email challenge. After a GlobalSign email challenge is deleted, the domain can use HTTP and DNS validation methods again.
    # @option opts [String] :tls_subscription_id Alphanumeric string identifying a TLS subscription. (required)
    # @option opts [String] :globalsign_email_challenge_id Alphanumeric string identifying a GlobalSign email challenge. (required)
    # @option opts [String] :tls_authorization_id Alphanumeric string identifying a TLS subscription. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_globalsign_email_challenge_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsSubscriptionsApi.delete_globalsign_email_challenge ...'
      end
      # unbox the parameters from the hash
      tls_subscription_id = opts[:'tls_subscription_id']
      globalsign_email_challenge_id = opts[:'globalsign_email_challenge_id']
      tls_authorization_id = opts[:'tls_authorization_id']
      # verify the required parameter 'tls_subscription_id' is set
      if @api_client.config.client_side_validation && tls_subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'tls_subscription_id' when calling TlsSubscriptionsApi.delete_globalsign_email_challenge"
      end
      # verify the required parameter 'globalsign_email_challenge_id' is set
      if @api_client.config.client_side_validation && globalsign_email_challenge_id.nil?
        fail ArgumentError, "Missing the required parameter 'globalsign_email_challenge_id' when calling TlsSubscriptionsApi.delete_globalsign_email_challenge"
      end
      # verify the required parameter 'tls_authorization_id' is set
      if @api_client.config.client_side_validation && tls_authorization_id.nil?
        fail ArgumentError, "Missing the required parameter 'tls_authorization_id' when calling TlsSubscriptionsApi.delete_globalsign_email_challenge"
      end
      # resource path
      local_var_path = '/tls/subscriptions/{tls_subscription_id}/authorizations/{tls_authorization_id}/globalsign_email_challenges/{globalsign_email_challenge_id}'.sub('{' + 'tls_subscription_id' + '}', CGI.escape(tls_subscription_id.to_s)).sub('{' + 'globalsign_email_challenge_id' + '}', CGI.escape(globalsign_email_challenge_id.to_s)).sub('{' + 'tls_authorization_id' + '}', CGI.escape(tls_authorization_id.to_s))

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
        :operation => :"TlsSubscriptionsApi.delete_globalsign_email_challenge",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsSubscriptionsApi#delete_globalsign_email_challenge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a TLS subscription
    # Destroy a TLS subscription. A subscription cannot be destroyed if there are domains in the TLS enabled state.
    # @option opts [String] :tls_subscription_id Alphanumeric string identifying a TLS subscription. (required)
    # @return [nil]
    def delete_tls_sub(opts = {})
      delete_tls_sub_with_http_info(opts)
      nil
    end

    # Delete a TLS subscription
    # Destroy a TLS subscription. A subscription cannot be destroyed if there are domains in the TLS enabled state.
    # @option opts [String] :tls_subscription_id Alphanumeric string identifying a TLS subscription. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_tls_sub_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsSubscriptionsApi.delete_tls_sub ...'
      end
      # unbox the parameters from the hash
      tls_subscription_id = opts[:'tls_subscription_id']
      # verify the required parameter 'tls_subscription_id' is set
      if @api_client.config.client_side_validation && tls_subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'tls_subscription_id' when calling TlsSubscriptionsApi.delete_tls_sub"
      end
      # resource path
      local_var_path = '/tls/subscriptions/{tls_subscription_id}'.sub('{' + 'tls_subscription_id' + '}', CGI.escape(tls_subscription_id.to_s))

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
        :operation => :"TlsSubscriptionsApi.delete_tls_sub",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsSubscriptionsApi#delete_tls_sub\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a TLS subscription
    # Show a TLS subscription.
    # @option opts [String] :tls_subscription_id Alphanumeric string identifying a TLS subscription. (required)
    # @option opts [String] :include Include related objects. Optional, comma-separated values. Permitted values: &#x60;tls_authorizations&#x60; and &#x60;tls_authorizations.globalsign_email_challenge&#x60;. 
    # @return [TlsSubscriptionResponse]
    def get_tls_sub(opts = {})
      data, _status_code, _headers = get_tls_sub_with_http_info(opts)
      data
    end

    # Get a TLS subscription
    # Show a TLS subscription.
    # @option opts [String] :tls_subscription_id Alphanumeric string identifying a TLS subscription. (required)
    # @option opts [String] :include Include related objects. Optional, comma-separated values. Permitted values: &#x60;tls_authorizations&#x60; and &#x60;tls_authorizations.globalsign_email_challenge&#x60;. 
    # @return [Array<(TlsSubscriptionResponse, Integer, Hash)>] TlsSubscriptionResponse data, response status code and response headers
    def get_tls_sub_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsSubscriptionsApi.get_tls_sub ...'
      end
      # unbox the parameters from the hash
      tls_subscription_id = opts[:'tls_subscription_id']
      # verify the required parameter 'tls_subscription_id' is set
      if @api_client.config.client_side_validation && tls_subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'tls_subscription_id' when calling TlsSubscriptionsApi.get_tls_sub"
      end
      # resource path
      local_var_path = '/tls/subscriptions/{tls_subscription_id}'.sub('{' + 'tls_subscription_id' + '}', CGI.escape(tls_subscription_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TlsSubscriptionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsSubscriptionsApi.get_tls_sub",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsSubscriptionsApi#get_tls_sub\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List TLS subscriptions
    # List all TLS subscriptions.
    # @option opts [String] :filter_state Limit the returned subscriptions by state. Valid values are &#x60;pending&#x60;, &#x60;processing&#x60;, &#x60;issued&#x60;, and &#x60;renewing&#x60;. Accepts parameters: &#x60;not&#x60; (e.g., &#x60;filter[state][not]&#x3D;renewing&#x60;). 
    # @option opts [String] :filter_tls_domains_id Limit the returned subscriptions to those that include the specific domain.
    # @option opts [Boolean] :filter_has_active_order Limit the returned subscriptions to those that have currently active orders. Permitted values: &#x60;true&#x60;. 
    # @option opts [String] :include Include related objects. Optional, comma-separated values. Permitted values: &#x60;tls_authorizations&#x60; and &#x60;tls_authorizations.globalsign_email_challenge&#x60;. 
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :sort The order in which to list the results by creation date. (default to 'created_at')
    # @return [TlsSubscriptionsResponse]
    def list_tls_subs(opts = {})
      data, _status_code, _headers = list_tls_subs_with_http_info(opts)
      data
    end

    # List TLS subscriptions
    # List all TLS subscriptions.
    # @option opts [String] :filter_state Limit the returned subscriptions by state. Valid values are &#x60;pending&#x60;, &#x60;processing&#x60;, &#x60;issued&#x60;, and &#x60;renewing&#x60;. Accepts parameters: &#x60;not&#x60; (e.g., &#x60;filter[state][not]&#x3D;renewing&#x60;). 
    # @option opts [String] :filter_tls_domains_id Limit the returned subscriptions to those that include the specific domain.
    # @option opts [Boolean] :filter_has_active_order Limit the returned subscriptions to those that have currently active orders. Permitted values: &#x60;true&#x60;. 
    # @option opts [String] :include Include related objects. Optional, comma-separated values. Permitted values: &#x60;tls_authorizations&#x60; and &#x60;tls_authorizations.globalsign_email_challenge&#x60;. 
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :sort The order in which to list the results by creation date. (default to 'created_at')
    # @return [Array<(TlsSubscriptionsResponse, Integer, Hash)>] TlsSubscriptionsResponse data, response status code and response headers
    def list_tls_subs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsSubscriptionsApi.list_tls_subs ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling TlsSubscriptionsApi.list_tls_subs, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling TlsSubscriptionsApi.list_tls_subs, must be greater than or equal to 1.'
      end

      allowable_values = ["created_at", "-created_at"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/tls/subscriptions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter[state]'] = opts[:'filter_state'] if !opts[:'filter_state'].nil?
      query_params[:'filter[tls_domains.id]'] = opts[:'filter_tls_domains_id'] if !opts[:'filter_tls_domains_id'].nil?
      query_params[:'filter[has_active_order]'] = opts[:'filter_has_active_order'] if !opts[:'filter_has_active_order'].nil?
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?
      query_params[:'page[number]'] = opts[:'page_number'] if !opts[:'page_number'].nil?
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TlsSubscriptionsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsSubscriptionsApi.list_tls_subs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsSubscriptionsApi#list_tls_subs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a TLS subscription
    # Change the TLS domains or common name associated with this subscription, or update the TLS configuration for this set of domains.
    # @option opts [String] :tls_subscription_id Alphanumeric string identifying a TLS subscription. (required)
    # @option opts [Boolean] :force A flag that allows you to edit and delete a subscription with active domains. Valid to use on PATCH and DELETE actions. As a warning, removing an active domain from a subscription or forcing the deletion of a subscription may result in breaking TLS termination to that domain. 
    # @option opts [TlsSubscription] :tls_subscription 
    # @return [TlsSubscriptionResponse]
    def patch_tls_sub(opts = {})
      data, _status_code, _headers = patch_tls_sub_with_http_info(opts)
      data
    end

    # Update a TLS subscription
    # Change the TLS domains or common name associated with this subscription, or update the TLS configuration for this set of domains.
    # @option opts [String] :tls_subscription_id Alphanumeric string identifying a TLS subscription. (required)
    # @option opts [Boolean] :force A flag that allows you to edit and delete a subscription with active domains. Valid to use on PATCH and DELETE actions. As a warning, removing an active domain from a subscription or forcing the deletion of a subscription may result in breaking TLS termination to that domain. 
    # @option opts [TlsSubscription] :tls_subscription 
    # @return [Array<(TlsSubscriptionResponse, Integer, Hash)>] TlsSubscriptionResponse data, response status code and response headers
    def patch_tls_sub_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsSubscriptionsApi.patch_tls_sub ...'
      end
      # unbox the parameters from the hash
      tls_subscription_id = opts[:'tls_subscription_id']
      # verify the required parameter 'tls_subscription_id' is set
      if @api_client.config.client_side_validation && tls_subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'tls_subscription_id' when calling TlsSubscriptionsApi.patch_tls_sub"
      end
      # resource path
      local_var_path = '/tls/subscriptions/{tls_subscription_id}'.sub('{' + 'tls_subscription_id' + '}', CGI.escape(tls_subscription_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'force'] = opts[:'force'] if !opts[:'force'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/vnd.api+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'tls_subscription'])

      # return_type
      return_type = opts[:debug_return_type] || 'TlsSubscriptionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsSubscriptionsApi.patch_tls_sub",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsSubscriptionsApi#patch_tls_sub\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
