# Fastly::DraftDiff

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **added** | [**Array&lt;PathWithRules&gt;**](PathWithRules.md) | Paths that exist in the draft but not in the active version. | [optional] |
| **deleted** | [**Array&lt;PathWithRules&gt;**](PathWithRules.md) | Paths that exist in the active version but not in the draft. | [optional] |
| **modified** | [**Array&lt;PathChange&gt;**](PathChange.md) | Paths that exist in both versions but have changed. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

