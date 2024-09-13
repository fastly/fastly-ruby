# Fastly::ComputeAclUpdateEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **op** | **String** | One of \&quot;create\&quot; or \&quot;update\&quot;, indicating that the rest of this entry is to be added to/updated in the ACL. | [optional] |
| **prefix** | **String** | An IP prefix defined in Classless Inter-Domain Routing (CIDR) format, i.e. a valid IP address (v4 or v6) followed by a forward slash (/) and a prefix length (0-32 or 0-128, depending on address family). | [optional] |
| **action** | **String** | The action taken on the IP address, either \&quot;block\&quot; or \&quot;allow\&quot;. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

