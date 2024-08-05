=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class TlsCertificatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a TLS certificate
    # Create a TLS certificate.
    # @option opts [TlsCertificate] :tls_certificate 
    # @return [Object]
    def create_tls_cert(opts = {})
      data, _status_code, _headers = create_tls_cert_with_http_info(opts)
      data
    end

    # Create a TLS certificate
    # Create a TLS certificate.
    # @option opts [TlsCertificate] :tls_certificate 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def create_tls_cert_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsCertificatesApi.create_tls_cert ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/tls/certificates'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'tls_certificate'])

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsCertificatesApi.create_tls_cert",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsCertificatesApi#create_tls_cert\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a TLS certificate
    # Destroy a TLS certificate. TLS certificates already enabled for a domain cannot be destroyed.
    # @option opts [String] :tls_certificate_id Alphanumeric string identifying a TLS certificate. (required)
    # @return [nil]
    def delete_tls_cert(opts = {})
      delete_tls_cert_with_http_info(opts)
      nil
    end

    # Delete a TLS certificate
    # Destroy a TLS certificate. TLS certificates already enabled for a domain cannot be destroyed.
    # @option opts [String] :tls_certificate_id Alphanumeric string identifying a TLS certificate. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_tls_cert_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsCertificatesApi.delete_tls_cert ...'
      end
      # unbox the parameters from the hash
      tls_certificate_id = opts[:'tls_certificate_id']
      # verify the required parameter 'tls_certificate_id' is set
      if @api_client.config.client_side_validation && tls_certificate_id.nil?
        fail ArgumentError, "Missing the required parameter 'tls_certificate_id' when calling TlsCertificatesApi.delete_tls_cert"
      end
      # resource path
      local_var_path = '/tls/certificates/{tls_certificate_id}'.sub('{' + 'tls_certificate_id' + '}', CGI.escape(tls_certificate_id.to_s))

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
        :operation => :"TlsCertificatesApi.delete_tls_cert",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsCertificatesApi#delete_tls_cert\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a TLS certificate
    # Show a TLS certificate.
    # @option opts [String] :tls_certificate_id Alphanumeric string identifying a TLS certificate. (required)
    # @return [TlsCertificateResponse]
    def get_tls_cert(opts = {})
      data, _status_code, _headers = get_tls_cert_with_http_info(opts)
      data
    end

    # Get a TLS certificate
    # Show a TLS certificate.
    # @option opts [String] :tls_certificate_id Alphanumeric string identifying a TLS certificate. (required)
    # @return [Array<(TlsCertificateResponse, Integer, Hash)>] TlsCertificateResponse data, response status code and response headers
    def get_tls_cert_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsCertificatesApi.get_tls_cert ...'
      end
      # unbox the parameters from the hash
      tls_certificate_id = opts[:'tls_certificate_id']
      # verify the required parameter 'tls_certificate_id' is set
      if @api_client.config.client_side_validation && tls_certificate_id.nil?
        fail ArgumentError, "Missing the required parameter 'tls_certificate_id' when calling TlsCertificatesApi.get_tls_cert"
      end
      # resource path
      local_var_path = '/tls/certificates/{tls_certificate_id}'.sub('{' + 'tls_certificate_id' + '}', CGI.escape(tls_certificate_id.to_s))

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
      return_type = opts[:debug_return_type] || 'TlsCertificateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsCertificatesApi.get_tls_cert",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsCertificatesApi#get_tls_cert\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a TLS certificate blob (Limited Availability)
    # Retrieve a TLS certificate blob. This feature is part of a [limited availability](https://docs.fastly.com/products/fastly-product-lifecycle#limited-availability) release.
    # @option opts [String] :tls_certificate_id Alphanumeric string identifying a TLS certificate. (required)
    # @return [TlsCertificateBlobResponse]
    def get_tls_cert_blob(opts = {})
      data, _status_code, _headers = get_tls_cert_blob_with_http_info(opts)
      data
    end

    # Get a TLS certificate blob (Limited Availability)
    # Retrieve a TLS certificate blob. This feature is part of a [limited availability](https://docs.fastly.com/products/fastly-product-lifecycle#limited-availability) release.
    # @option opts [String] :tls_certificate_id Alphanumeric string identifying a TLS certificate. (required)
    # @return [Array<(TlsCertificateBlobResponse, Integer, Hash)>] TlsCertificateBlobResponse data, response status code and response headers
    def get_tls_cert_blob_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsCertificatesApi.get_tls_cert_blob ...'
      end
      # unbox the parameters from the hash
      tls_certificate_id = opts[:'tls_certificate_id']
      # verify the required parameter 'tls_certificate_id' is set
      if @api_client.config.client_side_validation && tls_certificate_id.nil?
        fail ArgumentError, "Missing the required parameter 'tls_certificate_id' when calling TlsCertificatesApi.get_tls_cert_blob"
      end
      # resource path
      local_var_path = '/tls/certificates/{tls_certificate_id}/blob'.sub('{' + 'tls_certificate_id' + '}', CGI.escape(tls_certificate_id.to_s))

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
      return_type = opts[:debug_return_type] || 'TlsCertificateBlobResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsCertificatesApi.get_tls_cert_blob",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsCertificatesApi#get_tls_cert_blob\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List TLS certificates
    # List all TLS certificates.
    # @option opts [String] :filter_in_use Optional. Limit the returned certificates to those currently using Fastly to terminate TLS (that is, certificates associated with an activation). Permitted values: true, false.
    # @option opts [String] :filter_not_after Limit the returned certificates to those that expire prior to the specified date in UTC. Accepts parameters: lte (e.g., filter[not_after][lte]&#x3D;2020-05-05). 
    # @option opts [String] :filter_tls_domains_id Limit the returned certificates to those that include the specific domain.
    # @option opts [String] :include Include related objects. Optional, comma-separated values. Permitted values: &#x60;tls_activations&#x60;. 
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :sort The order in which to list the results by creation date. (default to 'created_at')
    # @return [TlsCertificatesResponse]
    def list_tls_certs(opts = {})
      data, _status_code, _headers = list_tls_certs_with_http_info(opts)
      data
    end

    # List TLS certificates
    # List all TLS certificates.
    # @option opts [String] :filter_in_use Optional. Limit the returned certificates to those currently using Fastly to terminate TLS (that is, certificates associated with an activation). Permitted values: true, false.
    # @option opts [String] :filter_not_after Limit the returned certificates to those that expire prior to the specified date in UTC. Accepts parameters: lte (e.g., filter[not_after][lte]&#x3D;2020-05-05). 
    # @option opts [String] :filter_tls_domains_id Limit the returned certificates to those that include the specific domain.
    # @option opts [String] :include Include related objects. Optional, comma-separated values. Permitted values: &#x60;tls_activations&#x60;. 
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :sort The order in which to list the results by creation date. (default to 'created_at')
    # @return [Array<(TlsCertificatesResponse, Integer, Hash)>] TlsCertificatesResponse data, response status code and response headers
    def list_tls_certs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsCertificatesApi.list_tls_certs ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling TlsCertificatesApi.list_tls_certs, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling TlsCertificatesApi.list_tls_certs, must be greater than or equal to 1.'
      end

      allowable_values = ["created_at", "-created_at"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/tls/certificates'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter[in_use]'] = opts[:'filter_in_use'] if !opts[:'filter_in_use'].nil?
      query_params[:'filter[not_after]'] = opts[:'filter_not_after'] if !opts[:'filter_not_after'].nil?
      query_params[:'filter[tls_domains.id]'] = opts[:'filter_tls_domains_id'] if !opts[:'filter_tls_domains_id'].nil?
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
      return_type = opts[:debug_return_type] || 'TlsCertificatesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsCertificatesApi.list_tls_certs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsCertificatesApi#list_tls_certs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a TLS certificate
    # Replace a TLS certificate with a newly reissued TLS certificate, or update a TLS certificate's name. If replacing a TLS certificate, the new TLS certificate must contain all SAN entries as the current TLS certificate. It must either have an exact matching list or contain a superset.
    # @option opts [String] :tls_certificate_id Alphanumeric string identifying a TLS certificate. (required)
    # @option opts [TlsCertificate] :tls_certificate 
    # @return [TlsCertificateResponse]
    def update_tls_cert(opts = {})
      data, _status_code, _headers = update_tls_cert_with_http_info(opts)
      data
    end

    # Update a TLS certificate
    # Replace a TLS certificate with a newly reissued TLS certificate, or update a TLS certificate&#39;s name. If replacing a TLS certificate, the new TLS certificate must contain all SAN entries as the current TLS certificate. It must either have an exact matching list or contain a superset.
    # @option opts [String] :tls_certificate_id Alphanumeric string identifying a TLS certificate. (required)
    # @option opts [TlsCertificate] :tls_certificate 
    # @return [Array<(TlsCertificateResponse, Integer, Hash)>] TlsCertificateResponse data, response status code and response headers
    def update_tls_cert_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsCertificatesApi.update_tls_cert ...'
      end
      # unbox the parameters from the hash
      tls_certificate_id = opts[:'tls_certificate_id']
      # verify the required parameter 'tls_certificate_id' is set
      if @api_client.config.client_side_validation && tls_certificate_id.nil?
        fail ArgumentError, "Missing the required parameter 'tls_certificate_id' when calling TlsCertificatesApi.update_tls_cert"
      end
      # resource path
      local_var_path = '/tls/certificates/{tls_certificate_id}'.sub('{' + 'tls_certificate_id' + '}', CGI.escape(tls_certificate_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'tls_certificate'])

      # return_type
      return_type = opts[:debug_return_type] || 'TlsCertificateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsCertificatesApi.update_tls_cert",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsCertificatesApi#update_tls_cert\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
