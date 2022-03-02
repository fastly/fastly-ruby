=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0


=end

require 'cgi'

module Fastly
  class DocsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Fastly API docs as structured data
    # Gets all documentation associated with the Fastly API.
    # @return [Array<Object>]
    def get_docs(opts = {})
      data, _status_code, _headers = get_docs_with_http_info(opts)
      data
    end

    # Get Fastly API docs as structured data
    # Gets all documentation associated with the Fastly API.
    # @return [Array<(Array<Object>, Integer, Hash)>] Array<Object> data, response status code and response headers
    def get_docs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocsApi.get_docs ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/docs'

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
      return_type = opts[:debug_return_type] || 'Array<Object>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DocsApi.get_docs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocsApi#get_docs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get API docs matching a section filter
    # Gets all documentation associated with a given Categorical Section where `section` is a regular_expression. Passing `invert=true` will force a return of everything that does not match the given regular expression.
    # @option opts [String] :section The section to search for. Supports regular expressions. (required)
    # @option opts [String] :invert Get everything that does not match section. (required)
    # @return [nil]
    def get_docs_section(opts = {})
      get_docs_section_with_http_info(opts)
      nil
    end

    # Get API docs matching a section filter
    # Gets all documentation associated with a given Categorical Section where &#x60;section&#x60; is a regular_expression. Passing &#x60;invert&#x3D;true&#x60; will force a return of everything that does not match the given regular expression.
    # @option opts [String] :section The section to search for. Supports regular expressions. (required)
    # @option opts [String] :invert Get everything that does not match section. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def get_docs_section_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocsApi.get_docs_section ...'
      end
      # unbox the parameters from the hash
      section = opts[:'section']
      invert = opts[:'invert']
      # verify the required parameter 'section' is set
      if @api_client.config.client_side_validation && section.nil?
        fail ArgumentError, "Missing the required parameter 'section' when calling DocsApi.get_docs_section"
      end
      # verify the required parameter 'invert' is set
      if @api_client.config.client_side_validation && invert.nil?
        fail ArgumentError, "Missing the required parameter 'invert' when calling DocsApi.get_docs_section"
      end
      # resource path
      local_var_path = '/docs/section/{section}'.sub('{' + 'section' + '}', CGI.escape(section.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'invert'] = invert

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DocsApi.get_docs_section",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocsApi#get_docs_section\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get API docs for a single subject
    # Gets all documentation relating to a given 'Subject'.
    # @option opts [String] :subject The subject to search for. Supports regular expressions. (required)
    # @return [nil]
    def get_docs_subject(opts = {})
      get_docs_subject_with_http_info(opts)
      nil
    end

    # Get API docs for a single subject
    # Gets all documentation relating to a given &#39;Subject&#39;.
    # @option opts [String] :subject The subject to search for. Supports regular expressions. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def get_docs_subject_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocsApi.get_docs_subject ...'
      end
      # unbox the parameters from the hash
      subject = opts[:'subject']
      # verify the required parameter 'subject' is set
      if @api_client.config.client_side_validation && subject.nil?
        fail ArgumentError, "Missing the required parameter 'subject' when calling DocsApi.get_docs_subject"
      end
      # resource path
      local_var_path = '/docs/subject/{subject}'.sub('{' + 'subject' + '}', CGI.escape(subject.to_s))

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"DocsApi.get_docs_subject",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocsApi#get_docs_subject\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
