# Fastly::WafRuleRevisionAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | Message metadata for the rule. | [optional][readonly] |
| **modsec_rule_id** | **Integer** | Corresponding ModSecurity rule ID. | [optional][readonly] |
| **paranoia_level** | **Integer** | Paranoia level for the rule. | [optional][readonly] |
| **revision** | **Integer** | Revision number. | [optional] |
| **severity** | **Integer** | Severity metadata for the rule. | [optional][readonly] |
| **source** | **String** | The ModSecurity rule logic. | [optional][readonly] |
| **state** | **String** | The state, indicating if the revision is the most recent version of the rule. | [optional][readonly] |
| **vcl** | **String** | The VCL representation of the rule logic. | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

