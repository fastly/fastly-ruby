=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0


=end

require 'cgi'

module Fastly
  class TlsBulkCertificatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a certificate
    # Destroy a certificate. This disables TLS for all domains listed as SAN entries.
    # @option opts [String] :certificate_id Alphanumeric string identifying a TLS bulk certificate. (required)
    # @return [nil]
    def delete_bulk_tls_cert(opts = {})
      delete_bulk_tls_cert_with_http_info(opts)
      nil
    end

    # Delete a certificate
    # Destroy a certificate. This disables TLS for all domains listed as SAN entries.
    # @option opts [String] :certificate_id Alphanumeric string identifying a TLS bulk certificate. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_bulk_tls_cert_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsBulkCertificatesApi.delete_bulk_tls_cert ...'
      end
      # unbox the parameters from the hash
      certificate_id = opts[:'certificate_id']
      # verify the required parameter 'certificate_id' is set
      if @api_client.config.client_side_validation && certificate_id.nil?
        fail ArgumentError, "Missing the required parameter 'certificate_id' when calling TlsBulkCertificatesApi.delete_bulk_tls_cert"
      end
      # resource path
      local_var_path = '/tls/bulk/certificates/{certificate_id}'.sub('{' + 'certificate_id' + '}', CGI.escape(certificate_id.to_s))

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
        :operation => :"TlsBulkCertificatesApi.delete_bulk_tls_cert",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsBulkCertificatesApi#delete_bulk_tls_cert\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a certificate
    # Retrieve a single certificate.
    # @option opts [String] :certificate_id Alphanumeric string identifying a TLS bulk certificate. (required)
    # @return [TlsBulkCertificateResponse]
    def get_tls_bulk_cert(opts = {})
      data, _status_code, _headers = get_tls_bulk_cert_with_http_info(opts)
      data
    end

    # Get a certificate
    # Retrieve a single certificate.
    # @option opts [String] :certificate_id Alphanumeric string identifying a TLS bulk certificate. (required)
    # @return [Array<(TlsBulkCertificateResponse, Integer, Hash)>] TlsBulkCertificateResponse data, response status code and response headers
    def get_tls_bulk_cert_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsBulkCertificatesApi.get_tls_bulk_cert ...'
      end
      # unbox the parameters from the hash
      certificate_id = opts[:'certificate_id']
      # verify the required parameter 'certificate_id' is set
      if @api_client.config.client_side_validation && certificate_id.nil?
        fail ArgumentError, "Missing the required parameter 'certificate_id' when calling TlsBulkCertificatesApi.get_tls_bulk_cert"
      end
      # resource path
      local_var_path = '/tls/bulk/certificates/{certificate_id}'.sub('{' + 'certificate_id' + '}', CGI.escape(certificate_id.to_s))

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
      return_type = opts[:debug_return_type] || 'TlsBulkCertificateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsBulkCertificatesApi.get_tls_bulk_cert",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsBulkCertificatesApi#get_tls_bulk_cert\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List certificates
    # List all certificates.
    # @option opts [String] :filter_tls_domain_id Filter certificates by their matching, fully-qualified domain name.
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :sort The order in which to list the results by creation date. (default to 'created_at')
    # @return [TlsBulkCertificatesResponse]
    def list_tls_bulk_certs(opts = {})
      data, _status_code, _headers = list_tls_bulk_certs_with_http_info(opts)
      data
    end

    # List certificates
    # List all certificates.
    # @option opts [String] :filter_tls_domain_id Filter certificates by their matching, fully-qualified domain name.
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :sort The order in which to list the results by creation date. (default to 'created_at')
    # @return [Array<(TlsBulkCertificatesResponse, Integer, Hash)>] TlsBulkCertificatesResponse data, response status code and response headers
    def list_tls_bulk_certs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsBulkCertificatesApi.list_tls_bulk_certs ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling TlsBulkCertificatesApi.list_tls_bulk_certs, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling TlsBulkCertificatesApi.list_tls_bulk_certs, must be greater than or equal to 1.'
      end

      allowable_values = ["created_at", "-created_at"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/tls/bulk/certificates'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter[tls_domain.id]'] = opts[:'filter_tls_domain_id'] if !opts[:'filter_tls_domain_id'].nil?
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
      return_type = opts[:debug_return_type] || 'TlsBulkCertificatesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsBulkCertificatesApi.list_tls_bulk_certs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsBulkCertificatesApi#list_tls_bulk_certs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a certificate
    # Replace a certificate with a newly reissued certificate. By using this endpoint, the original certificate will cease to be used for future TLS handshakes. Thus, only SAN entries that appear in the replacement certificate will become TLS enabled. Any SAN entries that are missing in the replacement certificate will become disabled.
    # @option opts [String] :certificate_id Alphanumeric string identifying a TLS bulk certificate. (required)
    # @option opts [TlsBulkCertificate] :tls_bulk_certificate 
    # @return [TlsBulkCertificateResponse]
    def update_bulk_tls_cert(opts = {})
      data, _status_code, _headers = update_bulk_tls_cert_with_http_info(opts)
      data
    end

    # Update a certificate
    # Replace a certificate with a newly reissued certificate. By using this endpoint, the original certificate will cease to be used for future TLS handshakes. Thus, only SAN entries that appear in the replacement certificate will become TLS enabled. Any SAN entries that are missing in the replacement certificate will become disabled.
    # @option opts [String] :certificate_id Alphanumeric string identifying a TLS bulk certificate. (required)
    # @option opts [TlsBulkCertificate] :tls_bulk_certificate 
    # @return [Array<(TlsBulkCertificateResponse, Integer, Hash)>] TlsBulkCertificateResponse data, response status code and response headers
    def update_bulk_tls_cert_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsBulkCertificatesApi.update_bulk_tls_cert ...'
      end
      # unbox the parameters from the hash
      certificate_id = opts[:'certificate_id']
      # verify the required parameter 'certificate_id' is set
      if @api_client.config.client_side_validation && certificate_id.nil?
        fail ArgumentError, "Missing the required parameter 'certificate_id' when calling TlsBulkCertificatesApi.update_bulk_tls_cert"
      end
      # resource path
      local_var_path = '/tls/bulk/certificates/{certificate_id}'.sub('{' + 'certificate_id' + '}', CGI.escape(certificate_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'tls_bulk_certificate'])

      # return_type
      return_type = opts[:debug_return_type] || 'TlsBulkCertificateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsBulkCertificatesApi.update_bulk_tls_cert",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsBulkCertificatesApi#update_bulk_tls_cert\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload a certificate
    # Upload a new certificate. TLS domains are automatically enabled upon certificate creation. If a domain is already enabled on a previously uploaded certificate, that domain will be updated to use the new certificate for all future TLS handshake requests.
    # @option opts [TlsBulkCertificate] :tls_bulk_certificate 
    # @return [TlsBulkCertificateResponse]
    def upload_tls_bulk_cert(opts = {})
      data, _status_code, _headers = upload_tls_bulk_cert_with_http_info(opts)
      data
    end

    # Upload a certificate
    # Upload a new certificate. TLS domains are automatically enabled upon certificate creation. If a domain is already enabled on a previously uploaded certificate, that domain will be updated to use the new certificate for all future TLS handshake requests.
    # @option opts [TlsBulkCertificate] :tls_bulk_certificate 
    # @return [Array<(TlsBulkCertificateResponse, Integer, Hash)>] TlsBulkCertificateResponse data, response status code and response headers
    def upload_tls_bulk_cert_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TlsBulkCertificatesApi.upload_tls_bulk_cert ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/tls/bulk/certificates'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'tls_bulk_certificate'])

      # return_type
      return_type = opts[:debug_return_type] || 'TlsBulkCertificateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"TlsBulkCertificatesApi.upload_tls_bulk_cert",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TlsBulkCertificatesApi#upload_tls_bulk_cert\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
