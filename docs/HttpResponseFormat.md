# Fastly::HttpResponseFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | The HTTP status code. | [optional][default to 200] |
| **reason** | **String** | The HTTP status string. Defaults to a string appropriate for `code`. | [optional] |
| **headers** | **Hash&lt;String, String&gt;** | A map of arbitrary HTTP response headers to include in the response. | [optional] |
| **body** | **String** | The response body as a string. | [optional] |
| **body_bin** | **String** | The response body as a base64-encoded binary blob. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

