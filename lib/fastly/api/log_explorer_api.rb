=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class LogExplorerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve log records
    # Retrieves log records.
    # @option opts [String] :service_id  (required)
    # @option opts [String] :start  (required)
    # @option opts [String] :_end  (required)
    # @option opts [Float] :limit 
    # @option opts [String] :next_cursor 
    # @option opts [String] :filter 
    # @return [GetLogRecordsResponse]
    def get_log_records(opts = {})
      data, _status_code, _headers = get_log_records_with_http_info(opts)
      data
    end

    # Retrieve log records
    # Retrieves log records.
    # @option opts [String] :service_id  (required)
    # @option opts [String] :start  (required)
    # @option opts [String] :_end  (required)
    # @option opts [Float] :limit 
    # @option opts [String] :next_cursor 
    # @option opts [String] :filter 
    # @return [Array<(GetLogRecordsResponse, Integer, Hash)>] GetLogRecordsResponse data, response status code and response headers
    def get_log_records_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogExplorerApi.get_log_records ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      start = opts[:'start']
      _end = opts[:'_end']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling LogExplorerApi.get_log_records"
      end
      # verify the required parameter 'start' is set
      if @api_client.config.client_side_validation && start.nil?
        fail ArgumentError, "Missing the required parameter 'start' when calling LogExplorerApi.get_log_records"
      end
      # verify the required parameter '_end' is set
      if @api_client.config.client_side_validation && _end.nil?
        fail ArgumentError, "Missing the required parameter '_end' when calling LogExplorerApi.get_log_records"
      end
      # resource path
      local_var_path = '/observability/log-explorer'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'service_id'] = service_id
      query_params[:'start'] = start
      query_params[:'end'] = _end
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'next_cursor'] = opts[:'next_cursor'] if !opts[:'next_cursor'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetLogRecordsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"LogExplorerApi.get_log_records",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogExplorerApi#get_log_records\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
