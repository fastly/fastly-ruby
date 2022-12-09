# Fastly::VersionDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backends** | [**Array&lt;BackendResponse&gt;**](BackendResponse.md) | List of backends associated to this service. | [optional] |
| **cache_settings** | [**Array&lt;CacheSettingResponse&gt;**](CacheSettingResponse.md) | List of cache settings associated to this service. | [optional] |
| **conditions** | [**Array&lt;ConditionResponse&gt;**](ConditionResponse.md) | List of conditions associated to this service. | [optional] |
| **directors** | [**Array&lt;Director&gt;**](Director.md) | List of directors associated to this service. | [optional] |
| **domains** | [**Array&lt;DomainResponse&gt;**](DomainResponse.md) | List of domains associated to this service. | [optional] |
| **gzips** | [**Array&lt;GzipResponse&gt;**](GzipResponse.md) | List of gzip rules associated to this service. | [optional] |
| **headers** | [**Array&lt;HeaderResponse&gt;**](HeaderResponse.md) | List of headers associated to this service. | [optional] |
| **healthchecks** | [**Array&lt;HealthcheckResponse&gt;**](HealthcheckResponse.md) | List of healthchecks associated to this service. | [optional] |
| **request_settings** | [**Array&lt;RequestSettingsResponse&gt;**](RequestSettingsResponse.md) | List of request settings for this service. | [optional] |
| **response_objects** | [**Array&lt;ResponseObjectResponse&gt;**](ResponseObjectResponse.md) | List of response objects for this service. | [optional] |
| **settings** | [**VersionDetailSettings**](VersionDetailSettings.md) |  | [optional] |
| **snippets** | [**Array&lt;SchemasSnippetResponse&gt;**](SchemasSnippetResponse.md) | List of VCL snippets for this service. | [optional] |
| **vcls** | [**Array&lt;SchemasVclResponse&gt;**](SchemasVclResponse.md) | List of VCL files for this service. | [optional] |
| **wordpress** | **Array&lt;Object&gt;** | A list of Wordpress rules with this service. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

