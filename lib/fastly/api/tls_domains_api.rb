=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class TlsDomainsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List TLS domains
    # List all TLS domains.
    # @option opts [String] :filter_in_use Optional. Limit the returned domains to those currently using Fastly to terminate TLS with SNI (that is, domains considered \&quot;in use\&quot;) Permitted values: true, false.
    # @option opts [String] :filter_tls_certificates_id Optional. Limit the returned domains to those listed in the given TLS certificate&#39;s SAN list.
    # @option opts [String] :filter_tls_subscriptions_id Optional. Limit the returned domains to those for a given TLS subscription.
    # @option opts [String] :include Include related objects. Optional, comma-separated values. Permitted values: &#x60;tls_activations&#x60;, &#x60;tls_certificates&#x60;, &#x60;tls_subscriptions&#x60;, &#x60;tls_subscriptions.tls_authorizations&#x60;, &#x60;tls_authorizations.globalsign_email_challenge&#x60;, and &#x60;tls_authorizations.self_managed_http_challenge&#x60;. 
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :sort The order in which to list the results by creation date. (default to 'created_at')
    # @return [TlsDomainsResponse]
    def list_tls_domains(opts = {})
      data, _status_code, _headers = list_tls_domains_with_http_info(opts)
      data
    end

    # List TLS domains
    # List all TLS domains.
    # @option opts [String] :filter_in_use Optional. Limit the returned domains to those currently using Fastly to terminate TLS with SNI (that is, domains considered \&quot;in use\&quot;) Permitted values: true, false.
    # @option opts [String] :filter_tls_certificates_id Optional. Limit the returned domains to those listed in the given TLS certificate&#39;s SAN list.
    # @option opts [String] :filter_tls_subscriptions_id Optional. Limit the returned domains to those for a given TLS subscription.
    # @option opts [String] :include Include related objects. Optional, comma-separated values. Permitted values: &#x60;tls_activations&#x60;, &#x60;tls_certificates&#x60;, &#x60;tls_subscriptions&#x60;, &#x60;tls_subscriptions.tls_authorizations&#x60;, &#x60;tls_authorizations.globalsign_email_challenge&#x60;, and &#x60;tls_authorizations.self_managed_http_challenge&#x60;. 
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :sort The order in which to list the results by creation date. (default to 'created_at')
    # @return [Array<(TlsDomainsResponse, Integer, Hash)>] TlsDomainsResponse data, response status code and response headers
    def list_tls_domains_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsDomainsApi.list_tls_domains ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling TlsDomainsApi.list_tls_domains, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling TlsDomainsApi.list_tls_domains, must be greater than or equal to 1.'
      end

      allowable_values = ["created_at", "-created_at"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/tls/domains'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter[in_use]'] = opts[:'filter_in_use'] if !opts[:'filter_in_use'].nil?
      query_params[:'filter[tls_certificates.id]'] = opts[:'filter_tls_certificates_id'] if !opts[:'filter_tls_certificates_id'].nil?
      query_params[:'filter[tls_subscriptions.id]'] = opts[:'filter_tls_subscriptions_id'] if !opts[:'filter_tls_subscriptions_id'].nil?
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
      return_type = opts[:debug_return_type] || 'TlsDomainsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsDomainsApi.list_tls_domains",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsDomainsApi#list_tls_domains\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
