# Fastly::NetworkProtectRuleResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_protocol** | [**NetworkProtectRuleIpProtocol**](NetworkProtectRuleIpProtocol.md) |  |  |
| **source_prefix_list_id** | **String** | Match traffic whose source appears in this prefix list. |  |
| **destination_ip_address** | **String** | Match traffic sent to this address; omit for any destination. An address outside a Network using this Rule Set never matches and still consumes one of the 64 rules. The API does not enforce containment in a network prefix; attached Rule Sets require a compatible IP family. |  |
| **source_ports** | [**NetworkProtectRuleSourcePorts**](NetworkProtectRuleSourcePorts.md) |  |  |
| **destination_ports** | [**NetworkProtectRuleDestinationPorts**](NetworkProtectRuleDestinationPorts.md) |  |  |
| **created_at** | **Time** | An ISO 8601 timestamp in UTC. | [optional][readonly] |
| **updated_at** | **Time** | An ISO 8601 timestamp in UTC. | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

