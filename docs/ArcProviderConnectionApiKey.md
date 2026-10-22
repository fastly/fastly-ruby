# Fastly::ArcProviderConnectionApiKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A display name for the provider connection. Cannot match a name reserved by a built-in provider. |  |
| **models** | **Array&lt;String&gt;** | The AI model identifiers this connection is allowed to use. |  |
| **base_url** | **String** | The base URL of the provider&#39;s API. Must be an absolute `http` or `https` URL and must not end in `/v1`. |  |
| **api_key** | **String** | The provider&#39;s secret API key. |  |
| **auth_type** | **String** | The authentication type for this connection. Omit for the default `api-key` behavior. | [optional][default to &#39;api-key&#39;] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

