# Fastly::SuccessfulResponseAsObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **id** | **String** | Domain Identifier (UUID). | [optional] |
| **fqdn** | **String** | The fully-qualified domain name for your domain. Can be created, but not updated. | [optional] |
| **service_id** | **String** | The `service_id` associated with your domain or `null` if there is no association. | [optional] |
| **description** | **String** | A freeform descriptive note. | [optional] |
| **activated** | **Boolean** | Denotes if the domain has at least one TLS activation or not. | [optional][readonly] |
| **verified** | **Boolean** | Denotes that the customer has proven ownership over the domain by obtaining a Fastly-managed TLS certificate for it or by providing a their own TLS certificate from a publicly-trusted CA that includes the domain or matching wildcard.      | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

