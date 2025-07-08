# Fastly::LoggingElasticsearchAdditional

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **String** | The name of the Elasticsearch index to send documents (logs) to. The index must follow the Elasticsearch [index format rules](https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-create-index.html). We support [strftime](https://www.man7.org/linux/man-pages/man3/strftime.3.html) interpolated variables inside braces prefixed with a pound symbol. For example, `\#{%F}` will interpolate as `YYYY-MM-DD` with today&#39;s date. | [optional] |
| **url** | **String** | The URL to stream logs to. Must use HTTPS. | [optional] |
| **pipeline** | **String** | The ID of the Elasticsearch ingest pipeline to apply pre-process transformations to before indexing. Learn more about creating a pipeline in the [Elasticsearch docs](https://www.elastic.co/guide/en/elasticsearch/reference/current/ingest.html). | [optional] |
| **user** | **String** | Basic Auth username. | [optional] |
| **password** | **String** | Basic Auth password. | [optional] |
| **format** | **String** | A Fastly [log format string](https://www.fastly.com/documentation/guides/integrations/streaming-logs/custom-log-formats/). Must produce valid JSON that Elasticsearch can ingest. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

