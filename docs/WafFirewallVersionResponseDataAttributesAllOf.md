# Fastly::WafFirewallVersionResponseDataAttributesAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | Whether a specific firewall version is currently deployed. | [optional][readonly] |
| **active_rules_fastly_block_count** | **Integer** | The number of active Fastly rules set to block. | [optional][readonly] |
| **active_rules_fastly_log_count** | **Integer** | The number of active Fastly rules set to log. | [optional][readonly] |
| **active_rules_fastly_score_count** | **Integer** | The number of active Fastly rules set to score. | [optional][readonly] |
| **active_rules_owasp_block_count** | **Integer** | The number of active OWASP rules set to block. | [optional][readonly] |
| **active_rules_owasp_log_count** | **Integer** | The number of active OWASP rules set to log. | [optional][readonly] |
| **active_rules_owasp_score_count** | **Integer** | The number of active OWASP rules set to score. | [optional][readonly] |
| **active_rules_trustwave_block_count** | **Integer** | The number of active Trustwave rules set to block. | [optional][readonly] |
| **active_rules_trustwave_log_count** | **Integer** | The number of active Trustwave rules set to log. | [optional][readonly] |
| **last_deployment_status** | **String** | The status of the last deployment of this firewall version. | [optional][readonly] |
| **deployed_at** | **String** | Time-stamp (GMT) indicating when the firewall version was last deployed. | [optional][readonly] |
| **error** | **String** | Contains error message if the firewall version fails to deploy. | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

