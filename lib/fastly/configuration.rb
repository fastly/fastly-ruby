=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://www.fastly.com/documentation/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

module Fastly
  class Configuration
    # Defines url scheme
    attr_accessor :scheme

    # Defines url host
    attr_accessor :host

    # Defines url base path
    attr_accessor :base_path

    # Define server configuration index
    attr_accessor :server_index

    # Define server operation configuration index
    attr_accessor :server_operation_index

    # Default server variables
    attr_accessor :server_variables

    # Default server operation variables
    attr_accessor :server_operation_variables

    # Defines API keys used with API Key authentications.
    #
    # @return [Hash] key: parameter name, value: parameter value (API key)
    #
    # @example parameter name is "api_key", API key is "xxx" (e.g. "api_key=xxx" in query string)
    #   config.api_key['api_key'] = 'xxx'
    attr_accessor :api_key

    # Defines API key prefixes used with API Key authentications.
    #
    # @return [Hash] key: parameter name, value: API key prefix
    #
    # @example parameter name is "Authorization", API key prefix is "Token" (e.g. "Authorization: Token xxx" in headers)
    #   config.api_key_prefix['api_key'] = 'Token'
    attr_accessor :api_key_prefix
    
    # Defines API token used with API token authentication.
    #
    # @return [String] API token
    #
    # @example API token is "xxx"
    #   config.api_token = 'xxx'
    def api_token
      @api_key['token']
    end
    def api_token=(val)
      @api_key['token'] = val
    end

    # Defines the username used with HTTP basic authentication.
    #
    # @return [String]
    attr_accessor :username

    # Defines the password used with HTTP basic authentication.
    #
    # @return [String]
    attr_accessor :password

    # Defines the access token (Bearer) used with OAuth2.
    attr_accessor :access_token

    # Set this to enable/disable debugging. When enabled (set to true), HTTP request/response
    # details will be logged with `logger.debug` (see the `logger` attribute).
    # Default to false.
    #
    # @return [true, false]
    attr_accessor :debugging

    # Defines the logger used for debugging.
    # Default to `Rails.logger` (when in Rails) or logging to STDOUT.
    #
    # @return [#debug]
    attr_accessor :logger

    # Defines the temporary folder to store downloaded files
    # (for API endpoints that have file response).
    # Default to use `Tempfile`.
    #
    # @return [String]
    attr_accessor :temp_folder_path

    # The time limit for HTTP request in seconds.
    # Default to 0 (never times out).
    attr_accessor :timeout

    # Set this to false to skip client side validation in the operation.
    # Default to true.
    # @return [true, false]
    attr_accessor :client_side_validation

    ### TLS/SSL setting
    # Set this to false to skip verifying SSL certificate when calling API from https server.
    # Default to true.
    #
    # @note Do NOT set it to false in production code, otherwise you would face multiple types of cryptographic attacks.
    #
    # @return [true, false]
    attr_accessor :verify_ssl

    ### TLS/SSL setting
    # Set this to false to skip verifying SSL host name
    # Default to true.
    #
    # @note Do NOT set it to false in production code, otherwise you would face multiple types of cryptographic attacks.
    #
    # @return [true, false]
    attr_accessor :verify_ssl_host

    ### TLS/SSL setting
    # Set this to customize the certificate file to verify the peer.
    #
    # @return [String] the path to the certificate file
    #
    # @see The `cainfo` option of Typhoeus, `--cert` option of libcurl. Related source code:
    # https://github.com/typhoeus/typhoeus/blob/master/lib/typhoeus/easy_factory.rb#L145
    attr_accessor :ssl_ca_cert

    ### TLS/SSL setting
    # Client certificate file (for client certificate)
    attr_accessor :cert_file

    ### TLS/SSL setting
    # Client private key file (for client certificate)
    attr_accessor :key_file

    # Set this to customize parameters encoding of array parameter with multi collectionFormat.
    # Default to nil.
    #
    # @see The params_encoding option of Ethon. Related source code:
    # https://github.com/typhoeus/ethon/blob/master/lib/ethon/easy/queryable.rb#L96
    attr_accessor :params_encoding

    attr_accessor :inject_format

    attr_accessor :force_ending_format

    def initialize
      @scheme = 'https'
      @host = 'api.fastly.com'
      @base_path = ''
      @server_index = 0
      @server_operation_index = {}
      @server_variables = {}
      @server_operation_variables = {}
      @api_key = {}
      @api_key_prefix = {}
      @client_side_validation = true
      @verify_ssl = true
      @verify_ssl_host = true
      @params_encoding = nil
      @cert_file = nil
      @key_file = nil
      @timeout = 0
      @debugging = false
      @inject_format = false
      @force_ending_format = false
      @logger = defined?(Rails) ? Rails.logger : Logger.new(STDOUT)

      yield(self) if block_given?
    end

    # The default Configuration object.
    def self.default
      @@default ||= Configuration.new
    end

    def configure
      yield(self) if block_given?
    end

    def scheme=(scheme)
      # remove :// from scheme
      @scheme = scheme.sub(/:\/\//, '')
    end

    def host=(host)
      # remove http(s):// and anything after a slash
      @host = host.sub(/https?:\/\//, '').split('/').first
    end

    def base_path=(base_path)
      # Add leading and trailing slashes to base_path
      @base_path = "/#{base_path}".gsub(/\/+/, '/')
      @base_path = '' if @base_path == '/'
    end

    # Returns base URL for specified operation based on server settings
    def base_url(operation = nil)
      index = server_operation_index.fetch(operation, server_index)
      return "#{scheme}://#{[host, base_path].join('/').gsub(/\/+/, '/')}".sub(/\/+\z/, '') if index == nil

      server_url(index, server_operation_variables.fetch(operation, server_variables), operation_server_settings[operation])
    end

    # Gets API key (with prefix if set).
    # @param [String] param_name the parameter name of API key auth
    def api_key_with_prefix(param_name, param_alias = nil)
      if param_name == 'token'
        key = self.api_token
        key = ENV['FASTLY_API_TOKEN'] if key.nil?
        return key
      end
      key = @api_key[param_name]
      key = @api_key.fetch(param_alias, key) unless param_alias.nil?
      if @api_key_prefix[param_name]
        "#{@api_key_prefix[param_name]} #{key}"
      else
        key
      end
    end

    # Gets Basic Auth token string
    def basic_auth_token
      'Basic ' + ["#{username}:#{password}"].pack('m').delete("\r\n")
    end

    # Returns Auth Settings hash for api client.
    def auth_settings
      {
        'session_password_change' =>
          {
            type: 'basic',
            in: 'header',
            key: 'Authorization',
            value: basic_auth_token
          },
        'token' =>
          {
            type: 'api_key',
            in: 'header',
            key: 'Fastly-Key',
            value: api_key_with_prefix('token')
          },
        'url_purge' =>
          {
            type: 'basic',
            in: 'header',
            key: 'Authorization',
            value: basic_auth_token
          },
        'username_and_password' =>
          {
            type: 'basic',
            in: 'header',
            key: 'Authorization',
            value: basic_auth_token
          },
      }
    end

    # Returns an array of Server setting
    def server_settings
      [
        {
          url: "https://api.fastly.com",
          description: "No description provided",
        },
        {
          url: "https://rt.fastly.com",
          description: "No description provided",
        }
      ]
    end

    def operation_server_settings
      {
        "AclApi.create_acl": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "AclApi.delete_acl": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "AclApi.get_acl": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "AclApi.list_acls": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "AclApi.update_acl": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "AclEntryApi.bulk_update_acl_entries": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "AclEntryApi.create_acl_entry": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "AclEntryApi.delete_acl_entry": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "AclEntryApi.get_acl_entry": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "AclEntryApi.list_acl_entries": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "AclEntryApi.update_acl_entry": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "AclsInComputeApi.compute_acl_create_acls": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "AclsInComputeApi.compute_acl_delete_s_acl_id": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "AclsInComputeApi.compute_acl_list_acl_entries": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "AclsInComputeApi.compute_acl_list_acls": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "AclsInComputeApi.compute_acl_list_acls_s_acl_id": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "AclsInComputeApi.compute_acl_lookup_acls": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "AclsInComputeApi.compute_acl_update_acls": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ApexRedirectApi.create_apex_redirect": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ApexRedirectApi.delete_apex_redirect": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ApexRedirectApi.get_apex_redirect": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ApexRedirectApi.list_apex_redirects": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ApexRedirectApi.update_apex_redirect": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "AutomationTokensApi.create_automation_token": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "AutomationTokensApi.get_automation_token_id": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "AutomationTokensApi.get_automation_tokens_id_services": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "AutomationTokensApi.list_automation_tokens": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "AutomationTokensApi.revoke_automation_token_id": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "BackendApi.create_backend": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "BackendApi.delete_backend": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "BackendApi.get_backend": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "BackendApi.list_backends": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "BackendApi.update_backend": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "BillingAddressApi.add_billing_addr": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "BillingAddressApi.delete_billing_addr": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "BillingAddressApi.get_billing_addr": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "BillingAddressApi.update_billing_addr": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "BillingInvoicesApi.get_invoice_by_invoice_id": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "BillingInvoicesApi.get_month_to_date_invoice": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "BillingInvoicesApi.list_invoices": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "BillingUsageMetricsApi.get_service_level_usage": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "BillingUsageMetricsApi.get_usage_metrics": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "CacheSettingsApi.create_cache_settings": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "CacheSettingsApi.delete_cache_settings": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "CacheSettingsApi.get_cache_settings": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "CacheSettingsApi.list_cache_settings": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "CacheSettingsApi.update_cache_settings": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ConditionApi.create_condition": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ConditionApi.delete_condition": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ConditionApi.get_condition": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ConditionApi.list_conditions": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ConditionApi.update_condition": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ConfigStoreApi.create_config_store": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ConfigStoreApi.delete_config_store": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ConfigStoreApi.get_config_store": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ConfigStoreApi.get_config_store_info": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ConfigStoreApi.list_config_store_services": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ConfigStoreApi.list_config_stores": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ConfigStoreApi.update_config_store": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ConfigStoreItemApi.bulk_update_config_store_item": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ConfigStoreItemApi.create_config_store_item": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ConfigStoreItemApi.delete_config_store_item": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ConfigStoreItemApi.get_config_store_item": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ConfigStoreItemApi.list_config_store_items": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ConfigStoreItemApi.update_config_store_item": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ConfigStoreItemApi.upsert_config_store_item": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ContactApi.create_contacts": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ContactApi.delete_contact": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ContactApi.list_contacts": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ContentApi.content_check": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "CustomerApi.delete_customer": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "CustomerApi.get_customer": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "CustomerApi.get_logged_in_customer": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "CustomerApi.list_users": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "CustomerApi.update_customer": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "CustomerAddressesApi.create_customer_address": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "CustomerAddressesApi.list_customer_addresses": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "CustomerAddressesApi.update_customer_address": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DdosProtectionApi.ddos_protection_event_get": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DdosProtectionApi.ddos_protection_event_list": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DdosProtectionApi.ddos_protection_event_rule_list": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DdosProtectionApi.ddos_protection_rule_get": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DdosProtectionApi.ddos_protection_rule_patch": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DdosProtectionApi.ddos_protection_traffic_stats_rule_get": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DictionaryApi.create_dictionary": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DictionaryApi.delete_dictionary": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DictionaryApi.get_dictionary": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DictionaryApi.list_dictionaries": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DictionaryApi.update_dictionary": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DictionaryInfoApi.get_dictionary_info": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DictionaryItemApi.bulk_update_dictionary_item": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DictionaryItemApi.create_dictionary_item": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DictionaryItemApi.delete_dictionary_item": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DictionaryItemApi.get_dictionary_item": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DictionaryItemApi.list_dictionary_items": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DictionaryItemApi.update_dictionary_item": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DictionaryItemApi.upsert_dictionary_item": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DiffApi.diff_service_versions": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DirectorApi.create_director": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DirectorApi.delete_director": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DirectorApi.get_director": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DirectorApi.list_directors": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DirectorApi.update_director": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DirectorBackendApi.create_director_backend": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DirectorBackendApi.delete_director_backend": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DirectorBackendApi.get_director_backend": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DomainApi.check_domain": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DomainApi.check_domains": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DomainApi.create_domain": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DomainApi.delete_domain": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DomainApi.get_domain": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DomainApi.list_domains": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DomainApi.update_domain": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DomainInspectorHistoricalApi.get_domain_inspector_historical": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "DomainInspectorRealtimeApi.get_domain_inspector_last120_seconds": [
          {
          url: "https://rt.fastly.com",
          description: "No description provided",
          }
        ],
        "DomainInspectorRealtimeApi.get_domain_inspector_last_max_entries": [
          {
          url: "https://rt.fastly.com",
          description: "No description provided",
          }
        ],
        "DomainInspectorRealtimeApi.get_domain_inspector_last_second": [
          {
          url: "https://rt.fastly.com",
          description: "No description provided",
          }
        ],
        "DomainOwnershipsApi.list_domain_ownerships": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "EventsApi.get_event": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "EventsApi.list_events": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "GzipApi.create_gzip_config": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "GzipApi.delete_gzip_config": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "GzipApi.get_gzip_configs": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "GzipApi.list_gzip_configs": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "GzipApi.update_gzip_config": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "HeaderApi.create_header_object": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "HeaderApi.delete_header_object": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "HeaderApi.get_header_object": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "HeaderApi.list_header_objects": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "HeaderApi.update_header_object": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "HealthcheckApi.create_healthcheck": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "HealthcheckApi.delete_healthcheck": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "HealthcheckApi.get_healthcheck": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "HealthcheckApi.list_healthchecks": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "HealthcheckApi.update_healthcheck": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "HistoricalApi.get_hist_stats": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "HistoricalApi.get_hist_stats_aggregated": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "HistoricalApi.get_hist_stats_field": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "HistoricalApi.get_hist_stats_service": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "HistoricalApi.get_hist_stats_service_field": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "HistoricalApi.get_regions": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "HistoricalApi.get_usage": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "HistoricalApi.get_usage_month": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "HistoricalApi.get_usage_service": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "Http3Api.create_http3": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "Http3Api.delete_http3": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "Http3Api.get_http3": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamPermissionsApi.list_permissions": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamRolesApi.add_role_permissions": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamRolesApi.create_a_role": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamRolesApi.delete_a_role": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamRolesApi.get_a_role": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamRolesApi.list_role_permissions": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamRolesApi.list_roles": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamRolesApi.remove_role_permissions": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamRolesApi.update_a_role": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamServiceGroupsApi.add_service_group_services": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamServiceGroupsApi.create_a_service_group": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamServiceGroupsApi.delete_a_service_group": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamServiceGroupsApi.get_a_service_group": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamServiceGroupsApi.list_service_group_services": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamServiceGroupsApi.list_service_groups": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamServiceGroupsApi.remove_service_group_services": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamServiceGroupsApi.update_a_service_group": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamUserGroupsApi.add_user_group_members": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamUserGroupsApi.add_user_group_roles": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamUserGroupsApi.add_user_group_service_groups": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamUserGroupsApi.create_a_user_group": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamUserGroupsApi.delete_a_user_group": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamUserGroupsApi.get_a_user_group": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamUserGroupsApi.list_user_group_members": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamUserGroupsApi.list_user_group_roles": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamUserGroupsApi.list_user_group_service_groups": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamUserGroupsApi.list_user_groups": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamUserGroupsApi.remove_user_group_members": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamUserGroupsApi.remove_user_group_roles": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamUserGroupsApi.remove_user_group_service_groups": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "IamUserGroupsApi.update_a_user_group": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ImageOptimizerDefaultSettingsApi.get_default_settings": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ImageOptimizerDefaultSettingsApi.update_default_settings": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "InsightsApi.get_log_insights": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "InvitationsApi.create_invitation": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "InvitationsApi.delete_invitation": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "InvitationsApi.list_invitations": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "KvStoreApi.kv_store_create": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "KvStoreApi.kv_store_delete": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "KvStoreApi.kv_store_get": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "KvStoreApi.kv_store_list": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "KvStoreItemApi.kv_store_delete_item": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "KvStoreItemApi.kv_store_get_item": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "KvStoreItemApi.kv_store_list_item_keys": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "KvStoreItemApi.kv_store_upsert_item": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LogExplorerApi.get_log_records": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingAzureblobApi.create_log_azure": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingAzureblobApi.delete_log_azure": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingAzureblobApi.get_log_azure": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingAzureblobApi.list_log_azure": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingAzureblobApi.update_log_azure": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingBigqueryApi.create_log_bigquery": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingBigqueryApi.delete_log_bigquery": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingBigqueryApi.get_log_bigquery": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingBigqueryApi.list_log_bigquery": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingBigqueryApi.update_log_bigquery": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingCloudfilesApi.create_log_cloudfiles": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingCloudfilesApi.delete_log_cloudfiles": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingCloudfilesApi.get_log_cloudfiles": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingCloudfilesApi.list_log_cloudfiles": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingCloudfilesApi.update_log_cloudfiles": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingDatadogApi.create_log_datadog": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingDatadogApi.delete_log_datadog": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingDatadogApi.get_log_datadog": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingDatadogApi.list_log_datadog": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingDatadogApi.update_log_datadog": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingDigitaloceanApi.create_log_digocean": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingDigitaloceanApi.delete_log_digocean": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingDigitaloceanApi.get_log_digocean": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingDigitaloceanApi.list_log_digocean": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingDigitaloceanApi.update_log_digocean": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingElasticsearchApi.create_log_elasticsearch": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingElasticsearchApi.delete_log_elasticsearch": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingElasticsearchApi.get_log_elasticsearch": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingElasticsearchApi.list_log_elasticsearch": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingElasticsearchApi.update_log_elasticsearch": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingFtpApi.create_log_ftp": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingFtpApi.delete_log_ftp": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingFtpApi.get_log_ftp": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingFtpApi.list_log_ftp": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingFtpApi.update_log_ftp": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingGcsApi.create_log_gcs": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingGcsApi.delete_log_gcs": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingGcsApi.get_log_gcs": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingGcsApi.list_log_gcs": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingGcsApi.update_log_gcs": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingGrafanacloudlogsApi.create_log_grafanacloudlogs": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingGrafanacloudlogsApi.delete_log_grafanacloudlogs": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingGrafanacloudlogsApi.get_log_grafanacloudlogs": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingGrafanacloudlogsApi.list_log_grafanacloudlogs": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingGrafanacloudlogsApi.update_log_grafanacloudlogs": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingHerokuApi.create_log_heroku": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingHerokuApi.delete_log_heroku": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingHerokuApi.get_log_heroku": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingHerokuApi.list_log_heroku": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingHerokuApi.update_log_heroku": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingHoneycombApi.create_log_honeycomb": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingHoneycombApi.delete_log_honeycomb": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingHoneycombApi.get_log_honeycomb": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingHoneycombApi.list_log_honeycomb": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingHoneycombApi.update_log_honeycomb": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingHttpsApi.create_log_https": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingHttpsApi.delete_log_https": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingHttpsApi.get_log_https": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingHttpsApi.list_log_https": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingHttpsApi.update_log_https": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingKafkaApi.create_log_kafka": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingKafkaApi.delete_log_kafka": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingKafkaApi.get_log_kafka": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingKafkaApi.list_log_kafka": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingKafkaApi.update_log_kafka": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingKinesisApi.create_log_kinesis": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingKinesisApi.delete_log_kinesis": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingKinesisApi.get_log_kinesis": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingKinesisApi.list_log_kinesis": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingKinesisApi.update_log_kinesis": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingLogentriesApi.create_log_logentries": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingLogentriesApi.delete_log_logentries": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingLogentriesApi.get_log_logentries": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingLogentriesApi.list_log_logentries": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingLogentriesApi.update_log_logentries": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingLogglyApi.create_log_loggly": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingLogglyApi.delete_log_loggly": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingLogglyApi.get_log_loggly": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingLogglyApi.list_log_loggly": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingLogglyApi.update_log_loggly": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingLogshuttleApi.create_log_logshuttle": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingLogshuttleApi.delete_log_logshuttle": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingLogshuttleApi.get_log_logshuttle": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingLogshuttleApi.list_log_logshuttle": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingLogshuttleApi.update_log_logshuttle": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingNewrelicApi.create_log_newrelic": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingNewrelicApi.delete_log_newrelic": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingNewrelicApi.get_log_newrelic": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingNewrelicApi.list_log_newrelic": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingNewrelicApi.update_log_newrelic": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingNewrelicotlpApi.create_log_newrelicotlp": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingNewrelicotlpApi.delete_log_newrelicotlp": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingNewrelicotlpApi.get_log_newrelicotlp": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingNewrelicotlpApi.list_log_newrelicotlp": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingNewrelicotlpApi.update_log_newrelicotlp": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingOpenstackApi.create_log_openstack": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingOpenstackApi.delete_log_openstack": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingOpenstackApi.get_log_openstack": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingOpenstackApi.list_log_openstack": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingOpenstackApi.update_log_openstack": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingPapertrailApi.create_log_papertrail": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingPapertrailApi.delete_log_papertrail": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingPapertrailApi.get_log_papertrail": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingPapertrailApi.list_log_papertrail": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingPapertrailApi.update_log_papertrail": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingPubsubApi.create_log_gcp_pubsub": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingPubsubApi.delete_log_gcp_pubsub": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingPubsubApi.get_log_gcp_pubsub": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingPubsubApi.list_log_gcp_pubsub": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingPubsubApi.update_log_gcp_pubsub": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingS3Api.create_log_aws_s3": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingS3Api.delete_log_aws_s3": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingS3Api.get_log_aws_s3": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingS3Api.list_log_aws_s3": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingS3Api.update_log_aws_s3": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingScalyrApi.create_log_scalyr": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingScalyrApi.delete_log_scalyr": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingScalyrApi.get_log_scalyr": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingScalyrApi.list_log_scalyr": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingScalyrApi.update_log_scalyr": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingSftpApi.create_log_sftp": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingSftpApi.delete_log_sftp": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingSftpApi.get_log_sftp": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingSftpApi.list_log_sftp": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingSftpApi.update_log_sftp": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingSplunkApi.create_log_splunk": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingSplunkApi.delete_log_splunk": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingSplunkApi.get_log_splunk": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingSplunkApi.list_log_splunk": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingSplunkApi.update_log_splunk": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingSumologicApi.create_log_sumologic": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingSumologicApi.delete_log_sumologic": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingSumologicApi.get_log_sumologic": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingSumologicApi.list_log_sumologic": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingSumologicApi.update_log_sumologic": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingSyslogApi.create_log_syslog": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingSyslogApi.delete_log_syslog": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingSyslogApi.get_log_syslog": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingSyslogApi.list_log_syslog": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "LoggingSyslogApi.update_log_syslog": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "MutualAuthenticationApi.create_mutual_tls_authentication": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "MutualAuthenticationApi.delete_mutual_tls": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "MutualAuthenticationApi.get_mutual_authentication": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "MutualAuthenticationApi.list_mutual_authentications": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "MutualAuthenticationApi.patch_mutual_authentication": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "NgwafReportsApi.get_attacks_report": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "NgwafReportsApi.get_signals_report": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ObjectStorageAccessKeysApi.create_access_key": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ObjectStorageAccessKeysApi.delete_access_key": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ObjectStorageAccessKeysApi.get_access_key": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ObjectStorageAccessKeysApi.list_access_keys": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ObservabilityAggregationsForLogsApi.log_aggregations_get": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ObservabilityCustomDashboardsApi.create_dashboard": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ObservabilityCustomDashboardsApi.delete_dashboard": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ObservabilityCustomDashboardsApi.get_dashboard": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ObservabilityCustomDashboardsApi.list_dashboards": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ObservabilityCustomDashboardsApi.update_dashboard": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ObservabilityTimeseriesApi.timeseries_get": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "OriginInspectorHistoricalApi.get_origin_inspector_historical": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "OriginInspectorRealtimeApi.get_origin_inspector_last120_seconds": [
          {
          url: "https://rt.fastly.com",
          description: "No description provided",
          }
        ],
        "OriginInspectorRealtimeApi.get_origin_inspector_last_max_entries": [
          {
          url: "https://rt.fastly.com",
          description: "No description provided",
          }
        ],
        "OriginInspectorRealtimeApi.get_origin_inspector_last_second": [
          {
          url: "https://rt.fastly.com",
          description: "No description provided",
          }
        ],
        "PackageApi.get_package": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "PackageApi.put_package": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "PoolApi.create_server_pool": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "PoolApi.delete_server_pool": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "PoolApi.get_server_pool": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "PoolApi.list_server_pools": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "PoolApi.update_server_pool": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "PopApi.list_pops": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductAiAcceleratorApi.disable_product_ai_accelerator": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductAiAcceleratorApi.enable_ai_accelerator": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductAiAcceleratorApi.get_ai_accelerator": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductBotManagementApi.disable_product_bot_management": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductBotManagementApi.enable_product_bot_management": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductBotManagementApi.get_product_bot_management": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductBotManagementApi.get_services_product_bot_management": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductBrotliCompressionApi.disable_product_brotli_compression": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductBrotliCompressionApi.enable_product_brotli_compression": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductBrotliCompressionApi.get_product_brotli_compression": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductBrotliCompressionApi.get_services_product_brotli_compression": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductDdosProtectionApi.disable_product_ddos_protection": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductDdosProtectionApi.enable_product_ddos_protection": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductDdosProtectionApi.get_product_ddos_protection": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductDdosProtectionApi.get_product_ddos_protection_configuration": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductDdosProtectionApi.get_services_product_ddos_protection": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductDdosProtectionApi.set_product_ddos_protection_configuration": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductDomainInspectorApi.disable_product_domain_inspector": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductDomainInspectorApi.enable_product_domain_inspector": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductDomainInspectorApi.get_product_domain_inspector": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductDomainInspectorApi.get_services_product_domain_inspector": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductFanoutApi.disable_product_fanout": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductFanoutApi.enable_product_fanout": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductFanoutApi.get_product_fanout": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductFanoutApi.get_services_product_fanout": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductImageOptimizerApi.disable_product_image_optimizer": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductImageOptimizerApi.enable_product_image_optimizer": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductImageOptimizerApi.get_product_image_optimizer": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductImageOptimizerApi.get_services_product_image_optimizer": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductLogExplorerInsightsApi.disable_product_log_explorer_insights": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductLogExplorerInsightsApi.enable_product_log_explorer_insights": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductLogExplorerInsightsApi.get_product_log_explorer_insights": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductLogExplorerInsightsApi.get_services_product_log_explorer_insights": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductNgwafApi.disable_product_ngwaf": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductNgwafApi.enable_product_ngwaf": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductNgwafApi.get_product_ngwaf": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductNgwafApi.get_product_ngwaf_configuration": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductNgwafApi.get_services_product_ngwaf": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductNgwafApi.set_product_ngwaf_configuration": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductObjectStorageApi.disable_product_object_storage": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductObjectStorageApi.enable_object_storage": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductObjectStorageApi.get_object_storage": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductOriginInspectorApi.disable_product_origin_inspector": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductOriginInspectorApi.enable_product_origin_inspector": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductOriginInspectorApi.get_product_origin_inspector": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductOriginInspectorApi.get_services_product_origin_inspector": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductWebsocketsApi.disable_product_websockets": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductWebsocketsApi.enable_product_websockets": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductWebsocketsApi.get_product_websockets": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ProductWebsocketsApi.get_services_product_websockets": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "PublicIpListApi.list_fastly_ips": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "PublishApi.publish": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "PurgeApi.bulk_purge_tag": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "PurgeApi.purge_all": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "PurgeApi.purge_single_url": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "PurgeApi.purge_tag": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "RateLimiterApi.create_rate_limiter": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "RateLimiterApi.delete_rate_limiter": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "RateLimiterApi.get_rate_limiter": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "RateLimiterApi.list_rate_limiters": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "RateLimiterApi.update_rate_limiter": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "RealtimeApi.get_stats_last120_seconds": [
          {
          url: "https://rt.fastly.com",
          description: "No description provided",
          }
        ],
        "RealtimeApi.get_stats_last120_seconds_limit_entries": [
          {
          url: "https://rt.fastly.com",
          description: "No description provided",
          }
        ],
        "RealtimeApi.get_stats_last_second": [
          {
          url: "https://rt.fastly.com",
          description: "No description provided",
          }
        ],
        "RequestSettingsApi.create_request_settings": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "RequestSettingsApi.delete_request_settings": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "RequestSettingsApi.get_request_settings": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "RequestSettingsApi.list_request_settings": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "RequestSettingsApi.update_request_settings": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ResourceApi.create_resource": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ResourceApi.delete_resource": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ResourceApi.get_resource": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ResourceApi.list_resources": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ResourceApi.update_resource": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ResponseObjectApi.create_response_object": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ResponseObjectApi.delete_response_object": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ResponseObjectApi.get_response_object": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ResponseObjectApi.list_response_objects": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ResponseObjectApi.update_response_object": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "SecretStoreApi.client_key": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "SecretStoreApi.create_secret_store": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "SecretStoreApi.delete_secret_store": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "SecretStoreApi.get_secret_store": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "SecretStoreApi.get_secret_stores": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "SecretStoreApi.signing_key": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "SecretStoreItemApi.create_secret": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "SecretStoreItemApi.delete_secret": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "SecretStoreItemApi.get_secret": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "SecretStoreItemApi.get_secrets": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "SecretStoreItemApi.must_recreate_secret": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "SecretStoreItemApi.recreate_secret": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ServerApi.create_pool_server": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ServerApi.delete_pool_server": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ServerApi.get_pool_server": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ServerApi.list_pool_servers": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ServerApi.update_pool_server": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ServiceApi.create_service": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ServiceApi.delete_service": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ServiceApi.get_service": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ServiceApi.get_service_detail": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ServiceApi.list_service_domains": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ServiceApi.list_services": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ServiceApi.search_service": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ServiceApi.update_service": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ServiceAuthorizationsApi.create_service_authorization": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ServiceAuthorizationsApi.delete_service_authorization": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ServiceAuthorizationsApi.delete_service_authorization2": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ServiceAuthorizationsApi.list_service_authorization": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ServiceAuthorizationsApi.show_service_authorization": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ServiceAuthorizationsApi.update_service_authorization": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "ServiceAuthorizationsApi.update_service_authorization2": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "SettingsApi.get_service_settings": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "SettingsApi.update_service_settings": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "SnippetApi.create_snippet": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "SnippetApi.delete_snippet": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "SnippetApi.get_snippet": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "SnippetApi.get_snippet_dynamic": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "SnippetApi.list_snippets": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "SnippetApi.update_snippet": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "SnippetApi.update_snippet_dynamic": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "StarApi.create_service_star": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "StarApi.delete_service_star": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "StarApi.get_service_star": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "StarApi.list_service_stars": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "StatsApi.get_service_stats": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "SudoApi.request_sudo_access": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsActivationsApi.create_tls_activation": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsActivationsApi.delete_tls_activation": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsActivationsApi.get_tls_activation": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsActivationsApi.list_tls_activations": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsActivationsApi.update_tls_activation": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsBulkCertificatesApi.delete_bulk_tls_cert": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsBulkCertificatesApi.get_tls_bulk_cert": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsBulkCertificatesApi.list_tls_bulk_certs": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsBulkCertificatesApi.update_bulk_tls_cert": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsBulkCertificatesApi.upload_tls_bulk_cert": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsCertificatesApi.create_tls_cert": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsCertificatesApi.delete_tls_cert": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsCertificatesApi.get_tls_cert": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsCertificatesApi.get_tls_cert_blob": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsCertificatesApi.list_tls_certs": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsCertificatesApi.update_tls_cert": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsConfigurationsApi.get_tls_config": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsConfigurationsApi.list_tls_configs": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsConfigurationsApi.update_tls_config": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsCsrsApi.create_csr": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsDomainsApi.list_tls_domains": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsPrivateKeysApi.create_tls_key": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsPrivateKeysApi.delete_tls_key": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsPrivateKeysApi.get_tls_key": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsPrivateKeysApi.list_tls_keys": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsSubscriptionsApi.create_globalsign_email_challenge": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsSubscriptionsApi.create_tls_sub": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsSubscriptionsApi.delete_globalsign_email_challenge": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsSubscriptionsApi.delete_tls_sub": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsSubscriptionsApi.get_tls_sub": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsSubscriptionsApi.list_tls_subs": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TlsSubscriptionsApi.patch_tls_sub": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TokensApi.bulk_revoke_tokens": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TokensApi.create_token": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TokensApi.get_token": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TokensApi.get_token_current": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TokensApi.list_tokens_customer": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TokensApi.list_tokens_user": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TokensApi.revoke_token": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "TokensApi.revoke_token_current": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "UserApi.create_user": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "UserApi.delete_user": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "UserApi.get_current_user": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "UserApi.get_user": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "UserApi.request_password_reset": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "UserApi.update_user": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "UserApi.update_user_password": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VclApi.create_custom_vcl": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VclApi.delete_custom_vcl": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VclApi.get_custom_vcl": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VclApi.get_custom_vcl_boilerplate": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VclApi.get_custom_vcl_generated": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VclApi.get_custom_vcl_generated_highlighted": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VclApi.get_custom_vcl_highlighted": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VclApi.get_custom_vcl_raw": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VclApi.lint_vcl_default": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VclApi.lint_vcl_for_service": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VclApi.list_custom_vcl": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VclApi.set_custom_vcl_main": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VclApi.update_custom_vcl": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VclDiffApi.vcl_diff_service_versions": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VersionApi.activate_service_version": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VersionApi.activate_service_version_environment": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VersionApi.clone_service_version": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VersionApi.create_service_version": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VersionApi.deactivate_service_version": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VersionApi.deactivate_service_version_environment": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VersionApi.get_service_version": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VersionApi.list_service_versions": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VersionApi.lock_service_version": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VersionApi.update_service_version": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "VersionApi.validate_service_version": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
        "WholePlatformDdosHistoricalApi.get_platform_ddos_historical": [
          {
          url: "https://api.fastly.com",
          description: "No description provided",
          }
        ],
      }
    end

    # Returns URL based on server settings
    #
    # @param index array index of the server settings
    # @param variables hash of variable and the corresponding value
    def server_url(index, variables = {}, servers = nil)
      servers = server_settings if servers == nil

      # check array index out of bound
      if (index < 0 || index >= servers.size)
        fail ArgumentError, "Invalid index #{index} when selecting the server. Must be less than #{servers.size}"
      end

      server = servers[index]
      url = server[:url]

      return url unless server.key? :variables

      # go through variable and assign a value
      server[:variables].each do |name, variable|
        if variables.key?(name)
          if (!server[:variables][name].key?(:enum_values) || server[:variables][name][:enum_values].include?(variables[name]))
            url.gsub! "{" + name.to_s + "}", variables[name]
          else
            fail ArgumentError, "The variable `#{name}` in the server URL has invalid value #{variables[name]}. Must be #{server[:variables][name][:enum_values]}."
          end
        else
          # use default value
          url.gsub! "{" + name.to_s + "}", server[:variables][name][:default_value]
        end
      end

      url
    end

  end
end
