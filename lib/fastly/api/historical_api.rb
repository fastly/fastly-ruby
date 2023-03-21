=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'cgi'

module Fastly
  class HistoricalApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get historical stats
    # Fetches historical stats for each of your Fastly services and groups the results by service ID.
    # @option opts [String] :from Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;. 
    # @option opts [String] :to Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;.  (default to 'now')
    # @option opts [String] :by Duration of sample windows. One of:   * &#x60;hour&#x60; - Group data by hour.   * &#x60;minute&#x60; - Group data by minute.   * &#x60;day&#x60; - Group data by day.  (default to 'day')
    # @option opts [String] :region Limit query to a specific geographic region. One of:   * &#x60;usa&#x60; - North America.   * &#x60;europe&#x60; - Europe.   * &#x60;anzac&#x60; - Australia and New Zealand.   * &#x60;asia&#x60; - Asia.   * &#x60;asia_india&#x60; - India.   * &#x60;asia_southkorea&#x60; - South Korea.   * &#x60;africa_std&#x60; - Africa.   * &#x60;southamerica_std&#x60; - South America. 
    # @return [HistoricalResponse]
    def get_hist_stats(opts = {})
      data, _status_code, _headers = get_hist_stats_with_http_info(opts)
      data
    end

    # Get historical stats
    # Fetches historical stats for each of your Fastly services and groups the results by service ID.
    # @option opts [String] :from Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;. 
    # @option opts [String] :to Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;.  (default to 'now')
    # @option opts [String] :by Duration of sample windows. One of:   * &#x60;hour&#x60; - Group data by hour.   * &#x60;minute&#x60; - Group data by minute.   * &#x60;day&#x60; - Group data by day.  (default to 'day')
    # @option opts [String] :region Limit query to a specific geographic region. One of:   * &#x60;usa&#x60; - North America.   * &#x60;europe&#x60; - Europe.   * &#x60;anzac&#x60; - Australia and New Zealand.   * &#x60;asia&#x60; - Asia.   * &#x60;asia_india&#x60; - India.   * &#x60;asia_southkorea&#x60; - South Korea.   * &#x60;africa_std&#x60; - Africa.   * &#x60;southamerica_std&#x60; - South America. 
    # @return [Array<(HistoricalResponse, Integer, Hash)>] HistoricalResponse data, response status code and response headers
    def get_hist_stats_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HistoricalApi.get_hist_stats ...'
      end
      # unbox the parameters from the hash
      allowable_values = ["hour", "minute", "day"]
      if @api_client.config.client_side_validation && opts[:'by'] && !allowable_values.include?(opts[:'by'])
        fail ArgumentError, "invalid value for \"by\", must be one of #{allowable_values}"
      end
      allowable_values = ["usa", "europe", "asia", "asia_india", "asia_southkorea", "africa_std", "southamerica_std"]
      if @api_client.config.client_side_validation && opts[:'region'] && !allowable_values.include?(opts[:'region'])
        fail ArgumentError, "invalid value for \"region\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/stats'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'by'] = opts[:'by'] if !opts[:'by'].nil?
      query_params[:'region'] = opts[:'region'] if !opts[:'region'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'HistoricalResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"HistoricalApi.get_hist_stats",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HistoricalApi#get_hist_stats\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get aggregated historical stats
    # Fetches historical stats information aggregated across all of your Fastly services.
    # @option opts [String] :from Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;. 
    # @option opts [String] :to Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;.  (default to 'now')
    # @option opts [String] :by Duration of sample windows. One of:   * &#x60;hour&#x60; - Group data by hour.   * &#x60;minute&#x60; - Group data by minute.   * &#x60;day&#x60; - Group data by day.  (default to 'day')
    # @option opts [String] :region Limit query to a specific geographic region. One of:   * &#x60;usa&#x60; - North America.   * &#x60;europe&#x60; - Europe.   * &#x60;anzac&#x60; - Australia and New Zealand.   * &#x60;asia&#x60; - Asia.   * &#x60;asia_india&#x60; - India.   * &#x60;asia_southkorea&#x60; - South Korea.   * &#x60;africa_std&#x60; - Africa.   * &#x60;southamerica_std&#x60; - South America. 
    # @return [HistoricalAggregateResponse]
    def get_hist_stats_aggregated(opts = {})
      data, _status_code, _headers = get_hist_stats_aggregated_with_http_info(opts)
      data
    end

    # Get aggregated historical stats
    # Fetches historical stats information aggregated across all of your Fastly services.
    # @option opts [String] :from Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;. 
    # @option opts [String] :to Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;.  (default to 'now')
    # @option opts [String] :by Duration of sample windows. One of:   * &#x60;hour&#x60; - Group data by hour.   * &#x60;minute&#x60; - Group data by minute.   * &#x60;day&#x60; - Group data by day.  (default to 'day')
    # @option opts [String] :region Limit query to a specific geographic region. One of:   * &#x60;usa&#x60; - North America.   * &#x60;europe&#x60; - Europe.   * &#x60;anzac&#x60; - Australia and New Zealand.   * &#x60;asia&#x60; - Asia.   * &#x60;asia_india&#x60; - India.   * &#x60;asia_southkorea&#x60; - South Korea.   * &#x60;africa_std&#x60; - Africa.   * &#x60;southamerica_std&#x60; - South America. 
    # @return [Array<(HistoricalAggregateResponse, Integer, Hash)>] HistoricalAggregateResponse data, response status code and response headers
    def get_hist_stats_aggregated_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HistoricalApi.get_hist_stats_aggregated ...'
      end
      # unbox the parameters from the hash
      allowable_values = ["hour", "minute", "day"]
      if @api_client.config.client_side_validation && opts[:'by'] && !allowable_values.include?(opts[:'by'])
        fail ArgumentError, "invalid value for \"by\", must be one of #{allowable_values}"
      end
      allowable_values = ["usa", "europe", "asia", "asia_india", "asia_southkorea", "africa_std", "southamerica_std"]
      if @api_client.config.client_side_validation && opts[:'region'] && !allowable_values.include?(opts[:'region'])
        fail ArgumentError, "invalid value for \"region\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/stats/aggregate'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'by'] = opts[:'by'] if !opts[:'by'].nil?
      query_params[:'region'] = opts[:'region'] if !opts[:'region'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'HistoricalAggregateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"HistoricalApi.get_hist_stats_aggregated",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HistoricalApi#get_hist_stats_aggregated\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get historical stats for a single field
    # Fetches the specified field from the historical stats for each of your services and groups the results by service ID.
    # @option opts [String] :field Name of the stats field. (required)
    # @option opts [String] :from Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;. 
    # @option opts [String] :to Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;.  (default to 'now')
    # @option opts [String] :by Duration of sample windows. One of:   * &#x60;hour&#x60; - Group data by hour.   * &#x60;minute&#x60; - Group data by minute.   * &#x60;day&#x60; - Group data by day.  (default to 'day')
    # @option opts [String] :region Limit query to a specific geographic region. One of:   * &#x60;usa&#x60; - North America.   * &#x60;europe&#x60; - Europe.   * &#x60;anzac&#x60; - Australia and New Zealand.   * &#x60;asia&#x60; - Asia.   * &#x60;asia_india&#x60; - India.   * &#x60;asia_southkorea&#x60; - South Korea.   * &#x60;africa_std&#x60; - Africa.   * &#x60;southamerica_std&#x60; - South America. 
    # @return [HistoricalFieldResponse]
    def get_hist_stats_field(opts = {})
      data, _status_code, _headers = get_hist_stats_field_with_http_info(opts)
      data
    end

    # Get historical stats for a single field
    # Fetches the specified field from the historical stats for each of your services and groups the results by service ID.
    # @option opts [String] :field Name of the stats field. (required)
    # @option opts [String] :from Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;. 
    # @option opts [String] :to Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;.  (default to 'now')
    # @option opts [String] :by Duration of sample windows. One of:   * &#x60;hour&#x60; - Group data by hour.   * &#x60;minute&#x60; - Group data by minute.   * &#x60;day&#x60; - Group data by day.  (default to 'day')
    # @option opts [String] :region Limit query to a specific geographic region. One of:   * &#x60;usa&#x60; - North America.   * &#x60;europe&#x60; - Europe.   * &#x60;anzac&#x60; - Australia and New Zealand.   * &#x60;asia&#x60; - Asia.   * &#x60;asia_india&#x60; - India.   * &#x60;asia_southkorea&#x60; - South Korea.   * &#x60;africa_std&#x60; - Africa.   * &#x60;southamerica_std&#x60; - South America. 
    # @return [Array<(HistoricalFieldResponse, Integer, Hash)>] HistoricalFieldResponse data, response status code and response headers
    def get_hist_stats_field_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HistoricalApi.get_hist_stats_field ...'
      end
      # unbox the parameters from the hash
      field = opts[:'field']
      # verify the required parameter 'field' is set
      if @api_client.config.client_side_validation && field.nil?
        fail ArgumentError, "Missing the required parameter 'field' when calling HistoricalApi.get_hist_stats_field"
      end
      allowable_values = ["hour", "minute", "day"]
      if @api_client.config.client_side_validation && opts[:'by'] && !allowable_values.include?(opts[:'by'])
        fail ArgumentError, "invalid value for \"by\", must be one of #{allowable_values}"
      end
      allowable_values = ["usa", "europe", "asia", "asia_india", "asia_southkorea", "africa_std", "southamerica_std"]
      if @api_client.config.client_side_validation && opts[:'region'] && !allowable_values.include?(opts[:'region'])
        fail ArgumentError, "invalid value for \"region\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/stats/field/{field}'.sub('{' + 'field' + '}', CGI.escape(field.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'by'] = opts[:'by'] if !opts[:'by'].nil?
      query_params[:'region'] = opts[:'region'] if !opts[:'region'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'HistoricalFieldResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"HistoricalApi.get_hist_stats_field",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HistoricalApi#get_hist_stats_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get historical stats for a single service
    # Fetches historical stats for a given service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :from Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;. 
    # @option opts [String] :to Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;.  (default to 'now')
    # @option opts [String] :by Duration of sample windows. One of:   * &#x60;hour&#x60; - Group data by hour.   * &#x60;minute&#x60; - Group data by minute.   * &#x60;day&#x60; - Group data by day.  (default to 'day')
    # @option opts [String] :region Limit query to a specific geographic region. One of:   * &#x60;usa&#x60; - North America.   * &#x60;europe&#x60; - Europe.   * &#x60;anzac&#x60; - Australia and New Zealand.   * &#x60;asia&#x60; - Asia.   * &#x60;asia_india&#x60; - India.   * &#x60;asia_southkorea&#x60; - South Korea.   * &#x60;africa_std&#x60; - Africa.   * &#x60;southamerica_std&#x60; - South America. 
    # @return [HistoricalAggregateResponse]
    def get_hist_stats_service(opts = {})
      data, _status_code, _headers = get_hist_stats_service_with_http_info(opts)
      data
    end

    # Get historical stats for a single service
    # Fetches historical stats for a given service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :from Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;. 
    # @option opts [String] :to Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;.  (default to 'now')
    # @option opts [String] :by Duration of sample windows. One of:   * &#x60;hour&#x60; - Group data by hour.   * &#x60;minute&#x60; - Group data by minute.   * &#x60;day&#x60; - Group data by day.  (default to 'day')
    # @option opts [String] :region Limit query to a specific geographic region. One of:   * &#x60;usa&#x60; - North America.   * &#x60;europe&#x60; - Europe.   * &#x60;anzac&#x60; - Australia and New Zealand.   * &#x60;asia&#x60; - Asia.   * &#x60;asia_india&#x60; - India.   * &#x60;asia_southkorea&#x60; - South Korea.   * &#x60;africa_std&#x60; - Africa.   * &#x60;southamerica_std&#x60; - South America. 
    # @return [Array<(HistoricalAggregateResponse, Integer, Hash)>] HistoricalAggregateResponse data, response status code and response headers
    def get_hist_stats_service_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HistoricalApi.get_hist_stats_service ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling HistoricalApi.get_hist_stats_service"
      end
      allowable_values = ["hour", "minute", "day"]
      if @api_client.config.client_side_validation && opts[:'by'] && !allowable_values.include?(opts[:'by'])
        fail ArgumentError, "invalid value for \"by\", must be one of #{allowable_values}"
      end
      allowable_values = ["usa", "europe", "asia", "asia_india", "asia_southkorea", "africa_std", "southamerica_std"]
      if @api_client.config.client_side_validation && opts[:'region'] && !allowable_values.include?(opts[:'region'])
        fail ArgumentError, "invalid value for \"region\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/stats/service/{service_id}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'by'] = opts[:'by'] if !opts[:'by'].nil?
      query_params[:'region'] = opts[:'region'] if !opts[:'region'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'HistoricalAggregateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"HistoricalApi.get_hist_stats_service",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HistoricalApi#get_hist_stats_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get historical stats for a single service/field combination
    # Fetches the specified field from the historical stats for a given service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :field Name of the stats field. (required)
    # @option opts [String] :from Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;. 
    # @option opts [String] :to Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;.  (default to 'now')
    # @option opts [String] :by Duration of sample windows. One of:   * &#x60;hour&#x60; - Group data by hour.   * &#x60;minute&#x60; - Group data by minute.   * &#x60;day&#x60; - Group data by day.  (default to 'day')
    # @option opts [String] :region Limit query to a specific geographic region. One of:   * &#x60;usa&#x60; - North America.   * &#x60;europe&#x60; - Europe.   * &#x60;anzac&#x60; - Australia and New Zealand.   * &#x60;asia&#x60; - Asia.   * &#x60;asia_india&#x60; - India.   * &#x60;asia_southkorea&#x60; - South Korea.   * &#x60;africa_std&#x60; - Africa.   * &#x60;southamerica_std&#x60; - South America. 
    # @return [HistoricalFieldAggregateResponse]
    def get_hist_stats_service_field(opts = {})
      data, _status_code, _headers = get_hist_stats_service_field_with_http_info(opts)
      data
    end

    # Get historical stats for a single service/field combination
    # Fetches the specified field from the historical stats for a given service.
    # @option opts [String] :service_id Alphanumeric string identifying the service. (required)
    # @option opts [String] :field Name of the stats field. (required)
    # @option opts [String] :from Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;. 
    # @option opts [String] :to Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;.  (default to 'now')
    # @option opts [String] :by Duration of sample windows. One of:   * &#x60;hour&#x60; - Group data by hour.   * &#x60;minute&#x60; - Group data by minute.   * &#x60;day&#x60; - Group data by day.  (default to 'day')
    # @option opts [String] :region Limit query to a specific geographic region. One of:   * &#x60;usa&#x60; - North America.   * &#x60;europe&#x60; - Europe.   * &#x60;anzac&#x60; - Australia and New Zealand.   * &#x60;asia&#x60; - Asia.   * &#x60;asia_india&#x60; - India.   * &#x60;asia_southkorea&#x60; - South Korea.   * &#x60;africa_std&#x60; - Africa.   * &#x60;southamerica_std&#x60; - South America. 
    # @return [Array<(HistoricalFieldAggregateResponse, Integer, Hash)>] HistoricalFieldAggregateResponse data, response status code and response headers
    def get_hist_stats_service_field_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HistoricalApi.get_hist_stats_service_field ...'
      end
      # unbox the parameters from the hash
      service_id = opts[:'service_id']
      field = opts[:'field']
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling HistoricalApi.get_hist_stats_service_field"
      end
      # verify the required parameter 'field' is set
      if @api_client.config.client_side_validation && field.nil?
        fail ArgumentError, "Missing the required parameter 'field' when calling HistoricalApi.get_hist_stats_service_field"
      end
      allowable_values = ["hour", "minute", "day"]
      if @api_client.config.client_side_validation && opts[:'by'] && !allowable_values.include?(opts[:'by'])
        fail ArgumentError, "invalid value for \"by\", must be one of #{allowable_values}"
      end
      allowable_values = ["usa", "europe", "asia", "asia_india", "asia_southkorea", "africa_std", "southamerica_std"]
      if @api_client.config.client_side_validation && opts[:'region'] && !allowable_values.include?(opts[:'region'])
        fail ArgumentError, "invalid value for \"region\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/stats/service/{service_id}/field/{field}'.sub('{' + 'service_id' + '}', CGI.escape(service_id.to_s)).sub('{' + 'field' + '}', CGI.escape(field.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'by'] = opts[:'by'] if !opts[:'by'].nil?
      query_params[:'region'] = opts[:'region'] if !opts[:'region'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'HistoricalFieldAggregateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"HistoricalApi.get_hist_stats_service_field",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HistoricalApi#get_hist_stats_service_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get region codes
    # Fetches the list of codes for regions that are covered by the Fastly CDN service.
    # @return [HistoricalRegionsResponse]
    def get_regions(opts = {})
      data, _status_code, _headers = get_regions_with_http_info(opts)
      data
    end

    # Get region codes
    # Fetches the list of codes for regions that are covered by the Fastly CDN service.
    # @return [Array<(HistoricalRegionsResponse, Integer, Hash)>] HistoricalRegionsResponse data, response status code and response headers
    def get_regions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HistoricalApi.get_regions ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/stats/regions'

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
      return_type = opts[:debug_return_type] || 'HistoricalRegionsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"HistoricalApi.get_regions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HistoricalApi#get_regions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get usage statistics
    # Returns usage information aggregated across all Fastly services and grouped by region. To aggregate across all Fastly services by time period, see [`/stats/aggregate`](#get-hist-stats-aggregated).
    # @option opts [String] :from Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;. 
    # @option opts [String] :to Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;.  (default to 'now')
    # @return [HistoricalUsageAggregateResponse]
    def get_usage(opts = {})
      data, _status_code, _headers = get_usage_with_http_info(opts)
      data
    end

    # Get usage statistics
    # Returns usage information aggregated across all Fastly services and grouped by region. To aggregate across all Fastly services by time period, see [&#x60;/stats/aggregate&#x60;](#get-hist-stats-aggregated).
    # @option opts [String] :from Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;. 
    # @option opts [String] :to Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;.  (default to 'now')
    # @return [Array<(HistoricalUsageAggregateResponse, Integer, Hash)>] HistoricalUsageAggregateResponse data, response status code and response headers
    def get_usage_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HistoricalApi.get_usage ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/stats/usage'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'HistoricalUsageAggregateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"HistoricalApi.get_usage",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HistoricalApi#get_usage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get month-to-date usage statistics
    # Returns month-to-date usage details for a given month and year. Usage details are aggregated by service and across all Fastly services, and then grouped by region. This endpoint does not use the `from` or `to` fields for selecting the date for which data is requested. Instead, it uses `month` and `year` integer fields. Both fields are optional and default to the current month and year respectively. When set, an optional `billable_units` field will convert bandwidth to GB and divide requests by 10,000.
    # @option opts [String] :year 4-digit year.
    # @option opts [String] :month 2-digit month.
    # @option opts [Boolean] :billable_units If &#x60;true&#x60;, return results as billable units.
    # @return [HistoricalUsageMonthResponse]
    def get_usage_month(opts = {})
      data, _status_code, _headers = get_usage_month_with_http_info(opts)
      data
    end

    # Get month-to-date usage statistics
    # Returns month-to-date usage details for a given month and year. Usage details are aggregated by service and across all Fastly services, and then grouped by region. This endpoint does not use the &#x60;from&#x60; or &#x60;to&#x60; fields for selecting the date for which data is requested. Instead, it uses &#x60;month&#x60; and &#x60;year&#x60; integer fields. Both fields are optional and default to the current month and year respectively. When set, an optional &#x60;billable_units&#x60; field will convert bandwidth to GB and divide requests by 10,000.
    # @option opts [String] :year 4-digit year.
    # @option opts [String] :month 2-digit month.
    # @option opts [Boolean] :billable_units If &#x60;true&#x60;, return results as billable units.
    # @return [Array<(HistoricalUsageMonthResponse, Integer, Hash)>] HistoricalUsageMonthResponse data, response status code and response headers
    def get_usage_month_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HistoricalApi.get_usage_month ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/stats/usage_by_month'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'year'] = opts[:'year'] if !opts[:'year'].nil?
      query_params[:'month'] = opts[:'month'] if !opts[:'month'].nil?
      query_params[:'billable_units'] = opts[:'billable_units'] if !opts[:'billable_units'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'HistoricalUsageMonthResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"HistoricalApi.get_usage_month",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HistoricalApi#get_usage_month\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get usage statistics per service
    # Returns usage information aggregated by service and grouped by service and region. For service stats by time period, see [`/stats`](#get-hist-stats) and [`/stats/field/:field`](#get-hist-stats-field).
    # @option opts [String] :from Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;. 
    # @option opts [String] :to Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;.  (default to 'now')
    # @return [HistoricalUsageServiceResponse]
    def get_usage_service(opts = {})
      data, _status_code, _headers = get_usage_service_with_http_info(opts)
      data
    end

    # Get usage statistics per service
    # Returns usage information aggregated by service and grouped by service and region. For service stats by time period, see [&#x60;/stats&#x60;](#get-hist-stats) and [&#x60;/stats/field/:field&#x60;](#get-hist-stats-field).
    # @option opts [String] :from Timestamp that defines the start of the window for which to fetch statistics, including the timestamp itself. Accepts Unix timestamps, or any form of input parsable by the [Chronic Ruby library](https://github.com/mojombo/chronic), such as &#39;yesterday&#39;, or &#39;two weeks ago&#39;. Default varies based on the value of &#x60;by&#x60;. 
    # @option opts [String] :to Timestamp that defines the end of the window for which to fetch statistics. Accepts the same formats as &#x60;from&#x60;.  (default to 'now')
    # @return [Array<(HistoricalUsageServiceResponse, Integer, Hash)>] HistoricalUsageServiceResponse data, response status code and response headers
    def get_usage_service_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HistoricalApi.get_usage_service ...'
      end
      # unbox the parameters from the hash
      # resource path
      local_var_path = '/stats/usage_by_service'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'HistoricalUsageServiceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"HistoricalApi.get_usage_service",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HistoricalApi#get_usage_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
