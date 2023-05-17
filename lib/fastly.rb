=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

# Common files
require 'fastly/api_client'
require 'fastly/api_error'
require 'fastly/version'
require 'fastly/configuration'

# Models
require 'fastly/models/acl'
require 'fastly/models/acl_entry'
require 'fastly/models/acl_entry_response'
require 'fastly/models/acl_entry_response_all_of'
require 'fastly/models/acl_response'
require 'fastly/models/acl_response_all_of'
require 'fastly/models/apex_redirect'
require 'fastly/models/apex_redirect_all_of'
require 'fastly/models/automation_token'
require 'fastly/models/automation_token_create_request'
require 'fastly/models/automation_token_create_request_attributes'
require 'fastly/models/automation_token_create_response'
require 'fastly/models/automation_token_create_response_all_of'
require 'fastly/models/automation_token_response'
require 'fastly/models/automation_token_response_all_of'
require 'fastly/models/aws_region'
require 'fastly/models/backend'
require 'fastly/models/backend_response'
require 'fastly/models/backend_response_all_of'
require 'fastly/models/billing'
require 'fastly/models/billing_address_attributes'
require 'fastly/models/billing_address_request'
require 'fastly/models/billing_address_request_data'
require 'fastly/models/billing_address_response'
require 'fastly/models/billing_address_response_data'
require 'fastly/models/billing_address_verification_error_response'
require 'fastly/models/billing_address_verification_error_response_errors'
require 'fastly/models/billing_estimate_response'
require 'fastly/models/billing_estimate_response_all_of'
require 'fastly/models/billing_estimate_response_all_of_line'
require 'fastly/models/billing_estimate_response_all_of_lines'
require 'fastly/models/billing_response'
require 'fastly/models/billing_response_all_of'
require 'fastly/models/billing_response_line_item'
require 'fastly/models/billing_response_line_item_all_of'
require 'fastly/models/billing_status'
require 'fastly/models/billing_total'
require 'fastly/models/billing_total_extras'
require 'fastly/models/bulk_update_acl_entries_request'
require 'fastly/models/bulk_update_acl_entry'
require 'fastly/models/bulk_update_acl_entry_all_of'
require 'fastly/models/bulk_update_config_store_item'
require 'fastly/models/bulk_update_config_store_item_all_of'
require 'fastly/models/bulk_update_config_store_list_request'
require 'fastly/models/bulk_update_dictionary_item'
require 'fastly/models/bulk_update_dictionary_list_request'
require 'fastly/models/bulk_waf_active_rules'
require 'fastly/models/cache_setting'
require 'fastly/models/cache_setting_response'
require 'fastly/models/condition'
require 'fastly/models/condition_response'
require 'fastly/models/config_store'
require 'fastly/models/config_store_info_response'
require 'fastly/models/config_store_item'
require 'fastly/models/config_store_item_response'
require 'fastly/models/config_store_item_response_all_of'
require 'fastly/models/config_store_response'
require 'fastly/models/config_store_response_all_of'
require 'fastly/models/contact'
require 'fastly/models/contact_response'
require 'fastly/models/contact_response_all_of'
require 'fastly/models/content'
require 'fastly/models/customer'
require 'fastly/models/customer_response'
require 'fastly/models/customer_response_all_of'
require 'fastly/models/dictionary'
require 'fastly/models/dictionary_info_response'
require 'fastly/models/dictionary_item'
require 'fastly/models/dictionary_item_response'
require 'fastly/models/dictionary_item_response_all_of'
require 'fastly/models/dictionary_response'
require 'fastly/models/dictionary_response_all_of'
require 'fastly/models/diff_response'
require 'fastly/models/director'
require 'fastly/models/director_backend'
require 'fastly/models/director_backend_all_of'
require 'fastly/models/director_response'
require 'fastly/models/domain'
require 'fastly/models/domain_check_item'
require 'fastly/models/domain_response'
require 'fastly/models/enabled_product_response'
require 'fastly/models/enabled_product_response_links'
require 'fastly/models/enabled_product_response_product'
require 'fastly/models/enabled_product_response_service'
require 'fastly/models/event'
require 'fastly/models/event_attributes'
require 'fastly/models/event_response'
require 'fastly/models/events_response'
require 'fastly/models/events_response_all_of'
require 'fastly/models/generic_token_error'
require 'fastly/models/gzip'
require 'fastly/models/gzip_response'
require 'fastly/models/header'
require 'fastly/models/header_response'
require 'fastly/models/healthcheck'
require 'fastly/models/healthcheck_response'
require 'fastly/models/historical'
require 'fastly/models/historical_aggregate_response'
require 'fastly/models/historical_aggregate_response_all_of'
require 'fastly/models/historical_field_aggregate_response'
require 'fastly/models/historical_field_aggregate_response_all_of'
require 'fastly/models/historical_field_response'
require 'fastly/models/historical_field_response_all_of'
require 'fastly/models/historical_meta'
require 'fastly/models/historical_regions_response'
require 'fastly/models/historical_regions_response_all_of'
require 'fastly/models/historical_response'
require 'fastly/models/historical_response_all_of'
require 'fastly/models/historical_usage_aggregate_response'
require 'fastly/models/historical_usage_month_response'
require 'fastly/models/historical_usage_month_response_all_of'
require 'fastly/models/historical_usage_month_response_all_of_data'
require 'fastly/models/historical_usage_results'
require 'fastly/models/historical_usage_service_response'
require 'fastly/models/historical_usage_service_response_all_of'
require 'fastly/models/http3'
require 'fastly/models/http3_all_of'
require 'fastly/models/http_response_format'
require 'fastly/models/http_stream_format'
require 'fastly/models/iam_permission'
require 'fastly/models/iam_role'
require 'fastly/models/iam_role_all_of'
require 'fastly/models/iam_service_group'
require 'fastly/models/iam_service_group_all_of'
require 'fastly/models/iam_user_group'
require 'fastly/models/iam_user_group_all_of'
require 'fastly/models/included_with_waf_active_rule_item'
require 'fastly/models/included_with_waf_exclusion_item'
require 'fastly/models/included_with_waf_firewall_version_item'
require 'fastly/models/included_with_waf_rule_item'
require 'fastly/models/inline_object'
require 'fastly/models/inline_object1'
require 'fastly/models/inline_response200'
require 'fastly/models/inline_response2001'
require 'fastly/models/inline_response2002'
require 'fastly/models/inline_response2003'
require 'fastly/models/inline_response2003_meta'
require 'fastly/models/inline_response2004'
require 'fastly/models/inline_response2004_meta'
require 'fastly/models/invitation'
require 'fastly/models/invitation_data'
require 'fastly/models/invitation_data_attributes'
require 'fastly/models/invitation_response'
require 'fastly/models/invitation_response_all_of'
require 'fastly/models/invitation_response_data'
require 'fastly/models/invitation_response_data_all_of'
require 'fastly/models/invitations_response'
require 'fastly/models/invitations_response_all_of'
require 'fastly/models/logging_address_and_port'
require 'fastly/models/logging_azureblob'
require 'fastly/models/logging_azureblob_all_of'
require 'fastly/models/logging_azureblob_response'
require 'fastly/models/logging_bigquery'
require 'fastly/models/logging_bigquery_all_of'
require 'fastly/models/logging_bigquery_response'
require 'fastly/models/logging_cloudfiles'
require 'fastly/models/logging_cloudfiles_all_of'
require 'fastly/models/logging_cloudfiles_response'
require 'fastly/models/logging_common'
require 'fastly/models/logging_datadog'
require 'fastly/models/logging_datadog_all_of'
require 'fastly/models/logging_datadog_response'
require 'fastly/models/logging_digitalocean'
require 'fastly/models/logging_digitalocean_all_of'
require 'fastly/models/logging_digitalocean_response'
require 'fastly/models/logging_elasticsearch'
require 'fastly/models/logging_elasticsearch_all_of'
require 'fastly/models/logging_elasticsearch_response'
require 'fastly/models/logging_format_version'
require 'fastly/models/logging_ftp'
require 'fastly/models/logging_ftp_all_of'
require 'fastly/models/logging_ftp_response'
require 'fastly/models/logging_gcs'
require 'fastly/models/logging_gcs_all_of'
require 'fastly/models/logging_gcs_common'
require 'fastly/models/logging_gcs_response'
require 'fastly/models/logging_generic_common'
require 'fastly/models/logging_google_pubsub'
require 'fastly/models/logging_google_pubsub_all_of'
require 'fastly/models/logging_google_pubsub_response'
require 'fastly/models/logging_heroku'
require 'fastly/models/logging_heroku_all_of'
require 'fastly/models/logging_heroku_response'
require 'fastly/models/logging_honeycomb'
require 'fastly/models/logging_honeycomb_all_of'
require 'fastly/models/logging_honeycomb_response'
require 'fastly/models/logging_https'
require 'fastly/models/logging_https_all_of'
require 'fastly/models/logging_https_response'
require 'fastly/models/logging_kafka'
require 'fastly/models/logging_kafka_all_of'
require 'fastly/models/logging_kafka_response'
require 'fastly/models/logging_kinesis'
require 'fastly/models/logging_kinesis_response'
require 'fastly/models/logging_logentries'
require 'fastly/models/logging_logentries_all_of'
require 'fastly/models/logging_logentries_response'
require 'fastly/models/logging_loggly'
require 'fastly/models/logging_loggly_all_of'
require 'fastly/models/logging_loggly_response'
require 'fastly/models/logging_logshuttle'
require 'fastly/models/logging_logshuttle_all_of'
require 'fastly/models/logging_logshuttle_response'
require 'fastly/models/logging_message_type'
require 'fastly/models/logging_newrelic'
require 'fastly/models/logging_newrelic_all_of'
require 'fastly/models/logging_newrelic_response'
require 'fastly/models/logging_openstack'
require 'fastly/models/logging_openstack_all_of'
require 'fastly/models/logging_openstack_response'
require 'fastly/models/logging_papertrail'
require 'fastly/models/logging_papertrail_response'
require 'fastly/models/logging_placement'
require 'fastly/models/logging_request_caps_common'
require 'fastly/models/logging_s3'
require 'fastly/models/logging_s3_all_of'
require 'fastly/models/logging_s3_response'
require 'fastly/models/logging_scalyr'
require 'fastly/models/logging_scalyr_all_of'
require 'fastly/models/logging_scalyr_response'
require 'fastly/models/logging_sftp'
require 'fastly/models/logging_sftp_all_of'
require 'fastly/models/logging_sftp_response'
require 'fastly/models/logging_splunk'
require 'fastly/models/logging_splunk_all_of'
require 'fastly/models/logging_splunk_response'
require 'fastly/models/logging_sumologic'
require 'fastly/models/logging_sumologic_all_of'
require 'fastly/models/logging_sumologic_response'
require 'fastly/models/logging_syslog'
require 'fastly/models/logging_syslog_all_of'
require 'fastly/models/logging_syslog_response'
require 'fastly/models/logging_tls_common'
require 'fastly/models/logging_use_tls'
require 'fastly/models/mutual_authentication'
require 'fastly/models/mutual_authentication_data'
require 'fastly/models/mutual_authentication_data_attributes'
require 'fastly/models/mutual_authentication_response'
require 'fastly/models/mutual_authentication_response_attributes'
require 'fastly/models/mutual_authentication_response_attributes_all_of'
require 'fastly/models/mutual_authentication_response_data'
require 'fastly/models/mutual_authentication_response_data_all_of'
require 'fastly/models/mutual_authentications_response'
require 'fastly/models/mutual_authentications_response_all_of'
require 'fastly/models/package'
require 'fastly/models/package_metadata'
require 'fastly/models/package_response'
require 'fastly/models/package_response_all_of'
require 'fastly/models/pagination'
require 'fastly/models/pagination_links'
require 'fastly/models/pagination_meta'
require 'fastly/models/permission'
require 'fastly/models/pool'
require 'fastly/models/pool_all_of'
require 'fastly/models/pool_response'
require 'fastly/models/pool_response_all_of'
require 'fastly/models/pop'
require 'fastly/models/pop_coordinates'
require 'fastly/models/public_ip_list'
require 'fastly/models/publish_item'
require 'fastly/models/publish_item_formats'
require 'fastly/models/publish_request'
require 'fastly/models/purge_keys'
require 'fastly/models/purge_response'
require 'fastly/models/rate_limiter'
require 'fastly/models/rate_limiter_response'
require 'fastly/models/rate_limiter_response1'
require 'fastly/models/rate_limiter_response_all_of'
require 'fastly/models/realtime'
require 'fastly/models/realtime_entry'
require 'fastly/models/realtime_measurements'
require 'fastly/models/relationship_common_name'
require 'fastly/models/relationship_customer'
require 'fastly/models/relationship_customer_customer'
require 'fastly/models/relationship_member_customer'
require 'fastly/models/relationship_member_mutual_authentication'
require 'fastly/models/relationship_member_service'
require 'fastly/models/relationship_member_service_invitation'
require 'fastly/models/relationship_member_tls_activation'
require 'fastly/models/relationship_member_tls_bulk_certificate'
require 'fastly/models/relationship_member_tls_certificate'
require 'fastly/models/relationship_member_tls_configuration'
require 'fastly/models/relationship_member_tls_dns_record'
require 'fastly/models/relationship_member_tls_domain'
require 'fastly/models/relationship_member_tls_private_key'
require 'fastly/models/relationship_member_tls_subscription'
require 'fastly/models/relationship_member_waf_active_rule'
require 'fastly/models/relationship_member_waf_firewall'
require 'fastly/models/relationship_member_waf_firewall_version'
require 'fastly/models/relationship_member_waf_rule'
require 'fastly/models/relationship_member_waf_rule_revision'
require 'fastly/models/relationship_member_waf_tag'
require 'fastly/models/relationship_mutual_authentication'
require 'fastly/models/relationship_mutual_authentication_mutual_authentication'
require 'fastly/models/relationship_mutual_authentications'
require 'fastly/models/relationship_mutual_authentications_mutual_authentications'
require 'fastly/models/relationship_service'
require 'fastly/models/relationship_service_invitations'
require 'fastly/models/relationship_service_invitations_create'
require 'fastly/models/relationship_service_invitations_create_service_invitations'
require 'fastly/models/relationship_service_invitations_service_invitations'
require 'fastly/models/relationship_services'
require 'fastly/models/relationship_services_services'
require 'fastly/models/relationship_tls_activation'
require 'fastly/models/relationship_tls_activation_tls_activation'
require 'fastly/models/relationship_tls_activations'
require 'fastly/models/relationship_tls_bulk_certificate'
require 'fastly/models/relationship_tls_bulk_certificate_tls_bulk_certificate'
require 'fastly/models/relationship_tls_bulk_certificates'
require 'fastly/models/relationship_tls_certificate'
require 'fastly/models/relationship_tls_certificate_tls_certificate'
require 'fastly/models/relationship_tls_certificates'
require 'fastly/models/relationship_tls_certificates_tls_certificates'
require 'fastly/models/relationship_tls_configuration'
require 'fastly/models/relationship_tls_configuration_tls_configuration'
require 'fastly/models/relationship_tls_configurations'
require 'fastly/models/relationship_tls_configurations_tls_configurations'
require 'fastly/models/relationship_tls_dns_record'
require 'fastly/models/relationship_tls_dns_record_dns_record'
require 'fastly/models/relationship_tls_dns_records'
require 'fastly/models/relationship_tls_domain'
require 'fastly/models/relationship_tls_domain_tls_domain'
require 'fastly/models/relationship_tls_domains'
require 'fastly/models/relationship_tls_domains_tls_domains'
require 'fastly/models/relationship_tls_private_key'
require 'fastly/models/relationship_tls_private_key_tls_private_key'
require 'fastly/models/relationship_tls_private_keys'
require 'fastly/models/relationship_tls_private_keys_tls_private_keys'
require 'fastly/models/relationship_tls_subscription'
require 'fastly/models/relationship_tls_subscription_tls_subscription'
require 'fastly/models/relationship_tls_subscriptions'
require 'fastly/models/relationship_user'
require 'fastly/models/relationship_user_user'
require 'fastly/models/relationship_waf_active_rules'
require 'fastly/models/relationship_waf_active_rules_waf_active_rules'
require 'fastly/models/relationship_waf_firewall'
require 'fastly/models/relationship_waf_firewall_version'
require 'fastly/models/relationship_waf_firewall_version_waf_firewall_version'
require 'fastly/models/relationship_waf_firewall_versions'
require 'fastly/models/relationship_waf_firewall_waf_firewall'
require 'fastly/models/relationship_waf_rule'
require 'fastly/models/relationship_waf_rule_revision'
require 'fastly/models/relationship_waf_rule_revision_waf_rule_revisions'
require 'fastly/models/relationship_waf_rule_revisions'
require 'fastly/models/relationship_waf_rule_waf_rule'
require 'fastly/models/relationship_waf_rules'
require 'fastly/models/relationship_waf_tags'
require 'fastly/models/relationship_waf_tags_waf_tags'
require 'fastly/models/relationships_for_invitation'
require 'fastly/models/relationships_for_mutual_authentication'
require 'fastly/models/relationships_for_star'
require 'fastly/models/relationships_for_tls_activation'
require 'fastly/models/relationships_for_tls_bulk_certificate'
require 'fastly/models/relationships_for_tls_configuration'
require 'fastly/models/relationships_for_tls_domain'
require 'fastly/models/relationships_for_tls_private_key'
require 'fastly/models/relationships_for_tls_subscription'
require 'fastly/models/relationships_for_waf_active_rule'
require 'fastly/models/relationships_for_waf_exclusion'
require 'fastly/models/relationships_for_waf_firewall_version'
require 'fastly/models/relationships_for_waf_rule'
require 'fastly/models/request_settings'
require 'fastly/models/request_settings_response'
require 'fastly/models/resource'
require 'fastly/models/resource_response'
require 'fastly/models/resource_response_all_of'
require 'fastly/models/response_object'
require 'fastly/models/response_object_response'
require 'fastly/models/results'
require 'fastly/models/role_user'
require 'fastly/models/schemas_contact_response'
require 'fastly/models/schemas_snippet_response'
require 'fastly/models/schemas_user_response'
require 'fastly/models/schemas_vcl_response'
require 'fastly/models/schemas_version'
require 'fastly/models/schemas_version_response'
require 'fastly/models/schemas_waf_firewall_version'
require 'fastly/models/schemas_waf_firewall_version_data'
require 'fastly/models/server'
require 'fastly/models/server_response'
require 'fastly/models/server_response_all_of'
require 'fastly/models/service'
require 'fastly/models/service_authorization'
require 'fastly/models/service_authorization_data'
require 'fastly/models/service_authorization_data_attributes'
require 'fastly/models/service_authorization_data_relationships'
require 'fastly/models/service_authorization_data_relationships_user'
require 'fastly/models/service_authorization_data_relationships_user_data'
require 'fastly/models/service_authorization_response'
require 'fastly/models/service_authorization_response_data'
require 'fastly/models/service_authorization_response_data_all_of'
require 'fastly/models/service_authorizations_response'
require 'fastly/models/service_authorizations_response_all_of'
require 'fastly/models/service_create'
require 'fastly/models/service_create_all_of'
require 'fastly/models/service_detail'
require 'fastly/models/service_detail_all_of'
require 'fastly/models/service_id_and_version'
require 'fastly/models/service_invitation'
require 'fastly/models/service_invitation_data'
require 'fastly/models/service_invitation_data_attributes'
require 'fastly/models/service_invitation_data_relationships'
require 'fastly/models/service_invitation_response'
require 'fastly/models/service_invitation_response_all_of'
require 'fastly/models/service_invitation_response_all_of_data'
require 'fastly/models/service_list_response'
require 'fastly/models/service_list_response_all_of'
require 'fastly/models/service_response'
require 'fastly/models/service_response_all_of'
require 'fastly/models/service_version_detail'
require 'fastly/models/service_version_detail_or_null'
require 'fastly/models/settings'
require 'fastly/models/settings_response'
require 'fastly/models/snippet'
require 'fastly/models/snippet_response'
require 'fastly/models/snippet_response_all_of'
require 'fastly/models/star'
require 'fastly/models/star_data'
require 'fastly/models/star_response'
require 'fastly/models/star_response_all_of'
require 'fastly/models/stats'
require 'fastly/models/store'
require 'fastly/models/store_response'
require 'fastly/models/timestamps'
require 'fastly/models/timestamps_no_delete'
require 'fastly/models/tls_activation'
require 'fastly/models/tls_activation_data'
require 'fastly/models/tls_activation_response'
require 'fastly/models/tls_activation_response_data'
require 'fastly/models/tls_activation_response_data_all_of'
require 'fastly/models/tls_activations_response'
require 'fastly/models/tls_activations_response_all_of'
require 'fastly/models/tls_bulk_certificate'
require 'fastly/models/tls_bulk_certificate_data'
require 'fastly/models/tls_bulk_certificate_data_attributes'
require 'fastly/models/tls_bulk_certificate_response'
require 'fastly/models/tls_bulk_certificate_response_attributes'
require 'fastly/models/tls_bulk_certificate_response_attributes_all_of'
require 'fastly/models/tls_bulk_certificate_response_data'
require 'fastly/models/tls_bulk_certificate_response_data_all_of'
require 'fastly/models/tls_bulk_certificates_response'
require 'fastly/models/tls_bulk_certificates_response_all_of'
require 'fastly/models/tls_certificate'
require 'fastly/models/tls_certificate_data'
require 'fastly/models/tls_certificate_data_attributes'
require 'fastly/models/tls_certificate_response'
require 'fastly/models/tls_certificate_response_attributes'
require 'fastly/models/tls_certificate_response_attributes_all_of'
require 'fastly/models/tls_certificate_response_data'
require 'fastly/models/tls_certificate_response_data_all_of'
require 'fastly/models/tls_certificates_response'
require 'fastly/models/tls_certificates_response_all_of'
require 'fastly/models/tls_common'
require 'fastly/models/tls_configuration'
require 'fastly/models/tls_configuration_data'
require 'fastly/models/tls_configuration_data_attributes'
require 'fastly/models/tls_configuration_response'
require 'fastly/models/tls_configuration_response_attributes'
require 'fastly/models/tls_configuration_response_attributes_all_of'
require 'fastly/models/tls_configuration_response_data'
require 'fastly/models/tls_configuration_response_data_all_of'
require 'fastly/models/tls_configurations_response'
require 'fastly/models/tls_configurations_response_all_of'
require 'fastly/models/tls_dns_record'
require 'fastly/models/tls_domain_data'
require 'fastly/models/tls_domains_response'
require 'fastly/models/tls_domains_response_all_of'
require 'fastly/models/tls_private_key'
require 'fastly/models/tls_private_key_data'
require 'fastly/models/tls_private_key_data_attributes'
require 'fastly/models/tls_private_key_response'
require 'fastly/models/tls_private_key_response_attributes'
require 'fastly/models/tls_private_key_response_attributes_all_of'
require 'fastly/models/tls_private_key_response_data'
require 'fastly/models/tls_private_keys_response'
require 'fastly/models/tls_private_keys_response_all_of'
require 'fastly/models/tls_subscription'
require 'fastly/models/tls_subscription_data'
require 'fastly/models/tls_subscription_data_attributes'
require 'fastly/models/tls_subscription_response'
require 'fastly/models/tls_subscription_response_attributes'
require 'fastly/models/tls_subscription_response_attributes_all_of'
require 'fastly/models/tls_subscription_response_data'
require 'fastly/models/tls_subscription_response_data_all_of'
require 'fastly/models/tls_subscriptions_response'
require 'fastly/models/tls_subscriptions_response_all_of'
require 'fastly/models/token'
require 'fastly/models/token_created_response'
require 'fastly/models/token_created_response_all_of'
require 'fastly/models/token_response'
require 'fastly/models/token_response_all_of'
require 'fastly/models/type_billing_address'
require 'fastly/models/type_contact'
require 'fastly/models/type_customer'
require 'fastly/models/type_event'
require 'fastly/models/type_invitation'
require 'fastly/models/type_mutual_authentication'
require 'fastly/models/type_resource'
require 'fastly/models/type_service'
require 'fastly/models/type_service_authorization'
require 'fastly/models/type_service_invitation'
require 'fastly/models/type_star'
require 'fastly/models/type_tls_activation'
require 'fastly/models/type_tls_bulk_certificate'
require 'fastly/models/type_tls_certificate'
require 'fastly/models/type_tls_configuration'
require 'fastly/models/type_tls_dns_record'
require 'fastly/models/type_tls_domain'
require 'fastly/models/type_tls_private_key'
require 'fastly/models/type_tls_subscription'
require 'fastly/models/type_user'
require 'fastly/models/type_waf_active_rule'
require 'fastly/models/type_waf_exclusion'
require 'fastly/models/type_waf_firewall'
require 'fastly/models/type_waf_firewall_version'
require 'fastly/models/type_waf_rule'
require 'fastly/models/type_waf_rule_revision'
require 'fastly/models/type_waf_tag'
require 'fastly/models/update_billing_address_request'
require 'fastly/models/update_billing_address_request_data'
require 'fastly/models/user'
require 'fastly/models/user_response'
require 'fastly/models/user_response_all_of'
require 'fastly/models/validator_result'
require 'fastly/models/validator_result_messages'
require 'fastly/models/vcl'
require 'fastly/models/vcl_diff'
require 'fastly/models/vcl_response'
require 'fastly/models/version'
require 'fastly/models/version_create_response'
require 'fastly/models/version_detail'
require 'fastly/models/version_detail_settings'
require 'fastly/models/version_response'
require 'fastly/models/version_response_all_of'
require 'fastly/models/waf_active_rule'
require 'fastly/models/waf_active_rule_creation_response'
require 'fastly/models/waf_active_rule_data'
require 'fastly/models/waf_active_rule_data_attributes'
require 'fastly/models/waf_active_rule_response'
require 'fastly/models/waf_active_rule_response_data'
require 'fastly/models/waf_active_rule_response_data_all_of'
require 'fastly/models/waf_active_rule_response_data_attributes'
require 'fastly/models/waf_active_rule_response_data_attributes_all_of'
require 'fastly/models/waf_active_rule_response_data_relationships'
require 'fastly/models/waf_active_rules_response'
require 'fastly/models/waf_active_rules_response_all_of'
require 'fastly/models/waf_exclusion'
require 'fastly/models/waf_exclusion_data'
require 'fastly/models/waf_exclusion_data_attributes'
require 'fastly/models/waf_exclusion_response'
require 'fastly/models/waf_exclusion_response_data'
require 'fastly/models/waf_exclusion_response_data_all_of'
require 'fastly/models/waf_exclusion_response_data_attributes'
require 'fastly/models/waf_exclusion_response_data_attributes_all_of'
require 'fastly/models/waf_exclusion_response_data_relationships'
require 'fastly/models/waf_exclusions_response'
require 'fastly/models/waf_exclusions_response_all_of'
require 'fastly/models/waf_firewall'
require 'fastly/models/waf_firewall_data'
require 'fastly/models/waf_firewall_data_attributes'
require 'fastly/models/waf_firewall_response'
require 'fastly/models/waf_firewall_response_data'
require 'fastly/models/waf_firewall_response_data_all_of'
require 'fastly/models/waf_firewall_response_data_attributes'
require 'fastly/models/waf_firewall_response_data_attributes_all_of'
require 'fastly/models/waf_firewall_version'
require 'fastly/models/waf_firewall_version_data'
require 'fastly/models/waf_firewall_version_data_attributes'
require 'fastly/models/waf_firewall_version_response'
require 'fastly/models/waf_firewall_version_response_data'
require 'fastly/models/waf_firewall_version_response_data_all_of'
require 'fastly/models/waf_firewall_version_response_data_attributes'
require 'fastly/models/waf_firewall_version_response_data_attributes_all_of'
require 'fastly/models/waf_firewall_versions_response'
require 'fastly/models/waf_firewall_versions_response_all_of'
require 'fastly/models/waf_firewalls_response'
require 'fastly/models/waf_firewalls_response_all_of'
require 'fastly/models/waf_rule'
require 'fastly/models/waf_rule_attributes'
require 'fastly/models/waf_rule_response'
require 'fastly/models/waf_rule_response_data'
require 'fastly/models/waf_rule_response_data_all_of'
require 'fastly/models/waf_rule_revision'
require 'fastly/models/waf_rule_revision_attributes'
require 'fastly/models/waf_rule_revision_or_latest'
require 'fastly/models/waf_rule_revision_response'
require 'fastly/models/waf_rule_revision_response_data'
require 'fastly/models/waf_rule_revision_response_data_all_of'
require 'fastly/models/waf_rule_revisions_response'
require 'fastly/models/waf_rule_revisions_response_all_of'
require 'fastly/models/waf_rules_response'
require 'fastly/models/waf_rules_response_all_of'
require 'fastly/models/waf_tag'
require 'fastly/models/waf_tag_attributes'
require 'fastly/models/waf_tags_response'
require 'fastly/models/waf_tags_response_all_of'
require 'fastly/models/waf_tags_response_data_item'
require 'fastly/models/ws_message_format'

# APIs
require 'fastly/api/acl_api'
require 'fastly/api/acl_entry_api'
require 'fastly/api/apex_redirect_api'
require 'fastly/api/automation_tokens_api'
require 'fastly/api/backend_api'
require 'fastly/api/billing_api'
require 'fastly/api/billing_address_api'
require 'fastly/api/cache_settings_api'
require 'fastly/api/condition_api'
require 'fastly/api/config_store_api'
require 'fastly/api/config_store_item_api'
require 'fastly/api/contact_api'
require 'fastly/api/customer_api'
require 'fastly/api/dictionary_api'
require 'fastly/api/dictionary_info_api'
require 'fastly/api/dictionary_item_api'
require 'fastly/api/diff_api'
require 'fastly/api/director_api'
require 'fastly/api/director_backend_api'
require 'fastly/api/domain_api'
require 'fastly/api/domain_ownerships_api'
require 'fastly/api/enabled_products_api'
require 'fastly/api/events_api'
require 'fastly/api/gzip_api'
require 'fastly/api/header_api'
require 'fastly/api/healthcheck_api'
require 'fastly/api/historical_api'
require 'fastly/api/http3_api'
require 'fastly/api/iam_permissions_api'
require 'fastly/api/iam_roles_api'
require 'fastly/api/iam_service_groups_api'
require 'fastly/api/iam_user_groups_api'
require 'fastly/api/invitations_api'
require 'fastly/api/kv_store_api'
require 'fastly/api/kv_store_item_api'
require 'fastly/api/logging_azureblob_api'
require 'fastly/api/logging_bigquery_api'
require 'fastly/api/logging_cloudfiles_api'
require 'fastly/api/logging_datadog_api'
require 'fastly/api/logging_digitalocean_api'
require 'fastly/api/logging_elasticsearch_api'
require 'fastly/api/logging_ftp_api'
require 'fastly/api/logging_gcs_api'
require 'fastly/api/logging_heroku_api'
require 'fastly/api/logging_honeycomb_api'
require 'fastly/api/logging_https_api'
require 'fastly/api/logging_kafka_api'
require 'fastly/api/logging_kinesis_api'
require 'fastly/api/logging_logentries_api'
require 'fastly/api/logging_loggly_api'
require 'fastly/api/logging_logshuttle_api'
require 'fastly/api/logging_newrelic_api'
require 'fastly/api/logging_openstack_api'
require 'fastly/api/logging_papertrail_api'
require 'fastly/api/logging_pubsub_api'
require 'fastly/api/logging_s3_api'
require 'fastly/api/logging_scalyr_api'
require 'fastly/api/logging_sftp_api'
require 'fastly/api/logging_splunk_api'
require 'fastly/api/logging_sumologic_api'
require 'fastly/api/logging_syslog_api'
require 'fastly/api/mutual_authentication_api'
require 'fastly/api/package_api'
require 'fastly/api/pool_api'
require 'fastly/api/pop_api'
require 'fastly/api/public_ip_list_api'
require 'fastly/api/publish_api'
require 'fastly/api/purge_api'
require 'fastly/api/rate_limiter_api'
require 'fastly/api/realtime_api'
require 'fastly/api/request_settings_api'
require 'fastly/api/resource_api'
require 'fastly/api/response_object_api'
require 'fastly/api/server_api'
require 'fastly/api/service_api'
require 'fastly/api/service_authorizations_api'
require 'fastly/api/settings_api'
require 'fastly/api/snippet_api'
require 'fastly/api/star_api'
require 'fastly/api/stats_api'
require 'fastly/api/tls_activations_api'
require 'fastly/api/tls_bulk_certificates_api'
require 'fastly/api/tls_certificates_api'
require 'fastly/api/tls_configurations_api'
require 'fastly/api/tls_domains_api'
require 'fastly/api/tls_private_keys_api'
require 'fastly/api/tls_subscriptions_api'
require 'fastly/api/tokens_api'
require 'fastly/api/user_api'
require 'fastly/api/vcl_api'
require 'fastly/api/vcl_diff_api'
require 'fastly/api/version_api'
require 'fastly/api/waf_active_rules_api'
require 'fastly/api/waf_exclusions_api'
require 'fastly/api/waf_firewall_versions_api'
require 'fastly/api/waf_firewalls_api'
require 'fastly/api/waf_rule_revisions_api'
require 'fastly/api/waf_rules_api'
require 'fastly/api/waf_tags_api'

module Fastly
  class << self
    # Customize default settings for the SDK using block.
    #   Fastly.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
