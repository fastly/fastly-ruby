=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class InvitationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an invitation
    # Create an invitation.
    # @option opts [Invitation] :invitation 
    # @return [InvitationResponse]
    def create_invitation(opts = {})
      data, _status_code, _headers = create_invitation_with_http_info(opts)
      data
    end

    # Create an invitation
    # Create an invitation.
    # @option opts [Invitation] :invitation 
    # @return [Array<(InvitationResponse, Integer, Hash)>] InvitationResponse data, response status code and response headers
    def create_invitation_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvitationsApi.create_invitation ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/invitations'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'invitation'])

      # return_type
      return_type = opts[:debug_return_type] || 'InvitationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"InvitationsApi.create_invitation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvitationsApi#create_invitation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an invitation
    # Delete an invitation.
    # @option opts [String] :invitation_id Alphanumeric string identifying an invitation. (required)
    # @return [nil]
    def delete_invitation(opts = {})
      delete_invitation_with_http_info(opts)
      nil
    end

    # Delete an invitation
    # Delete an invitation.
    # @option opts [String] :invitation_id Alphanumeric string identifying an invitation. (required)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_invitation_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvitationsApi.delete_invitation ...'
      end
      # unbox the parameters from the hash
      invitation_id = opts[:'invitation_id']
      # verify the required parameter 'invitation_id' is set
      if @api_client.config.client_side_validation && invitation_id.nil?
        fail ArgumentError, "Missing the required parameter 'invitation_id' when calling InvitationsApi.delete_invitation"
      end
      # resource path
      local_var_path = '/invitations/{invitation_id}'.sub('{' + 'invitation_id' + '}', CGI.escape(invitation_id.to_s))

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
        :operation => :"InvitationsApi.delete_invitation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvitationsApi#delete_invitation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List invitations
    # List all invitations.
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @return [InvitationsResponse]
    def list_invitations(opts = {})
      data, _status_code, _headers = list_invitations_with_http_info(opts)
      data
    end

    # List invitations
    # List all invitations.
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @return [Array<(InvitationsResponse, Integer, Hash)>] InvitationsResponse data, response status code and response headers
    def list_invitations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvitationsApi.list_invitations ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling InvitationsApi.list_invitations, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling InvitationsApi.list_invitations, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/invitations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page[number]'] = opts[:'page_number'] if !opts[:'page_number'].nil?
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InvitationsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"InvitationsApi.list_invitations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvitationsApi#list_invitations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
