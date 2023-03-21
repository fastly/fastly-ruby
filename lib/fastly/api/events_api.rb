=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class EventsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get an event
    # Get a specific event.
    # @option opts [String] :event_id Alphanumeric string identifying an event. (required)
    # @return [EventResponse]
    def get_event(opts = {})
      data, _status_code, _headers = get_event_with_http_info(opts)
      data
    end

    # Get an event
    # Get a specific event.
    # @option opts [String] :event_id Alphanumeric string identifying an event. (required)
    # @return [Array<(EventResponse, Integer, Hash)>] EventResponse data, response status code and response headers
    def get_event_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.get_event ...'
      end
      # unbox the parameters from the hash
      event_id = opts[:'event_id']
      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling EventsApi.get_event"
      end
      # resource path
      local_var_path = '/events/{event_id}'.sub('{' + 'event_id' + '}', CGI.escape(event_id.to_s))

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
      return_type = opts[:debug_return_type] || 'EventResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"EventsApi.get_event",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#get_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List events
    # List all events for a particular customer. Events can be filtered by user, customer and event type. Events can be sorted by date.
    # @option opts [String] :filter_customer_id Limit the results returned to a specific customer.
    # @option opts [String] :filter_event_type Limit the returned events to a specific &#x60;event_type&#x60;.
    # @option opts [String] :filter_service_id Limit the results returned to a specific service.
    # @option opts [String] :filter_user_id Limit the results returned to a specific user.
    # @option opts [String] :filter_token_id Limit the returned events to a specific token.
    # @option opts [String] :filter_created_at Limit the returned events to a specific time frame. Accepts sub-parameters: lt, lte, gt, gte (e.g., filter[created_at][gt]&#x3D;2022-01-12). 
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :sort The order in which to list the results by creation date. (default to 'created_at')
    # @return [EventsResponse]
    def list_events(opts = {})
      data, _status_code, _headers = list_events_with_http_info(opts)
      data
    end

    # List events
    # List all events for a particular customer. Events can be filtered by user, customer and event type. Events can be sorted by date.
    # @option opts [String] :filter_customer_id Limit the results returned to a specific customer.
    # @option opts [String] :filter_event_type Limit the returned events to a specific &#x60;event_type&#x60;.
    # @option opts [String] :filter_service_id Limit the results returned to a specific service.
    # @option opts [String] :filter_user_id Limit the results returned to a specific user.
    # @option opts [String] :filter_token_id Limit the returned events to a specific token.
    # @option opts [String] :filter_created_at Limit the returned events to a specific time frame. Accepts sub-parameters: lt, lte, gt, gte (e.g., filter[created_at][gt]&#x3D;2022-01-12). 
    # @option opts [Integer] :page_number Current page.
    # @option opts [Integer] :page_size Number of records per page. (default to 20)
    # @option opts [String] :sort The order in which to list the results by creation date. (default to 'created_at')
    # @return [Array<(EventsResponse, Integer, Hash)>] EventsResponse data, response status code and response headers
    def list_events_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.list_events ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling EventsApi.list_events, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling EventsApi.list_events, must be greater than or equal to 1.'
      end

      allowable_values = ["created_at", "-created_at"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/events'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter[customer_id]'] = opts[:'filter_customer_id'] if !opts[:'filter_customer_id'].nil?
      query_params[:'filter[event_type]'] = opts[:'filter_event_type'] if !opts[:'filter_event_type'].nil?
      query_params[:'filter[service_id]'] = opts[:'filter_service_id'] if !opts[:'filter_service_id'].nil?
      query_params[:'filter[user_id]'] = opts[:'filter_user_id'] if !opts[:'filter_user_id'].nil?
      query_params[:'filter[token_id]'] = opts[:'filter_token_id'] if !opts[:'filter_token_id'].nil?
      query_params[:'filter[created_at]'] = opts[:'filter_created_at'] if !opts[:'filter_created_at'].nil?
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
      return_type = opts[:debug_return_type] || 'EventsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"EventsApi.list_events",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#list_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
