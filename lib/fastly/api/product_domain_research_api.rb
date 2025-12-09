=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class ProductDomainResearchApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Disable product
    # Disable the Domain Research product.
    # @return [nil]
    def disable_product_domain_research(opts = {})
      disable_product_domain_research_with_http_info(opts)
      nil
    end

    # Disable product
    # Disable the Domain Research product.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def disable_product_domain_research_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductDomainResearchApi.disable_product_domain_research ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/enabled-products/v1/domain_research'

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
        :operation => :"ProductDomainResearchApi.disable_product_domain_research",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductDomainResearchApi#disable_product_domain_research\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enable product
    # Enable the Domain Research product.
    # @return [DomainResearchResponseBodyEnable]
    def enable_domain_research(opts = {})
      data, _status_code, _headers = enable_domain_research_with_http_info(opts)
      data
    end

    # Enable product
    # Enable the Domain Research product.
    # @return [Array<(DomainResearchResponseBodyEnable, Integer, Hash)>] DomainResearchResponseBodyEnable data, response status code and response headers
    def enable_domain_research_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductDomainResearchApi.enable_domain_research ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/enabled-products/v1/domain_research'

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
      return_type = opts[:debug_return_type] || 'DomainResearchResponseBodyEnable'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ProductDomainResearchApi.enable_domain_research",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductDomainResearchApi#enable_domain_research\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get product enablement status
    # Get the enablement status of the Domain Research product.
    # @return [DomainResearchResponseBodyEnable]
    def get_domain_research(opts = {})
      data, _status_code, _headers = get_domain_research_with_http_info(opts)
      data
    end

    # Get product enablement status
    # Get the enablement status of the Domain Research product.
    # @return [Array<(DomainResearchResponseBodyEnable, Integer, Hash)>] DomainResearchResponseBodyEnable data, response status code and response headers
    def get_domain_research_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductDomainResearchApi.get_domain_research ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/enabled-products/v1/domain_research'

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
      return_type = opts[:debug_return_type] || 'DomainResearchResponseBodyEnable'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"ProductDomainResearchApi.get_domain_research",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductDomainResearchApi#get_domain_research\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
