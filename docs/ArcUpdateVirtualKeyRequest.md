# Fastly::ArcUpdateVirtualKeyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A display name for the virtual key. | [optional] |
| **expires_at** | **Time** | The date and time the key expires, in RFC 3339 format. Set explicitly to `null` to clear the expiration.  | [optional] |
| **security_enabled** | **Boolean** | Whether AI Firewall security is enabled for requests made with this key. | [optional] |
| **security_action** | **String** | The action AI Firewall takes when it detects a violation on a request made with this key. | [optional] |
| **rpm_limit** | **Integer** | The requests-per-minute limit for this key. Omit this field to leave the limit unchanged, set it to a positive integer to set a limit, or set it explicitly to `null` to remove the limit.  | [optional] |
| **tpm_limit** | **Integer** | The tokens-per-minute limit for this key. Omit this field to leave the limit unchanged, set it to a positive integer to set a limit, or set it explicitly to `null` to remove the limit.  | [optional] |
| **spend_limit_enabled** | **Boolean** | Whether a spend limit is enabled for this key. This field cannot be set when the key is created; it can only be changed with this endpoint. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

