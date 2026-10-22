# Fastly::ArcCreateVirtualKeyResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the virtual key. | [readonly] |
| **customer_id** | **String** | The ID of the customer account that owns the key. | [readonly] |
| **name** | **String** | The display name of the virtual key. |  |
| **user_id** | **String** | The ID of the user who created the key. | [readonly] |
| **created_at** | **Time** | The date and time the key was created, in RFC 3339 format. | [readonly] |
| **updated_at** | **Time** | The date and time the key was last updated, in RFC 3339 format. | [readonly] |
| **access_token** | **String** | The access token for this virtual key. This is only returned when the key is created or rotated, and cannot be retrieved again afterward. | [readonly] |
| **expires_at** | **Time** | The date and time the key expires, in RFC 3339 format. `null` if the key doesn&#39;t expire. | [optional] |
| **rpm_limit** | **Integer** | The requests-per-minute limit for this key. `null` if there is no limit. | [optional] |
| **tpm_limit** | **Integer** | The tokens-per-minute limit for this key. `null` if there is no limit. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

