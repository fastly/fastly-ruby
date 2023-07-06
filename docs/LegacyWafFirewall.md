# Fastly::LegacyWafFirewall

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_push** | **String** | Date and time that VCL was last pushed to cache nodes. | [optional] |
| **prefetch_condition** | **String** | Name of the corresponding condition object. | [optional] |
| **response** | **String** | Name of the corresponding response object. | [optional] |
| **version** | [**ReadOnlyVersion**](ReadOnlyVersion.md) |  | [optional] |
| **service_id** | [**ReadOnlyServiceId**](ReadOnlyServiceId.md) |  | [optional] |
| **disabled** | **Boolean** | The status of the firewall. | [optional][default to false] |
| **rule_statuses_log_count** | **Integer** | The number of rule statuses set to log. | [optional] |
| **rule_statuses_block_count** | **Integer** | The number of rule statuses set to block. | [optional] |
| **rule_statuses_disabled_count** | **Integer** | The number of rule statuses set to disabled. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

