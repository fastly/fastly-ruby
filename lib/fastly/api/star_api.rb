=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class StarApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a star
    # Create star.
    # @option opts [Star] :star 
    # @return [StarResponse]
    def create_service_star(opts = {})
      data, _status_code, _headers = create_service_star_with_http_info(opts)
      data
    end

    # Create a star
    # Create star.
    # @option opts [Star] :star 
    # @return [Array<(StarResponse, Integer, Hash)>] StarResponse data, response status code and response headers
    def create_service_star_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StarApi.create_service_star ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/stars'

      # query parameters
      query_params = opts[:query_params] || {}

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'star'])

      # return_type
      return_type = opts[:debug_return_type] || 'StarResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"StarApi.create_service_star",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StarApi#create_service_star\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a star
    # Delete star.
    # @option opts [String] :star_id Alphanumeric string identifying a star. (required)
    # @return [nil]
    def delete_service_star(opts = {})
      delete_service_star_with_http_info(opts)
      nil
    end

    # Delete a star
    # Delete star.
    # @option opts [String] :star_id Alphanumeric string identifying a star. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_service_star_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StarApi.delete_service_star ...'
      end
      # unbox the parameters from the hash
      star_id = opts[:'star_id']
      # verify the required parameter 'star_id' is set
      if @api_client.config.client_side_validation && star_id.nil?
        fail ArgumentError, "Missing the required parameter 'star_id' when calling StarApi.delete_service_star"
      end
      # resource path
      local_var_path = '/stars/{star_id}'.sub('{' + 'star_id' + '}', CGI.escape(star_id.to_s))

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
        :operation => :"StarApi.delete_service_star",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StarApi#delete_service_star\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a star
    # Show star.
    # @option opts [String] :star_id Alphanumeric string identifying a star. (required)
    # @return [StarResponse]
    def get_service_star(opts = {})
      data, _status_code, _headers = get_service_star_with_http_info(opts)
      data
    end

    # Get a star
    # Show star.
    # @option opts [String] :star_id Alphanumeric string identifying a star. (required)
    # @return [Array<(StarResponse, Integer, Hash)>] StarResponse data, response status code and response headers
    def get_service_star_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StarApi.get_service_star ...'
      end
      # unbox the parameters from the hash
      star_id = opts[:'star_id']
      # verify the required parameter 'star_id' is set
      if @api_client.config.client_side_validation && star_id.nil?
        fail ArgumentError, "Missing the required parameter 'star_id' when calling StarApi.get_service_star"
      end
      # resource path
      local_var_path = '/stars/{star_id}'.sub('{' + 'star_id' + '}', CGI.escape(star_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'StarResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"StarApi.get_service_star",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StarApi#get_service_star\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List stars
    # List stars.
    # @return [Pagination]
    def list_service_stars(opts = {})
      data, _status_code, _headers = list_service_stars_with_http_info(opts)
      data
    end

    # List stars
    # List stars.
    # @return [Array<(Pagination, Integer, Hash)>] Pagination data, response status code and response headers
    def list_service_stars_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StarApi.list_service_stars ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/stars'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Pagination'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"StarApi.list_service_stars",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StarApi#list_service_stars\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
