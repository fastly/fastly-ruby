# Fastly::LoggingGrafanacloudlogsAdditional

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional] |
| **user** | **String** | The Grafana Cloud Logs Dataset you want to log to. | [optional] |
| **url** | **String** | The URL of the Loki instance in your Grafana stack. | [optional] |
| **token** | **String** | The Grafana Access Policy token with `logs:write` access scoped to your Loki instance. | [optional] |
| **index** | **String** | The Stream Labels, a JSON string used to identify the stream. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

