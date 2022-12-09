# Fastly::HealthcheckResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_interval** | **Integer** | How often to run the health check in milliseconds. | [optional] |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **expected_response** | **Integer** | The status code expected from the host. | [optional] |
| **headers** | **Array&lt;String&gt;** | Array of custom headers that will be added to the health check probes. | [optional] |
| **host** | **String** | Which host to check. | [optional] |
| **http_version** | **String** | Whether to use version 1.0 or 1.1 HTTP. | [optional] |
| **initial** | **Integer** | When loading a config, the initial number of probes to be seen as OK. | [optional] |
| **method** | **String** | Which HTTP method to use. | [optional] |
| **name** | **String** | The name of the health check. | [optional] |
| **path** | **String** | The path to check. | [optional] |
| **threshold** | **Integer** | How many health checks must succeed to be considered healthy. | [optional] |
| **timeout** | **Integer** | Timeout in milliseconds. | [optional] |
| **window** | **Integer** | The number of most recent health check queries to keep for this health check. | [optional] |
| **service_id** | **String** |  | [optional][readonly] |
| **version** | **Integer** |  | [optional][readonly] |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

