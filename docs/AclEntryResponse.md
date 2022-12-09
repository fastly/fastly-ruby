# Fastly::AclEntryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **negated** | **Integer** | Whether to negate the match. Useful primarily when creating individual exceptions to larger subnets. | [optional][default to NEGATED::N0] |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **ip** | **String** | An IP address. | [optional] |
| **subnet** | **Integer** | Number of bits for the subnet mask applied to the IP address. For IPv4 addresses, a value of 32 represents the smallest subnet mask (1 address), 24 represents a class C subnet mask (256 addresses), 16 represents a class B subnet mask (65k addresses), and 8 is class A subnet mask (16m addresses). If not provided, no mask is applied. | [optional] |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **acl_id** | **String** |  | [optional][readonly] |
| **id** | **String** |  | [optional][readonly] |
| **service_id** | **String** |  | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

