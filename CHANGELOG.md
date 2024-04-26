# Changelog

## [v8.2.0](https://github.com/fastly/fastly-ruby/releases/tag/release/v8.2.0) (2024-04-25)

**Bug fixes:**

- bugfix(billing_address, invitations): Correct customer relationship schema to be single entry rather than array
- bugfix(request_settings): Mark request_settings fields as nullable: bypass_busy_wait, force_miss, geo_headers,
  max_stale_age, timer_support, and xff

**Enhancements:**

- feat(generator): The API Client Generator now uses a new automatic changelog generation process.
- feat(historical, realtime): Add the following new metrics: `ddos_action_downgrade`,
  `ddos_action_downgraded_connections`, `vcl_on_compute_hit_requests`, `vcl_on_compute_miss_requests`,
  `vcl_on_compute_pass_requests`, `vcl_on_compute_error_requests`, `vcl_on_compute_synth_requests`,
  `vcl_on_compute_edge_hit_requests`, `vcl_on_compute_edge_miss_requests`, `all_hit_requests`,
  `all_miss_requests`, `all_pass_requests`, `all_error_requests`, `all_synth_requests`, `all_edge_hit_requests`,
  `all_edge_miss_requests`, `all_status_1xx`, `all_status_2xx`, `all_status_3xx`, `all_status_4xx`, and
  `all_status_5xx`.
- feat(backend): Add `tcp_keepalive_*` properties to the Backend API, which allow configuring TCP keepalives for
  backend connections.

**Documentation:**

- doc(realtime): Correct description of miss_histogram structure in real-time stats.

## [v8.1.0](https://github.com/fastly/fastly-ruby/releases/tag/release/v8.1.0) (2024-02-28)

**Enhancements:**

- feat(billing): add 'get invoice by invoice ID' endpoint.
- feat(billing): add 'list invoices' endpoint.
- feat(image_opto): add 'shield' and 'transform' methods and fields.
- feat(secret_store): add 'name' filter.
- feat(tls): add 'create CSR' endpoint.
- feat(tls_subscription): add 'active order' methods and fields.

**Documentation:**

- doc(backend) fix openssl link.
- doc(director,domain_inspector,pool,realtime) fix POPs link.
- doc(service) fix service version link.
- doc(tls) fix activation link.

## [v8.0.1](https://github.com/fastly/fastly-ruby/releases/tag/release/v8.0.1) (2024-02-19)

**Bug fixes:**

- fix(response_object): strongly type response_object create_update requests
- fix(tls_configurations): fix `tls_protocols` field to be a string array type

## [v8.0.0](https://github.com/fastly/fastly-ruby/releases/tag/release/v8.0.0) (2023-11-29)

**Breaking:**

- breaking(historical): restructure OpenAPI schema to avoid duplicated data rendering.

**Bug fixes:**

- fix: no longer display Markdown syntax in code comments.

**Enhancements:**

- feat(stats): expose new `service_id` and `start_time` fields.

## [v7.2.2](https://github.com/fastly/fastly-ruby/releases/tag/release/v7.2.2) (2023-11-07)

**Enhancements:**

- feat(config_store): add `name` query param to list endpoint.

## [v7.2.1](https://github.com/fastly/fastly-ruby/releases/tag/release/v7.2.1) (2023-10-27)

**Documentation:**

- docs: rename Compute@Edge to Compute.

## [v7.2.0](https://github.com/fastly/fastly-ruby/releases/tag/release/v7.2.0) (2023-10-24)

**Enhancements:**

- feat(stats): add historical DDoS metrics.
- feat(stats): add bot challenges.

**Bug fixes:**

- fix(snippets): ensure POST response's dynamic field is numerical.

## [v7.1.1](https://github.com/fastly/fastly-ruby/releases/tag/release/v7.1.1) (2023-09-01)

**Enhancements:**

- feat(events): support extra created_at filters.

## [v7.1.0](https://github.com/fastly/fastly-ruby/releases/tag/release/v7.1.0) (2023-09-01)

**Enhancements:**

- feat(backend): support share_key field.
- feat(events): support extra created_at filters.
- feat(logging/newrelic): add OTLP endpoints.
- feat(tls/subscriptions): support self_managed_http_challenge field.

**Documentation:**

- doc(secretstore): correct description for GET endpoint.

## [v7.0.0](https://github.com/fastly/fastly-ruby/releases/tag/release/v7.0.0) (2023-07-31)

**Breaking:**

The following restructures have helped resolve some issues with our OpenAPI schemas but as a side-effect this has resulted in a break to our API client interface as different types are now being generated.

- refactor: general restructure OpenAPI schemas.
- refactor(domain): remove explicit schema type for 'any'.

**Bug fixes:**

- fix: change response `version` type to string.
- fix(cache_settings): change response `stale_ttl` and `ttl` types to strings.
- fix(header): change response `ignore_if_set` and `priority` types to strings.
- fix(logging): change response `period` and `gzip_level` types to strings.
- fix(pool): change response `use_tls`, `max_conn_default`, `first_byte_timeout`, `quorum` and `tls_check_cert` types to strings.
- fix(request_settings): change response `bypass_busy_wait`, `force_miss`, `force_ssl`, `geo_headers`, `max_stale_age` and `timer_support` types to strings.
- fix(response_object): change response `status` type to string.

## [v6.0.2](https://github.com/fastly/fastly-ruby/releases/tag/release/v6.0.2) (2023-07-13)

**Bug fixes:**

- fix(logging_gcs): set expected default value for 'path'.
- fix(origin_inspector_historical): use correct type for 'values'.
- fix(tls_subscriptions): fix argument order for deleting globalsign email challenge.

## [v6.0.1](https://github.com/fastly/fastly-ruby/releases/tag/release/v6.0.1) (2023-07-12)

**Bug fixes:**

- fix(billing): rename response field 'lines' to 'line_items'.
- fix(billing): restructure response models like 'aria_invoice_id'.
- fix(billing): make 'sent_at', 'locked', 'require_new_password', 'two_factor_auth_enabled' nullable.

## [v6.0.0](https://github.com/fastly/fastly-ruby/releases/tag/release/v6.0.0) (2023-07-06)

Substantial changes were made to the underlying OpenAPI specification that produces this API client. These changes have resulted in multiple new endpoints being supported as well as multiple breaking type changes and so we're publishing these changes as a new major release.

**Enhancements:**

- feat(acl_entry): support 'create' endpoint.
- feat(acl_entry): support 'delete' endpoint.
- feat(acl_entry): support 'list' endpoint.
- feat(acl_entry): support 'update' endpoint.
- feat(apex_redirect): support all endpoints.
- feat(contact): support 'create' endpoint.
- feat(content): support 'check status' endpoint.
- feat(director): support 'update' endpoint.
- feat(domain_inspector): support all endpoints.
- feat(iam_roles): support 'add permissions' endpoint.
- feat(iam_roles): support 'create role' endpoint.
- feat(iam_roles): support 'delete permissions' endpoint.
- feat(iam_roles): support 'update role' endpoint.
- feat(iam_services): support 'add services' endpoint.
- feat(iam_services): support 'create service group' endpoint.
- feat(iam_services): support 'remove services' endpoint.
- feat(iam_services): support 'update service group' endpoint.
- feat(iam_users): support 'add members' endpoint.
- feat(iam_users): support 'add roles' endpoint.
- feat(iam_users): support 'add service groups' endpoint.
- feat(iam_users): support 'create user group' endpoint.
- feat(iam_users): support 'remove members' endpoint.
- feat(iam_users): support 'remove roles' endpoint.
- feat(iam_users): support 'remove service groups' endpoint.
- feat(iam_users): support 'update user group' endpoint.
- feat(legacy_waf): support all endpoints.
- feat(logging_kafka): support 'update' endpoint.
- feat(logging_kinesis): support 'update' endpoint.
- feat(origin_inspector): support all endpoints.
- feat(request_settings): support 'create' endpoint.
- feat(response_object): support 'create' endpoint.
- feat(response_object): support 'update' endpoint.
- feat(secret_store): support all endpoints.
- feat(service_authorizations): support 'delete' endpoint.
- feat(service_authorizations): support 'update' endpoint.
- feat(snippet): support 'update versioned snippet' endpoint.
- feat(sudo): support 'request sudo access' endpoint.
- feat(tokens): support 'revoke multiple tokens' endpoint.
- feat(tokens): support 'create token' endpoint.
- feat(waf_active_rules): support 'delete' endpoint.

**Bug fixes:**

- fix(acl_entry): generate NEGATED enum.
- fix(content): update request/response types.
- fix(events): update metadata type.
- fix(realtime_entry): update recorded/aggregated type.
- fix(realtime_measurements): update miss_histogram type.

## [v5.3.1](https://github.com/fastly/fastly-ruby/releases/tag/release/v5.3.1) (2023-07-05)

**Bug fixes:**

- fix(snippet): dynamic field switched from int to string.
- fix(vcl): implement correct response models.

## [v5.3.0](https://github.com/fastly/fastly-ruby/releases/tag/release/v5.3.0) (2023-06-27)

**Enhancements:**

- feat(rate_limiter): implement POST/PUT endpoints.

**Bug fixes:**

- fix(automation_tokens): generate explicit error response type.
- fix(historical_stats): extract primitive into custom type.

## [v5.2.2](https://github.com/fastly/fastly-ruby/releases/tag/release/v5.2.2) (2023-06-23)

**Bug fixes:**

- fix(historical_stats): generate missing models.

## [v5.2.1](https://github.com/fastly/fastly-ruby/releases/tag/release/v5.2.1) (2023-06-21)

**Bug fixes:**

- fix(tls_activation): add tls_configuration and tls_domains.
- fix(tls_subscription): add tls_configuration and common name.

## [v5.2.0](https://github.com/fastly/fastly-ruby/releases/tag/release/v5.2.0) (2023-06-20)

**Enhancements:**

- feat(realtime_measurements): add billable request processing time.
- feat(tokens): add support for the 'get token' endpoint.

**Bug fixes:**

- fix(config): add realtime hostname.
- fix(historical_stats): generate field results model.
- fix(kv_store): remove the 'force' property from the 'delete store' endpoint.
- feat(realtime_measurements): rename object store to kv store.

## [v5.1.1](https://github.com/fastly/fastly-ruby/releases/tag/release/v5.1.1) (2023-05-22)

**Bug fixes:**

- fix(acl): change `version` from int to string.
- fix(acl): add missing methods for `service_id` and `service_version` properties.
- fix(backend): make `ssl_check_cert` nullable.
- fix(purge): skip URL escape for `surrogate_key` param.
- fix(snippets): change `priority` and `version` from int to string.
- fix(snippets): add missing methods for `service_id` and `service_version` properties.

## [v5.1.0](https://github.com/fastly/fastly-ruby/releases/tag/release/v5.1.0) (2023-05-17)

**Enhancements:**

- feat(config_store): add Config Store endpoints.

## [v5.0.0](https://github.com/fastly/fastly-ruby/releases/tag/release/v5.0.0) (2023-05-16)

**Breaking changes:**

- breaking(object_store): rename to kv_store

**Enhancements:**

- feat(dictionary_item): add 'bulk' PATCH endpoint.
- feat(package): add `files_hash` metadata property.
- feat(tls_certificates): add `filter[in_use]` parameter.

## [v4.4.0](https://github.com/fastly/fastly-ruby/releases/tag/release/v4.4.0) (2023-04-26)

**Bug fixes:**

- fix(object-store-item): use correct type for key value
- fix(tls-csrs): remove internal endpoint

**Enhancements:**

- feat(object-store): new fields 'location', 'force'
- feat(object-store-item): new fields 'force', 'prefix'

## [v4.3.0](https://github.com/fastly/fastly-ruby/releases/tag/release/v4.3.0) (2023-04-03)

**Bug fixes:**

- fix(purge): avoid CGI escape URL parameter

**Enhancements:**

- feat(domain-ownership): list API endpoint
- feat(object-store): items API endpoints
- feat(realtime): additional DDoS properties

## [v4.2.0](https://github.com/fastly/fastly-ruby/releases/tag/release/v4.2.0) (2023-03-21)

**Bug fixes:**

- fix(purge): switch authentication type to 'token'

**Enhancements:**

- feat(events): implement 'filter_created_at' property
- feat(mutual-authentication): implement 'include' property
- feat(object-store): implement new Object Store API endpoints
- feat(settings): implement Service Settings 'update' endpoint

**Documentation:**

- docs(backend): keepalive_time
- docs(pop): region, shield, latitude, longitude
- docs(product-enablement): brotli_compression
- docs(resource): terminology
- docs(results): fanout properties
- docs(tls/subscriptions): new 'failed' state
- docs(user): 'login' modification note removed

## [v4.0.0](https://github.com/fastly/fastly-ruby/releases/tag/v4.0.0) (2022-12-15)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v3.0.2...v4.0.0)

**Breaking:**

- New interface from code-generated API client [#183](https://github.com/fastly/fastly-ruby/pull/183)
  - [Blog post: Better Fastly API clients with OpenAPI Generator](https://dev.to/fastly/better-fastly-api-clients-with-openapi-generator-3lno)
  - [Documentation](https://github.com/fastly/fastly-ruby#documentation-for-api-endpoints)
  - [Unsupported API endpoints](https://github.com/fastly/fastly-ruby#issues)

## [v3.0.2](https://github.com/fastly/fastly-ruby/tree/v3.0.2) (2021-06-30)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v3.0.1...v3.0.2)

**Merged pull requests:**

- Fix SumoLogic Logging [#180](https://github.com/fastly/fastly-ruby/pull/180) ([integralist](https://github.com/integralist))

## [v3.0.1](https://github.com/fastly/fastly-ruby/tree/v3.0.1) (2021-02-03)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v3.0.0...v3.0.1)

**Merged pull requests:**

- Remove deprecation warning [#174](https://github.com/fastly/fastly-ruby/pull/174) ([conniechu929](https://github.com/conniechu929))

## [v3.0.0](https://github.com/fastly/fastly-ruby/tree/v3.0.0) (2021-02-03)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v2.5.3...v3.0.0)

**Merged pull requests:**

- Removes session authentication [#170](https://github.com/fastly/fastly-ruby/pull/170) ([conniechu929](https://github.com/conniechu929))

## [v2.5.0](https://github.com/fastly/fastly-ruby/tree/v2.5.0) (2020-01-16)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v2.4.0...v2.5.0)

**Merged pull requests:**

- Add tokens.rb [#150](https://github.com/fastly/fastly-ruby/pull/150) ([malachy-mcconnell](https://github.com/malachy-mcconnell))

## [v2.4.0](https://github.com/fastly/fastly-ruby/tree/v2.4.0) (2019-07-29)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v2.3.1...v2.4.0)

**Merged pull requests:**

- \[Backend\] Add override_host attribute for Backend [#146](https://github.com/fastly/fastly-ruby/pull/146) ([werkshy](https://github.com/werkshy))

## [v2.3.1](https://github.com/fastly/fastly-ruby/tree/v2.3.1) (2019-07-25)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v2.3.0...v2.3.1)

**Merged pull requests:**

- Correct stats API path [#147](https://github.com/fastly/fastly-ruby/pull/147) ([thommahoney](https://github.com/thommahoney))

## [v2.3.0](https://github.com/fastly/fastly-ruby/tree/v2.3.0) (2019-04-26)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v2.2.0...v2.3.0)

**Closed issues:**

- Ruby 2.5.0, fastly-1.15.0:  Purge Errors [#130](https://github.com/fastly/fastly-ruby/issues/130)

**Merged pull requests:**

- make concurrent-ruby optional [#145](https://github.com/fastly/fastly-ruby/pull/145) ([thommahoney](https://github.com/thommahoney))
- Use concurrent-ruby to handle thread safety for http client. [#144](https://github.com/fastly/fastly-ruby/pull/144) ([demersus](https://github.com/demersus))
- Fix bug auth [#143](https://github.com/fastly/fastly-ruby/pull/143) ([ichiee](https://github.com/ichiee))
- update ruby versions to latest supported [#142](https://github.com/fastly/fastly-ruby/pull/142) ([thommahoney](https://github.com/thommahoney))

## [v2.2.0](https://github.com/fastly/fastly-ruby/tree/v2.2.0) (2018-12-11)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v2.1.0...v2.2.0)

**Closed issues:**

- purging https url doesn't work [#100](https://github.com/fastly/fastly-ruby/issues/100)

**Merged pull requests:**

- ✨ Add BigQuery logging \[APPENG-2076\] [#138](https://github.com/fastly/fastly-ruby/pull/138) ([jamesarosen](https://github.com/jamesarosen))
- Update Fastly docs url [#136](https://github.com/fastly/fastly-ruby/pull/136) ([crazyshot](https://github.com/crazyshot))
- 🔖 v2.1.0 [#135](https://github.com/fastly/fastly-ruby/pull/135) ([jamesarosen](https://github.com/jamesarosen))

## [v2.1.0](https://github.com/fastly/fastly-ruby/tree/v2.1.0) (2018-06-18)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v2.0.0...v2.1.0)

**Merged pull requests:**

- 👷➕🐛✅ fix tests in CI [#134](https://github.com/fastly/fastly-ruby/pull/134) ([jamesarosen](https://github.com/jamesarosen))
- ✨ add more user relationships to Customer [#133](https://github.com/fastly/fastly-ruby/pull/133) ([jamesarosen](https://github.com/jamesarosen))

## [v2.0.0](https://github.com/fastly/fastly-ruby/tree/v2.0.0) (2018-05-17)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.15.0...v2.0.0)

**Merged pull requests:**

- Update Changelog and version for 2.0.0 [#129](https://github.com/fastly/fastly-ruby/pull/129) ([leklund](https://github.com/leklund))
- Update version and CHANGELOG for Release v1.15.0 [#128](https://github.com/fastly/fastly-ruby/pull/128) ([leklund](https://github.com/leklund))
- Update fastly/invoice for v2 invoice endpoints [#126](https://github.com/fastly/fastly-ruby/pull/126) ([leklund](https://github.com/leklund))

## [v1.15.0](https://github.com/fastly/fastly-ruby/tree/v1.15.0) (2018-04-04)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.14.0...v1.15.0)

**Merged pull requests:**

- Feature - add support for /stats/usage_by_month [#124](https://github.com/fastly/fastly-ruby/pull/124) ([jrbeilke](https://github.com/jrbeilke))
- add changelog for v1.14.0 [#123](https://github.com/fastly/fastly-ruby/pull/123) ([thommahoney](https://github.com/thommahoney))

## [v1.14.0](https://github.com/fastly/fastly-ruby/tree/v1.14.0) (2018-03-23)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.13.2...v1.14.0)

**Merged pull requests:**

- bump to v1.14.0 [#122](https://github.com/fastly/fastly-ruby/pull/122) ([thommahoney](https://github.com/thommahoney))
- Placement in Syslog [#121](https://github.com/fastly/fastly-ruby/pull/121) ([RexBelli](https://github.com/RexBelli))

## [v1.13.2](https://github.com/fastly/fastly-ruby/tree/v1.13.2) (2017-12-18)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.13.1...v1.13.2)

**Merged pull requests:**

- Fix syslog response_condition attribute [#117](https://github.com/fastly/fastly-ruby/pull/117) ([anotherJay](https://github.com/anotherJay))

## [v1.13.1](https://github.com/fastly/fastly-ruby/tree/v1.13.1) (2017-08-08)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.13.0...v1.13.1)

**Merged pull requests:**

- automatically load the sumologic_logging class [#115](https://github.com/fastly/fastly-ruby/pull/115) ([thommahoney](https://github.com/thommahoney))

## [v1.13.0](https://github.com/fastly/fastly-ruby/tree/v1.13.0) (2017-08-07)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.12.0...v1.13.0)

**Merged pull requests:**

- add support for sumologic [#114](https://github.com/fastly/fastly-ruby/pull/114) ([thommahoney](https://github.com/thommahoney))

## [v1.12.0](https://github.com/fastly/fastly-ruby/tree/v1.12.0) (2017-08-03)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.11.0...v1.12.0)

**Merged pull requests:**

- add support for dynamic snippets [#113](https://github.com/fastly/fastly-ruby/pull/113) ([thommahoney](https://github.com/thommahoney))
- Added VCL snippets endpoint [#112](https://github.com/fastly/fastly-ruby/pull/112) ([thomshutt](https://github.com/thomshutt))

## [v1.11.0](https://github.com/fastly/fastly-ruby/tree/v1.11.0) (2017-06-12)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.10.0...v1.11.0)

**Merged pull requests:**

- add GCS Logging object [#111](https://github.com/fastly/fastly-ruby/pull/111) ([thommahoney](https://github.com/thommahoney))

## [v1.10.0](https://github.com/fastly/fastly-ruby/tree/v1.10.0) (2017-03-17)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.9.0...v1.10.0)

**Merged pull requests:**

- Support Papertrail logging endpoints [#110](https://github.com/fastly/fastly-ruby/pull/110) ([werkshy](https://github.com/werkshy))

## [v1.9.0](https://github.com/fastly/fastly-ruby/tree/v1.9.0) (2017-02-03)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.8.0...v1.9.0)

**Closed issues:**

- Missing tag for v1.8.0 [#108](https://github.com/fastly/fastly-ruby/issues/108)

**Merged pull requests:**

- Add `message\_type` support to logging resources [#109](https://github.com/fastly/fastly-ruby/pull/109) ([schisamo](https://github.com/schisamo))

## [v1.8.0](https://github.com/fastly/fastly-ruby/tree/v1.8.0) (2017-01-17)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.7.0...v1.8.0)

**Merged pull requests:**

- Support for HTTP debug logs [#107](https://github.com/fastly/fastly-ruby/pull/107) ([thommahoney](https://github.com/thommahoney))
- use public_suffix version 1.4.6 for ruby 1.9 [#105](https://github.com/fastly/fastly-ruby/pull/105) ([thommahoney](https://github.com/thommahoney))
- Enable HTTP proxy support from environment [#104](https://github.com/fastly/fastly-ruby/pull/104) ([vr](https://github.com/vr))

## [v1.7.0](https://github.com/fastly/fastly-ruby/tree/v1.7.0) (2016-10-24)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.6.1...v1.7.0)

**Merged pull requests:**

- Add ACL and ACL Entry Support [#103](https://github.com/fastly/fastly-ruby/pull/103) ([wrightp](https://github.com/wrightp))
- add https support to purge function [#99](https://github.com/fastly/fastly-ruby/pull/99) ([jgoulah](https://github.com/jgoulah))

## [v1.6.1](https://github.com/fastly/fastly-ruby/tree/v1.6.1) (2016-09-06)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.6.0...v1.6.1)

**Merged pull requests:**

- fix: use Appraisal to fix dependency conflicts [#97](https://github.com/fastly/fastly-ruby/pull/97) ([lanej](https://github.com/lanej))
- Add `format\_version` to S3Logging and Syslog resources [#96](https://github.com/fastly/fastly-ruby/pull/96) ([schisamo](https://github.com/schisamo))

## [v1.6.0](https://github.com/fastly/fastly-ruby/tree/v1.6.0) (2016-07-14)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.5.0...v1.6.0)

**Merged pull requests:**

- Always add api key to requests if provided [#93](https://github.com/fastly/fastly-ruby/pull/93) ([blithe](https://github.com/blithe))
- Fix header regex test [#92](https://github.com/fastly/fastly-ruby/pull/92) ([blithe](https://github.com/blithe))
- Remove Origin model [#91](https://github.com/fastly/fastly-ruby/pull/91) ([blithe](https://github.com/blithe))

## [v1.5.0](https://github.com/fastly/fastly-ruby/tree/v1.5.0) (2016-07-08)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.4.2...v1.5.0)

**Closed issues:**

- Support Edge Dictionaries [#66](https://github.com/fastly/fastly-ruby/issues/66)
- version.locked? method returns incorrect value of true for unlocked version [#47](https://github.com/fastly/fastly-ruby/issues/47)

**Merged pull requests:**

- build for all recent ruby patch-levels [#90](https://github.com/fastly/fastly-ruby/pull/90) ([thommahoney](https://github.com/thommahoney))
- add Fastly::Dictionary#item [#89](https://github.com/fastly/fastly-ruby/pull/89) ([lanej](https://github.com/lanej))
- fix initialize [#88](https://github.com/fastly/fastly-ruby/pull/88) ([lanej](https://github.com/lanej))
- Raised ArgumentError if api_key or user/pass are not passed in.  [#87](https://github.com/fastly/fastly-ruby/pull/87) ([andriantoniades](https://github.com/andriantoniades))
- Add support for dictionary items [#86](https://github.com/fastly/fastly-ruby/pull/86) ([icco](https://github.com/icco))
- Reintroduced :locked so the version.locked? check works [#83](https://github.com/fastly/fastly-ruby/pull/83) ([eddieroger](https://github.com/eddieroger))

## [v1.4.2](https://github.com/fastly/fastly-ruby/tree/v1.4.2) (2016-05-23)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.4.1...v1.4.2)

**Merged pull requests:**

- Version#locked and #active are boolean values [#81](https://github.com/fastly/fastly-ruby/pull/81) ([lanej](https://github.com/lanej))
- Update README [#80](https://github.com/fastly/fastly-ruby/pull/80) ([tijmenb](https://github.com/tijmenb))
- Add Edge Dictionaries [#69](https://github.com/fastly/fastly-ruby/pull/69) ([alexmuller](https://github.com/alexmuller))
- Validate was always returning true [#55](https://github.com/fastly/fastly-ruby/pull/55) ([ljagiello](https://github.com/ljagiello))

## [v1.4.1](https://github.com/fastly/fastly-ruby/tree/v1.4.1) (2016-05-19)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.3.0...v1.4.1)

**Merged pull requests:**

- Fixes string interpolation [#79](https://github.com/fastly/fastly-ruby/pull/79) ([gschorkopf](https://github.com/gschorkopf))
- Add a user agent key/value pair to client headers [#78](https://github.com/fastly/fastly-ruby/pull/78) ([gschorkopf](https://github.com/gschorkopf))
- Soft purge [#62](https://github.com/fastly/fastly-ruby/pull/62) ([simonwistow](https://github.com/simonwistow))

## [v1.3.0](https://github.com/fastly/fastly-ruby/tree/v1.3.0) (2016-04-04)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.2.3...v1.3.0)

**Closed issues:**

- Initializing Fastly.new with api_key option fails  on version 1.2.2 [#73](https://github.com/fastly/fastly-ruby/issues/73)
- Release 1.2.1 Is a breaking change [#65](https://github.com/fastly/fastly-ruby/issues/65)

**Merged pull requests:**

- Added missing fields to S3Logging and syslog [#76](https://github.com/fastly/fastly-ruby/pull/76) ([raybejjani](https://github.com/raybejjani))
- Update gem with missing fields [#75](https://github.com/fastly/fastly-ruby/pull/75) ([raybejjani](https://github.com/raybejjani))
- URL escape names when used in URLs [#74](https://github.com/fastly/fastly-ruby/pull/74) ([raybejjani](https://github.com/raybejjani))

## [v1.2.3](https://github.com/fastly/fastly-ruby/tree/v1.2.3) (2016-03-15)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.2.2...v1.2.3)

**Merged pull requests:**

- require 'openssl' [#72](https://github.com/fastly/fastly-ruby/pull/72) ([cthomaspdx](https://github.com/cthomaspdx))

## [v1.2.2](https://github.com/fastly/fastly-ruby/tree/v1.2.2) (2016-03-09)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.2.1...v1.2.2)

**Closed issues:**

- regexp should be regex [#64](https://github.com/fastly/fastly-ruby/issues/64)

**Merged pull requests:**

- rely on Net::HTTP default ca_path [#71](https://github.com/fastly/fastly-ruby/pull/71) ([thommahoney](https://github.com/thommahoney))
- fix field name for regex [#68](https://github.com/fastly/fastly-ruby/pull/68) ([thommahoney](https://github.com/thommahoney))
- Remove `Fastly.commands` [#67](https://github.com/fastly/fastly-ruby/pull/67) ([alexmuller](https://github.com/alexmuller))

## [v1.2.1](https://github.com/fastly/fastly-ruby/tree/v1.2.1) (2016-01-08)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.2.0...v1.2.1)

**Closed issues:**

- TLS certificates not validated [#59](https://github.com/fastly/fastly-ruby/issues/59)
- Purge by key returns status 200 but purge does not seem to fire [#54](https://github.com/fastly/fastly-ruby/issues/54)
- Does purge_by_key require more then API_KEY to work? [#52](https://github.com/fastly/fastly-ruby/issues/52)
- When chaining methods to purge by surrogate key, get_service API call is executed every time [#50](https://github.com/fastly/fastly-ruby/issues/50)

**Merged pull requests:**

- validate TLS certificates [#61](https://github.com/fastly/fastly-ruby/pull/61) ([lanej](https://github.com/lanej))
- Detect if client base_uri is HTTPS [#53](https://github.com/fastly/fastly-ruby/pull/53) ([mmay](https://github.com/mmay))
- Improve examples of purging [#51](https://github.com/fastly/fastly-ruby/pull/51) ([drbrain](https://github.com/drbrain))
- having login_opts examples in the readme [#49](https://github.com/fastly/fastly-ruby/pull/49) ([phoet](https://github.com/phoet))

## [v1.2.0](https://github.com/fastly/fastly-ruby/tree/v1.2.0) (2015-02-06)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.1.5...v1.2.0)

**Closed issues:**

- Can you bump the gem version? [#43](https://github.com/fastly/fastly-ruby/issues/43)
- service name change fails on save! [#20](https://github.com/fastly/fastly-ruby/issues/20)
- purge method doesn't take options hash [#7](https://github.com/fastly/fastly-ruby/issues/7)
- Make sure types are correct [#2](https://github.com/fastly/fastly-ruby/issues/2)

**Merged pull requests:**

- Better error reporting [#48](https://github.com/fastly/fastly-ruby/pull/48) ([mastfish](https://github.com/mastfish))
- Remove curb-fu once and for all [#44](https://github.com/fastly/fastly-ruby/pull/44) ([mmay](https://github.com/mmay))

## [v1.1.5](https://github.com/fastly/fastly-ruby/tree/v1.1.5) (2014-12-16)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.1.4...v1.1.5)

**Merged pull requests:**

- bump curb to 0.8.6 [#45](https://github.com/fastly/fastly-ruby/pull/45) ([mmay](https://github.com/mmay))
- Cleanup Style Issues [#31](https://github.com/fastly/fastly-ruby/pull/31) ([ezkl](https://github.com/ezkl))

## [v1.1.4](https://github.com/fastly/fastly-ruby/tree/v1.1.4) (2014-09-29)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.1.3...v1.1.4)

**Merged pull requests:**

- Require key [#38](https://github.com/fastly/fastly-ruby/pull/38) ([thommahoney](https://github.com/thommahoney))

## [v1.1.3](https://github.com/fastly/fastly-ruby/tree/v1.1.3) (2014-07-25)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.1.2...v1.1.3)

**Merged pull requests:**

- Add create domain script [#33](https://github.com/fastly/fastly-ruby/pull/33) ([mmay](https://github.com/mmay))
- Clarify the gem name in the README [#32](https://github.com/fastly/fastly-ruby/pull/32) ([adarsh](https://github.com/adarsh))

## [v1.1.2](https://github.com/fastly/fastly-ruby/tree/v1.1.2) (2014-06-12)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.1.1...v1.1.2)

**Merged pull requests:**

- Checks for existence of String#underscore prior to overriding [#30](https://github.com/fastly/fastly-ruby/pull/30) ([spra85](https://github.com/spra85))

## [v1.1.1](https://github.com/fastly/fastly-ruby/tree/v1.1.1) (2014-06-05)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.1.0...v1.1.1)

**Merged pull requests:**

- Add VCL#set_main! [#29](https://github.com/fastly/fastly-ruby/pull/29) ([ezkl](https://github.com/ezkl))
- Minor project gardening [#28](https://github.com/fastly/fastly-ruby/pull/28) ([ezkl](https://github.com/ezkl))

## [v1.1.0](https://github.com/fastly/fastly-ruby/tree/v1.1.0) (2014-06-04)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.02...v1.1.0)

**Closed issues:**

- Using the API key instead of username + password [#22](https://github.com/fastly/fastly-ruby/issues/22)
- Where to use full auth vs. token auth? [#17](https://github.com/fastly/fastly-ruby/issues/17)
- License missing from gemspec [#10](https://github.com/fastly/fastly-ruby/issues/10)

**Merged pull requests:**

- Allow creating an entirely new version of a service, inheriting nothing ... [#27](https://github.com/fastly/fastly-ruby/pull/27) ([ctdk](https://github.com/ctdk))
- Fix s3 [#26](https://github.com/fastly/fastly-ruby/pull/26) ([ctdk](https://github.com/ctdk))
- Fix listing objects, add some API features [#24](https://github.com/fastly/fastly-ruby/pull/24) ([ctdk](https://github.com/ctdk))
- Wrap test framework dependencies [#23](https://github.com/fastly/fastly-ruby/pull/23) ([sgerrand](https://github.com/sgerrand))
- Readme updates for Testing [#19](https://github.com/fastly/fastly-ruby/pull/19) ([phlipper](https://github.com/phlipper))
- Streamline test suite [#16](https://github.com/fastly/fastly-ruby/pull/16) ([aspires](https://github.com/aspires))

## [v1.02](https://github.com/fastly/fastly-ruby/tree/v1.02) (2013-11-26)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.01...v1.02)

**Merged pull requests:**

- Fixing misspelled field (quorom to quorum) [#15](https://github.com/fastly/fastly-ruby/pull/15) ([renholm](https://github.com/renholm))

## [v1.01](https://github.com/fastly/fastly-ruby/tree/v1.01) (2013-10-03)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v1.0...v1.01)

**Closed issues:**

- No method for deleting vlc's [#8](https://github.com/fastly/fastly-ruby/issues/8)

**Merged pull requests:**

- README should use 'new_version.activate!', not 'new_version.activate' [#13](https://github.com/fastly/fastly-ruby/pull/13) ([samjsharpe](https://github.com/samjsharpe))
- Move Fastly::VERSION to dedicated file [#12](https://github.com/fastly/fastly-ruby/pull/12) ([f3nry](https://github.com/f3nry))
- fix purge_all, purge_by_key and details at Fastly::Service [#11](https://github.com/fastly/fastly-ruby/pull/11) ([kzk](https://github.com/kzk))

## [v1.0](https://github.com/fastly/fastly-ruby/tree/v1.0) (2013-07-16)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v0.99...v1.0)

**Merged pull requests:**

- Fix for issue #8 [#9](https://github.com/fastly/fastly-ruby/pull/9) ([ajardan](https://github.com/ajardan))

## [v0.99](https://github.com/fastly/fastly-ruby/tree/v0.99) (2012-05-01)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v0.98...v0.99)

**Merged pull requests:**

- Minor bug fix and README update [#5](https://github.com/fastly/fastly-ruby/pull/5) ([ramezjm](https://github.com/ramezjm))

## [v0.98](https://github.com/fastly/fastly-ruby/tree/v0.98) (2012-02-16)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v0.97...v0.98)

## [v0.97](https://github.com/fastly/fastly-ruby/tree/v0.97) (2012-01-27)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v0.96...v0.97)

**Closed issues:**

- Every invocation of fastly_upload_vcl from v0.95 dies with an error [#4](https://github.com/fastly/fastly-ruby/issues/4)

## [v0.96](https://github.com/fastly/fastly-ruby/tree/v0.96) (2012-01-17)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v0.95...v0.96)

## [v0.95](https://github.com/fastly/fastly-ruby/tree/v0.95) (2011-12-19)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v0.9...v0.95)

**Closed issues:**

- Gem does not default site or port [#3](https://github.com/fastly/fastly-ruby/issues/3)
- Update to new form of versions [#1](https://github.com/fastly/fastly-ruby/issues/1)

## [v0.9](https://github.com/fastly/fastly-ruby/tree/v0.9) (2011-12-15)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v0.8...v0.9)

## [v0.8](https://github.com/fastly/fastly-ruby/tree/v0.8) (2011-11-03)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v0.6...v0.8)

## [v0.6](https://github.com/fastly/fastly-ruby/tree/v0.6) (2011-11-03)

[Full Changelog](https://github.com/fastly/fastly-ruby/compare/v0.5...v0.6)

## [v0.5](https://github.com/fastly/fastly-ruby/tree/v0.5) (2011-11-01)

\[Full Changelog\](https://github.com/fastly/fastly-ruby/compare/2015-02-05 v1.2.0...v0.5)

# HEAD

## 2015-02-05 v1.2.0

- remove curb-fu. Net::HTTP is used instead - https://github.com/fastly/fastly-ruby/pull/44
- better client error handling - https://github.com/fastly/fastly-ruby/pull/48

## 2014-12-15 v1.1.5

- major refactor and reorganization of code (merged branch https://github.com/fastly/fastly-ruby/pull/31)
- bump curb dep to 0.8.6 for ruby 2.1 support (see https://github.com/fastly/fastly-ruby/issues/43)

## 2014-09-29 v1.1.4

- Require API Key for purge by key requests

## 2014-07-25 v1.1.3

- Add test:unit rake task
- Add Rubocop and some rubocop cleanup
- Clarify gem name in documentation
- Fix a bug in the `Fastly.get_options` method
- Add `bin/fastly_create_domain` script to easily create domain

## 2014-06-12 v1.1.2

- Replace `String#underscore` with `Fastly::Util.class_to_path` method.
- Add first true unit test
- Add `test_helper.rb`
- Add `pry` as dependency
- Add console Rake task

## 2013-11-26 v1.02

Fix rdoc dependency and quorum spelling (Kristoffer Renholm)

## 2013-10-03 v1.01

Add historical stats functionality
Fix settings
Add conditions
Add in auto_loadbalancing for backends
Fix some doc stuff (Sam Sharpe)
Reorganize library (Eric Saxby & Paul Henry)
Fix purge_all, purge_by_key and details (Kazuki Ohta)

## 2013-07-16 v1.00

Fix delete VCL (thanks Andrian Jardan)

## 2012-05-01 v0.99

Fix some SSL issues
Allow some admin functionality

## 2012-02-02 v0.98

Make deactivate! work
Add active?
Add Service.purge_by_key

## 2012-01-27 v0.97

Fix invoice tests with new billing API

## 2012-01-16 v0.96

Fix version.locked?
Make fastly_upload_vcl work

## 2011-12-19 v0.95

Fix the way invoices and stats are fetched

## 2011-12-15 v0.9

Add mapping from backends to directors and directors to origins

## 2011-11-03 v0.8

Add list\_\* to all objects

Add Healthchecks and Syslog endpoint streaming

## 2011-11-02 v0.5

Initial releasee
