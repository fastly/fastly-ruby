# Fastly::DdosProtectionRuleWithStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **id** | **String** | Unique ID of the rule. | [optional] |
| **name** | **String** | A human-readable name for the rule. | [optional] |
| **action** | **String** | Action types for a rule. Supported action values are default, block, log, off. The default action value follows the current protection mode of the associated service. | [optional][default to &#39;default&#39;] |
| **customer_id** | **String** | Alphanumeric string identifying the customer. | [optional] |
| **service_id** | **String** | Alphanumeric string identifying the service. | [optional] |
| **source_ip** | **String** | Source IP address attribute. | [optional] |
| **country_code** | **String** | Country code attribute. | [optional] |
| **host** | **String** | Host attribute. | [optional] |
| **asn** | **String** | ASN attribute. | [optional] |
| **source_ip_prefix** | **String** | Source IP prefix attribute. | [optional] |
| **additional_attributes** | **Array&lt;String&gt;** | Attribute category for additional, unlisted attributes used in a rule. | [optional] |
| **traffic_stats** | [**DdosProtectionTrafficStats**](DdosProtectionTrafficStats.md) |  | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

