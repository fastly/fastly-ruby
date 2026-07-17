# Fastly::Script

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique script identifier | [optional] |
| **page_id** | **String** | Parent page ID | [optional] |
| **source** | **String** | Script source (inline or external URL) | [optional] |
| **urls** | **Array&lt;String&gt;** | URLs where this script was observed | [optional] |
| **first_seen_at** | **Time** |  | [optional] |
| **last_seen_at** | **Time** |  | [optional] |
| **justification** | **String** | Reason for authorization decision | [optional] |
| **current_hash** | **String** | Current script content hash | [optional] |
| **authorized_hash** | **String** | Hash of authorized script content | [optional] |
| **authorization_status** | **String** | Script authorization status | [optional] |
| **authorized_at** | **Time** |  | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

