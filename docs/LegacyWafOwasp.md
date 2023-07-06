# Fastly::LegacyWafOwasp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_http_versions** | **String** | Allowed HTTP versions. | [optional][default to &#39;HTTP/1.0 HTTP/1.1 HTTP/2&#39;] |
| **allowed_methods** | **String** | A space-separated list of HTTP method names. | [optional][default to &#39;GET HEAD POST OPTIONS PUT PATCH DELETE&#39;] |
| **allowed_request_content_type** | **String** | Allowed request content types. | [optional][default to &#39;application/x-www-form-urlencoded|multipart/form-data|text/xml|application/xml|application/x-amf|application/json|text/plain&#39;] |
| **arg_length** | **Integer** | The maximum allowed length of an argument. | [optional][default to 400] |
| **arg_name_length** | **Integer** | The maximum allowed argument name length. | [optional][default to 100] |
| **combined_file_sizes** | **Integer** | The maximum allowed size of all files (in bytes). | [optional][default to 10000000] |
| **created_at** | **String** | Date and time that the settings object was created. | [optional] |
| **critical_anomaly_score** | **Integer** | Score value to add for critical anomalies. | [optional][default to 6] |
| **crs_validate_utf8_encoding** | **Boolean** | CRS validate UTF8 encoding. | [optional] |
| **error_anomaly_score** | **Integer** | Score value to add for error anomalies. | [optional][default to 5] |
| **high_risk_country_codes** | **String** | A space-separated list of country codes in ISO 3166-1 (two-letter) format. | [optional] |
| **http_violation_score_threshold** | **Integer** | HTTP violation threshold. | [optional] |
| **inbound_anomaly_score_threshold** | **Integer** | Inbound anomaly threshold. | [optional] |
| **lfi_score_threshold** | **Integer** | Local file inclusion attack threshold. | [optional] |
| **max_file_size** | **Integer** | The maximum allowed file size (in bytes). | [optional][default to 10000000] |
| **max_num_args** | **Integer** | The maximum number of arguments allowed. | [optional][default to 255] |
| **notice_anomaly_score** | **Integer** | Score value to add for notice anomalies. | [optional][default to 4] |
| **paranoia_level** | **Integer** | The configured paranoia level. | [optional][default to 1] |
| **php_injection_score_threshold** | **Integer** | PHP injection threshold. | [optional] |
| **rce_score_threshold** | **Integer** | Remote code execution threshold. | [optional] |
| **restricted_extensions** | **String** | A space-separated list of disallowed file extensions. | [optional][default to &#39;.asa/ .asax/ .ascx/ .axd/ .backup/ .bak/ .bat/ .cdx/ .cer/ .cfg/ .cmd/ .com/ .config/ .conf/ .cs/ .csproj/ .csr/ .dat/ .db/ .dbf/ .dll/ .dos/ .htr/ .htw/ .ida/ .idc/ .idq/ .inc/ .ini/ .key/ .licx/ .lnk/ .log/ .mdb/ .old/ .pass/ .pdb/ .pol/ .printer/ .pwd/ .resources/ .resx/ .sql/ .sys/ .vb/ .vbs/ .vbproj/ .vsdisco/ .webinfo/ .xsd/ .xsx&#39;] |
| **restricted_headers** | **String** | A space-separated list of disallowed header names. | [optional][default to &#39;/proxy/ /lock-token/ /content-range/ /translate/ /if/&#39;] |
| **rfi_score_threshold** | **Integer** | Remote file inclusion attack threshold. | [optional] |
| **session_fixation_score_threshold** | **Integer** | Session fixation attack threshold. | [optional] |
| **sql_injection_score_threshold** | **Integer** | SQL injection attack threshold. | [optional] |
| **total_arg_length** | **Integer** | The maximum size of argument names and values. | [optional][default to 6400] |
| **updated_at** | **String** | Date and time that the settings object was last updated. | [optional] |
| **warning_anomaly_score** | **Integer** | Score value to add for warning anomalies. | [optional] |
| **xss_score_threshold** | **Integer** | XSS attack threshold. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

