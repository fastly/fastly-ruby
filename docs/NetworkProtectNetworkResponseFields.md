# Fastly::NetworkProtectNetworkResponseFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A read-only unique identifier for a Network Protect resource. | [readonly] |
| **created_at** | **Time** | An ISO 8601 timestamp in UTC. | [readonly] |
| **updated_at** | **Time** | An ISO 8601 timestamp in UTC. | [readonly] |
| **roa_status** | [**NetworkProtectRoaStatus**](NetworkProtectRoaStatus.md) |  | [optional] |
| **roa_checked_at** | **Time** | When Fastly last completed a ROA check. Null while the status is pending. A failed check leaves this unchanged; an old value can indicate delayed or failing checks. Null also means the controller did not report a check time. | [optional][readonly] |
| **roa_data_as_of** | **Time** | When the RPKI dataset used by the last check was built. This is not the same as `roa_checked_at`; a recent check can use an older dataset. Null while the status is pending or when no dataset build time was reported. | [optional][readonly] |
| **loa_status** | [**NetworkProtectLoaStatus**](NetworkProtectLoaStatus.md) |  | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

