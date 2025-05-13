# Fastly::ComputeAclUpdateEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **op** | **String** | One of \&quot;create\&quot;, \&quot;update\&quot;, or \&quot;delete\&quot; indicating the operation to perform on the update. | [optional] |
| **prefix** | **String** | An IP prefix defined in Classless Inter-Domain Routing (CIDR) format, i.e. a valid IP address (v4 or v6) followed by a forward slash (/) and a prefix length (0-32 or 0-128, depending on address family). | [optional] |
| **action** | **String** | The action taken on the IP address, one of \&quot;BLOCK\&quot; or \&quot;ALLOW\&quot;. If using the \&quot;delete\&quot; operation, no action should be specified. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

