# Fastly::ArcSession

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the session. | [readonly] |
| **virtual_key_id** | **String** | The ID of the virtual key used for this session. |  |
| **model** | **String** | The AI model identifier used. |  |
| **provider** | **String** | The name of the provider connection that ultimately served the session. |  |
| **provider_connection_id** | **String** | The ID of the provider connection that ultimately served the session. |  |
| **requests** | **Integer** | The number of requests made in this session. |  |
| **input_tokens** | **Integer** | The total input tokens consumed in this session. |  |
| **output_tokens** | **Integer** | The total output tokens generated in this session. |  |
| **violations** | **Integer** | The number of AI Firewall violations detected in this session. |  |
| **firewall_enabled** | **Boolean** | Whether AI Firewall was enabled for this session&#39;s virtual key. |  |
| **created_at** | **Time** | The date and time the session was created, in RFC 3339 format. | [readonly] |
| **updated_at** | **Time** | The date and time the session was last updated, in RFC 3339 format. | [readonly] |
| **logs** | [**Array&lt;ArcSessionLogEntry&gt;**](ArcSessionLogEntry.md) | The request and response pairs recorded for this session. |  |
| **virtual_key_name** | **String** | The display name of the virtual key used for this session. | [optional] |
| **primary_provider** | **String** | The ID of the provider connection originally requested, before any failover occurred. | [optional] |
| **firewall_outcome** | **String** | The outcome AI Firewall reached for this session. Present only when AI Firewall ran. | [optional] |
| **firewall_stage** | **String** | The AI Firewall stage that produced the outcome (for example, the request or response stage). Present only when AI Firewall ran. | [optional] |
| **firewall_policy** | **String** | The AI Firewall policy that was applied. Present only when AI Firewall ran. | [optional] |
| **firewall_incomplete_reason** | **String** | Why AI Firewall inspection was incomplete, if applicable. Present only when AI Firewall ran and inspection didn&#39;t complete. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

