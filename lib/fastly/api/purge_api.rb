=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0


=end

require 'cgi'

module Fastly
  class PurgeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Purge multiple surrogate key tags
    # Instant Purge a particular service of items tagged with surrogate keys. Up to 256 surrogate keys can be purged in one batch request. As an alternative to sending the keys in a JSON object in the body of the request, this endpoint also supports listing keys in a <code>Surrogate-Key</code> request header, e.g. <code>Surrogate-Key: key_1 key_2 key_3</code>. 
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :fastly_soft_purge Optional header indicating that the operation should be a &#39;soft&#39; purge, which marks the affected object as stale rather than making it inaccessible. (default to 1)
    # @option opts [String] :surrogate_key Purge multiple surrogate key tags using a request header. Not required if a JSON POST body is specified.
    # @option opts [PurgeResponse] :purge_response 
    # @return [Hash<String, String>]
    def bulk_purge_tag(opts = {})
      data, _status_code, _headers = bulk_purge_tag_with_http_info(opts)
      data
    end

    # Purge multiple surrogate key tags
    # Instant Purge a particular service of items tagged with surrogate keys. Up to 256 surrogate keys can be purged in one batch request. As an alternative to sending the keys in a JSON object in the body of the request, this endpoint also supports listing keys in a &lt;code&gt;Surrogate-Key&lt;/code&gt; request header, e.g. &lt;code&gt;Surrogate-Key: key_1 key_2 key_3&lt;/code&gt;. 
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [Integer] :fastly_soft_purge Optional header indicating that the operation should be a &#39;soft&#39; purge, which marks the affected object as stale rather than making it inaccessible. (default to 1)
    # @option opts [String] :surrogate_key Purge multiple surrogate key tags using a request header. Not required if a JSON POST body is specified.
    # @option opts [PurgeResponse] :purge_response 
    # @return [Array<(Hash<String, String>, Integer, Hash)>] Hash<String, String> data, response status code and response headers
    def bulk_purge_tag_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PurgeApi.bulk_purge_tag ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling PurgeApi.bulk_purge_tag"
      end
      # resource path
      local_var_path = '/service/{service_id}/purge'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

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
      header_params[:'fastly-soft-purge'] = opts[:'fastly_soft_purge'] if !opts[:'fastly_soft_purge'].nil?
      header_params[:'surrogate-key'] = opts[:'surrogate_key'] if !opts[:'surrogate_key'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'purge_response'])

      # return_type
      return_type = opts[:debug_return_type] || 'Hash<String, String>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"PurgeApi.bulk_purge_tag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurgeApi#bulk_purge_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Purge everything from a service
    # Instant Purge everything from a service.  Purge-all requests cannot be done in soft mode and will always immediately invalidate all cached content associated with the service. To do a soft-purge-all, consider applying a constant [surrogate key](https://docs.fastly.com/en/guides/getting-started-with-surrogate-keys) tag (e.g., `\"all\"`) to all objects. 
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [InlineResponse200]
    def purge_all(opts = {})
      data, _status_code, _headers = purge_all_with_http_info(opts)
      data
    end

    # Purge everything from a service
    # Instant Purge everything from a service.  Purge-all requests cannot be done in soft mode and will always immediately invalidate all cached content associated with the service. To do a soft-purge-all, consider applying a constant [surrogate key](https://docs.fastly.com/en/guides/getting-started-with-surrogate-keys) tag (e.g., &#x60;\&quot;all\&quot;&#x60;) to all objects. 
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def purge_all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PurgeApi.purge_all ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling PurgeApi.purge_all"
      end
      # resource path
      local_var_path = '/service/{service_id}/purge_all'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

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
        :operation => :"PurgeApi.purge_all",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurgeApi#purge_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Purge a URL
    # Instant Purge an individual URL.
    # @option opts [String] :host The hostname for the content you&#39;ll be purging. (required)
    # @option opts [Integer] :fastly_soft_purge Optional header indicating that the operation should be a &#39;soft&#39; purge, which marks the affected object as stale rather than making it inaccessible. (default to 1)
    # @return [PurgeResponse]
    def purge_single_url(opts = {})
      data, _status_code, _headers = purge_single_url_with_http_info(opts)
      data
    end

    # Purge a URL
    # Instant Purge an individual URL.
    # @option opts [String] :host The hostname for the content you&#39;ll be purging. (required)
    # @option opts [Integer] :fastly_soft_purge Optional header indicating that the operation should be a &#39;soft&#39; purge, which marks the affected object as stale rather than making it inaccessible. (default to 1)
    # @return [Array<(PurgeResponse, Integer, Hash)>] PurgeResponse data, response status code and response headers
    def purge_single_url_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PurgeApi.purge_single_url ...'
      end
      # unbox the parameters from the hash
      host = opts[:'host']
      # verify the required parameter 'host' is set
      if @api_client.config.client_side_validation && host.nil?
        fail ArgumentError, "Missing the required parameter 'host' when calling PurgeApi.purge_single_url"
      end
      # resource path
      local_var_path = '/*'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'host'] = host
      header_params[:'fastly-soft-purge'] = opts[:'fastly_soft_purge'] if !opts[:'fastly_soft_purge'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PurgeResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['url_purge']

      new_options = opts.merge(
        :operation => :"PurgeApi.purge_single_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurgeApi#purge_single_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Purge by surrogate key tag
    # Instant Purge a particular service of items tagged with a Surrogate Key. Only one surrogate key can be purged at a time. Multiple keys can be purged using a batch surrogate key purge request.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :surrogate_key Surrogate keys are used to efficiently purge content from cache. Instead of purging your entire site or individual URLs, you can tag related assets (like all images and descriptions associated with a single product) with surrogate keys, and these grouped URLs can be purged in a single request. (required)
    # @option opts [Integer] :fastly_soft_purge Optional header indicating that the operation should be a &#39;soft&#39; purge, which marks the affected object as stale rather than making it inaccessible. (default to 1)
    # @return [PurgeResponse]
    def purge_tag(opts = {})
      data, _status_code, _headers = purge_tag_with_http_info(opts)
      data
    end

    # Purge by surrogate key tag
    # Instant Purge a particular service of items tagged with a Surrogate Key. Only one surrogate key can be purged at a time. Multiple keys can be purged using a batch surrogate key purge request.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :surrogate_key Surrogate keys are used to efficiently purge content from cache. Instead of purging your entire site or individual URLs, you can tag related assets (like all images and descriptions associated with a single product) with surrogate keys, and these grouped URLs can be purged in a single request. (required)
    # @option opts [Integer] :fastly_soft_purge Optional header indicating that the operation should be a &#39;soft&#39; purge, which marks the affected object as stale rather than making it inaccessible. (default to 1)
    # @return [Array<(PurgeResponse, Integer, Hash)>] PurgeResponse data, response status code and response headers
    def purge_tag_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PurgeApi.purge_tag ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      surrogate_key = opts[:'surrogate_key']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling PurgeApi.purge_tag"
      end
      # verify the required parameter 'surrogate_key' is set
      if @api_client.config.client_side_validation && surrogate_key.nil?
        fail ArgumentError, "Missing the required parameter 'surrogate_key' when calling PurgeApi.purge_tag"
      end
      # resource path
      local_var_path = '/service/{service_id}/purge/{surrogate_key}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'surrogate_key' + '}', CGI.escape(surrogate_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'fastly-soft-purge'] = opts[:'fastly_soft_purge'] if !opts[:'fastly_soft_purge'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PurgeResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"PurgeApi.purge_tag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurgeApi#purge_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
