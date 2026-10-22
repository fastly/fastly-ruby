# Fastly::NetworkProtectNetworkCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A human-readable name, unique within the customer. |  |
| **prefix** | **String** | The CIDR block to protect, masked to its network address. It cannot be changed after creation. |  |
| **description** | **String** | Optional descriptive text for the network. This metadata does not change traffic handling. Null clears it on update. | [optional] |
| **rule_set_id** | **String** | Custom rule-set attachment is unavailable. Omit this value or send an empty string to use the backend-assigned default rule set. | [optional] |
| **endpoint_policies** | [**Array&lt;NetworkProtectEndpointPolicy&gt;**](NetworkProtectEndpointPolicy.md) | Complete endpoint policy configuration. A network has at most one policy per region and may have no policies. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

