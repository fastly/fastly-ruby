=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class DomainResearchApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Domain status
    # The `Status` method checks the availability status of a single domain name.
    # @option opts [String] :domain  (required)
    # @option opts [String] :scope 
    # @return [Status]
    def domain_status(opts = {})
      data, _status_code, _headers = domain_status_with_http_info(opts)
      data
    end

    # Domain status
    # The &#x60;Status&#x60; method checks the availability status of a single domain name.
    # @option opts [String] :domain  (required)
    # @option opts [String] :scope 
    # @return [Array<(Status, Integer, Hash)>] Status data, response status code and response headers
    def domain_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DomainResearchApi.domain_status ...'
      end
      # unbox the parameters from the hash
      domain = opts[:'domain']
      # verify the required parameter 'domain' is set
      if @api_client.config.client_side_validation && domain.nil?
        fail ArgumentError, "Missing the required parameter 'domain' when calling DomainResearchApi.domain_status"
      end
      # resource path
      local_var_path = '/domain-management/v1/tools/status'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'domain'] = domain
      query_params[:'scope'] = opts[:'scope'] if !opts[:'scope'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Status'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DomainResearchApi.domain_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DomainResearchApi#domain_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Suggest domains
    # The `Suggest` method performs a real-time query of the search term(s) against the [known zone database](http://zonedb.org), making recommendations, stemming, and applying Unicode folding, IDN normalization, registrar supported-zone restrictions, and other refinements. **Note:** `Suggest` method responses do not include domain availability status. 
    # @option opts [String] :query  (required)
    # @option opts [String] :defaults 
    # @option opts [String] :keywords 
    # @option opts [String] :location 
    # @option opts [String] :vendor 
    # @return [InlineResponse2006]
    def suggest_domains(opts = {})
      data, _status_code, _headers = suggest_domains_with_http_info(opts)
      data
    end

    # Suggest domains
    # The &#x60;Suggest&#x60; method performs a real-time query of the search term(s) against the [known zone database](http://zonedb.org), making recommendations, stemming, and applying Unicode folding, IDN normalization, registrar supported-zone restrictions, and other refinements. **Note:** &#x60;Suggest&#x60; method responses do not include domain availability status. 
    # @option opts [String] :query  (required)
    # @option opts [String] :defaults 
    # @option opts [String] :keywords 
    # @option opts [String] :location 
    # @option opts [String] :vendor 
    # @return [Array<(InlineResponse2006, Integer, Hash)>] InlineResponse2006 data, response status code and response headers
    def suggest_domains_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DomainResearchApi.suggest_domains ...'
      end
      # unbox the parameters from the hash
      query = opts[:'query']
      # verify the required parameter 'query' is set
      if @api_client.config.client_side_validation && query.nil?
        fail ArgumentError, "Missing the required parameter 'query' when calling DomainResearchApi.suggest_domains"
      end
      # resource path
      local_var_path = '/domain-management/v1/tools/suggest'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'query'] = query
      query_params[:'defaults'] = opts[:'defaults'] if !opts[:'defaults'].nil?
      query_params[:'keywords'] = opts[:'keywords'] if !opts[:'keywords'].nil?
      query_params[:'location'] = opts[:'location'] if !opts[:'location'].nil?
      query_params[:'vendor'] = opts[:'vendor'] if !opts[:'vendor'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InlineResponse2006'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DomainResearchApi.suggest_domains",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DomainResearchApi#suggest_domains\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
