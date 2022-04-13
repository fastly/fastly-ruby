# fastly-ruby

A Ruby client library for interacting with most facets of the [Fastly API](https://developer.fastly.com/reference/api).

> ⚠️ This client library (`4.0.0.alpha4`)  is an early-access release. Features may change without notice. Use at your own risk.

**We strongly recommend that you do not install alpha and beta releases on live production services.** No official support is provided for such releases. Please try out the library in a test environment, see what breaks without worrying about consequences, and give us [feedback](#issues).

Read about the [Fastly Product Lifecycle](https://docs.fastly.com/products/fastly-product-lifecycle).


## Installation

To install via RubyGems, add the following to your project's `Gemfile`:

```ruby
gem 'fastly', '~> 4.0.0.alpha4'
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

The Fastly API requires an [API token](https://developer.fastly.com/reference/api/#authentication) for most operations.  Set it in the Ruby client by assigning to `api_token` of a configuration as shown:

```ruby
# Authorize the client with a Fastly API token.
Fastly.configure do |config|
  # Configure API key authorization: token
  config.api_token = 'YOUR API KEY'
end
```

Alternatively, set the `FASTLY_API_TOKEN` environment variable instead of setting `api_token`.

## Endpoints

The main documentation for the Fastly API can be found on our [Developer Hub](https://developer.fastly.com/reference/api).

Class | Method | Description
------------ | ------------- | -------------
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
[*Fastly::ApexRedirectApi*](docs/ApexRedirectApi.md) | [**delete_apex_redirect**](docs/ApexRedirectApi.md#delete_apex_redirect) | Delete an apex redirect
[*Fastly::ApexRedirectApi*](docs/ApexRedirectApi.md) | [**get_apex_redirect**](docs/ApexRedirectApi.md#get_apex_redirect) | Get an apex redirect
[*Fastly::ApexRedirectApi*](docs/ApexRedirectApi.md) | [**list_apex_redirects**](docs/ApexRedirectApi.md#list_apex_redirects) | List apex redirects
[*Fastly::ApexRedirectApi*](docs/ApexRedirectApi.md) | [**update_apex_redirect**](docs/ApexRedirectApi.md#update_apex_redirect) | Update an apex redirect
[*Fastly::BackendApi*](docs/BackendApi.md) | [**create_backend**](docs/BackendApi.md#create_backend) | Create a backend
[*Fastly::BackendApi*](docs/BackendApi.md) | [**delete_backend**](docs/BackendApi.md#delete_backend) | Delete a backend
[*Fastly::BackendApi*](docs/BackendApi.md) | [**get_backend**](docs/BackendApi.md#get_backend) | Describe a backend
[*Fastly::BackendApi*](docs/BackendApi.md) | [**list_backends**](docs/BackendApi.md#list_backends) | List backends
[*Fastly::BackendApi*](docs/BackendApi.md) | [**update_backend**](docs/BackendApi.md#update_backend) | Update a backend
[*Fastly::BillingApi*](docs/BillingApi.md) | [**get_invoice**](docs/BillingApi.md#get_invoice) | Get an invoice
[*Fastly::BillingApi*](docs/BillingApi.md) | [**get_invoice_by_id**](docs/BillingApi.md#get_invoice_by_id) | Get an invoice
[*Fastly::BillingApi*](docs/BillingApi.md) | [**get_invoice_mtd**](docs/BillingApi.md#get_invoice_mtd) | Get month-to-date billing estimate
[*Fastly::BillingAddressApi*](docs/BillingAddressApi.md) | [**add_billing_addr**](docs/BillingAddressApi.md#add_billing_addr) | Add a billing address to a customer
[*Fastly::BillingAddressApi*](docs/BillingAddressApi.md) | [**delete_billing_addr**](docs/BillingAddressApi.md#delete_billing_addr) | Delete a billing address
[*Fastly::BillingAddressApi*](docs/BillingAddressApi.md) | [**get_billing_addr**](docs/BillingAddressApi.md#get_billing_addr) | Get a billing address
[*Fastly::BillingAddressApi*](docs/BillingAddressApi.md) | [**update_billing_addr**](docs/BillingAddressApi.md#update_billing_addr) | Update a billing address
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
[*Fastly::ContactApi*](docs/ContactApi.md) | [**delete_contact**](docs/ContactApi.md#delete_contact) | Delete a contact
[*Fastly::ContactApi*](docs/ContactApi.md) | [**list_contacts**](docs/ContactApi.md#list_contacts) | List contacts
[*Fastly::ContentApi*](docs/ContentApi.md) | [**content_check**](docs/ContentApi.md#content_check) | Check status of content in each POP's cache
[*Fastly::CustomerApi*](docs/CustomerApi.md) | [**delete_customer**](docs/CustomerApi.md#delete_customer) | Delete a customer
[*Fastly::CustomerApi*](docs/CustomerApi.md) | [**get_customer**](docs/CustomerApi.md#get_customer) | Get a customer
[*Fastly::CustomerApi*](docs/CustomerApi.md) | [**get_logged_in_customer**](docs/CustomerApi.md#get_logged_in_customer) | Get the logged in customer
[*Fastly::CustomerApi*](docs/CustomerApi.md) | [**list_users**](docs/CustomerApi.md#list_users) | List users
[*Fastly::CustomerApi*](docs/CustomerApi.md) | [**update_customer**](docs/CustomerApi.md#update_customer) | Update a customer
[*Fastly::DictionaryApi*](docs/DictionaryApi.md) | [**create_dictionary**](docs/DictionaryApi.md#create_dictionary) | Create an edge dictionary
[*Fastly::DictionaryApi*](docs/DictionaryApi.md) | [**delete_dictionary**](docs/DictionaryApi.md#delete_dictionary) | Delete an edge dictionary
[*Fastly::DictionaryApi*](docs/DictionaryApi.md) | [**get_dictionary**](docs/DictionaryApi.md#get_dictionary) | Get an edge dictionary
[*Fastly::DictionaryApi*](docs/DictionaryApi.md) | [**list_dictionaries**](docs/DictionaryApi.md#list_dictionaries) | List edge dictionaries
[*Fastly::DictionaryApi*](docs/DictionaryApi.md) | [**update_dictionary**](docs/DictionaryApi.md#update_dictionary) | Update an edge dictionary
[*Fastly::DictionaryInfoApi*](docs/DictionaryInfoApi.md) | [**get_dictionary_info**](docs/DictionaryInfoApi.md#get_dictionary_info) | Get edge dictionary metadata
[*Fastly::DictionaryItemApi*](docs/DictionaryItemApi.md) | [**create_dictionary_item**](docs/DictionaryItemApi.md#create_dictionary_item) | Create an entry in an edge dictionary
[*Fastly::DictionaryItemApi*](docs/DictionaryItemApi.md) | [**delete_dictionary_item**](docs/DictionaryItemApi.md#delete_dictionary_item) | Delete an item from an edge dictionary
[*Fastly::DictionaryItemApi*](docs/DictionaryItemApi.md) | [**get_dictionary_item**](docs/DictionaryItemApi.md#get_dictionary_item) | Get an item from an edge dictionary
[*Fastly::DictionaryItemApi*](docs/DictionaryItemApi.md) | [**list_dictionary_items**](docs/DictionaryItemApi.md#list_dictionary_items) | List items in an edge dictionary
[*Fastly::DictionaryItemApi*](docs/DictionaryItemApi.md) | [**update_dictionary_item**](docs/DictionaryItemApi.md#update_dictionary_item) | Update an entry in an edge dictionary
[*Fastly::DictionaryItemApi*](docs/DictionaryItemApi.md) | [**upsert_dictionary_item**](docs/DictionaryItemApi.md#upsert_dictionary_item) | Insert or update an entry in an edge dictionary
[*Fastly::DiffApi*](docs/DiffApi.md) | [**diff_service_versions**](docs/DiffApi.md#diff_service_versions) | Diff two service versions
[*Fastly::DirectorApi*](docs/DirectorApi.md) | [**create_director**](docs/DirectorApi.md#create_director) | Create a director
[*Fastly::DirectorApi*](docs/DirectorApi.md) | [**delete_director**](docs/DirectorApi.md#delete_director) | Delete a director
[*Fastly::DirectorApi*](docs/DirectorApi.md) | [**get_director**](docs/DirectorApi.md#get_director) | Get a director
[*Fastly::DirectorApi*](docs/DirectorApi.md) | [**list_directors**](docs/DirectorApi.md#list_directors) | List directors
[*Fastly::DirectorBackendApi*](docs/DirectorBackendApi.md) | [**create_director_backend**](docs/DirectorBackendApi.md#create_director_backend) | Create a director-backend relationship
[*Fastly::DirectorBackendApi*](docs/DirectorBackendApi.md) | [**delete_director_backend**](docs/DirectorBackendApi.md#delete_director_backend) | Delete a director-backend relationship
[*Fastly::DirectorBackendApi*](docs/DirectorBackendApi.md) | [**get_director_backend**](docs/DirectorBackendApi.md#get_director_backend) | Get a director-backend relationship
[*Fastly::DocsApi*](docs/DocsApi.md) | [**get_docs**](docs/DocsApi.md#get_docs) | Get Fastly API docs as structured data
[*Fastly::DocsApi*](docs/DocsApi.md) | [**get_docs_section**](docs/DocsApi.md#get_docs_section) | Get API docs matching a section filter
[*Fastly::DocsApi*](docs/DocsApi.md) | [**get_docs_subject**](docs/DocsApi.md#get_docs_subject) | Get API docs for a single subject
[*Fastly::DomainApi*](docs/DomainApi.md) | [**check_domain**](docs/DomainApi.md#check_domain) | Validate DNS configuration for a single domain on a service
[*Fastly::DomainApi*](docs/DomainApi.md) | [**check_domains**](docs/DomainApi.md#check_domains) | Validate DNS configuration for all domains on a service
[*Fastly::DomainApi*](docs/DomainApi.md) | [**create_domain**](docs/DomainApi.md#create_domain) | Add a domain name to a service
[*Fastly::DomainApi*](docs/DomainApi.md) | [**delete_domain**](docs/DomainApi.md#delete_domain) | Remove a domain from a service
[*Fastly::DomainApi*](docs/DomainApi.md) | [**get_domain**](docs/DomainApi.md#get_domain) | Describe a domain
[*Fastly::DomainApi*](docs/DomainApi.md) | [**list_domains**](docs/DomainApi.md#list_domains) | List domains
[*Fastly::DomainApi*](docs/DomainApi.md) | [**update_domain**](docs/DomainApi.md#update_domain) | Update a domain
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
[*Fastly::HealthcheckApi*](docs/HealthcheckApi.md) | [**create_healthcheck**](docs/HealthcheckApi.md#create_healthcheck) | Create a healthcheck
[*Fastly::HealthcheckApi*](docs/HealthcheckApi.md) | [**delete_healthcheck**](docs/HealthcheckApi.md#delete_healthcheck) | Delete a healthcheck
[*Fastly::HealthcheckApi*](docs/HealthcheckApi.md) | [**get_healthcheck**](docs/HealthcheckApi.md#get_healthcheck) | Get a healthcheck
[*Fastly::HealthcheckApi*](docs/HealthcheckApi.md) | [**list_healthchecks**](docs/HealthcheckApi.md#list_healthchecks) | List healthchecks
[*Fastly::HealthcheckApi*](docs/HealthcheckApi.md) | [**update_healthcheck**](docs/HealthcheckApi.md#update_healthcheck) | Update a healthcheck
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
[*Fastly::IamRolesApi*](docs/IamRolesApi.md) | [**delete_a_role**](docs/IamRolesApi.md#delete_a_role) | Delete a role
[*Fastly::IamRolesApi*](docs/IamRolesApi.md) | [**get_a_role**](docs/IamRolesApi.md#get_a_role) | Get a role
[*Fastly::IamRolesApi*](docs/IamRolesApi.md) | [**list_role_permissions**](docs/IamRolesApi.md#list_role_permissions) | List permissions in a role
[*Fastly::IamRolesApi*](docs/IamRolesApi.md) | [**list_roles**](docs/IamRolesApi.md#list_roles) | List roles
[*Fastly::IamServiceGroupsApi*](docs/IamServiceGroupsApi.md) | [**delete_a_service_group**](docs/IamServiceGroupsApi.md#delete_a_service_group) | Delete a service group
[*Fastly::IamServiceGroupsApi*](docs/IamServiceGroupsApi.md) | [**get_a_service_group**](docs/IamServiceGroupsApi.md#get_a_service_group) | Get a service group
[*Fastly::IamServiceGroupsApi*](docs/IamServiceGroupsApi.md) | [**list_service_group_services**](docs/IamServiceGroupsApi.md#list_service_group_services) | List services to a service group
[*Fastly::IamServiceGroupsApi*](docs/IamServiceGroupsApi.md) | [**list_service_groups**](docs/IamServiceGroupsApi.md#list_service_groups) | List service groups
[*Fastly::IamUserGroupsApi*](docs/IamUserGroupsApi.md) | [**delete_a_user_group**](docs/IamUserGroupsApi.md#delete_a_user_group) | Delete a user group
[*Fastly::IamUserGroupsApi*](docs/IamUserGroupsApi.md) | [**get_a_user_group**](docs/IamUserGroupsApi.md#get_a_user_group) | Get a user group
[*Fastly::IamUserGroupsApi*](docs/IamUserGroupsApi.md) | [**list_user_group_members**](docs/IamUserGroupsApi.md#list_user_group_members) | List members of a user group
[*Fastly::IamUserGroupsApi*](docs/IamUserGroupsApi.md) | [**list_user_group_roles**](docs/IamUserGroupsApi.md#list_user_group_roles) | List roles in a user group
[*Fastly::IamUserGroupsApi*](docs/IamUserGroupsApi.md) | [**list_user_group_service_groups**](docs/IamUserGroupsApi.md#list_user_group_service_groups) | List service groups in a user group
[*Fastly::IamUserGroupsApi*](docs/IamUserGroupsApi.md) | [**list_user_groups**](docs/IamUserGroupsApi.md#list_user_groups) | List user groups
[*Fastly::InvitationsApi*](docs/InvitationsApi.md) | [**create_invitation**](docs/InvitationsApi.md#create_invitation) | Create an invitation
[*Fastly::InvitationsApi*](docs/InvitationsApi.md) | [**delete_invitation**](docs/InvitationsApi.md#delete_invitation) | Delete an invitation
[*Fastly::InvitationsApi*](docs/InvitationsApi.md) | [**list_invitations**](docs/InvitationsApi.md#list_invitations) | List invitations
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
[*Fastly::LoggingKinesisApi*](docs/LoggingKinesisApi.md) | [**create_log_kinesis**](docs/LoggingKinesisApi.md#create_log_kinesis) | Create  an Amazon Kinesis log endpoint
[*Fastly::LoggingKinesisApi*](docs/LoggingKinesisApi.md) | [**delete_log_kinesis**](docs/LoggingKinesisApi.md#delete_log_kinesis) | Delete the Amazon Kinesis log endpoint
[*Fastly::LoggingKinesisApi*](docs/LoggingKinesisApi.md) | [**get_log_kinesis**](docs/LoggingKinesisApi.md#get_log_kinesis) | Get an Amazon Kinesis log endpoint
[*Fastly::LoggingKinesisApi*](docs/LoggingKinesisApi.md) | [**list_log_kinesis**](docs/LoggingKinesisApi.md#list_log_kinesis) | List Amazon Kinesis log endpoints
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
[*Fastly::PackageApi*](docs/PackageApi.md) | [**get_package**](docs/PackageApi.md#get_package) | Get details of the service's Compute@Edge package.
[*Fastly::PackageApi*](docs/PackageApi.md) | [**put_package**](docs/PackageApi.md#put_package) | Upload a Compute@Edge package.
[*Fastly::PoolApi*](docs/PoolApi.md) | [**create_server_pool**](docs/PoolApi.md#create_server_pool) | Create a server pool
[*Fastly::PoolApi*](docs/PoolApi.md) | [**delete_server_pool**](docs/PoolApi.md#delete_server_pool) | Delete a server pool
[*Fastly::PoolApi*](docs/PoolApi.md) | [**get_server_pool**](docs/PoolApi.md#get_server_pool) | Get a server pool
[*Fastly::PoolApi*](docs/PoolApi.md) | [**list_server_pools**](docs/PoolApi.md#list_server_pools) | List server pools
[*Fastly::PoolApi*](docs/PoolApi.md) | [**update_server_pool**](docs/PoolApi.md#update_server_pool) | Update a server pool
[*Fastly::PopApi*](docs/PopApi.md) | [**list_pops**](docs/PopApi.md#list_pops) | List Fastly POPs
[*Fastly::PublicIpListApi*](docs/PublicIpListApi.md) | [**list_fastly_ips**](docs/PublicIpListApi.md#list_fastly_ips) | List Fastly's public IPs
[*Fastly::PurgeApi*](docs/PurgeApi.md) | [**bulk_purge_tag**](docs/PurgeApi.md#bulk_purge_tag) | Purge multiple surrogate key tags
[*Fastly::PurgeApi*](docs/PurgeApi.md) | [**purge_all**](docs/PurgeApi.md#purge_all) | Purge everything from a service
[*Fastly::PurgeApi*](docs/PurgeApi.md) | [**purge_single_url**](docs/PurgeApi.md#purge_single_url) | Purge a URL
[*Fastly::PurgeApi*](docs/PurgeApi.md) | [**purge_tag**](docs/PurgeApi.md#purge_tag) | Purge by surrogate key tag
[*Fastly::RateLimiterApi*](docs/RateLimiterApi.md) | [**delete_rate_limiter**](docs/RateLimiterApi.md#delete_rate_limiter) | Delete a rate limiter
[*Fastly::RateLimiterApi*](docs/RateLimiterApi.md) | [**get_rate_limiter**](docs/RateLimiterApi.md#get_rate_limiter) | Get a rate limiter
[*Fastly::RateLimiterApi*](docs/RateLimiterApi.md) | [**list_rate_limiters**](docs/RateLimiterApi.md#list_rate_limiters) | List rate limiters
[*Fastly::RealtimeApi*](docs/RealtimeApi.md) | [**get_stats_last120_seconds**](docs/RealtimeApi.md#get_stats_last120_seconds) | Get real-time data for the last 120 seconds
[*Fastly::RealtimeApi*](docs/RealtimeApi.md) | [**get_stats_last120_seconds_limit_entries**](docs/RealtimeApi.md#get_stats_last120_seconds_limit_entries) | Get a limited number of real-time data entries
[*Fastly::RealtimeApi*](docs/RealtimeApi.md) | [**get_stats_last_second**](docs/RealtimeApi.md#get_stats_last_second) | Get real-time data from specified time
[*Fastly::RequestSettingsApi*](docs/RequestSettingsApi.md) | [**delete_request_settings**](docs/RequestSettingsApi.md#delete_request_settings) | Delete a Request Settings object
[*Fastly::RequestSettingsApi*](docs/RequestSettingsApi.md) | [**get_request_settings**](docs/RequestSettingsApi.md#get_request_settings) | Get a Request Settings object
[*Fastly::RequestSettingsApi*](docs/RequestSettingsApi.md) | [**list_request_settings**](docs/RequestSettingsApi.md#list_request_settings) | List Request Settings objects
[*Fastly::RequestSettingsApi*](docs/RequestSettingsApi.md) | [**update_request_settings**](docs/RequestSettingsApi.md#update_request_settings) | Update a Request Settings object
[*Fastly::ResourceApi*](docs/ResourceApi.md) | [**create_resource**](docs/ResourceApi.md#create_resource) | Create a resource
[*Fastly::ResourceApi*](docs/ResourceApi.md) | [**delete_resource**](docs/ResourceApi.md#delete_resource) | Delete a resource
[*Fastly::ResourceApi*](docs/ResourceApi.md) | [**get_resource**](docs/ResourceApi.md#get_resource) | Display a resource
[*Fastly::ResourceApi*](docs/ResourceApi.md) | [**list_resources**](docs/ResourceApi.md#list_resources) | List resources
[*Fastly::ResourceApi*](docs/ResourceApi.md) | [**update_resource**](docs/ResourceApi.md#update_resource) | Update a resource
[*Fastly::ResponseObjectApi*](docs/ResponseObjectApi.md) | [**delete_response_object**](docs/ResponseObjectApi.md#delete_response_object) | Delete a Response Object
[*Fastly::ResponseObjectApi*](docs/ResponseObjectApi.md) | [**get_response_object**](docs/ResponseObjectApi.md#get_response_object) | Get a Response object
[*Fastly::ResponseObjectApi*](docs/ResponseObjectApi.md) | [**list_response_objects**](docs/ResponseObjectApi.md#list_response_objects) | List Response objects
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
[*Fastly::ServiceAuthorizationsApi*](docs/ServiceAuthorizationsApi.md) | [**list_service_authorization**](docs/ServiceAuthorizationsApi.md#list_service_authorization) | List service authorizations
[*Fastly::ServiceAuthorizationsApi*](docs/ServiceAuthorizationsApi.md) | [**show_service_authorization**](docs/ServiceAuthorizationsApi.md#show_service_authorization) | Show service authorization
[*Fastly::ServiceAuthorizationsApi*](docs/ServiceAuthorizationsApi.md) | [**update_service_authorization**](docs/ServiceAuthorizationsApi.md#update_service_authorization) | Update service authorization
[*Fastly::SettingsApi*](docs/SettingsApi.md) | [**get_service_settings**](docs/SettingsApi.md#get_service_settings) | Get service settings
[*Fastly::SnippetApi*](docs/SnippetApi.md) | [**create_snippet**](docs/SnippetApi.md#create_snippet) | Create a snippet
[*Fastly::SnippetApi*](docs/SnippetApi.md) | [**delete_snippet**](docs/SnippetApi.md#delete_snippet) | Delete a snippet
[*Fastly::SnippetApi*](docs/SnippetApi.md) | [**get_snippet**](docs/SnippetApi.md#get_snippet) | Get a versioned snippet
[*Fastly::SnippetApi*](docs/SnippetApi.md) | [**get_snippet_dynamic**](docs/SnippetApi.md#get_snippet_dynamic) | Get a dynamic snippet
[*Fastly::SnippetApi*](docs/SnippetApi.md) | [**list_snippets**](docs/SnippetApi.md#list_snippets) | List snippets
[*Fastly::SnippetApi*](docs/SnippetApi.md) | [**update_snippet_dynamic**](docs/SnippetApi.md#update_snippet_dynamic) | Update a dynamic snippet
[*Fastly::StarApi*](docs/StarApi.md) | [**create_service_star**](docs/StarApi.md#create_service_star) | Create a star
[*Fastly::StarApi*](docs/StarApi.md) | [**delete_service_star**](docs/StarApi.md#delete_service_star) | Delete a star
[*Fastly::StarApi*](docs/StarApi.md) | [**get_service_star**](docs/StarApi.md#get_service_star) | Get a star
[*Fastly::StarApi*](docs/StarApi.md) | [**list_service_stars**](docs/StarApi.md#list_service_stars) | List stars
[*Fastly::StatsApi*](docs/StatsApi.md) | [**get_service_stats**](docs/StatsApi.md#get_service_stats) | Get stats for a service
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
[*Fastly::TlsCertificatesApi*](docs/TlsCertificatesApi.md) | [**list_tls_certs**](docs/TlsCertificatesApi.md#list_tls_certs) | List TLS certificates
[*Fastly::TlsCertificatesApi*](docs/TlsCertificatesApi.md) | [**update_tls_cert**](docs/TlsCertificatesApi.md#update_tls_cert) | Update a TLS certificate
[*Fastly::TlsConfigurationsApi*](docs/TlsConfigurationsApi.md) | [**get_tls_config**](docs/TlsConfigurationsApi.md#get_tls_config) | Get a TLS configuration
[*Fastly::TlsConfigurationsApi*](docs/TlsConfigurationsApi.md) | [**list_tls_configs**](docs/TlsConfigurationsApi.md#list_tls_configs) | List TLS configurations
[*Fastly::TlsConfigurationsApi*](docs/TlsConfigurationsApi.md) | [**update_tls_config**](docs/TlsConfigurationsApi.md#update_tls_config) | Update a TLS configuration
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
[*Fastly::VclApi*](docs/VclApi.md) | [**list_custom_vcl**](docs/VclApi.md#list_custom_vcl) | List custom VCL files
[*Fastly::VclApi*](docs/VclApi.md) | [**set_custom_vcl_main**](docs/VclApi.md#set_custom_vcl_main) | Set a custom VCL file as main
[*Fastly::VclApi*](docs/VclApi.md) | [**update_custom_vcl**](docs/VclApi.md#update_custom_vcl) | Update a custom VCL file
[*Fastly::VclDiffApi*](docs/VclDiffApi.md) | [**vcl_diff_service_versions**](docs/VclDiffApi.md#vcl_diff_service_versions) | Get a comparison of the VCL changes between two service versions
[*Fastly::VersionApi*](docs/VersionApi.md) | [**activate_service_version**](docs/VersionApi.md#activate_service_version) | Activate a service version
[*Fastly::VersionApi*](docs/VersionApi.md) | [**clone_service_version**](docs/VersionApi.md#clone_service_version) | Clone a service version
[*Fastly::VersionApi*](docs/VersionApi.md) | [**create_service_version**](docs/VersionApi.md#create_service_version) | Create a service version
[*Fastly::VersionApi*](docs/VersionApi.md) | [**deactivate_service_version**](docs/VersionApi.md#deactivate_service_version) | Deactivate a service version
[*Fastly::VersionApi*](docs/VersionApi.md) | [**get_service_version**](docs/VersionApi.md#get_service_version) | Get a version of a service
[*Fastly::VersionApi*](docs/VersionApi.md) | [**list_service_versions**](docs/VersionApi.md#list_service_versions) | List versions of a service
[*Fastly::VersionApi*](docs/VersionApi.md) | [**lock_service_version**](docs/VersionApi.md#lock_service_version) | Lock a service version
[*Fastly::VersionApi*](docs/VersionApi.md) | [**update_service_version**](docs/VersionApi.md#update_service_version) | Update a service version
[*Fastly::VersionApi*](docs/VersionApi.md) | [**validate_service_version**](docs/VersionApi.md#validate_service_version) | Validate a service version
[*Fastly::WafActiveRulesApi*](docs/WafActiveRulesApi.md) | [**bulk_update_waf_active_rules**](docs/WafActiveRulesApi.md#bulk_update_waf_active_rules) | Update multiple active rules
[*Fastly::WafActiveRulesApi*](docs/WafActiveRulesApi.md) | [**create_waf_active_rule**](docs/WafActiveRulesApi.md#create_waf_active_rule) | Add a rule to a WAF as an active rule
[*Fastly::WafActiveRulesApi*](docs/WafActiveRulesApi.md) | [**create_waf_active_rules_tag**](docs/WafActiveRulesApi.md#create_waf_active_rules_tag) | Create active rules by tag
[*Fastly::WafActiveRulesApi*](docs/WafActiveRulesApi.md) | [**delete_waf_active_rule**](docs/WafActiveRulesApi.md#delete_waf_active_rule) | Delete an active rule
[*Fastly::WafActiveRulesApi*](docs/WafActiveRulesApi.md) | [**get_waf_active_rule**](docs/WafActiveRulesApi.md#get_waf_active_rule) | Get an active WAF rule object
[*Fastly::WafActiveRulesApi*](docs/WafActiveRulesApi.md) | [**list_waf_active_rules**](docs/WafActiveRulesApi.md#list_waf_active_rules) | List active rules on a WAF
[*Fastly::WafActiveRulesApi*](docs/WafActiveRulesApi.md) | [**update_waf_active_rule**](docs/WafActiveRulesApi.md#update_waf_active_rule) | Update an active rule
[*Fastly::WafExclusionsApi*](docs/WafExclusionsApi.md) | [**create_waf_rule_exclusion**](docs/WafExclusionsApi.md#create_waf_rule_exclusion) | Create a WAF rule exclusion
[*Fastly::WafExclusionsApi*](docs/WafExclusionsApi.md) | [**delete_waf_rule_exclusion**](docs/WafExclusionsApi.md#delete_waf_rule_exclusion) | Delete a WAF rule exclusion
[*Fastly::WafExclusionsApi*](docs/WafExclusionsApi.md) | [**get_waf_rule_exclusion**](docs/WafExclusionsApi.md#get_waf_rule_exclusion) | Get a WAF rule exclusion
[*Fastly::WafExclusionsApi*](docs/WafExclusionsApi.md) | [**list_waf_rule_exclusions**](docs/WafExclusionsApi.md#list_waf_rule_exclusions) | List WAF rule exclusions
[*Fastly::WafExclusionsApi*](docs/WafExclusionsApi.md) | [**update_waf_rule_exclusion**](docs/WafExclusionsApi.md#update_waf_rule_exclusion) | Update a WAF rule exclusion
[*Fastly::WafFirewallVersionsApi*](docs/WafFirewallVersionsApi.md) | [**clone_waf_firewall_version**](docs/WafFirewallVersionsApi.md#clone_waf_firewall_version) | Clone a firewall version
[*Fastly::WafFirewallVersionsApi*](docs/WafFirewallVersionsApi.md) | [**create_waf_firewall_version**](docs/WafFirewallVersionsApi.md#create_waf_firewall_version) | Create a firewall version
[*Fastly::WafFirewallVersionsApi*](docs/WafFirewallVersionsApi.md) | [**deploy_activate_waf_firewall_version**](docs/WafFirewallVersionsApi.md#deploy_activate_waf_firewall_version) | Deploy or activate a firewall version
[*Fastly::WafFirewallVersionsApi*](docs/WafFirewallVersionsApi.md) | [**get_waf_firewall_version**](docs/WafFirewallVersionsApi.md#get_waf_firewall_version) | Get a firewall version
[*Fastly::WafFirewallVersionsApi*](docs/WafFirewallVersionsApi.md) | [**list_waf_firewall_versions**](docs/WafFirewallVersionsApi.md#list_waf_firewall_versions) | List firewall versions
[*Fastly::WafFirewallVersionsApi*](docs/WafFirewallVersionsApi.md) | [**update_waf_firewall_version**](docs/WafFirewallVersionsApi.md#update_waf_firewall_version) | Update a firewall version
[*Fastly::WafFirewallsApi*](docs/WafFirewallsApi.md) | [**create_waf_firewall**](docs/WafFirewallsApi.md#create_waf_firewall) | Create a firewall
[*Fastly::WafFirewallsApi*](docs/WafFirewallsApi.md) | [**delete_waf_firewall**](docs/WafFirewallsApi.md#delete_waf_firewall) | Delete a firewall
[*Fastly::WafFirewallsApi*](docs/WafFirewallsApi.md) | [**get_waf_firewall**](docs/WafFirewallsApi.md#get_waf_firewall) | Get a firewall
[*Fastly::WafFirewallsApi*](docs/WafFirewallsApi.md) | [**list_waf_firewalls**](docs/WafFirewallsApi.md#list_waf_firewalls) | List firewalls
[*Fastly::WafFirewallsApi*](docs/WafFirewallsApi.md) | [**update_waf_firewall**](docs/WafFirewallsApi.md#update_waf_firewall) | Update a firewall
[*Fastly::WafRuleRevisionsApi*](docs/WafRuleRevisionsApi.md) | [**get_waf_rule_revision**](docs/WafRuleRevisionsApi.md#get_waf_rule_revision) | Get a revision of a rule
[*Fastly::WafRuleRevisionsApi*](docs/WafRuleRevisionsApi.md) | [**list_waf_rule_revisions**](docs/WafRuleRevisionsApi.md#list_waf_rule_revisions) | List revisions for a rule
[*Fastly::WafRulesApi*](docs/WafRulesApi.md) | [**get_waf_rule**](docs/WafRulesApi.md#get_waf_rule) | Get a rule
[*Fastly::WafRulesApi*](docs/WafRulesApi.md) | [**list_waf_rules**](docs/WafRulesApi.md#list_waf_rules) | List available WAF rules
[*Fastly::WafTagsApi*](docs/WafTagsApi.md) | [**list_waf_tags**](docs/WafTagsApi.md#list_waf_tags) | List tags


## Issues

If you encounter any non-security-related bug or unexpected behavior, please [file an issue][bug]
using the bug report template.

[bug]: https://github.com/fastly/fastly-ruby/issues/new?labels=bug

### Security issues

Please see our [SECURITY.md](./SECURITY.md) for guidance on reporting security-related issues.

## License

[MIT](./LICENSE).
