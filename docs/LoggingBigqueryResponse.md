# Fastly::LoggingBigqueryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the BigQuery logging object. Used as a primary key for API access. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/). Must produce JSON that matches the schema of your BigQuery table. | [optional] |
| **log_processing_region** | **String** | The geographic region where the logs will be processed before streaming. Valid values are `us`, `eu`, and `none` for global. | [optional][default to &#39;none&#39;] |
| **format_version** | **String** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to &#39;2&#39;] |
| **user** | **String** | Your Google Cloud Platform service account email address. The `client_email` field in your service account authentication JSON. Not required if `account_name` is specified. | [optional] |
| **secret_key** | **String** | Your Google Cloud Platform account secret key. The `private_key` field in your service account authentication JSON. Not required if `account_name` is specified. | [optional] |
| **account_name** | **String** | The name of the Google Cloud Platform service account associated with the target log collection service. Not required if `user` and `secret_key` are provided. | [optional] |
| **dataset** | **String** | Your BigQuery dataset. | [optional] |
| **table** | **String** | Your BigQuery table. | [optional] |
| **template_suffix** | **String** | BigQuery table name suffix template. Optional. | [optional] |
| **project_id** | **String** | Your Google Cloud Platform project ID. Required | [optional] |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **service_id** | **String** |  | [optional][readonly] |
| **version** | **String** |  | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

