=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class UserApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a user
    # Create a user.
    # @option opts [String] :login The login associated with the user (typically, an email address).
    # @option opts [String] :name The real life name of the user.
    # @option opts [Boolean] :limit_services Indicates that the user has limited access to the customer&#39;s services.
    # @option opts [Boolean] :locked Indicates whether the is account is locked for editing or not.
    # @option opts [Boolean] :require_new_password Indicates if a new password is required at next login.
    # @option opts [RoleUser] :role 
    # @option opts [Boolean] :two_factor_auth_enabled Indicates if 2FA is enabled on the user.
    # @option opts [Boolean] :two_factor_setup_required Indicates if 2FA is required by the user&#39;s customer account.
    # @return [UserResponse]
    def create_user(opts = {})
      data, _status_code, _headers = create_user_with_http_info(opts)
      data
    end

    # Create a user
    # Create a user.
    # @option opts [String] :login The login associated with the user (typically, an email address).
    # @option opts [String] :name The real life name of the user.
    # @option opts [Boolean] :limit_services Indicates that the user has limited access to the customer&#39;s services.
    # @option opts [Boolean] :locked Indicates whether the is account is locked for editing or not.
    # @option opts [Boolean] :require_new_password Indicates if a new password is required at next login.
    # @option opts [RoleUser] :role 
    # @option opts [Boolean] :two_factor_auth_enabled Indicates if 2FA is enabled on the user.
    # @option opts [Boolean] :two_factor_setup_required Indicates if 2FA is required by the user&#39;s customer account.
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def create_user_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.create_user ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/user'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['login'] = opts[:'login'] if !opts[:'login'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['limit_services'] = opts[:'limit_services'] if !opts[:'limit_services'].nil?
      form_params['locked'] = opts[:'locked'] if !opts[:'locked'].nil?
      form_params['require_new_password'] = opts[:'require_new_password'] if !opts[:'require_new_password'].nil?
      form_params['role'] = opts[:'role'] if !opts[:'role'].nil?
      form_params['two_factor_auth_enabled'] = opts[:'two_factor_auth_enabled'] if !opts[:'two_factor_auth_enabled'].nil?
      form_params['two_factor_setup_required'] = opts[:'two_factor_setup_required'] if !opts[:'two_factor_setup_required'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UserResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"UserApi.create_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#create_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a user
    # Delete a user.
    # @option opts [String] :user_id Alphanumeric string identifying the user. (required)
    # @return [InlineResponse200]
    def delete_user(opts = {})
      data, _status_code, _headers = delete_user_with_http_info(opts)
      data
    end

    # Delete a user
    # Delete a user.
    # @option opts [String] :user_id Alphanumeric string identifying the user. (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def delete_user_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.delete_user ...'
      end
      # unbox the parameters from the hash
      user_id = opts[:'user_id']
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserApi.delete_user"
      end
      # resource path
      local_var_path = '/user/{user_id}'.sub('{' + 'user_id' + '}', CGI.escape(user_id.to_s))

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
        :operation => :"UserApi.delete_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#delete_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the current user
    # Get the logged in user.
    # @return [UserResponse]
    def get_current_user(opts = {})
      data, _status_code, _headers = get_current_user_with_http_info(opts)
      data
    end

    # Get the current user
    # Get the logged in user.
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def get_current_user_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.get_current_user ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/current_user'

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
      return_type = opts[:debug_return_type] || 'UserResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"UserApi.get_current_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#get_current_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a user
    # Get a specific user.
    # @option opts [String] :user_id Alphanumeric string identifying the user. (required)
    # @return [UserResponse]
    def get_user(opts = {})
      data, _status_code, _headers = get_user_with_http_info(opts)
      data
    end

    # Get a user
    # Get a specific user.
    # @option opts [String] :user_id Alphanumeric string identifying the user. (required)
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def get_user_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.get_user ...'
      end
      # unbox the parameters from the hash
      user_id = opts[:'user_id']
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserApi.get_user"
      end
      # resource path
      local_var_path = '/user/{user_id}'.sub('{' + 'user_id' + '}', CGI.escape(user_id.to_s))

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
      return_type = opts[:debug_return_type] || 'UserResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"UserApi.get_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#get_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Request a password reset
    # Requests a password reset for the specified user.
    # @option opts [String] :user_login The login associated with the user (typically, an email address). (required)
    # @return [InlineResponse200]
    def request_password_reset(opts = {})
      data, _status_code, _headers = request_password_reset_with_http_info(opts)
      data
    end

    # Request a password reset
    # Requests a password reset for the specified user.
    # @option opts [String] :user_login The login associated with the user (typically, an email address). (required)
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def request_password_reset_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.request_password_reset ...'
      end
      # unbox the parameters from the hash
      user_login = opts[:'user_login']
      # verify the required parameter 'user_login' is set
      if @api_client.config.client_side_validation && user_login.nil?
        fail ArgumentError, "Missing the required parameter 'user_login' when calling UserApi.request_password_reset"
      end
      # resource path
      local_var_path = '/user/{user_login}/password/request_reset'.sub('{' + 'user_login' + '}', CGI.escape(user_login.to_s))

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
        :operation => :"UserApi.request_password_reset",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#request_password_reset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a user
    # Update a user. Only users with the role of `superuser` can make changes to other users on the account. Non-superusers may use this endpoint to make changes to their own account. Modifications to `login` email require a valid password in the request body. Two-factor attributes are not editable via this endpoint.
    # @option opts [String] :user_id Alphanumeric string identifying the user. (required)
    # @option opts [String] :login The login associated with the user (typically, an email address).
    # @option opts [String] :name The real life name of the user.
    # @option opts [Boolean] :limit_services Indicates that the user has limited access to the customer&#39;s services.
    # @option opts [Boolean] :locked Indicates whether the is account is locked for editing or not.
    # @option opts [Boolean] :require_new_password Indicates if a new password is required at next login.
    # @option opts [RoleUser] :role 
    # @option opts [Boolean] :two_factor_auth_enabled Indicates if 2FA is enabled on the user.
    # @option opts [Boolean] :two_factor_setup_required Indicates if 2FA is required by the user&#39;s customer account.
    # @return [UserResponse]
    def update_user(opts = {})
      data, _status_code, _headers = update_user_with_http_info(opts)
      data
    end

    # Update a user
    # Update a user. Only users with the role of &#x60;superuser&#x60; can make changes to other users on the account. Non-superusers may use this endpoint to make changes to their own account. Modifications to &#x60;login&#x60; email require a valid password in the request body. Two-factor attributes are not editable via this endpoint.
    # @option opts [String] :user_id Alphanumeric string identifying the user. (required)
    # @option opts [String] :login The login associated with the user (typically, an email address).
    # @option opts [String] :name The real life name of the user.
    # @option opts [Boolean] :limit_services Indicates that the user has limited access to the customer&#39;s services.
    # @option opts [Boolean] :locked Indicates whether the is account is locked for editing or not.
    # @option opts [Boolean] :require_new_password Indicates if a new password is required at next login.
    # @option opts [RoleUser] :role 
    # @option opts [Boolean] :two_factor_auth_enabled Indicates if 2FA is enabled on the user.
    # @option opts [Boolean] :two_factor_setup_required Indicates if 2FA is required by the user&#39;s customer account.
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def update_user_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.update_user ...'
      end
      # unbox the parameters from the hash
      user_id = opts[:'user_id']
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserApi.update_user"
      end
      # resource path
      local_var_path = '/user/{user_id}'.sub('{' + 'user_id' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['login'] = opts[:'login'] if !opts[:'login'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['limit_services'] = opts[:'limit_services'] if !opts[:'limit_services'].nil?
      form_params['locked'] = opts[:'locked'] if !opts[:'locked'].nil?
      form_params['require_new_password'] = opts[:'require_new_password'] if !opts[:'require_new_password'].nil?
      form_params['role'] = opts[:'role'] if !opts[:'role'].nil?
      form_params['two_factor_auth_enabled'] = opts[:'two_factor_auth_enabled'] if !opts[:'two_factor_auth_enabled'].nil?
      form_params['two_factor_setup_required'] = opts[:'two_factor_setup_required'] if !opts[:'two_factor_setup_required'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UserResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"UserApi.update_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#update_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the user's password
    # Update the user's password to a new one.
    # @option opts [String] :old_password The user&#39;s current password.
    # @option opts [String] :new_password The user&#39;s new password.
    # @return [UserResponse]
    def update_user_password(opts = {})
      data, _status_code, _headers = update_user_password_with_http_info(opts)
      data
    end

    # Update the user&#39;s password
    # Update the user&#39;s password to a new one.
    # @option opts [String] :old_password The user&#39;s current password.
    # @option opts [String] :new_password The user&#39;s new password.
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def update_user_password_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.update_user_password ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/current_user/password'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['old_password'] = opts[:'old_password'] if !opts[:'old_password'].nil?
      form_params['new_password'] = opts[:'new_password'] if !opts[:'new_password'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UserResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['session_password_change']

      new_options = opts.merge(
        :operation => :"UserApi.update_user_password",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#update_user_password\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
