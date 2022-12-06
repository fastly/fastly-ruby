# Fastly::ApexRedirect

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** |  | [optional][readonly] |
| **version** | **Integer** |  | [optional][readonly] |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **status_code** | **Integer** | HTTP status code used to redirect the client. | [optional] |
| **domains** | **Array&lt;String&gt;** | Array of apex domains that should redirect to their WWW subdomain. | [optional] |
| **feature_revision** | **Integer** | Revision number of the apex redirect feature implementation. Defaults to the most recent revision. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

