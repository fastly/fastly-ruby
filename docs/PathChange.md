# Fastly::PathChange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **path_id** | **String** | Alphanumeric string identifying the path. Stable across versions of the routing config. | [optional][readonly] |
| **path** | **String** | The current path pattern. | [optional] |
| **old_path** | **String** | The previous path pattern, if it changed. | [optional] |
| **rules_added** | [**Array&lt;RuleResponse&gt;**](RuleResponse.md) | Rules that were added to this path. | [optional] |
| **rules_changed** | [**Array&lt;RuleChange&gt;**](RuleChange.md) | Rules that were modified on this path. | [optional] |
| **rules_deleted** | [**Array&lt;RuleResponse&gt;**](RuleResponse.md) | Rules that were removed from this path. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

