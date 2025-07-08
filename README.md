# fastly-ruby

A Ruby client library for interacting with most facets of the [Fastly API](https://www.fastly.com/documentation/reference/api/).


## Installation

To install via RubyGems, add the following to your project's `Gemfile`:

```ruby
gem 'fastly', '~> 13.1.0'
```

Then run `bundle install`.

## Usage

```ruby
# Load the gem
require 'fastly'

# Authorize the client with a Fastly API token.
Fastly.configure do |config|
# Configure API key authorization: token
  config.api_token = 'YOUR API KEY'
end

api_instance = Fastly::AclApi.new

opts = {
  service_id: 'SU1Z0isxPaozGVKXdv0eY', # String
  version_id: 56, # Integer
  name: 'my_acl', # String
}

begin
  result = api_instance.create_acl(opts)
  p result
rescue Fastly::ApiError => e
  puts "Exception when calling AclApi->create_acl: #{e}"
end
```

## Authorization

> [!NOTE]
> The Fastly API requires an [API token](https://www.fastly.com/documentation/reference/api/#authentication) for most operations.

Set up the API token in the Ruby client by assigning to `api_token` of a configuration as shown:

```ruby
# Authorize the client with a Fastly API token.
Fastly.configure do |config|
  # Configure API key authorization: token
  config.api_token = 'YOUR API KEY'
end
```

Alternatively, set the `FASTLY_API_TOKEN` environment variable instead of setting `api_token`.

## API Endpoints

The main documentation for the Fastly API can be found on our [Developer Hub](https://www.fastly.com/documentation/reference/api/).

<details>

<summary>Table of API endpoints</summary>

Class | Method | Description
----- | ------ | -----------
[*Fastly::AclApi*](docs/AclApi.md) | [**create_acl**](docs/AclApi.md#create_acl) | Create a new ACL
[*Fastly::AclApi*](docs/AclApi.md) | [**delete_acl**](docs/AclApi.md#delete_acl) | Delete an ACL
[*Fastly::AclApi*](docs/AclApi.md) | [**get_acl**](docs/AclApi.md#get_acl) | Describe an ACL
[*Fastly::AclApi*](docs/AclApi.md) | [**list_acls**](docs/AclApi.md#list_acls) | List ACLs
[*Fastly::AclApi*](docs/AclApi.md) | [**update_acl**](docs/AclApi.md#update_acl) | Update an ACL
[*Fastly::AclEntryApi*](docs/AclEntryApi.md) | [**bulk_update_acl_entries**](docs/AclEntryApi.md#bulk_update_acl_entries) | Update multiple ACL entries
[*Fastly::AclEntryApi*](docs/AclEntryApi.md) | [**create_acl_entry**](docs/AclEntryApi.md#create_acl_entry) | Create an ACL entry
[*Fastly::AclEntryApi*](docs/AclEntryApi.md) | [**delete_acl_entry**](docs/AclEntryApi.md#delete_acl_entry) | Delete an ACL entry
[*Fastly::AclEntryApi*](docs/AclEntryApi.md) | [**get_acl_entry**](docs/AclEntryApi.md#get_acl_entry) | Describe an ACL entry
[*Fastly::AclEntryApi*](docs/AclEntryApi.md) | [**list_acl_entries**](docs/AclEntryApi.md#list_acl_entries) | List ACL entries
[*Fastly::AclEntryApi*](docs/AclEntryApi.md) | [**update_acl_entry**](docs/AclEntryApi.md#update_acl_entry) | Update an ACL entry
[*Fastly::AclsInComputeApi*](docs/AclsInComputeApi.md) | [**compute_acl_create_acls**](docs/AclsInComputeApi.md#compute_acl_create_acls) | Create a new ACL
[*Fastly::AclsInComputeApi*](docs/AclsInComputeApi.md) | [**compute_acl_delete_s_acl_id**](docs/AclsInComputeApi.md#compute_acl_delete_s_acl_id) | Delete an ACL
[*Fastly::AclsInComputeApi*](docs/AclsInComputeApi.md) | [**compute_acl_list_acl_entries**](docs/AclsInComputeApi.md#compute_acl_list_acl_entries) | List an ACL
[*Fastly::AclsInComputeApi*](docs/AclsInComputeApi.md) | [**compute_acl_list_acls**](docs/AclsInComputeApi.md#compute_acl_list_acls) | List ACLs
[*Fastly::AclsInComputeApi*](docs/AclsInComputeApi.md) | [**compute_acl_list_acls_s_acl_id**](docs/AclsInComputeApi.md#compute_acl_list_acls_s_acl_id) | Describe an ACL
[*Fastly::AclsInComputeApi*](docs/AclsInComputeApi.md) | [**compute_acl_lookup_acls**](docs/AclsInComputeApi.md#compute_acl_lookup_acls) | Lookup an ACL
[*Fastly::AclsInComputeApi*](docs/AclsInComputeApi.md) | [**compute_acl_update_acls**](docs/AclsInComputeApi.md#compute_acl_update_acls) | Update an ACL
[*Fastly::ApexRedirectApi*](docs/ApexRedirectApi.md) | [**create_apex_redirect**](docs/ApexRedirectApi.md#create_apex_redirect) | Create an apex redirect
[*Fastly::ApexRedirectApi*](docs/ApexRedirectApi.md) | [**delete_apex_redirect**](docs/ApexRedirectApi.md#delete_apex_redirect) | Delete an apex redirect
[*Fastly::ApexRedirectApi*](docs/ApexRedirectApi.md) | [**get_apex_redirect**](docs/ApexRedirectApi.md#get_apex_redirect) | Get an apex redirect
[*Fastly::ApexRedirectApi*](docs/ApexRedirectApi.md) | [**list_apex_redirects**](docs/ApexRedirectApi.md#list_apex_redirects) | List apex redirects
[*Fastly::ApexRedirectApi*](docs/ApexRedirectApi.md) | [**update_apex_redirect**](docs/ApexRedirectApi.md#update_apex_redirect) | Update an apex redirect
[*Fastly::AutomationTokensApi*](docs/AutomationTokensApi.md) | [**create_automation_token**](docs/AutomationTokensApi.md#create_automation_token) | Create Automation Token
[*Fastly::AutomationTokensApi*](docs/AutomationTokensApi.md) | [**get_automation_token_id**](docs/AutomationTokensApi.md#get_automation_token_id) | Retrieve an Automation Token by ID
[*Fastly::AutomationTokensApi*](docs/AutomationTokensApi.md) | [**get_automation_tokens_id_services**](docs/AutomationTokensApi.md#get_automation_tokens_id_services) | List Automation Token Services
[*Fastly::AutomationTokensApi*](docs/AutomationTokensApi.md) | [**list_automation_tokens**](docs/AutomationTokensApi.md#list_automation_tokens) | List Customer Automation Tokens
[*Fastly::AutomationTokensApi*](docs/AutomationTokensApi.md) | [**revoke_automation_token_id**](docs/AutomationTokensApi.md#revoke_automation_token_id) | Revoke an Automation Token by ID
[*Fastly::BackendApi*](docs/BackendApi.md) | [**create_backend**](docs/BackendApi.md#create_backend) | Create a backend
[*Fastly::BackendApi*](docs/BackendApi.md) | [**delete_backend**](docs/BackendApi.md#delete_backend) | Delete a backend
[*Fastly::BackendApi*](docs/BackendApi.md) | [**get_backend**](docs/BackendApi.md#get_backend) | Describe a backend
[*Fastly::BackendApi*](docs/BackendApi.md) | [**list_backends**](docs/BackendApi.md#list_backends) | List backends
[*Fastly::BackendApi*](docs/BackendApi.md) | [**update_backend**](docs/BackendApi.md#update_backend) | Update a backend
[*Fastly::BillingAddressApi*](docs/BillingAddressApi.md) | [**add_billing_addr**](docs/BillingAddressApi.md#add_billing_addr) | Add a billing address to a customer
[*Fastly::BillingAddressApi*](docs/BillingAddressApi.md) | [**delete_billing_addr**](docs/BillingAddressApi.md#delete_billing_addr) | Delete a billing address
[*Fastly::BillingAddressApi*](docs/BillingAddressApi.md) | [**get_billing_addr**](docs/BillingAddressApi.md#get_billing_addr) | Get a billing address
[*Fastly::BillingAddressApi*](docs/BillingAddressApi.md) | [**update_billing_addr**](docs/BillingAddressApi.md#update_billing_addr) | Update a billing address
[*Fastly::BillingInvoicesApi*](docs/BillingInvoicesApi.md) | [**get_invoice_by_invoice_id**](docs/BillingInvoicesApi.md#get_invoice_by_invoice_id) | Get invoice by ID.
[*Fastly::BillingInvoicesApi*](docs/BillingInvoicesApi.md) | [**get_month_to_date_invoice**](docs/BillingInvoicesApi.md#get_month_to_date_invoice) | Get month-to-date invoice.
[*Fastly::BillingInvoicesApi*](docs/BillingInvoicesApi.md) | [**list_invoices**](docs/BillingInvoicesApi.md#list_invoices) | List of invoices.
[*Fastly::BillingUsageMetricsApi*](docs/BillingUsageMetricsApi.md) | [**get_service_level_usage**](docs/BillingUsageMetricsApi.md#get_service_level_usage) | Retrieve service-level usage metrics for services with non-zero usage units.
[*Fastly::BillingUsageMetricsApi*](docs/BillingUsageMetricsApi.md) | [**get_usage_metrics**](docs/BillingUsageMetricsApi.md#get_usage_metrics) | Get monthly usage metrics
[*Fastly::CacheSettingsApi*](docs/CacheSettingsApi.md) | [**create_cache_settings**](docs/CacheSettingsApi.md#create_cache_settings) | Create a cache settings object
[*Fastly::CacheSettingsApi*](docs/CacheSettingsApi.md) | [**delete_cache_settings**](docs/CacheSettingsApi.md#delete_cache_settings) | Delete a cache settings object
[*Fastly::CacheSettingsApi*](docs/CacheSettingsApi.md) | [**get_cache_settings**](docs/CacheSettingsApi.md#get_cache_settings) | Get a cache settings object
[*Fastly::CacheSettingsApi*](docs/CacheSettingsApi.md) | [**list_cache_settings**](docs/CacheSettingsApi.md#list_cache_settings) | List cache settings objects
[*Fastly::CacheSettingsApi*](docs/CacheSettingsApi.md) | [**update_cache_settings**](docs/CacheSettingsApi.md#update_cache_settings) | Update a cache settings object
[*Fastly::ConditionApi*](docs/ConditionApi.md) | [**create_condition**](docs/ConditionApi.md#create_condition) | Create a condition
[*Fastly::ConditionApi*](docs/ConditionApi.md) | [**delete_condition**](docs/ConditionApi.md#delete_condition) | Delete a condition
[*Fastly::ConditionApi*](docs/ConditionApi.md) | [**get_condition**](docs/ConditionApi.md#get_condition) | Describe a condition
[*Fastly::ConditionApi*](docs/ConditionApi.md) | [**list_conditions**](docs/ConditionApi.md#list_conditions) | List conditions
[*Fastly::ConditionApi*](docs/ConditionApi.md) | [**update_condition**](docs/ConditionApi.md#update_condition) | Update a condition
[*Fastly::ConfigStoreApi*](docs/ConfigStoreApi.md) | [**create_config_store**](docs/ConfigStoreApi.md#create_config_store) | Create a config store
[*Fastly::ConfigStoreApi*](docs/ConfigStoreApi.md) | [**delete_config_store**](docs/ConfigStoreApi.md#delete_config_store) | Delete a config store
[*Fastly::ConfigStoreApi*](docs/ConfigStoreApi.md) | [**get_config_store**](docs/ConfigStoreApi.md#get_config_store) | Describe a config store
[*Fastly::ConfigStoreApi*](docs/ConfigStoreApi.md) | [**get_config_store_info**](docs/ConfigStoreApi.md#get_config_store_info) | Get config store metadata
[*Fastly::ConfigStoreApi*](docs/ConfigStoreApi.md) | [**list_config_store_services**](docs/ConfigStoreApi.md#list_config_store_services) | List linked services
[*Fastly::ConfigStoreApi*](docs/ConfigStoreApi.md) | [**list_config_stores**](docs/ConfigStoreApi.md#list_config_stores) | List config stores
[*Fastly::ConfigStoreApi*](docs/ConfigStoreApi.md) | [**update_config_store**](docs/ConfigStoreApi.md#update_config_store) | Update a config store
[*Fastly::ConfigStoreItemApi*](docs/ConfigStoreItemApi.md) | [**bulk_update_config_store_item**](docs/ConfigStoreItemApi.md#bulk_update_config_store_item) | Update multiple entries in a config store
[*Fastly::ConfigStoreItemApi*](docs/ConfigStoreItemApi.md) | [**create_config_store_item**](docs/ConfigStoreItemApi.md#create_config_store_item) | Create an entry in a config store
[*Fastly::ConfigStoreItemApi*](docs/ConfigStoreItemApi.md) | [**delete_config_store_item**](docs/ConfigStoreItemApi.md#delete_config_store_item) | Delete an item from a config store
[*Fastly::ConfigStoreItemApi*](docs/ConfigStoreItemApi.md) | [**get_config_store_item**](docs/ConfigStoreItemApi.md#get_config_store_item) | Get an item from a config store
[*Fastly::ConfigStoreItemApi*](docs/ConfigStoreItemApi.md) | [**list_config_store_items**](docs/ConfigStoreItemApi.md#list_config_store_items) | List items in a config store
[*Fastly::ConfigStoreItemApi*](docs/ConfigStoreItemApi.md) | [**update_config_store_item**](docs/ConfigStoreItemApi.md#update_config_store_item) | Update an entry in a config store
[*Fastly::ConfigStoreItemApi*](docs/ConfigStoreItemApi.md) | [**upsert_config_store_item**](docs/ConfigStoreItemApi.md#upsert_config_store_item) | Insert or update an entry in a config store
[*Fastly::ContactApi*](docs/ContactApi.md) | [**create_contacts**](docs/ContactApi.md#create_contacts) | Add a new customer contact
[*Fastly::ContactApi*](docs/ContactApi.md) | [**delete_contact**](docs/ContactApi.md#delete_contact) | Delete a contact
[*Fastly::ContactApi*](docs/ContactApi.md) | [**list_contacts**](docs/ContactApi.md#list_contacts) | List contacts
[*Fastly::ContentApi*](docs/ContentApi.md) | [**content_check**](docs/ContentApi.md#content_check) | Check status of content in each POP's cache
[*Fastly::CustomerApi*](docs/CustomerApi.md) | [**delete_customer**](docs/CustomerApi.md#delete_customer) | Delete a customer
[*Fastly::CustomerApi*](docs/CustomerApi.md) | [**get_customer**](docs/CustomerApi.md#get_customer) | Get a customer
[*Fastly::CustomerApi*](docs/CustomerApi.md) | [**get_logged_in_customer**](docs/CustomerApi.md#get_logged_in_customer) | Get the logged in customer
[*Fastly::CustomerApi*](docs/CustomerApi.md) | [**list_users**](docs/CustomerApi.md#list_users) | List users
[*Fastly::CustomerApi*](docs/CustomerApi.md) | [**update_customer**](docs/CustomerApi.md#update_customer) | Update a customer
[*Fastly::CustomerAddressesApi*](docs/CustomerAddressesApi.md) | [**create_customer_address**](docs/CustomerAddressesApi.md#create_customer_address) | Creates an address associated with a customer account.
[*Fastly::CustomerAddressesApi*](docs/CustomerAddressesApi.md) | [**list_customer_addresses**](docs/CustomerAddressesApi.md#list_customer_addresses) | Return the list of addresses associated with a customer account.
[*Fastly::CustomerAddressesApi*](docs/CustomerAddressesApi.md) | [**update_customer_address**](docs/CustomerAddressesApi.md#update_customer_address) | Updates an address associated with a customer account.
[*Fastly::DdosProtectionApi*](docs/DdosProtectionApi.md) | [**ddos_protection_event_get**](docs/DdosProtectionApi.md#ddos_protection_event_get) | Get event by ID
[*Fastly::DdosProtectionApi*](docs/DdosProtectionApi.md) | [**ddos_protection_event_list**](docs/DdosProtectionApi.md#ddos_protection_event_list) | Get events
[*Fastly::DdosProtectionApi*](docs/DdosProtectionApi.md) | [**ddos_protection_event_rule_list**](docs/DdosProtectionApi.md#ddos_protection_event_rule_list) | Get all rules for an event
[*Fastly::DdosProtectionApi*](docs/DdosProtectionApi.md) | [**ddos_protection_rule_get**](docs/DdosProtectionApi.md#ddos_protection_rule_get) | Get a rule by ID
[*Fastly::DdosProtectionApi*](docs/DdosProtectionApi.md) | [**ddos_protection_traffic_stats_rule_get**](docs/DdosProtectionApi.md#ddos_protection_traffic_stats_rule_get) | Get traffic stats for a rule
[*Fastly::DictionaryApi*](docs/DictionaryApi.md) | [**create_dictionary**](docs/DictionaryApi.md#create_dictionary) | Create a dictionary
[*Fastly::DictionaryApi*](docs/DictionaryApi.md) | [**delete_dictionary**](docs/DictionaryApi.md#delete_dictionary) | Delete a dictionary
[*Fastly::DictionaryApi*](docs/DictionaryApi.md) | [**get_dictionary**](docs/DictionaryApi.md#get_dictionary) | Get a dictionary
[*Fastly::DictionaryApi*](docs/DictionaryApi.md) | [**list_dictionaries**](docs/DictionaryApi.md#list_dictionaries) | List dictionaries
[*Fastly::DictionaryApi*](docs/DictionaryApi.md) | [**update_dictionary**](docs/DictionaryApi.md#update_dictionary) | Update a dictionary
[*Fastly::DictionaryInfoApi*](docs/DictionaryInfoApi.md) | [**get_dictionary_info**](docs/DictionaryInfoApi.md#get_dictionary_info) | Get dictionary metadata
[*Fastly::DictionaryItemApi*](docs/DictionaryItemApi.md) | [**bulk_update_dictionary_item**](docs/DictionaryItemApi.md#bulk_update_dictionary_item) | Update multiple entries in a dictionary
[*Fastly::DictionaryItemApi*](docs/DictionaryItemApi.md) | [**create_dictionary_item**](docs/DictionaryItemApi.md#create_dictionary_item) | Create an entry in a dictionary
[*Fastly::DictionaryItemApi*](docs/DictionaryItemApi.md) | [**delete_dictionary_item**](docs/DictionaryItemApi.md#delete_dictionary_item) | Delete an item from a dictionary
[*Fastly::DictionaryItemApi*](docs/DictionaryItemApi.md) | [**get_dictionary_item**](docs/DictionaryItemApi.md#get_dictionary_item) | Get an item from a dictionary
[*Fastly::DictionaryItemApi*](docs/DictionaryItemApi.md) | [**list_dictionary_items**](docs/DictionaryItemApi.md#list_dictionary_items) | List items in a dictionary
[*Fastly::DictionaryItemApi*](docs/DictionaryItemApi.md) | [**update_dictionary_item**](docs/DictionaryItemApi.md#update_dictionary_item) | Update an entry in a dictionary
[*Fastly::DictionaryItemApi*](docs/DictionaryItemApi.md) | [**upsert_dictionary_item**](docs/DictionaryItemApi.md#upsert_dictionary_item) | Insert or update an entry in a dictionary
[*Fastly::DiffApi*](docs/DiffApi.md) | [**diff_service_versions**](docs/DiffApi.md#diff_service_versions) | Diff two service versions
[*Fastly::DirectorApi*](docs/DirectorApi.md) | [**create_director**](docs/DirectorApi.md#create_director) | Create a director
[*Fastly::DirectorApi*](docs/DirectorApi.md) | [**delete_director**](docs/DirectorApi.md#delete_director) | Delete a director
[*Fastly::DirectorApi*](docs/DirectorApi.md) | [**get_director**](docs/DirectorApi.md#get_director) | Get a director
[*Fastly::DirectorApi*](docs/DirectorApi.md) | [**list_directors**](docs/DirectorApi.md#list_directors) | List directors
[*Fastly::DirectorApi*](docs/DirectorApi.md) | [**update_director**](docs/DirectorApi.md#update_director) | Update a director
[*Fastly::DirectorBackendApi*](docs/DirectorBackendApi.md) | [**create_director_backend**](docs/DirectorBackendApi.md#create_director_backend) | Create a director-backend relationship
[*Fastly::DirectorBackendApi*](docs/DirectorBackendApi.md) | [**delete_director_backend**](docs/DirectorBackendApi.md#delete_director_backend) | Delete a director-backend relationship
[*Fastly::DirectorBackendApi*](docs/DirectorBackendApi.md) | [**get_director_backend**](docs/DirectorBackendApi.md#get_director_backend) | Get a director-backend relationship
[*Fastly::DomainApi*](docs/DomainApi.md) | [**check_domain**](docs/DomainApi.md#check_domain) | Validate DNS configuration for a single domain on a service
[*Fastly::DomainApi*](docs/DomainApi.md) | [**check_domains**](docs/DomainApi.md#check_domains) | Validate DNS configuration for all domains on a service
[*Fastly::DomainApi*](docs/DomainApi.md) | [**create_domain**](docs/DomainApi.md#create_domain) | Add a domain name to a service
[*Fastly::DomainApi*](docs/DomainApi.md) | [**delete_domain**](docs/DomainApi.md#delete_domain) | Remove a domain from a service
[*Fastly::DomainApi*](docs/DomainApi.md) | [**get_domain**](docs/DomainApi.md#get_domain) | Describe a domain
[*Fastly::DomainApi*](docs/DomainApi.md) | [**list_domains**](docs/DomainApi.md#list_domains) | List domains
[*Fastly::DomainApi*](docs/DomainApi.md) | [**update_domain**](docs/DomainApi.md#update_domain) | Update a domain
[*Fastly::DomainInspectorHistoricalApi*](docs/DomainInspectorHistoricalApi.md) | [**get_domain_inspector_historical**](docs/DomainInspectorHistoricalApi.md#get_domain_inspector_historical) | Get historical domain data for a service
[*Fastly::DomainInspectorRealtimeApi*](docs/DomainInspectorRealtimeApi.md) | [**get_domain_inspector_last120_seconds**](docs/DomainInspectorRealtimeApi.md#get_domain_inspector_last120_seconds) | Get real-time domain data for the last 120 seconds
[*Fastly::DomainInspectorRealtimeApi*](docs/DomainInspectorRealtimeApi.md) | [**get_domain_inspector_last_max_entries**](docs/DomainInspectorRealtimeApi.md#get_domain_inspector_last_max_entries) | Get a limited number of real-time domain data entries
[*Fastly::DomainInspectorRealtimeApi*](docs/DomainInspectorRealtimeApi.md) | [**get_domain_inspector_last_second**](docs/DomainInspectorRealtimeApi.md#get_domain_inspector_last_second) | Get real-time domain data from a specified time
[*Fastly::DomainOwnershipsApi*](docs/DomainOwnershipsApi.md) | [**list_domain_ownerships**](docs/DomainOwnershipsApi.md#list_domain_ownerships) | List domain-ownerships
[*Fastly::EventsApi*](docs/EventsApi.md) | [**get_event**](docs/EventsApi.md#get_event) | Get an event
[*Fastly::EventsApi*](docs/EventsApi.md) | [**list_events**](docs/EventsApi.md#list_events) | List events
[*Fastly::GzipApi*](docs/GzipApi.md) | [**create_gzip_config**](docs/GzipApi.md#create_gzip_config) | Create a gzip configuration
[*Fastly::GzipApi*](docs/GzipApi.md) | [**delete_gzip_config**](docs/GzipApi.md#delete_gzip_config) | Delete a gzip configuration
[*Fastly::GzipApi*](docs/GzipApi.md) | [**get_gzip_configs**](docs/GzipApi.md#get_gzip_configs) | Get a gzip configuration
[*Fastly::GzipApi*](docs/GzipApi.md) | [**list_gzip_configs**](docs/GzipApi.md#list_gzip_configs) | List gzip configurations
[*Fastly::GzipApi*](docs/GzipApi.md) | [**update_gzip_config**](docs/GzipApi.md#update_gzip_config) | Update a gzip configuration
[*Fastly::HeaderApi*](docs/HeaderApi.md) | [**create_header_object**](docs/HeaderApi.md#create_header_object) | Create a Header object
[*Fastly::HeaderApi*](docs/HeaderApi.md) | [**delete_header_object**](docs/HeaderApi.md#delete_header_object) | Delete a Header object
[*Fastly::HeaderApi*](docs/HeaderApi.md) | [**get_header_object**](docs/HeaderApi.md#get_header_object) | Get a Header object
[*Fastly::HeaderApi*](docs/HeaderApi.md) | [**list_header_objects**](docs/HeaderApi.md#list_header_objects) | List Header objects
[*Fastly::HeaderApi*](docs/HeaderApi.md) | [**update_header_object**](docs/HeaderApi.md#update_header_object) | Update a Header object
[*Fastly::HealthcheckApi*](docs/HealthcheckApi.md) | [**create_healthcheck**](docs/HealthcheckApi.md#create_healthcheck) | Create a health check
[*Fastly::HealthcheckApi*](docs/HealthcheckApi.md) | [**delete_healthcheck**](docs/HealthcheckApi.md#delete_healthcheck) | Delete a health check
[*Fastly::HealthcheckApi*](docs/HealthcheckApi.md) | [**get_healthcheck**](docs/HealthcheckApi.md#get_healthcheck) | Get a health check
[*Fastly::HealthcheckApi*](docs/HealthcheckApi.md) | [**list_healthchecks**](docs/HealthcheckApi.md#list_healthchecks) | List health checks
[*Fastly::HealthcheckApi*](docs/HealthcheckApi.md) | [**update_healthcheck**](docs/HealthcheckApi.md#update_healthcheck) | Update a health check
[*Fastly::HistoricalApi*](docs/HistoricalApi.md) | [**get_hist_stats**](docs/HistoricalApi.md#get_hist_stats) | Get historical stats
[*Fastly::HistoricalApi*](docs/HistoricalApi.md) | [**get_hist_stats_aggregated**](docs/HistoricalApi.md#get_hist_stats_aggregated) | Get aggregated historical stats
[*Fastly::HistoricalApi*](docs/HistoricalApi.md) | [**get_hist_stats_field**](docs/HistoricalApi.md#get_hist_stats_field) | Get historical stats for a single field
[*Fastly::HistoricalApi*](docs/HistoricalApi.md) | [**get_hist_stats_service**](docs/HistoricalApi.md#get_hist_stats_service) | Get historical stats for a single service
[*Fastly::HistoricalApi*](docs/HistoricalApi.md) | [**get_hist_stats_service_field**](docs/HistoricalApi.md#get_hist_stats_service_field) | Get historical stats for a single service/field combination
[*Fastly::HistoricalApi*](docs/HistoricalApi.md) | [**get_regions**](docs/HistoricalApi.md#get_regions) | Get region codes
[*Fastly::HistoricalApi*](docs/HistoricalApi.md) | [**get_usage**](docs/HistoricalApi.md#get_usage) | Get usage statistics
[*Fastly::HistoricalApi*](docs/HistoricalApi.md) | [**get_usage_month**](docs/HistoricalApi.md#get_usage_month) | Get month-to-date usage statistics
[*Fastly::HistoricalApi*](docs/HistoricalApi.md) | [**get_usage_service**](docs/HistoricalApi.md#get_usage_service) | Get usage statistics per service
[*Fastly::Http3Api*](docs/Http3Api.md) | [**create_http3**](docs/Http3Api.md#create_http3) | Enable support for HTTP/3
[*Fastly::Http3Api*](docs/Http3Api.md) | [**delete_http3**](docs/Http3Api.md#delete_http3) | Disable support for HTTP/3
[*Fastly::Http3Api*](docs/Http3Api.md) | [**get_http3**](docs/Http3Api.md#get_http3) | Get HTTP/3 status
[*Fastly::IamPermissionsApi*](docs/IamPermissionsApi.md) | [**list_permissions**](docs/IamPermissionsApi.md#list_permissions) | List permissions
[*Fastly::IamRolesApi*](docs/IamRolesApi.md) | [**add_role_permissions**](docs/IamRolesApi.md#add_role_permissions) | Add permissions to a role
[*Fastly::IamRolesApi*](docs/IamRolesApi.md) | [**create_a_role**](docs/IamRolesApi.md#create_a_role) | Create a role
[*Fastly::IamRolesApi*](docs/IamRolesApi.md) | [**delete_a_role**](docs/IamRolesApi.md#delete_a_role) | Delete a role
[*Fastly::IamRolesApi*](docs/IamRolesApi.md) | [**get_a_role**](docs/IamRolesApi.md#get_a_role) | Get a role
[*Fastly::IamRolesApi*](docs/IamRolesApi.md) | [**list_role_permissions**](docs/IamRolesApi.md#list_role_permissions) | List permissions in a role
[*Fastly::IamRolesApi*](docs/IamRolesApi.md) | [**list_roles**](docs/IamRolesApi.md#list_roles) | List roles
[*Fastly::IamRolesApi*](docs/IamRolesApi.md) | [**remove_role_permissions**](docs/IamRolesApi.md#remove_role_permissions) | Remove permissions from a role
[*Fastly::IamRolesApi*](docs/IamRolesApi.md) | [**update_a_role**](docs/IamRolesApi.md#update_a_role) | Update a role
[*Fastly::IamServiceGroupsApi*](docs/IamServiceGroupsApi.md) | [**add_service_group_services**](docs/IamServiceGroupsApi.md#add_service_group_services) | Add services in a service group
[*Fastly::IamServiceGroupsApi*](docs/IamServiceGroupsApi.md) | [**create_a_service_group**](docs/IamServiceGroupsApi.md#create_a_service_group) | Create a service group
[*Fastly::IamServiceGroupsApi*](docs/IamServiceGroupsApi.md) | [**delete_a_service_group**](docs/IamServiceGroupsApi.md#delete_a_service_group) | Delete a service group
[*Fastly::IamServiceGroupsApi*](docs/IamServiceGroupsApi.md) | [**get_a_service_group**](docs/IamServiceGroupsApi.md#get_a_service_group) | Get a service group
[*Fastly::IamServiceGroupsApi*](docs/IamServiceGroupsApi.md) | [**list_service_group_services**](docs/IamServiceGroupsApi.md#list_service_group_services) | List services to a service group
[*Fastly::IamServiceGroupsApi*](docs/IamServiceGroupsApi.md) | [**list_service_groups**](docs/IamServiceGroupsApi.md#list_service_groups) | List service groups
[*Fastly::IamServiceGroupsApi*](docs/IamServiceGroupsApi.md) | [**remove_service_group_services**](docs/IamServiceGroupsApi.md#remove_service_group_services) | Remove services from a service group
[*Fastly::IamServiceGroupsApi*](docs/IamServiceGroupsApi.md) | [**update_a_service_group**](docs/IamServiceGroupsApi.md#update_a_service_group) | Update a service group
[*Fastly::IamUserGroupsApi*](docs/IamUserGroupsApi.md) | [**add_user_group_members**](docs/IamUserGroupsApi.md#add_user_group_members) | Add members to a user group
[*Fastly::IamUserGroupsApi*](docs/IamUserGroupsApi.md) | [**add_user_group_roles**](docs/IamUserGroupsApi.md#add_user_group_roles) | Add roles to a user group
[*Fastly::IamUserGroupsApi*](docs/IamUserGroupsApi.md) | [**add_user_group_service_groups**](docs/IamUserGroupsApi.md#add_user_group_service_groups) | Add service groups to a user group
[*Fastly::IamUserGroupsApi*](docs/IamUserGroupsApi.md) | [**create_a_user_group**](docs/IamUserGroupsApi.md#create_a_user_group) | Create a user group
[*Fastly::IamUserGroupsApi*](docs/IamUserGroupsApi.md) | [**delete_a_user_group**](docs/IamUserGroupsApi.md#delete_a_user_group) | Delete a user group
[*Fastly::IamUserGroupsApi*](docs/IamUserGroupsApi.md) | [**get_a_user_group**](docs/IamUserGroupsApi.md#get_a_user_group) | Get a user group
[*Fastly::IamUserGroupsApi*](docs/IamUserGroupsApi.md) | [**list_user_group_members**](docs/IamUserGroupsApi.md#list_user_group_members) | List members of a user group
[*Fastly::IamUserGroupsApi*](docs/IamUserGroupsApi.md) | [**list_user_group_roles**](docs/IamUserGroupsApi.md#list_user_group_roles) | List roles in a user group
[*Fastly::IamUserGroupsApi*](docs/IamUserGroupsApi.md) | [**list_user_group_service_groups**](docs/IamUserGroupsApi.md#list_user_group_service_groups) | List service groups in a user group
[*Fastly::IamUserGroupsApi*](docs/IamUserGroupsApi.md) | [**list_user_groups**](docs/IamUserGroupsApi.md#list_user_groups) | List user groups
[*Fastly::IamUserGroupsApi*](docs/IamUserGroupsApi.md) | [**remove_user_group_members**](docs/IamUserGroupsApi.md#remove_user_group_members) | Remove members of a user group
[*Fastly::IamUserGroupsApi*](docs/IamUserGroupsApi.md) | [**remove_user_group_roles**](docs/IamUserGroupsApi.md#remove_user_group_roles) | Remove roles from a user group
[*Fastly::IamUserGroupsApi*](docs/IamUserGroupsApi.md) | [**remove_user_group_service_groups**](docs/IamUserGroupsApi.md#remove_user_group_service_groups) | Remove service groups from a user group
[*Fastly::IamUserGroupsApi*](docs/IamUserGroupsApi.md) | [**update_a_user_group**](docs/IamUserGroupsApi.md#update_a_user_group) | Update a user group
[*Fastly::ImageOptimizerDefaultSettingsApi*](docs/ImageOptimizerDefaultSettingsApi.md) | [**get_default_settings**](docs/ImageOptimizerDefaultSettingsApi.md#get_default_settings) | Get current Image Optimizer Default Settings
[*Fastly::ImageOptimizerDefaultSettingsApi*](docs/ImageOptimizerDefaultSettingsApi.md) | [**update_default_settings**](docs/ImageOptimizerDefaultSettingsApi.md#update_default_settings) | Update Image Optimizer Default Settings
[*Fastly::InsightsApi*](docs/InsightsApi.md) | [**get_log_insights**](docs/InsightsApi.md#get_log_insights) | Retrieve log insights
[*Fastly::InvitationsApi*](docs/InvitationsApi.md) | [**create_invitation**](docs/InvitationsApi.md#create_invitation) | Create an invitation
[*Fastly::InvitationsApi*](docs/InvitationsApi.md) | [**delete_invitation**](docs/InvitationsApi.md#delete_invitation) | Delete an invitation
[*Fastly::InvitationsApi*](docs/InvitationsApi.md) | [**list_invitations**](docs/InvitationsApi.md#list_invitations) | List invitations
[*Fastly::KvStoreApi*](docs/KvStoreApi.md) | [**kv_store_create**](docs/KvStoreApi.md#kv_store_create) | Create a KV store.
[*Fastly::KvStoreApi*](docs/KvStoreApi.md) | [**kv_store_delete**](docs/KvStoreApi.md#kv_store_delete) | Delete a KV store.
[*Fastly::KvStoreApi*](docs/KvStoreApi.md) | [**kv_store_get**](docs/KvStoreApi.md#kv_store_get) | Describe a KV store.
[*Fastly::KvStoreApi*](docs/KvStoreApi.md) | [**kv_store_list**](docs/KvStoreApi.md#kv_store_list) | List all KV stores.
[*Fastly::KvStoreItemApi*](docs/KvStoreItemApi.md) | [**kv_store_delete_item**](docs/KvStoreItemApi.md#kv_store_delete_item) | Delete an item.
[*Fastly::KvStoreItemApi*](docs/KvStoreItemApi.md) | [**kv_store_get_item**](docs/KvStoreItemApi.md#kv_store_get_item) | Get an item.
[*Fastly::KvStoreItemApi*](docs/KvStoreItemApi.md) | [**kv_store_list_item_keys**](docs/KvStoreItemApi.md#kv_store_list_item_keys) | List item keys.
[*Fastly::KvStoreItemApi*](docs/KvStoreItemApi.md) | [**kv_store_upsert_item**](docs/KvStoreItemApi.md#kv_store_upsert_item) | Insert or update an item.
[*Fastly::LogExplorerApi*](docs/LogExplorerApi.md) | [**get_log_records**](docs/LogExplorerApi.md#get_log_records) | Retrieve log records
[*Fastly::LoggingAzureblobApi*](docs/LoggingAzureblobApi.md) | [**create_log_azure**](docs/LoggingAzureblobApi.md#create_log_azure) | Create an Azure Blob Storage log endpoint
[*Fastly::LoggingAzureblobApi*](docs/LoggingAzureblobApi.md) | [**delete_log_azure**](docs/LoggingAzureblobApi.md#delete_log_azure) | Delete the Azure Blob Storage log endpoint
[*Fastly::LoggingAzureblobApi*](docs/LoggingAzureblobApi.md) | [**get_log_azure**](docs/LoggingAzureblobApi.md#get_log_azure) | Get an Azure Blob Storage log endpoint
[*Fastly::LoggingAzureblobApi*](docs/LoggingAzureblobApi.md) | [**list_log_azure**](docs/LoggingAzureblobApi.md#list_log_azure) | List Azure Blob Storage log endpoints
[*Fastly::LoggingAzureblobApi*](docs/LoggingAzureblobApi.md) | [**update_log_azure**](docs/LoggingAzureblobApi.md#update_log_azure) | Update an Azure Blob Storage log endpoint
[*Fastly::LoggingBigqueryApi*](docs/LoggingBigqueryApi.md) | [**create_log_bigquery**](docs/LoggingBigqueryApi.md#create_log_bigquery) | Create a BigQuery log endpoint
[*Fastly::LoggingBigqueryApi*](docs/LoggingBigqueryApi.md) | [**delete_log_bigquery**](docs/LoggingBigqueryApi.md#delete_log_bigquery) | Delete a BigQuery log endpoint
[*Fastly::LoggingBigqueryApi*](docs/LoggingBigqueryApi.md) | [**get_log_bigquery**](docs/LoggingBigqueryApi.md#get_log_bigquery) | Get a BigQuery log endpoint
[*Fastly::LoggingBigqueryApi*](docs/LoggingBigqueryApi.md) | [**list_log_bigquery**](docs/LoggingBigqueryApi.md#list_log_bigquery) | List BigQuery log endpoints
[*Fastly::LoggingBigqueryApi*](docs/LoggingBigqueryApi.md) | [**update_log_bigquery**](docs/LoggingBigqueryApi.md#update_log_bigquery) | Update a BigQuery log endpoint
[*Fastly::LoggingCloudfilesApi*](docs/LoggingCloudfilesApi.md) | [**create_log_cloudfiles**](docs/LoggingCloudfilesApi.md#create_log_cloudfiles) | Create a Cloud Files log endpoint
[*Fastly::LoggingCloudfilesApi*](docs/LoggingCloudfilesApi.md) | [**delete_log_cloudfiles**](docs/LoggingCloudfilesApi.md#delete_log_cloudfiles) | Delete the Cloud Files log endpoint
[*Fastly::LoggingCloudfilesApi*](docs/LoggingCloudfilesApi.md) | [**get_log_cloudfiles**](docs/LoggingCloudfilesApi.md#get_log_cloudfiles) | Get a Cloud Files log endpoint
[*Fastly::LoggingCloudfilesApi*](docs/LoggingCloudfilesApi.md) | [**list_log_cloudfiles**](docs/LoggingCloudfilesApi.md#list_log_cloudfiles) | List Cloud Files log endpoints
[*Fastly::LoggingCloudfilesApi*](docs/LoggingCloudfilesApi.md) | [**update_log_cloudfiles**](docs/LoggingCloudfilesApi.md#update_log_cloudfiles) | Update the Cloud Files log endpoint
[*Fastly::LoggingDatadogApi*](docs/LoggingDatadogApi.md) | [**create_log_datadog**](docs/LoggingDatadogApi.md#create_log_datadog) | Create a Datadog log endpoint
[*Fastly::LoggingDatadogApi*](docs/LoggingDatadogApi.md) | [**delete_log_datadog**](docs/LoggingDatadogApi.md#delete_log_datadog) | Delete a Datadog log endpoint
[*Fastly::LoggingDatadogApi*](docs/LoggingDatadogApi.md) | [**get_log_datadog**](docs/LoggingDatadogApi.md#get_log_datadog) | Get a Datadog log endpoint
[*Fastly::LoggingDatadogApi*](docs/LoggingDatadogApi.md) | [**list_log_datadog**](docs/LoggingDatadogApi.md#list_log_datadog) | List Datadog log endpoints
[*Fastly::LoggingDatadogApi*](docs/LoggingDatadogApi.md) | [**update_log_datadog**](docs/LoggingDatadogApi.md#update_log_datadog) | Update a Datadog log endpoint
[*Fastly::LoggingDigitaloceanApi*](docs/LoggingDigitaloceanApi.md) | [**create_log_digocean**](docs/LoggingDigitaloceanApi.md#create_log_digocean) | Create a DigitalOcean Spaces log endpoint
[*Fastly::LoggingDigitaloceanApi*](docs/LoggingDigitaloceanApi.md) | [**delete_log_digocean**](docs/LoggingDigitaloceanApi.md#delete_log_digocean) | Delete a DigitalOcean Spaces log endpoint
[*Fastly::LoggingDigitaloceanApi*](docs/LoggingDigitaloceanApi.md) | [**get_log_digocean**](docs/LoggingDigitaloceanApi.md#get_log_digocean) | Get a DigitalOcean Spaces log endpoint
[*Fastly::LoggingDigitaloceanApi*](docs/LoggingDigitaloceanApi.md) | [**list_log_digocean**](docs/LoggingDigitaloceanApi.md#list_log_digocean) | List DigitalOcean Spaces log endpoints
[*Fastly::LoggingDigitaloceanApi*](docs/LoggingDigitaloceanApi.md) | [**update_log_digocean**](docs/LoggingDigitaloceanApi.md#update_log_digocean) | Update a DigitalOcean Spaces log endpoint
[*Fastly::LoggingElasticsearchApi*](docs/LoggingElasticsearchApi.md) | [**create_log_elasticsearch**](docs/LoggingElasticsearchApi.md#create_log_elasticsearch) | Create an Elasticsearch log endpoint
[*Fastly::LoggingElasticsearchApi*](docs/LoggingElasticsearchApi.md) | [**delete_log_elasticsearch**](docs/LoggingElasticsearchApi.md#delete_log_elasticsearch) | Delete an Elasticsearch log endpoint
[*Fastly::LoggingElasticsearchApi*](docs/LoggingElasticsearchApi.md) | [**get_log_elasticsearch**](docs/LoggingElasticsearchApi.md#get_log_elasticsearch) | Get an Elasticsearch log endpoint
[*Fastly::LoggingElasticsearchApi*](docs/LoggingElasticsearchApi.md) | [**list_log_elasticsearch**](docs/LoggingElasticsearchApi.md#list_log_elasticsearch) | List Elasticsearch log endpoints
[*Fastly::LoggingElasticsearchApi*](docs/LoggingElasticsearchApi.md) | [**update_log_elasticsearch**](docs/LoggingElasticsearchApi.md#update_log_elasticsearch) | Update an Elasticsearch log endpoint
[*Fastly::LoggingFtpApi*](docs/LoggingFtpApi.md) | [**create_log_ftp**](docs/LoggingFtpApi.md#create_log_ftp) | Create an FTP log endpoint
[*Fastly::LoggingFtpApi*](docs/LoggingFtpApi.md) | [**delete_log_ftp**](docs/LoggingFtpApi.md#delete_log_ftp) | Delete an FTP log endpoint
[*Fastly::LoggingFtpApi*](docs/LoggingFtpApi.md) | [**get_log_ftp**](docs/LoggingFtpApi.md#get_log_ftp) | Get an FTP log endpoint
[*Fastly::LoggingFtpApi*](docs/LoggingFtpApi.md) | [**list_log_ftp**](docs/LoggingFtpApi.md#list_log_ftp) | List FTP log endpoints
[*Fastly::LoggingFtpApi*](docs/LoggingFtpApi.md) | [**update_log_ftp**](docs/LoggingFtpApi.md#update_log_ftp) | Update an FTP log endpoint
[*Fastly::LoggingGcsApi*](docs/LoggingGcsApi.md) | [**create_log_gcs**](docs/LoggingGcsApi.md#create_log_gcs) | Create a GCS log endpoint
[*Fastly::LoggingGcsApi*](docs/LoggingGcsApi.md) | [**delete_log_gcs**](docs/LoggingGcsApi.md#delete_log_gcs) | Delete a GCS log endpoint
[*Fastly::LoggingGcsApi*](docs/LoggingGcsApi.md) | [**get_log_gcs**](docs/LoggingGcsApi.md#get_log_gcs) | Get a GCS log endpoint
[*Fastly::LoggingGcsApi*](docs/LoggingGcsApi.md) | [**list_log_gcs**](docs/LoggingGcsApi.md#list_log_gcs) | List GCS log endpoints
[*Fastly::LoggingGcsApi*](docs/LoggingGcsApi.md) | [**update_log_gcs**](docs/LoggingGcsApi.md#update_log_gcs) | Update a GCS log endpoint
[*Fastly::LoggingGrafanacloudlogsApi*](docs/LoggingGrafanacloudlogsApi.md) | [**create_log_grafanacloudlogs**](docs/LoggingGrafanacloudlogsApi.md#create_log_grafanacloudlogs) | Create a Grafana Cloud Logs log endpoint
[*Fastly::LoggingGrafanacloudlogsApi*](docs/LoggingGrafanacloudlogsApi.md) | [**delete_log_grafanacloudlogs**](docs/LoggingGrafanacloudlogsApi.md#delete_log_grafanacloudlogs) | Delete the Grafana Cloud Logs log endpoint
[*Fastly::LoggingGrafanacloudlogsApi*](docs/LoggingGrafanacloudlogsApi.md) | [**get_log_grafanacloudlogs**](docs/LoggingGrafanacloudlogsApi.md#get_log_grafanacloudlogs) | Get a Grafana Cloud Logs log endpoint
[*Fastly::LoggingGrafanacloudlogsApi*](docs/LoggingGrafanacloudlogsApi.md) | [**list_log_grafanacloudlogs**](docs/LoggingGrafanacloudlogsApi.md#list_log_grafanacloudlogs) | List Grafana Cloud Logs log endpoints
[*Fastly::LoggingGrafanacloudlogsApi*](docs/LoggingGrafanacloudlogsApi.md) | [**update_log_grafanacloudlogs**](docs/LoggingGrafanacloudlogsApi.md#update_log_grafanacloudlogs) | Update a Grafana Cloud Logs log endpoint
[*Fastly::LoggingHerokuApi*](docs/LoggingHerokuApi.md) | [**create_log_heroku**](docs/LoggingHerokuApi.md#create_log_heroku) | Create a Heroku log endpoint
[*Fastly::LoggingHerokuApi*](docs/LoggingHerokuApi.md) | [**delete_log_heroku**](docs/LoggingHerokuApi.md#delete_log_heroku) | Delete the Heroku log endpoint
[*Fastly::LoggingHerokuApi*](docs/LoggingHerokuApi.md) | [**get_log_heroku**](docs/LoggingHerokuApi.md#get_log_heroku) | Get a Heroku log endpoint
[*Fastly::LoggingHerokuApi*](docs/LoggingHerokuApi.md) | [**list_log_heroku**](docs/LoggingHerokuApi.md#list_log_heroku) | List Heroku log endpoints
[*Fastly::LoggingHerokuApi*](docs/LoggingHerokuApi.md) | [**update_log_heroku**](docs/LoggingHerokuApi.md#update_log_heroku) | Update the Heroku log endpoint
[*Fastly::LoggingHoneycombApi*](docs/LoggingHoneycombApi.md) | [**create_log_honeycomb**](docs/LoggingHoneycombApi.md#create_log_honeycomb) | Create a Honeycomb log endpoint
[*Fastly::LoggingHoneycombApi*](docs/LoggingHoneycombApi.md) | [**delete_log_honeycomb**](docs/LoggingHoneycombApi.md#delete_log_honeycomb) | Delete the Honeycomb log endpoint
[*Fastly::LoggingHoneycombApi*](docs/LoggingHoneycombApi.md) | [**get_log_honeycomb**](docs/LoggingHoneycombApi.md#get_log_honeycomb) | Get a Honeycomb log endpoint
[*Fastly::LoggingHoneycombApi*](docs/LoggingHoneycombApi.md) | [**list_log_honeycomb**](docs/LoggingHoneycombApi.md#list_log_honeycomb) | List Honeycomb log endpoints
[*Fastly::LoggingHoneycombApi*](docs/LoggingHoneycombApi.md) | [**update_log_honeycomb**](docs/LoggingHoneycombApi.md#update_log_honeycomb) | Update a Honeycomb log endpoint
[*Fastly::LoggingHttpsApi*](docs/LoggingHttpsApi.md) | [**create_log_https**](docs/LoggingHttpsApi.md#create_log_https) | Create an HTTPS log endpoint
[*Fastly::LoggingHttpsApi*](docs/LoggingHttpsApi.md) | [**delete_log_https**](docs/LoggingHttpsApi.md#delete_log_https) | Delete an HTTPS log endpoint
[*Fastly::LoggingHttpsApi*](docs/LoggingHttpsApi.md) | [**get_log_https**](docs/LoggingHttpsApi.md#get_log_https) | Get an HTTPS log endpoint
[*Fastly::LoggingHttpsApi*](docs/LoggingHttpsApi.md) | [**list_log_https**](docs/LoggingHttpsApi.md#list_log_https) | List HTTPS log endpoints
[*Fastly::LoggingHttpsApi*](docs/LoggingHttpsApi.md) | [**update_log_https**](docs/LoggingHttpsApi.md#update_log_https) | Update an HTTPS log endpoint
[*Fastly::LoggingKafkaApi*](docs/LoggingKafkaApi.md) | [**create_log_kafka**](docs/LoggingKafkaApi.md#create_log_kafka) | Create a Kafka log endpoint
[*Fastly::LoggingKafkaApi*](docs/LoggingKafkaApi.md) | [**delete_log_kafka**](docs/LoggingKafkaApi.md#delete_log_kafka) | Delete the Kafka log endpoint
[*Fastly::LoggingKafkaApi*](docs/LoggingKafkaApi.md) | [**get_log_kafka**](docs/LoggingKafkaApi.md#get_log_kafka) | Get a Kafka log endpoint
[*Fastly::LoggingKafkaApi*](docs/LoggingKafkaApi.md) | [**list_log_kafka**](docs/LoggingKafkaApi.md#list_log_kafka) | List Kafka log endpoints
[*Fastly::LoggingKafkaApi*](docs/LoggingKafkaApi.md) | [**update_log_kafka**](docs/LoggingKafkaApi.md#update_log_kafka) | Update the Kafka log endpoint
[*Fastly::LoggingKinesisApi*](docs/LoggingKinesisApi.md) | [**create_log_kinesis**](docs/LoggingKinesisApi.md#create_log_kinesis) | Create  an Amazon Kinesis log endpoint
[*Fastly::LoggingKinesisApi*](docs/LoggingKinesisApi.md) | [**delete_log_kinesis**](docs/LoggingKinesisApi.md#delete_log_kinesis) | Delete the Amazon Kinesis log endpoint
[*Fastly::LoggingKinesisApi*](docs/LoggingKinesisApi.md) | [**get_log_kinesis**](docs/LoggingKinesisApi.md#get_log_kinesis) | Get an Amazon Kinesis log endpoint
[*Fastly::LoggingKinesisApi*](docs/LoggingKinesisApi.md) | [**list_log_kinesis**](docs/LoggingKinesisApi.md#list_log_kinesis) | List Amazon Kinesis log endpoints
[*Fastly::LoggingKinesisApi*](docs/LoggingKinesisApi.md) | [**update_log_kinesis**](docs/LoggingKinesisApi.md#update_log_kinesis) | Update the Amazon Kinesis log endpoint
[*Fastly::LoggingLogentriesApi*](docs/LoggingLogentriesApi.md) | [**create_log_logentries**](docs/LoggingLogentriesApi.md#create_log_logentries) | Create a Logentries log endpoint
[*Fastly::LoggingLogentriesApi*](docs/LoggingLogentriesApi.md) | [**delete_log_logentries**](docs/LoggingLogentriesApi.md#delete_log_logentries) | Delete a Logentries log endpoint
[*Fastly::LoggingLogentriesApi*](docs/LoggingLogentriesApi.md) | [**get_log_logentries**](docs/LoggingLogentriesApi.md#get_log_logentries) | Get a Logentries log endpoint
[*Fastly::LoggingLogentriesApi*](docs/LoggingLogentriesApi.md) | [**list_log_logentries**](docs/LoggingLogentriesApi.md#list_log_logentries) | List Logentries log endpoints
[*Fastly::LoggingLogentriesApi*](docs/LoggingLogentriesApi.md) | [**update_log_logentries**](docs/LoggingLogentriesApi.md#update_log_logentries) | Update a Logentries log endpoint
[*Fastly::LoggingLogglyApi*](docs/LoggingLogglyApi.md) | [**create_log_loggly**](docs/LoggingLogglyApi.md#create_log_loggly) | Create a Loggly log endpoint
[*Fastly::LoggingLogglyApi*](docs/LoggingLogglyApi.md) | [**delete_log_loggly**](docs/LoggingLogglyApi.md#delete_log_loggly) | Delete a Loggly log endpoint
[*Fastly::LoggingLogglyApi*](docs/LoggingLogglyApi.md) | [**get_log_loggly**](docs/LoggingLogglyApi.md#get_log_loggly) | Get a Loggly log endpoint
[*Fastly::LoggingLogglyApi*](docs/LoggingLogglyApi.md) | [**list_log_loggly**](docs/LoggingLogglyApi.md#list_log_loggly) | List Loggly log endpoints
[*Fastly::LoggingLogglyApi*](docs/LoggingLogglyApi.md) | [**update_log_loggly**](docs/LoggingLogglyApi.md#update_log_loggly) | Update a Loggly log endpoint
[*Fastly::LoggingLogshuttleApi*](docs/LoggingLogshuttleApi.md) | [**create_log_logshuttle**](docs/LoggingLogshuttleApi.md#create_log_logshuttle) | Create a Log Shuttle log endpoint
[*Fastly::LoggingLogshuttleApi*](docs/LoggingLogshuttleApi.md) | [**delete_log_logshuttle**](docs/LoggingLogshuttleApi.md#delete_log_logshuttle) | Delete a Log Shuttle log endpoint
[*Fastly::LoggingLogshuttleApi*](docs/LoggingLogshuttleApi.md) | [**get_log_logshuttle**](docs/LoggingLogshuttleApi.md#get_log_logshuttle) | Get a Log Shuttle log endpoint
[*Fastly::LoggingLogshuttleApi*](docs/LoggingLogshuttleApi.md) | [**list_log_logshuttle**](docs/LoggingLogshuttleApi.md#list_log_logshuttle) | List Log Shuttle log endpoints
[*Fastly::LoggingLogshuttleApi*](docs/LoggingLogshuttleApi.md) | [**update_log_logshuttle**](docs/LoggingLogshuttleApi.md#update_log_logshuttle) | Update a Log Shuttle log endpoint
[*Fastly::LoggingNewrelicApi*](docs/LoggingNewrelicApi.md) | [**create_log_newrelic**](docs/LoggingNewrelicApi.md#create_log_newrelic) | Create a New Relic log endpoint
[*Fastly::LoggingNewrelicApi*](docs/LoggingNewrelicApi.md) | [**delete_log_newrelic**](docs/LoggingNewrelicApi.md#delete_log_newrelic) | Delete a New Relic log endpoint
[*Fastly::LoggingNewrelicApi*](docs/LoggingNewrelicApi.md) | [**get_log_newrelic**](docs/LoggingNewrelicApi.md#get_log_newrelic) | Get a New Relic log endpoint
[*Fastly::LoggingNewrelicApi*](docs/LoggingNewrelicApi.md) | [**list_log_newrelic**](docs/LoggingNewrelicApi.md#list_log_newrelic) | List New Relic log endpoints
[*Fastly::LoggingNewrelicApi*](docs/LoggingNewrelicApi.md) | [**update_log_newrelic**](docs/LoggingNewrelicApi.md#update_log_newrelic) | Update a New Relic log endpoint
[*Fastly::LoggingNewrelicotlpApi*](docs/LoggingNewrelicotlpApi.md) | [**create_log_newrelicotlp**](docs/LoggingNewrelicotlpApi.md#create_log_newrelicotlp) | Create a New Relic OTLP endpoint
[*Fastly::LoggingNewrelicotlpApi*](docs/LoggingNewrelicotlpApi.md) | [**delete_log_newrelicotlp**](docs/LoggingNewrelicotlpApi.md#delete_log_newrelicotlp) | Delete a New Relic OTLP endpoint
[*Fastly::LoggingNewrelicotlpApi*](docs/LoggingNewrelicotlpApi.md) | [**get_log_newrelicotlp**](docs/LoggingNewrelicotlpApi.md#get_log_newrelicotlp) | Get a New Relic OTLP endpoint
[*Fastly::LoggingNewrelicotlpApi*](docs/LoggingNewrelicotlpApi.md) | [**list_log_newrelicotlp**](docs/LoggingNewrelicotlpApi.md#list_log_newrelicotlp) | List New Relic OTLP endpoints
[*Fastly::LoggingNewrelicotlpApi*](docs/LoggingNewrelicotlpApi.md) | [**update_log_newrelicotlp**](docs/LoggingNewrelicotlpApi.md#update_log_newrelicotlp) | Update a New Relic log endpoint
[*Fastly::LoggingOpenstackApi*](docs/LoggingOpenstackApi.md) | [**create_log_openstack**](docs/LoggingOpenstackApi.md#create_log_openstack) | Create an OpenStack log endpoint
[*Fastly::LoggingOpenstackApi*](docs/LoggingOpenstackApi.md) | [**delete_log_openstack**](docs/LoggingOpenstackApi.md#delete_log_openstack) | Delete an OpenStack log endpoint
[*Fastly::LoggingOpenstackApi*](docs/LoggingOpenstackApi.md) | [**get_log_openstack**](docs/LoggingOpenstackApi.md#get_log_openstack) | Get an OpenStack log endpoint
[*Fastly::LoggingOpenstackApi*](docs/LoggingOpenstackApi.md) | [**list_log_openstack**](docs/LoggingOpenstackApi.md#list_log_openstack) | List OpenStack log endpoints
[*Fastly::LoggingOpenstackApi*](docs/LoggingOpenstackApi.md) | [**update_log_openstack**](docs/LoggingOpenstackApi.md#update_log_openstack) | Update an OpenStack log endpoint
[*Fastly::LoggingPapertrailApi*](docs/LoggingPapertrailApi.md) | [**create_log_papertrail**](docs/LoggingPapertrailApi.md#create_log_papertrail) | Create a Papertrail log endpoint
[*Fastly::LoggingPapertrailApi*](docs/LoggingPapertrailApi.md) | [**delete_log_papertrail**](docs/LoggingPapertrailApi.md#delete_log_papertrail) | Delete a Papertrail log endpoint
[*Fastly::LoggingPapertrailApi*](docs/LoggingPapertrailApi.md) | [**get_log_papertrail**](docs/LoggingPapertrailApi.md#get_log_papertrail) | Get a Papertrail log endpoint
[*Fastly::LoggingPapertrailApi*](docs/LoggingPapertrailApi.md) | [**list_log_papertrail**](docs/LoggingPapertrailApi.md#list_log_papertrail) | List Papertrail log endpoints
[*Fastly::LoggingPapertrailApi*](docs/LoggingPapertrailApi.md) | [**update_log_papertrail**](docs/LoggingPapertrailApi.md#update_log_papertrail) | Update a Papertrail log endpoint
[*Fastly::LoggingPubsubApi*](docs/LoggingPubsubApi.md) | [**create_log_gcp_pubsub**](docs/LoggingPubsubApi.md#create_log_gcp_pubsub) | Create a GCP Cloud Pub/Sub log endpoint
[*Fastly::LoggingPubsubApi*](docs/LoggingPubsubApi.md) | [**delete_log_gcp_pubsub**](docs/LoggingPubsubApi.md#delete_log_gcp_pubsub) | Delete a GCP Cloud Pub/Sub log endpoint
[*Fastly::LoggingPubsubApi*](docs/LoggingPubsubApi.md) | [**get_log_gcp_pubsub**](docs/LoggingPubsubApi.md#get_log_gcp_pubsub) | Get a GCP Cloud Pub/Sub log endpoint
[*Fastly::LoggingPubsubApi*](docs/LoggingPubsubApi.md) | [**list_log_gcp_pubsub**](docs/LoggingPubsubApi.md#list_log_gcp_pubsub) | List GCP Cloud Pub/Sub log endpoints
[*Fastly::LoggingPubsubApi*](docs/LoggingPubsubApi.md) | [**update_log_gcp_pubsub**](docs/LoggingPubsubApi.md#update_log_gcp_pubsub) | Update a GCP Cloud Pub/Sub log endpoint
[*Fastly::LoggingS3Api*](docs/LoggingS3Api.md) | [**create_log_aws_s3**](docs/LoggingS3Api.md#create_log_aws_s3) | Create an AWS S3 log endpoint
[*Fastly::LoggingS3Api*](docs/LoggingS3Api.md) | [**delete_log_aws_s3**](docs/LoggingS3Api.md#delete_log_aws_s3) | Delete an AWS S3 log endpoint
[*Fastly::LoggingS3Api*](docs/LoggingS3Api.md) | [**get_log_aws_s3**](docs/LoggingS3Api.md#get_log_aws_s3) | Get an AWS S3 log endpoint
[*Fastly::LoggingS3Api*](docs/LoggingS3Api.md) | [**list_log_aws_s3**](docs/LoggingS3Api.md#list_log_aws_s3) | List AWS S3 log endpoints
[*Fastly::LoggingS3Api*](docs/LoggingS3Api.md) | [**update_log_aws_s3**](docs/LoggingS3Api.md#update_log_aws_s3) | Update an AWS S3 log endpoint
[*Fastly::LoggingScalyrApi*](docs/LoggingScalyrApi.md) | [**create_log_scalyr**](docs/LoggingScalyrApi.md#create_log_scalyr) | Create a Scalyr log endpoint
[*Fastly::LoggingScalyrApi*](docs/LoggingScalyrApi.md) | [**delete_log_scalyr**](docs/LoggingScalyrApi.md#delete_log_scalyr) | Delete the Scalyr log endpoint
[*Fastly::LoggingScalyrApi*](docs/LoggingScalyrApi.md) | [**get_log_scalyr**](docs/LoggingScalyrApi.md#get_log_scalyr) | Get a Scalyr log endpoint
[*Fastly::LoggingScalyrApi*](docs/LoggingScalyrApi.md) | [**list_log_scalyr**](docs/LoggingScalyrApi.md#list_log_scalyr) | List Scalyr log endpoints
[*Fastly::LoggingScalyrApi*](docs/LoggingScalyrApi.md) | [**update_log_scalyr**](docs/LoggingScalyrApi.md#update_log_scalyr) | Update the Scalyr log endpoint
[*Fastly::LoggingSftpApi*](docs/LoggingSftpApi.md) | [**create_log_sftp**](docs/LoggingSftpApi.md#create_log_sftp) | Create an SFTP log endpoint
[*Fastly::LoggingSftpApi*](docs/LoggingSftpApi.md) | [**delete_log_sftp**](docs/LoggingSftpApi.md#delete_log_sftp) | Delete an SFTP log endpoint
[*Fastly::LoggingSftpApi*](docs/LoggingSftpApi.md) | [**get_log_sftp**](docs/LoggingSftpApi.md#get_log_sftp) | Get an SFTP log endpoint
[*Fastly::LoggingSftpApi*](docs/LoggingSftpApi.md) | [**list_log_sftp**](docs/LoggingSftpApi.md#list_log_sftp) | List SFTP log endpoints
[*Fastly::LoggingSftpApi*](docs/LoggingSftpApi.md) | [**update_log_sftp**](docs/LoggingSftpApi.md#update_log_sftp) | Update an SFTP log endpoint
[*Fastly::LoggingSplunkApi*](docs/LoggingSplunkApi.md) | [**create_log_splunk**](docs/LoggingSplunkApi.md#create_log_splunk) | Create a Splunk log endpoint
[*Fastly::LoggingSplunkApi*](docs/LoggingSplunkApi.md) | [**delete_log_splunk**](docs/LoggingSplunkApi.md#delete_log_splunk) | Delete a Splunk log endpoint
[*Fastly::LoggingSplunkApi*](docs/LoggingSplunkApi.md) | [**get_log_splunk**](docs/LoggingSplunkApi.md#get_log_splunk) | Get a Splunk log endpoint
[*Fastly::LoggingSplunkApi*](docs/LoggingSplunkApi.md) | [**list_log_splunk**](docs/LoggingSplunkApi.md#list_log_splunk) | List Splunk log endpoints
[*Fastly::LoggingSplunkApi*](docs/LoggingSplunkApi.md) | [**update_log_splunk**](docs/LoggingSplunkApi.md#update_log_splunk) | Update a Splunk log endpoint
[*Fastly::LoggingSumologicApi*](docs/LoggingSumologicApi.md) | [**create_log_sumologic**](docs/LoggingSumologicApi.md#create_log_sumologic) | Create a Sumologic log endpoint
[*Fastly::LoggingSumologicApi*](docs/LoggingSumologicApi.md) | [**delete_log_sumologic**](docs/LoggingSumologicApi.md#delete_log_sumologic) | Delete a Sumologic log endpoint
[*Fastly::LoggingSumologicApi*](docs/LoggingSumologicApi.md) | [**get_log_sumologic**](docs/LoggingSumologicApi.md#get_log_sumologic) | Get a Sumologic log endpoint
[*Fastly::LoggingSumologicApi*](docs/LoggingSumologicApi.md) | [**list_log_sumologic**](docs/LoggingSumologicApi.md#list_log_sumologic) | List Sumologic log endpoints
[*Fastly::LoggingSumologicApi*](docs/LoggingSumologicApi.md) | [**update_log_sumologic**](docs/LoggingSumologicApi.md#update_log_sumologic) | Update a Sumologic log endpoint
[*Fastly::LoggingSyslogApi*](docs/LoggingSyslogApi.md) | [**create_log_syslog**](docs/LoggingSyslogApi.md#create_log_syslog) | Create a syslog log endpoint
[*Fastly::LoggingSyslogApi*](docs/LoggingSyslogApi.md) | [**delete_log_syslog**](docs/LoggingSyslogApi.md#delete_log_syslog) | Delete a syslog log endpoint
[*Fastly::LoggingSyslogApi*](docs/LoggingSyslogApi.md) | [**get_log_syslog**](docs/LoggingSyslogApi.md#get_log_syslog) | Get a syslog log endpoint
[*Fastly::LoggingSyslogApi*](docs/LoggingSyslogApi.md) | [**list_log_syslog**](docs/LoggingSyslogApi.md#list_log_syslog) | List Syslog log endpoints
[*Fastly::LoggingSyslogApi*](docs/LoggingSyslogApi.md) | [**update_log_syslog**](docs/LoggingSyslogApi.md#update_log_syslog) | Update a syslog log endpoint
[*Fastly::MutualAuthenticationApi*](docs/MutualAuthenticationApi.md) | [**create_mutual_tls_authentication**](docs/MutualAuthenticationApi.md#create_mutual_tls_authentication) | Create a Mutual Authentication
[*Fastly::MutualAuthenticationApi*](docs/MutualAuthenticationApi.md) | [**delete_mutual_tls**](docs/MutualAuthenticationApi.md#delete_mutual_tls) | Delete a Mutual TLS
[*Fastly::MutualAuthenticationApi*](docs/MutualAuthenticationApi.md) | [**get_mutual_authentication**](docs/MutualAuthenticationApi.md#get_mutual_authentication) | Get a Mutual Authentication
[*Fastly::MutualAuthenticationApi*](docs/MutualAuthenticationApi.md) | [**list_mutual_authentications**](docs/MutualAuthenticationApi.md#list_mutual_authentications) | List Mutual Authentications
[*Fastly::MutualAuthenticationApi*](docs/MutualAuthenticationApi.md) | [**patch_mutual_authentication**](docs/MutualAuthenticationApi.md#patch_mutual_authentication) | Update a Mutual Authentication
[*Fastly::ObjectStorageAccessKeysApi*](docs/ObjectStorageAccessKeysApi.md) | [**create_access_key**](docs/ObjectStorageAccessKeysApi.md#create_access_key) | Create an access key
[*Fastly::ObjectStorageAccessKeysApi*](docs/ObjectStorageAccessKeysApi.md) | [**delete_access_key**](docs/ObjectStorageAccessKeysApi.md#delete_access_key) | Delete an access key
[*Fastly::ObjectStorageAccessKeysApi*](docs/ObjectStorageAccessKeysApi.md) | [**get_access_key**](docs/ObjectStorageAccessKeysApi.md#get_access_key) | Get an access key
[*Fastly::ObjectStorageAccessKeysApi*](docs/ObjectStorageAccessKeysApi.md) | [**list_access_keys**](docs/ObjectStorageAccessKeysApi.md#list_access_keys) | List access keys
[*Fastly::ObservabilityAggregationsForLogsApi*](docs/ObservabilityAggregationsForLogsApi.md) | [**log_aggregations_get**](docs/ObservabilityAggregationsForLogsApi.md#log_aggregations_get) | Retrieve aggregated log results
[*Fastly::ObservabilityCustomDashboardsApi*](docs/ObservabilityCustomDashboardsApi.md) | [**create_dashboard**](docs/ObservabilityCustomDashboardsApi.md#create_dashboard) | Create a new dashboard
[*Fastly::ObservabilityCustomDashboardsApi*](docs/ObservabilityCustomDashboardsApi.md) | [**delete_dashboard**](docs/ObservabilityCustomDashboardsApi.md#delete_dashboard) | Delete an existing dashboard
[*Fastly::ObservabilityCustomDashboardsApi*](docs/ObservabilityCustomDashboardsApi.md) | [**get_dashboard**](docs/ObservabilityCustomDashboardsApi.md#get_dashboard) | Retrieve a dashboard by ID
[*Fastly::ObservabilityCustomDashboardsApi*](docs/ObservabilityCustomDashboardsApi.md) | [**list_dashboards**](docs/ObservabilityCustomDashboardsApi.md#list_dashboards) | List all custom dashboards
[*Fastly::ObservabilityCustomDashboardsApi*](docs/ObservabilityCustomDashboardsApi.md) | [**update_dashboard**](docs/ObservabilityCustomDashboardsApi.md#update_dashboard) | Update an existing dashboard
[*Fastly::ObservabilityTimeseriesForLogsApi*](docs/ObservabilityTimeseriesForLogsApi.md) | [**log_timeseries_get**](docs/ObservabilityTimeseriesForLogsApi.md#log_timeseries_get) | Retrieve log data as time series
[*Fastly::OriginInspectorHistoricalApi*](docs/OriginInspectorHistoricalApi.md) | [**get_origin_inspector_historical**](docs/OriginInspectorHistoricalApi.md#get_origin_inspector_historical) | Get historical origin data for a service
[*Fastly::OriginInspectorRealtimeApi*](docs/OriginInspectorRealtimeApi.md) | [**get_origin_inspector_last120_seconds**](docs/OriginInspectorRealtimeApi.md#get_origin_inspector_last120_seconds) | Get real-time origin data for the last 120 seconds
[*Fastly::OriginInspectorRealtimeApi*](docs/OriginInspectorRealtimeApi.md) | [**get_origin_inspector_last_max_entries**](docs/OriginInspectorRealtimeApi.md#get_origin_inspector_last_max_entries) | Get a limited number of real-time origin data entries
[*Fastly::OriginInspectorRealtimeApi*](docs/OriginInspectorRealtimeApi.md) | [**get_origin_inspector_last_second**](docs/OriginInspectorRealtimeApi.md#get_origin_inspector_last_second) | Get real-time origin data from specific time.
[*Fastly::PackageApi*](docs/PackageApi.md) | [**get_package**](docs/PackageApi.md#get_package) | Get details of the service's Compute package.
[*Fastly::PackageApi*](docs/PackageApi.md) | [**put_package**](docs/PackageApi.md#put_package) | Upload a Compute package.
[*Fastly::PoolApi*](docs/PoolApi.md) | [**create_server_pool**](docs/PoolApi.md#create_server_pool) | Create a server pool
[*Fastly::PoolApi*](docs/PoolApi.md) | [**delete_server_pool**](docs/PoolApi.md#delete_server_pool) | Delete a server pool
[*Fastly::PoolApi*](docs/PoolApi.md) | [**get_server_pool**](docs/PoolApi.md#get_server_pool) | Get a server pool
[*Fastly::PoolApi*](docs/PoolApi.md) | [**list_server_pools**](docs/PoolApi.md#list_server_pools) | List server pools
[*Fastly::PoolApi*](docs/PoolApi.md) | [**update_server_pool**](docs/PoolApi.md#update_server_pool) | Update a server pool
[*Fastly::PopApi*](docs/PopApi.md) | [**list_pops**](docs/PopApi.md#list_pops) | List Fastly POPs
[*Fastly::ProductAiAcceleratorApi*](docs/ProductAiAcceleratorApi.md) | [**disable_product_ai_accelerator**](docs/ProductAiAcceleratorApi.md#disable_product_ai_accelerator) | Disable product
[*Fastly::ProductAiAcceleratorApi*](docs/ProductAiAcceleratorApi.md) | [**enable_ai_accelerator**](docs/ProductAiAcceleratorApi.md#enable_ai_accelerator) | Enable product
[*Fastly::ProductAiAcceleratorApi*](docs/ProductAiAcceleratorApi.md) | [**get_ai_accelerator**](docs/ProductAiAcceleratorApi.md#get_ai_accelerator) | Get product enablement status
[*Fastly::ProductBotManagementApi*](docs/ProductBotManagementApi.md) | [**disable_product_bot_management**](docs/ProductBotManagementApi.md#disable_product_bot_management) | Disable product
[*Fastly::ProductBotManagementApi*](docs/ProductBotManagementApi.md) | [**enable_product_bot_management**](docs/ProductBotManagementApi.md#enable_product_bot_management) | Enable product
[*Fastly::ProductBotManagementApi*](docs/ProductBotManagementApi.md) | [**get_product_bot_management**](docs/ProductBotManagementApi.md#get_product_bot_management) | Get product enablement status
[*Fastly::ProductBotManagementApi*](docs/ProductBotManagementApi.md) | [**get_services_product_bot_management**](docs/ProductBotManagementApi.md#get_services_product_bot_management) | Get services with product enabled
[*Fastly::ProductBrotliCompressionApi*](docs/ProductBrotliCompressionApi.md) | [**disable_product_brotli_compression**](docs/ProductBrotliCompressionApi.md#disable_product_brotli_compression) | Disable product
[*Fastly::ProductBrotliCompressionApi*](docs/ProductBrotliCompressionApi.md) | [**enable_product_brotli_compression**](docs/ProductBrotliCompressionApi.md#enable_product_brotli_compression) | Enable product
[*Fastly::ProductBrotliCompressionApi*](docs/ProductBrotliCompressionApi.md) | [**get_product_brotli_compression**](docs/ProductBrotliCompressionApi.md#get_product_brotli_compression) | Get product enablement status
[*Fastly::ProductBrotliCompressionApi*](docs/ProductBrotliCompressionApi.md) | [**get_services_product_brotli_compression**](docs/ProductBrotliCompressionApi.md#get_services_product_brotli_compression) | Get services with product enabled
[*Fastly::ProductDdosProtectionApi*](docs/ProductDdosProtectionApi.md) | [**disable_product_ddos_protection**](docs/ProductDdosProtectionApi.md#disable_product_ddos_protection) | Disable product
[*Fastly::ProductDdosProtectionApi*](docs/ProductDdosProtectionApi.md) | [**enable_product_ddos_protection**](docs/ProductDdosProtectionApi.md#enable_product_ddos_protection) | Enable product
[*Fastly::ProductDdosProtectionApi*](docs/ProductDdosProtectionApi.md) | [**get_product_ddos_protection**](docs/ProductDdosProtectionApi.md#get_product_ddos_protection) | Get product enablement status
[*Fastly::ProductDdosProtectionApi*](docs/ProductDdosProtectionApi.md) | [**get_product_ddos_protection_configuration**](docs/ProductDdosProtectionApi.md#get_product_ddos_protection_configuration) | Get configuration
[*Fastly::ProductDdosProtectionApi*](docs/ProductDdosProtectionApi.md) | [**get_services_product_ddos_protection**](docs/ProductDdosProtectionApi.md#get_services_product_ddos_protection) | Get services with product enabled
[*Fastly::ProductDdosProtectionApi*](docs/ProductDdosProtectionApi.md) | [**set_product_ddos_protection_configuration**](docs/ProductDdosProtectionApi.md#set_product_ddos_protection_configuration) | Update configuration
[*Fastly::ProductDomainInspectorApi*](docs/ProductDomainInspectorApi.md) | [**disable_product_domain_inspector**](docs/ProductDomainInspectorApi.md#disable_product_domain_inspector) | Disable product
[*Fastly::ProductDomainInspectorApi*](docs/ProductDomainInspectorApi.md) | [**enable_product_domain_inspector**](docs/ProductDomainInspectorApi.md#enable_product_domain_inspector) | Enable product
[*Fastly::ProductDomainInspectorApi*](docs/ProductDomainInspectorApi.md) | [**get_product_domain_inspector**](docs/ProductDomainInspectorApi.md#get_product_domain_inspector) | Get product enablement status
[*Fastly::ProductDomainInspectorApi*](docs/ProductDomainInspectorApi.md) | [**get_services_product_domain_inspector**](docs/ProductDomainInspectorApi.md#get_services_product_domain_inspector) | Get services with product enabled
[*Fastly::ProductFanoutApi*](docs/ProductFanoutApi.md) | [**disable_product_fanout**](docs/ProductFanoutApi.md#disable_product_fanout) | Disable product
[*Fastly::ProductFanoutApi*](docs/ProductFanoutApi.md) | [**enable_product_fanout**](docs/ProductFanoutApi.md#enable_product_fanout) | Enable product
[*Fastly::ProductFanoutApi*](docs/ProductFanoutApi.md) | [**get_product_fanout**](docs/ProductFanoutApi.md#get_product_fanout) | Get product enablement status
[*Fastly::ProductFanoutApi*](docs/ProductFanoutApi.md) | [**get_services_product_fanout**](docs/ProductFanoutApi.md#get_services_product_fanout) | Get services with product enabled
[*Fastly::ProductImageOptimizerApi*](docs/ProductImageOptimizerApi.md) | [**disable_product_image_optimizer**](docs/ProductImageOptimizerApi.md#disable_product_image_optimizer) | Disable product
[*Fastly::ProductImageOptimizerApi*](docs/ProductImageOptimizerApi.md) | [**enable_product_image_optimizer**](docs/ProductImageOptimizerApi.md#enable_product_image_optimizer) | Enable product
[*Fastly::ProductImageOptimizerApi*](docs/ProductImageOptimizerApi.md) | [**get_product_image_optimizer**](docs/ProductImageOptimizerApi.md#get_product_image_optimizer) | Get product enablement status
[*Fastly::ProductImageOptimizerApi*](docs/ProductImageOptimizerApi.md) | [**get_services_product_image_optimizer**](docs/ProductImageOptimizerApi.md#get_services_product_image_optimizer) | Get services with product enabled
[*Fastly::ProductLogExplorerInsightsApi*](docs/ProductLogExplorerInsightsApi.md) | [**disable_product_log_explorer_insights**](docs/ProductLogExplorerInsightsApi.md#disable_product_log_explorer_insights) | Disable product
[*Fastly::ProductLogExplorerInsightsApi*](docs/ProductLogExplorerInsightsApi.md) | [**enable_product_log_explorer_insights**](docs/ProductLogExplorerInsightsApi.md#enable_product_log_explorer_insights) | Enable product
[*Fastly::ProductLogExplorerInsightsApi*](docs/ProductLogExplorerInsightsApi.md) | [**get_product_log_explorer_insights**](docs/ProductLogExplorerInsightsApi.md#get_product_log_explorer_insights) | Get product enablement status
[*Fastly::ProductLogExplorerInsightsApi*](docs/ProductLogExplorerInsightsApi.md) | [**get_services_product_log_explorer_insights**](docs/ProductLogExplorerInsightsApi.md#get_services_product_log_explorer_insights) | Get services with product enabled
[*Fastly::ProductNgwafApi*](docs/ProductNgwafApi.md) | [**disable_product_ngwaf**](docs/ProductNgwafApi.md#disable_product_ngwaf) | Disable product
[*Fastly::ProductNgwafApi*](docs/ProductNgwafApi.md) | [**enable_product_ngwaf**](docs/ProductNgwafApi.md#enable_product_ngwaf) | Enable product
[*Fastly::ProductNgwafApi*](docs/ProductNgwafApi.md) | [**get_product_ngwaf**](docs/ProductNgwafApi.md#get_product_ngwaf) | Get product enablement status
[*Fastly::ProductNgwafApi*](docs/ProductNgwafApi.md) | [**get_product_ngwaf_configuration**](docs/ProductNgwafApi.md#get_product_ngwaf_configuration) | Get configuration
[*Fastly::ProductNgwafApi*](docs/ProductNgwafApi.md) | [**get_services_product_ngwaf**](docs/ProductNgwafApi.md#get_services_product_ngwaf) | Get services with product enabled
[*Fastly::ProductNgwafApi*](docs/ProductNgwafApi.md) | [**set_product_ngwaf_configuration**](docs/ProductNgwafApi.md#set_product_ngwaf_configuration) | Update configuration
[*Fastly::ProductObjectStorageApi*](docs/ProductObjectStorageApi.md) | [**disable_product_object_storage**](docs/ProductObjectStorageApi.md#disable_product_object_storage) | Disable product
[*Fastly::ProductObjectStorageApi*](docs/ProductObjectStorageApi.md) | [**enable_object_storage**](docs/ProductObjectStorageApi.md#enable_object_storage) | Enable product
[*Fastly::ProductObjectStorageApi*](docs/ProductObjectStorageApi.md) | [**get_object_storage**](docs/ProductObjectStorageApi.md#get_object_storage) | Get product enablement status
[*Fastly::ProductOriginInspectorApi*](docs/ProductOriginInspectorApi.md) | [**disable_product_origin_inspector**](docs/ProductOriginInspectorApi.md#disable_product_origin_inspector) | Disable product
[*Fastly::ProductOriginInspectorApi*](docs/ProductOriginInspectorApi.md) | [**enable_product_origin_inspector**](docs/ProductOriginInspectorApi.md#enable_product_origin_inspector) | Enable product
[*Fastly::ProductOriginInspectorApi*](docs/ProductOriginInspectorApi.md) | [**get_product_origin_inspector**](docs/ProductOriginInspectorApi.md#get_product_origin_inspector) | Get product enablement status
[*Fastly::ProductOriginInspectorApi*](docs/ProductOriginInspectorApi.md) | [**get_services_product_origin_inspector**](docs/ProductOriginInspectorApi.md#get_services_product_origin_inspector) | Get services with product enabled
[*Fastly::ProductWebsocketsApi*](docs/ProductWebsocketsApi.md) | [**disable_product_websockets**](docs/ProductWebsocketsApi.md#disable_product_websockets) | Disable product
[*Fastly::ProductWebsocketsApi*](docs/ProductWebsocketsApi.md) | [**enable_product_websockets**](docs/ProductWebsocketsApi.md#enable_product_websockets) | Enable product
[*Fastly::ProductWebsocketsApi*](docs/ProductWebsocketsApi.md) | [**get_product_websockets**](docs/ProductWebsocketsApi.md#get_product_websockets) | Get product enablement status
[*Fastly::ProductWebsocketsApi*](docs/ProductWebsocketsApi.md) | [**get_services_product_websockets**](docs/ProductWebsocketsApi.md#get_services_product_websockets) | Get services with product enabled
[*Fastly::PublicIpListApi*](docs/PublicIpListApi.md) | [**list_fastly_ips**](docs/PublicIpListApi.md#list_fastly_ips) | List Fastly's public IPs
[*Fastly::PublishApi*](docs/PublishApi.md) | [**publish**](docs/PublishApi.md#publish) | Send messages to Fanout subscribers
[*Fastly::PurgeApi*](docs/PurgeApi.md) | [**bulk_purge_tag**](docs/PurgeApi.md#bulk_purge_tag) | Purge multiple surrogate key tags
[*Fastly::PurgeApi*](docs/PurgeApi.md) | [**purge_all**](docs/PurgeApi.md#purge_all) | Purge everything from a service
[*Fastly::PurgeApi*](docs/PurgeApi.md) | [**purge_single_url**](docs/PurgeApi.md#purge_single_url) | Purge a URL
[*Fastly::PurgeApi*](docs/PurgeApi.md) | [**purge_tag**](docs/PurgeApi.md#purge_tag) | Purge by surrogate key tag
[*Fastly::RateLimiterApi*](docs/RateLimiterApi.md) | [**create_rate_limiter**](docs/RateLimiterApi.md#create_rate_limiter) | Create a rate limiter
[*Fastly::RateLimiterApi*](docs/RateLimiterApi.md) | [**delete_rate_limiter**](docs/RateLimiterApi.md#delete_rate_limiter) | Delete a rate limiter
[*Fastly::RateLimiterApi*](docs/RateLimiterApi.md) | [**get_rate_limiter**](docs/RateLimiterApi.md#get_rate_limiter) | Get a rate limiter
[*Fastly::RateLimiterApi*](docs/RateLimiterApi.md) | [**list_rate_limiters**](docs/RateLimiterApi.md#list_rate_limiters) | List rate limiters
[*Fastly::RateLimiterApi*](docs/RateLimiterApi.md) | [**update_rate_limiter**](docs/RateLimiterApi.md#update_rate_limiter) | Update a rate limiter
[*Fastly::RealtimeApi*](docs/RealtimeApi.md) | [**get_stats_last120_seconds**](docs/RealtimeApi.md#get_stats_last120_seconds) | Get real-time data for the last 120 seconds
[*Fastly::RealtimeApi*](docs/RealtimeApi.md) | [**get_stats_last120_seconds_limit_entries**](docs/RealtimeApi.md#get_stats_last120_seconds_limit_entries) | Get a limited number of real-time data entries
[*Fastly::RealtimeApi*](docs/RealtimeApi.md) | [**get_stats_last_second**](docs/RealtimeApi.md#get_stats_last_second) | Get real-time data from specified time
[*Fastly::RequestSettingsApi*](docs/RequestSettingsApi.md) | [**create_request_settings**](docs/RequestSettingsApi.md#create_request_settings) | Create a Request Settings object
[*Fastly::RequestSettingsApi*](docs/RequestSettingsApi.md) | [**delete_request_settings**](docs/RequestSettingsApi.md#delete_request_settings) | Delete a Request Settings object
[*Fastly::RequestSettingsApi*](docs/RequestSettingsApi.md) | [**get_request_settings**](docs/RequestSettingsApi.md#get_request_settings) | Get a Request Settings object
[*Fastly::RequestSettingsApi*](docs/RequestSettingsApi.md) | [**list_request_settings**](docs/RequestSettingsApi.md#list_request_settings) | List Request Settings objects
[*Fastly::RequestSettingsApi*](docs/RequestSettingsApi.md) | [**update_request_settings**](docs/RequestSettingsApi.md#update_request_settings) | Update a Request Settings object
[*Fastly::ResourceApi*](docs/ResourceApi.md) | [**create_resource**](docs/ResourceApi.md#create_resource) | Create a resource link
[*Fastly::ResourceApi*](docs/ResourceApi.md) | [**delete_resource**](docs/ResourceApi.md#delete_resource) | Delete a resource link
[*Fastly::ResourceApi*](docs/ResourceApi.md) | [**get_resource**](docs/ResourceApi.md#get_resource) | Display a resource link
[*Fastly::ResourceApi*](docs/ResourceApi.md) | [**list_resources**](docs/ResourceApi.md#list_resources) | List resource links
[*Fastly::ResourceApi*](docs/ResourceApi.md) | [**update_resource**](docs/ResourceApi.md#update_resource) | Update a resource link
[*Fastly::ResponseObjectApi*](docs/ResponseObjectApi.md) | [**create_response_object**](docs/ResponseObjectApi.md#create_response_object) | Create a Response object
[*Fastly::ResponseObjectApi*](docs/ResponseObjectApi.md) | [**delete_response_object**](docs/ResponseObjectApi.md#delete_response_object) | Delete a Response Object
[*Fastly::ResponseObjectApi*](docs/ResponseObjectApi.md) | [**get_response_object**](docs/ResponseObjectApi.md#get_response_object) | Get a Response object
[*Fastly::ResponseObjectApi*](docs/ResponseObjectApi.md) | [**list_response_objects**](docs/ResponseObjectApi.md#list_response_objects) | List Response objects
[*Fastly::ResponseObjectApi*](docs/ResponseObjectApi.md) | [**update_response_object**](docs/ResponseObjectApi.md#update_response_object) | Update a Response object
[*Fastly::SecretStoreApi*](docs/SecretStoreApi.md) | [**client_key**](docs/SecretStoreApi.md#client_key) | Create new client key
[*Fastly::SecretStoreApi*](docs/SecretStoreApi.md) | [**create_secret_store**](docs/SecretStoreApi.md#create_secret_store) | Create new secret store
[*Fastly::SecretStoreApi*](docs/SecretStoreApi.md) | [**delete_secret_store**](docs/SecretStoreApi.md#delete_secret_store) | Delete secret store
[*Fastly::SecretStoreApi*](docs/SecretStoreApi.md) | [**get_secret_store**](docs/SecretStoreApi.md#get_secret_store) | Get secret store by ID
[*Fastly::SecretStoreApi*](docs/SecretStoreApi.md) | [**get_secret_stores**](docs/SecretStoreApi.md#get_secret_stores) | Get all secret stores
[*Fastly::SecretStoreApi*](docs/SecretStoreApi.md) | [**signing_key**](docs/SecretStoreApi.md#signing_key) | Get public key
[*Fastly::SecretStoreItemApi*](docs/SecretStoreItemApi.md) | [**create_secret**](docs/SecretStoreItemApi.md#create_secret) | Create a new secret in a store.
[*Fastly::SecretStoreItemApi*](docs/SecretStoreItemApi.md) | [**delete_secret**](docs/SecretStoreItemApi.md#delete_secret) | Delete a secret from a store.
[*Fastly::SecretStoreItemApi*](docs/SecretStoreItemApi.md) | [**get_secret**](docs/SecretStoreItemApi.md#get_secret) | Get secret metadata.
[*Fastly::SecretStoreItemApi*](docs/SecretStoreItemApi.md) | [**get_secrets**](docs/SecretStoreItemApi.md#get_secrets) | List secrets within a store.
[*Fastly::SecretStoreItemApi*](docs/SecretStoreItemApi.md) | [**must_recreate_secret**](docs/SecretStoreItemApi.md#must_recreate_secret) | Recreate a secret in a store.
[*Fastly::SecretStoreItemApi*](docs/SecretStoreItemApi.md) | [**recreate_secret**](docs/SecretStoreItemApi.md#recreate_secret) | Create or recreate a secret in a store.
[*Fastly::ServerApi*](docs/ServerApi.md) | [**create_pool_server**](docs/ServerApi.md#create_pool_server) | Add a server to a pool
[*Fastly::ServerApi*](docs/ServerApi.md) | [**delete_pool_server**](docs/ServerApi.md#delete_pool_server) | Delete a server from a pool
[*Fastly::ServerApi*](docs/ServerApi.md) | [**get_pool_server**](docs/ServerApi.md#get_pool_server) | Get a pool server
[*Fastly::ServerApi*](docs/ServerApi.md) | [**list_pool_servers**](docs/ServerApi.md#list_pool_servers) | List servers in a pool
[*Fastly::ServerApi*](docs/ServerApi.md) | [**update_pool_server**](docs/ServerApi.md#update_pool_server) | Update a server
[*Fastly::ServiceApi*](docs/ServiceApi.md) | [**create_service**](docs/ServiceApi.md#create_service) | Create a service
[*Fastly::ServiceApi*](docs/ServiceApi.md) | [**delete_service**](docs/ServiceApi.md#delete_service) | Delete a service
[*Fastly::ServiceApi*](docs/ServiceApi.md) | [**get_service**](docs/ServiceApi.md#get_service) | Get a service
[*Fastly::ServiceApi*](docs/ServiceApi.md) | [**get_service_detail**](docs/ServiceApi.md#get_service_detail) | Get service details
[*Fastly::ServiceApi*](docs/ServiceApi.md) | [**list_service_domains**](docs/ServiceApi.md#list_service_domains) | List the domains within a service
[*Fastly::ServiceApi*](docs/ServiceApi.md) | [**list_services**](docs/ServiceApi.md#list_services) | List services
[*Fastly::ServiceApi*](docs/ServiceApi.md) | [**search_service**](docs/ServiceApi.md#search_service) | Search for a service by name
[*Fastly::ServiceApi*](docs/ServiceApi.md) | [**update_service**](docs/ServiceApi.md#update_service) | Update a service
[*Fastly::ServiceAuthorizationsApi*](docs/ServiceAuthorizationsApi.md) | [**create_service_authorization**](docs/ServiceAuthorizationsApi.md#create_service_authorization) | Create service authorization
[*Fastly::ServiceAuthorizationsApi*](docs/ServiceAuthorizationsApi.md) | [**delete_service_authorization**](docs/ServiceAuthorizationsApi.md#delete_service_authorization) | Delete service authorization
[*Fastly::ServiceAuthorizationsApi*](docs/ServiceAuthorizationsApi.md) | [**delete_service_authorization2**](docs/ServiceAuthorizationsApi.md#delete_service_authorization2) | Delete service authorizations
[*Fastly::ServiceAuthorizationsApi*](docs/ServiceAuthorizationsApi.md) | [**list_service_authorization**](docs/ServiceAuthorizationsApi.md#list_service_authorization) | List service authorizations
[*Fastly::ServiceAuthorizationsApi*](docs/ServiceAuthorizationsApi.md) | [**show_service_authorization**](docs/ServiceAuthorizationsApi.md#show_service_authorization) | Show service authorization
[*Fastly::ServiceAuthorizationsApi*](docs/ServiceAuthorizationsApi.md) | [**update_service_authorization**](docs/ServiceAuthorizationsApi.md#update_service_authorization) | Update service authorization
[*Fastly::ServiceAuthorizationsApi*](docs/ServiceAuthorizationsApi.md) | [**update_service_authorization2**](docs/ServiceAuthorizationsApi.md#update_service_authorization2) | Update service authorizations
[*Fastly::SettingsApi*](docs/SettingsApi.md) | [**get_service_settings**](docs/SettingsApi.md#get_service_settings) | Get service settings
[*Fastly::SettingsApi*](docs/SettingsApi.md) | [**update_service_settings**](docs/SettingsApi.md#update_service_settings) | Update service settings
[*Fastly::SnippetApi*](docs/SnippetApi.md) | [**create_snippet**](docs/SnippetApi.md#create_snippet) | Create a snippet
[*Fastly::SnippetApi*](docs/SnippetApi.md) | [**delete_snippet**](docs/SnippetApi.md#delete_snippet) | Delete a snippet
[*Fastly::SnippetApi*](docs/SnippetApi.md) | [**get_snippet**](docs/SnippetApi.md#get_snippet) | Get a versioned snippet
[*Fastly::SnippetApi*](docs/SnippetApi.md) | [**get_snippet_dynamic**](docs/SnippetApi.md#get_snippet_dynamic) | Get a dynamic snippet
[*Fastly::SnippetApi*](docs/SnippetApi.md) | [**list_snippets**](docs/SnippetApi.md#list_snippets) | List snippets
[*Fastly::SnippetApi*](docs/SnippetApi.md) | [**update_snippet**](docs/SnippetApi.md#update_snippet) | Update a versioned snippet
[*Fastly::SnippetApi*](docs/SnippetApi.md) | [**update_snippet_dynamic**](docs/SnippetApi.md#update_snippet_dynamic) | Update a dynamic snippet
[*Fastly::StarApi*](docs/StarApi.md) | [**create_service_star**](docs/StarApi.md#create_service_star) | Create a star
[*Fastly::StarApi*](docs/StarApi.md) | [**delete_service_star**](docs/StarApi.md#delete_service_star) | Delete a star
[*Fastly::StarApi*](docs/StarApi.md) | [**get_service_star**](docs/StarApi.md#get_service_star) | Get a star
[*Fastly::StarApi*](docs/StarApi.md) | [**list_service_stars**](docs/StarApi.md#list_service_stars) | List stars
[*Fastly::StatsApi*](docs/StatsApi.md) | [**get_service_stats**](docs/StatsApi.md#get_service_stats) | Get stats for a service
[*Fastly::SudoApi*](docs/SudoApi.md) | [**request_sudo_access**](docs/SudoApi.md#request_sudo_access) | Request Sudo access
[*Fastly::TlsActivationsApi*](docs/TlsActivationsApi.md) | [**create_tls_activation**](docs/TlsActivationsApi.md#create_tls_activation) | Enable TLS for a domain using a custom certificate
[*Fastly::TlsActivationsApi*](docs/TlsActivationsApi.md) | [**delete_tls_activation**](docs/TlsActivationsApi.md#delete_tls_activation) | Disable TLS on a domain
[*Fastly::TlsActivationsApi*](docs/TlsActivationsApi.md) | [**get_tls_activation**](docs/TlsActivationsApi.md#get_tls_activation) | Get a TLS activation
[*Fastly::TlsActivationsApi*](docs/TlsActivationsApi.md) | [**list_tls_activations**](docs/TlsActivationsApi.md#list_tls_activations) | List TLS activations
[*Fastly::TlsActivationsApi*](docs/TlsActivationsApi.md) | [**update_tls_activation**](docs/TlsActivationsApi.md#update_tls_activation) | Update a certificate
[*Fastly::TlsBulkCertificatesApi*](docs/TlsBulkCertificatesApi.md) | [**delete_bulk_tls_cert**](docs/TlsBulkCertificatesApi.md#delete_bulk_tls_cert) | Delete a certificate
[*Fastly::TlsBulkCertificatesApi*](docs/TlsBulkCertificatesApi.md) | [**get_tls_bulk_cert**](docs/TlsBulkCertificatesApi.md#get_tls_bulk_cert) | Get a certificate
[*Fastly::TlsBulkCertificatesApi*](docs/TlsBulkCertificatesApi.md) | [**list_tls_bulk_certs**](docs/TlsBulkCertificatesApi.md#list_tls_bulk_certs) | List certificates
[*Fastly::TlsBulkCertificatesApi*](docs/TlsBulkCertificatesApi.md) | [**update_bulk_tls_cert**](docs/TlsBulkCertificatesApi.md#update_bulk_tls_cert) | Update a certificate
[*Fastly::TlsBulkCertificatesApi*](docs/TlsBulkCertificatesApi.md) | [**upload_tls_bulk_cert**](docs/TlsBulkCertificatesApi.md#upload_tls_bulk_cert) | Upload a certificate
[*Fastly::TlsCertificatesApi*](docs/TlsCertificatesApi.md) | [**create_tls_cert**](docs/TlsCertificatesApi.md#create_tls_cert) | Create a TLS certificate
[*Fastly::TlsCertificatesApi*](docs/TlsCertificatesApi.md) | [**delete_tls_cert**](docs/TlsCertificatesApi.md#delete_tls_cert) | Delete a TLS certificate
[*Fastly::TlsCertificatesApi*](docs/TlsCertificatesApi.md) | [**get_tls_cert**](docs/TlsCertificatesApi.md#get_tls_cert) | Get a TLS certificate
[*Fastly::TlsCertificatesApi*](docs/TlsCertificatesApi.md) | [**get_tls_cert_blob**](docs/TlsCertificatesApi.md#get_tls_cert_blob) | Get a TLS certificate blob (Limited Availability)
[*Fastly::TlsCertificatesApi*](docs/TlsCertificatesApi.md) | [**list_tls_certs**](docs/TlsCertificatesApi.md#list_tls_certs) | List TLS certificates
[*Fastly::TlsCertificatesApi*](docs/TlsCertificatesApi.md) | [**update_tls_cert**](docs/TlsCertificatesApi.md#update_tls_cert) | Update a TLS certificate
[*Fastly::TlsConfigurationsApi*](docs/TlsConfigurationsApi.md) | [**get_tls_config**](docs/TlsConfigurationsApi.md#get_tls_config) | Get a TLS configuration
[*Fastly::TlsConfigurationsApi*](docs/TlsConfigurationsApi.md) | [**list_tls_configs**](docs/TlsConfigurationsApi.md#list_tls_configs) | List TLS configurations
[*Fastly::TlsConfigurationsApi*](docs/TlsConfigurationsApi.md) | [**update_tls_config**](docs/TlsConfigurationsApi.md#update_tls_config) | Update a TLS configuration
[*Fastly::TlsCsrsApi*](docs/TlsCsrsApi.md) | [**create_csr**](docs/TlsCsrsApi.md#create_csr) | Create CSR
[*Fastly::TlsDomainsApi*](docs/TlsDomainsApi.md) | [**list_tls_domains**](docs/TlsDomainsApi.md#list_tls_domains) | List TLS domains
[*Fastly::TlsPrivateKeysApi*](docs/TlsPrivateKeysApi.md) | [**create_tls_key**](docs/TlsPrivateKeysApi.md#create_tls_key) | Create a TLS private key
[*Fastly::TlsPrivateKeysApi*](docs/TlsPrivateKeysApi.md) | [**delete_tls_key**](docs/TlsPrivateKeysApi.md#delete_tls_key) | Delete a TLS private key
[*Fastly::TlsPrivateKeysApi*](docs/TlsPrivateKeysApi.md) | [**get_tls_key**](docs/TlsPrivateKeysApi.md#get_tls_key) | Get a TLS private key
[*Fastly::TlsPrivateKeysApi*](docs/TlsPrivateKeysApi.md) | [**list_tls_keys**](docs/TlsPrivateKeysApi.md#list_tls_keys) | List TLS private keys
[*Fastly::TlsSubscriptionsApi*](docs/TlsSubscriptionsApi.md) | [**create_globalsign_email_challenge**](docs/TlsSubscriptionsApi.md#create_globalsign_email_challenge) | Creates a GlobalSign email challenge.
[*Fastly::TlsSubscriptionsApi*](docs/TlsSubscriptionsApi.md) | [**create_tls_sub**](docs/TlsSubscriptionsApi.md#create_tls_sub) | Create a TLS subscription
[*Fastly::TlsSubscriptionsApi*](docs/TlsSubscriptionsApi.md) | [**delete_globalsign_email_challenge**](docs/TlsSubscriptionsApi.md#delete_globalsign_email_challenge) | Delete a GlobalSign email challenge
[*Fastly::TlsSubscriptionsApi*](docs/TlsSubscriptionsApi.md) | [**delete_tls_sub**](docs/TlsSubscriptionsApi.md#delete_tls_sub) | Delete a TLS subscription
[*Fastly::TlsSubscriptionsApi*](docs/TlsSubscriptionsApi.md) | [**get_tls_sub**](docs/TlsSubscriptionsApi.md#get_tls_sub) | Get a TLS subscription
[*Fastly::TlsSubscriptionsApi*](docs/TlsSubscriptionsApi.md) | [**list_tls_subs**](docs/TlsSubscriptionsApi.md#list_tls_subs) | List TLS subscriptions
[*Fastly::TlsSubscriptionsApi*](docs/TlsSubscriptionsApi.md) | [**patch_tls_sub**](docs/TlsSubscriptionsApi.md#patch_tls_sub) | Update a TLS subscription
[*Fastly::TokensApi*](docs/TokensApi.md) | [**bulk_revoke_tokens**](docs/TokensApi.md#bulk_revoke_tokens) | Revoke multiple tokens
[*Fastly::TokensApi*](docs/TokensApi.md) | [**create_token**](docs/TokensApi.md#create_token) | Create a token
[*Fastly::TokensApi*](docs/TokensApi.md) | [**get_token**](docs/TokensApi.md#get_token) | Get a token
[*Fastly::TokensApi*](docs/TokensApi.md) | [**get_token_current**](docs/TokensApi.md#get_token_current) | Get the current token
[*Fastly::TokensApi*](docs/TokensApi.md) | [**list_tokens_customer**](docs/TokensApi.md#list_tokens_customer) | List tokens for a customer
[*Fastly::TokensApi*](docs/TokensApi.md) | [**list_tokens_user**](docs/TokensApi.md#list_tokens_user) | List tokens for the authenticated user
[*Fastly::TokensApi*](docs/TokensApi.md) | [**revoke_token**](docs/TokensApi.md#revoke_token) | Revoke a token
[*Fastly::TokensApi*](docs/TokensApi.md) | [**revoke_token_current**](docs/TokensApi.md#revoke_token_current) | Revoke the current token
[*Fastly::UserApi*](docs/UserApi.md) | [**create_user**](docs/UserApi.md#create_user) | Create a user
[*Fastly::UserApi*](docs/UserApi.md) | [**delete_user**](docs/UserApi.md#delete_user) | Delete a user
[*Fastly::UserApi*](docs/UserApi.md) | [**get_current_user**](docs/UserApi.md#get_current_user) | Get the current user
[*Fastly::UserApi*](docs/UserApi.md) | [**get_user**](docs/UserApi.md#get_user) | Get a user
[*Fastly::UserApi*](docs/UserApi.md) | [**request_password_reset**](docs/UserApi.md#request_password_reset) | Request a password reset
[*Fastly::UserApi*](docs/UserApi.md) | [**update_user**](docs/UserApi.md#update_user) | Update a user
[*Fastly::UserApi*](docs/UserApi.md) | [**update_user_password**](docs/UserApi.md#update_user_password) | Update the user's password
[*Fastly::VclApi*](docs/VclApi.md) | [**create_custom_vcl**](docs/VclApi.md#create_custom_vcl) | Create a custom VCL file
[*Fastly::VclApi*](docs/VclApi.md) | [**delete_custom_vcl**](docs/VclApi.md#delete_custom_vcl) | Delete a custom VCL file
[*Fastly::VclApi*](docs/VclApi.md) | [**get_custom_vcl**](docs/VclApi.md#get_custom_vcl) | Get a custom VCL file
[*Fastly::VclApi*](docs/VclApi.md) | [**get_custom_vcl_boilerplate**](docs/VclApi.md#get_custom_vcl_boilerplate) | Get boilerplate VCL
[*Fastly::VclApi*](docs/VclApi.md) | [**get_custom_vcl_generated**](docs/VclApi.md#get_custom_vcl_generated) | Get the generated VCL for a service
[*Fastly::VclApi*](docs/VclApi.md) | [**get_custom_vcl_generated_highlighted**](docs/VclApi.md#get_custom_vcl_generated_highlighted) | Get the generated VCL with syntax highlighting
[*Fastly::VclApi*](docs/VclApi.md) | [**get_custom_vcl_highlighted**](docs/VclApi.md#get_custom_vcl_highlighted) | Get a custom VCL file with syntax highlighting
[*Fastly::VclApi*](docs/VclApi.md) | [**get_custom_vcl_raw**](docs/VclApi.md#get_custom_vcl_raw) | Download a custom VCL file
[*Fastly::VclApi*](docs/VclApi.md) | [**lint_vcl_default**](docs/VclApi.md#lint_vcl_default) | Lint (validate) VCL using a default set of flags.
[*Fastly::VclApi*](docs/VclApi.md) | [**lint_vcl_for_service**](docs/VclApi.md#lint_vcl_for_service) | Lint (validate) VCL using flags set for the service.
[*Fastly::VclApi*](docs/VclApi.md) | [**list_custom_vcl**](docs/VclApi.md#list_custom_vcl) | List custom VCL files
[*Fastly::VclApi*](docs/VclApi.md) | [**set_custom_vcl_main**](docs/VclApi.md#set_custom_vcl_main) | Set a custom VCL file as main
[*Fastly::VclApi*](docs/VclApi.md) | [**update_custom_vcl**](docs/VclApi.md#update_custom_vcl) | Update a custom VCL file
[*Fastly::VclDiffApi*](docs/VclDiffApi.md) | [**vcl_diff_service_versions**](docs/VclDiffApi.md#vcl_diff_service_versions) | Get a comparison of the VCL changes between two service versions
[*Fastly::VersionApi*](docs/VersionApi.md) | [**activate_service_version**](docs/VersionApi.md#activate_service_version) | Activate a service version
[*Fastly::VersionApi*](docs/VersionApi.md) | [**activate_service_version_environment**](docs/VersionApi.md#activate_service_version_environment) | Activate a service version on the specified environment
[*Fastly::VersionApi*](docs/VersionApi.md) | [**clone_service_version**](docs/VersionApi.md#clone_service_version) | Clone a service version
[*Fastly::VersionApi*](docs/VersionApi.md) | [**create_service_version**](docs/VersionApi.md#create_service_version) | Create a service version
[*Fastly::VersionApi*](docs/VersionApi.md) | [**deactivate_service_version**](docs/VersionApi.md#deactivate_service_version) | Deactivate a service version
[*Fastly::VersionApi*](docs/VersionApi.md) | [**deactivate_service_version_environment**](docs/VersionApi.md#deactivate_service_version_environment) | Deactivate a service version on an environment
[*Fastly::VersionApi*](docs/VersionApi.md) | [**get_service_version**](docs/VersionApi.md#get_service_version) | Get a version of a service
[*Fastly::VersionApi*](docs/VersionApi.md) | [**list_service_versions**](docs/VersionApi.md#list_service_versions) | List versions of a service
[*Fastly::VersionApi*](docs/VersionApi.md) | [**lock_service_version**](docs/VersionApi.md#lock_service_version) | Lock a service version
[*Fastly::VersionApi*](docs/VersionApi.md) | [**update_service_version**](docs/VersionApi.md#update_service_version) | Update a service version
[*Fastly::VersionApi*](docs/VersionApi.md) | [**validate_service_version**](docs/VersionApi.md#validate_service_version) | Validate a service version
[*Fastly::WholePlatformDdosHistoricalApi*](docs/WholePlatformDdosHistoricalApi.md) | [**get_platform_ddos_historical**](docs/WholePlatformDdosHistoricalApi.md#get_platform_ddos_historical) | Get historical DDoS metrics for the entire Fastly platform


</details>

## Issues

The fastly-ruby API client currently does not support the following endpoints:

- [`/alerts/definitions/{definition_id}`](https://www.fastly.com/documentation/reference/api/observability/alerts/definitions) (DELETE, GET, PUT)
- [`/alerts/definitions`](https://www.fastly.com/documentation/reference/api/observability/alerts/definitions) (GET, POST)
- [`/alerts/history`](https://www.fastly.com/documentation/reference/api/observability/alerts/history) (GET)
- [`/dns/configurations/{dns_configuration_id}`](https://www.fastly.com/documentation/reference/api/) (DELETE, GET, PATCH)
- [`/dns/configurations`](https://www.fastly.com/documentation/reference/api/) (GET, POST)
- [`/domains/v1/tools/status`](https://www.fastly.com/documentation/reference/api/) (GET)
- [`/domains/v1/tools/suggest`](https://www.fastly.com/documentation/reference/api/) (GET)
- [`/domains/v1/{domain_id}`](https://www.fastly.com/documentation/reference/api/) (DELETE, GET, PATCH)
- [`/domains/v1`](https://www.fastly.com/documentation/reference/api/) (GET, POST)
- [`/ngwaf/v1/workspaces/{workspace_id}/alerts/{alert_id}/signing-key`](https://www.fastly.com/documentation/reference/api/ngwaf/v1/workspace_alerts) (GET, POST)
- [`/ngwaf/v1/workspaces/{workspace_id}/alerts/{alert_id}`](https://www.fastly.com/documentation/reference/api/ngwaf/v1/workspace_alerts) (DELETE, GET, PATCH)
- [`/ngwaf/v1/workspaces/{workspace_id}/alerts`](https://www.fastly.com/documentation/reference/api/ngwaf/v1/workspace_alerts) (GET, POST)
- [`/ngwaf/v1/workspaces/{workspace_id}/events/{event_id}`](https://www.fastly.com/documentation/reference/api/ngwaf/events) (GET, PATCH)
- [`/ngwaf/v1/workspaces/{workspace_id}/events`](https://www.fastly.com/documentation/reference/api/ngwaf/events) (GET)
- [`/ngwaf/v1/workspaces/{workspace_id}/redactions/{redaction_id}`](https://www.fastly.com/documentation/reference/api/ngwaf/v1/redactions) (DELETE, GET, PATCH)
- [`/ngwaf/v1/workspaces/{workspace_id}/redactions`](https://www.fastly.com/documentation/reference/api/ngwaf/v1/redactions) (GET, POST)
- [`/ngwaf/v1/workspaces/{workspace_id}/requests/{request_id}`](https://www.fastly.com/documentation/reference/api/ngwaf/v1/requests) (GET)
- [`/ngwaf/v1/workspaces/{workspace_id}/requests`](https://www.fastly.com/documentation/reference/api/ngwaf/v1/requests) (GET)
- [`/ngwaf/v1/workspaces/{workspace_id}/rules/{rule_id}`](https://www.fastly.com/documentation/reference/api/ngwaf/v1/rules) (DELETE, GET, PATCH)
- [`/ngwaf/v1/workspaces/{workspace_id}/rules`](https://www.fastly.com/documentation/reference/api/ngwaf/v1/rules) (GET, POST)
- [`/ngwaf/v1/workspaces/{workspace_id}/timeseries`](https://www.fastly.com/documentation/reference/api/ngwaf/v1/timeseries) (GET)
- [`/ngwaf/v1/workspaces/{workspace_id}/virtual-patches/{virtual_patch_id}`](https://www.fastly.com/documentation/reference/api/ngwaf/v1/virtual-patches) (GET, PATCH)
- [`/ngwaf/v1/workspaces/{workspace_id}/virtual-patches`](https://www.fastly.com/documentation/reference/api/ngwaf/v1/virtual-patches) (GET)
- [`/ngwaf/v1/workspaces/{workspace_id}`](https://www.fastly.com/documentation/reference/api/ngwaf/workspaces) (DELETE, GET, PATCH)
- [`/ngwaf/v1/workspaces`](https://www.fastly.com/documentation/reference/api/ngwaf/workspaces) (GET, POST)
- [`/notifications/integration-types`](https://developer.fastly.com/reference/api/observability/notification) (GET)
- [`/notifications/integrations/{integration_id}/rotateSigningKey`](https://developer.fastly.com/reference/api/observability/notification) (POST)
- [`/notifications/integrations/{integration_id}/signingKey`](https://developer.fastly.com/reference/api/observability/notification) (GET)
- [`/notifications/integrations/{integration_id}`](https://developer.fastly.com/reference/api/observability/notification) (DELETE, GET, PATCH)
- [`/notifications/integrations`](https://developer.fastly.com/reference/api/observability/notification) (GET, POST)
- [`/notifications/mailinglist-confirmations`](https://developer.fastly.com/reference/api/observability/notification) (POST)
- [`/resources/stores/kv/{store_id}/batch`](https://www.fastly.com/documentation/reference/api/services/resources/kv-store-item) (PUT)
- [`/security/workspaces/{workspace_id}/events/{event_id}`](https://www.fastly.com/documentation/reference/api/security/events) (GET, PATCH)
- [`/security/workspaces/{workspace_id}/events`](https://www.fastly.com/documentation/reference/api/security/events) (GET)
- [`/security/workspaces/{workspace_id}/redactions/{redaction_id}`](https://www.fastly.com/documentation/reference/api/security/redactions) (DELETE, GET, PATCH)
- [`/security/workspaces/{workspace_id}/redactions`](https://www.fastly.com/documentation/reference/api/security/redactions) (GET, POST)
- [`/security/workspaces/{workspace_id}/requests/{request_id}`](https://www.fastly.com/documentation/reference/api/security/requests) (GET)
- [`/security/workspaces/{workspace_id}/requests`](https://www.fastly.com/documentation/reference/api/security/requests) (GET)
- [`/security/workspaces/{workspace_id}/rules/{rule_id}`](https://www.fastly.com/documentation/reference/api/security/rules) (DELETE, GET, PATCH)
- [`/security/workspaces/{workspace_id}/rules`](https://www.fastly.com/documentation/reference/api/security/rules) (GET, POST)
- [`/security/workspaces/{workspace_id}/timeseries`](https://www.fastly.com/documentation/reference/api/security/timeseries) (GET)
- [`/security/workspaces/{workspace_id}/virtual-patches/{virtual_patch_id}`](https://www.fastly.com/documentation/reference/api/security/virtual-patches) (GET, PATCH)
- [`/security/workspaces/{workspace_id}/virtual-patches`](https://www.fastly.com/documentation/reference/api/security/virtual-patches) (GET)
- [`/security/workspaces/{workspace_id}`](https://www.fastly.com/documentation/reference/api/security/workspaces) (DELETE, GET, PATCH)
- [`/security/workspaces`](https://www.fastly.com/documentation/reference/api/security/workspaces) (GET, POST)
- [`/tls/activations/{tls_activation_id}`](https://www.fastly.com/documentation/reference/api/tls/mutual-tls/activations) (GET, PATCH)
- [`/tls/activations`](https://www.fastly.com/documentation/reference/api/tls/mutual-tls/activations) (GET)
- [`/tls/configurations/{tls_configuration_id}`](https://www.fastly.com/documentation/reference/api/) (DELETE, GET, PATCH)
- [`/tls/configurations`](https://www.fastly.com/documentation/reference/api/) (GET, POST)
- [`/v1/channel/{service_id}/ts/h/limit/{max_entries}`](https://www.fastly.com/documentation/reference/api/metrics-stats/origin-insights) (GET)
- [`/v1/channel/{service_id}/ts/h`](https://www.fastly.com/documentation/reference/api/metrics-stats/origin-insights) (GET)
- [`/v1/channel/{service_id}/ts/{start_timestamp}`](https://www.fastly.com/documentation/reference/api/metrics-stats/origin-insights) (GET)


If you encounter any non-security-related bug or unexpected behavior, please [file an issue][bug]
using the bug report template.

[bug]: https://github.com/fastly/fastly-ruby/issues/new?labels=bug

### Security issues

Please see our [SECURITY.md](./SECURITY.md) for guidance on reporting security-related issues.

## License

[MIT](./LICENSE).
